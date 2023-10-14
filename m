Return-Path: <devicetree+bounces-8643-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D16377C956F
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 18:46:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68383B20B4F
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 16:46:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 354771803B;
	Sat, 14 Oct 2023 16:46:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmPSIqUv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C9B125B0
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 16:46:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 03D9BC433C7;
	Sat, 14 Oct 2023 16:46:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697301970;
	bh=UkfmNLmsfbE9sjB4/yEQF1Ft7jr9aA3XJDIvkkE44fo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YmPSIqUvEHAxvFAjD6DrziJgMQL/SbwsYC8Z61eSceDlL32C92Ogki1SAOSWthKCk
	 j7BwSQ5azdfLnbONZN6EkgLERGpNEOtubu/H/+IRWn7Omico3Ic+v0jNCZt6WP2nOO
	 wWWnxMyIiioYfN1PoJh0Da524R+9v3F8SshyArfE9DABTOlbNRqRu4kXs1tpf0+Fr2
	 bh3SUJKs9gk+wsw3oOHQcEicNxA4ntPc4ZcEhcQqO+8cC/sQhZm+FW6znO2ULQ5p2e
	 qHevB5ZVnrnLP7eDF3UN2j8PBrRuJuD6iza2TYJ9enV0Jy3aT1ME4XiIqwCoCv5hBj
	 y68Mw4NJGN4eA==
Date: Sat, 14 Oct 2023 17:46:26 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Jagath Jog J <jagathjog1996@gmail.com>
Cc: andriy.shevchenko@linux.intel.com, u.kleine-koenig@pengutronix.de,
 lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linus.walleij@linaro.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] iio: imu: Add driver for BMI323 IMU
Message-ID: <20231014174626.3c203096@jic23-huawei>
In-Reply-To: <20231013034808.8948-3-jagathjog1996@gmail.com>
References: <20231013034808.8948-1-jagathjog1996@gmail.com>
	<20231013034808.8948-3-jagathjog1996@gmail.com>
X-Mailer: Claws Mail 4.1.1 (GTK 3.24.38; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Oct 2023 09:18:08 +0530
Jagath Jog J <jagathjog1996@gmail.com> wrote:

> The Bosch BMI323 is a 6-axis low-power IMU that provide measurements for
> acceleration, angular rate, and temperature. This sensor includes
> motion-triggered interrupt features, such as a step counter, tap detection,
> and activity/inactivity interrupt capabilities.
> 
> The driver supports various functionalities, including data ready, FIFO
> data handling, and events such as tap detection, step counting, and
> activity interrupts.
> 
> Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>
Hi Jagath,

Nice driver.

We are rapidly approaching the end of this cycle and as this is a
large driver, I think it could do to remain on list at least a week
before I apply it or until it picks up some tags from others if that
happens sooner. Hence I'm afraid it might well sneak into next cycle.

A couple of really small things in the docs and build files from me.

Jonathan

> ---
>  Documentation/ABI/testing/sysfs-bus-iio |   18 +
>  MAINTAINERS                             |    7 +
>  drivers/iio/imu/Kconfig                 |    1 +
>  drivers/iio/imu/Makefile                |    1 +
>  drivers/iio/imu/bmi323/Kconfig          |   33 +
>  drivers/iio/imu/bmi323/Makefile         |    7 +
>  drivers/iio/imu/bmi323/bmi323.h         |  209 +++
>  drivers/iio/imu/bmi323/bmi323_core.c    | 2139 +++++++++++++++++++++++
>  drivers/iio/imu/bmi323/bmi323_i2c.c     |  121 ++
>  drivers/iio/imu/bmi323/bmi323_spi.c     |   92 +
>  10 files changed, 2628 insertions(+)
>  create mode 100644 drivers/iio/imu/bmi323/Kconfig
>  create mode 100644 drivers/iio/imu/bmi323/Makefile
>  create mode 100644 drivers/iio/imu/bmi323/bmi323.h
>  create mode 100644 drivers/iio/imu/bmi323/bmi323_core.c
>  create mode 100644 drivers/iio/imu/bmi323/bmi323_i2c.c
>  create mode 100644 drivers/iio/imu/bmi323/bmi323_spi.c
> 
> diff --git a/Documentation/ABI/testing/sysfs-bus-iio b/Documentation/ABI/testing/sysfs-bus-iio
> index 19cde14f3869..c66fc560ee4b 100644
> --- a/Documentation/ABI/testing/sysfs-bus-iio
> +++ b/Documentation/ABI/testing/sysfs-bus-iio
> @@ -2254,3 +2254,21 @@ Description:
>  		If a label is defined for this event add that to the event
>  		specific attributes. This is useful for userspace to be able to
>  		better identify an individual event.
> +
> +What:		/sys/.../events/in_accel_gesture_tap_wait_timeout
> +KernelVersion:	6.7
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Enable tap gesture confirmation with timeout.

> +
> +What:		/sys/.../events/in_accel_gesture_tap_wait_dur
> +KernelVersion:	6.7
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		Timeout value for tap gesture confirmation.

Units need to be specified.  Seconds?

> +
> +What:		/sys/.../events/in_accel_gesture_tap_wait_dur_available
> +KernelVersion:	6.7
> +Contact:	linux-iio@vger.kernel.org
> +Description:
> +		List of available timeout value for tap gesture confirmation.
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 4e07c032d06a..47ca415212a7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -3595,6 +3595,13 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/accel/bosch,bma400.yaml
>  F:	drivers/iio/accel/bma400*
>  
> +BOSCH SENSORTEC BMI323 IMU IIO DRIVER
> +M:	Jagath Jog J <jagathjog1996@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/imu/bosch,bma400.yaml
> +F:	drivers/iio/imu/bmi323/
> +
>  BPF JIT for ARM
>  M:	Shubham Bansal <illusionist.neo@gmail.com>
>  L:	bpf@vger.kernel.org
> diff --git a/drivers/iio/imu/Kconfig b/drivers/iio/imu/Kconfig
> index c2f97629e9cd..6c9a85294bc1 100644
> --- a/drivers/iio/imu/Kconfig
> +++ b/drivers/iio/imu/Kconfig
> @@ -54,6 +54,7 @@ config ADIS16480
>  
>  source "drivers/iio/imu/bmi160/Kconfig"
>  source "drivers/iio/imu/bno055/Kconfig"
> +source "drivers/iio/imu/bmi323/Kconfig"
Same on ordering.
>  
>  config FXOS8700
>  	tristate
> diff --git a/drivers/iio/imu/Makefile b/drivers/iio/imu/Makefile
> index 6eb612034722..627406476357 100644
> --- a/drivers/iio/imu/Makefile
> +++ b/drivers/iio/imu/Makefile
> @@ -16,6 +16,7 @@ obj-$(CONFIG_IIO_ADIS_LIB) += adis_lib.o
>  
>  obj-y += bmi160/
>  obj-y += bno055/
> +obj-y += bmi323/ 
Alphabetical order. 

> diff --git a/drivers/iio/imu/bmi323/bmi323_core.c b/drivers/iio/imu/bmi323/bmi323_core.c
> new file mode 100644
> index 000000000000..0bd5dedd9a63
> --- /dev/null
> +++ b/drivers/iio/imu/bmi323/bmi323_core.c
> @@ -0,0 +1,2139 @@


