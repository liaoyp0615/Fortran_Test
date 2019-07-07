program main
    implicit none 
    integer,parameter :: players = 5
    real :: angle(players)=(/ 30.0,45.0,35.0,50.0,40.0 /)
    real :: speed(players)=(/ 25.0,20.0,21.0,27.0,22.0 /)
    real :: distance(players)
    integer :: I
    
    do I=1,players
        call Get_Distance(angle(i),speed(i),distance(i))
    write(*,"('player ',I1,' =',F8.2)")I,distance(i)
    end do 
    
    stop
    end
    
    subroutine Angle_To_Rad(angle,rad)
    implicit none
    real angle,rad
    real,parameter :: pi=3.14159
    
    rad = angle*pi/180.0
    
    return
    end
    
    subroutine Get_Distance(angle,speed,distance)
    implicit none
    real angle,speed
    real distance
    real rad,Vx,time
    real,parameter :: G=9.80
    
    call Angle_To_Rad(angle,rad)
    Vx = speed*cos(rad)
    time = 2.0*speed*sin(rad)/G
    distance = Vx * time
    
    return
    end
    