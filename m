Return-Path: <devicetree+bounces-8673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C277C98AC
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 12:30:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 76473281083
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 10:30:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB9C6185E;
	Sun, 15 Oct 2023 10:30:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CUZIU+oZ"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A784F63B1
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 10:30:50 +0000 (UTC)
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32993DE;
	Sun, 15 Oct 2023 03:30:48 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9be02fcf268so239083366b.3;
        Sun, 15 Oct 2023 03:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697365846; x=1697970646; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVgbO7KEQpx1VD0aALJLn/4mGAR/kKeNQyPbEENGTQk=;
        b=CUZIU+oZYzFlcY3IZrmpMO3OwoucIeKQzSK7ytJ5ymRnpt5ElI5Sgdvqo/wSrcg5kC
         L0Nx8PAhqRgWrLzwq5q0aS7R8T/5YzEGt48byl4WUkfbFW7ZqWuXowsJYB5Pz+SVae6W
         6NKYCeHXeRjmr6SeKKEsZzb1lR0PwYtsLDa+bbkmdm8GntfT01tQmOiYUCQ/IWAfgtr9
         GVCK2Tj++nwxZjoM02LxSEfO8Fx37kzRHGqwrnuPUK2Lxsfia0XX5tHLP0mXKaUFz+Dd
         6El3VYEr2TSQN7I7SaCeS/byreXxMUllET9bRDvfYpFbxVxFnVNSFyEAo/vYmRIRn0ce
         /aBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697365846; x=1697970646;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RVgbO7KEQpx1VD0aALJLn/4mGAR/kKeNQyPbEENGTQk=;
        b=IEgl82rJYSY5CPRg4J/+e95FFxEvEbYF8nH2M2JBgTY0nx/CmLmqUsCwutx9n5k+pD
         78KzoqNfT5sxMUPoE2Zmf6evma25sDeQItJShWt/RYGOH7zRgyEUNUYTtSA2PwaOK5tS
         h9KCiYQWH9W7fekrXvI0l0tQr7nTovHtVy2kkAcWaRm+DHPtVQoAhEf2JkgeK7DxdUV3
         drOdU+WOkBxKgHSL8/lUsAnzbBraYUOzf3TaH4BBCeUzvEG+o1a9NtknuYOT25Ct7Pp/
         HOOy51Jpro5BimuOkIaeNnLDddGF3/vbuLOSBx7OihRoIXPeeEWZgjs/FMNmseTb0xBk
         M2UA==
X-Gm-Message-State: AOJu0Yw2gB7rpLGyXY6a/y1qV/LlJ1mxfBFHiiT+CN3ll9EIpBG0qcXf
	FUDniOACK9E4pWyT3L5d3EDHukVDDlux+rhycRg=
X-Google-Smtp-Source: AGHT+IFsD6CqKNzbhLcjCedeHn2fTEclB28FpmXt4LyYx/Lg99iut94YQbr+dWR138cYFnDEkv5AxrjgP7kD1wVNyIQ=
X-Received: by 2002:a17:907:948d:b0:9bf:70ea:6926 with SMTP id
 dm13-20020a170907948d00b009bf70ea6926mr2167807ejc.2.1697365846252; Sun, 15
 Oct 2023 03:30:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231013034808.8948-1-jagathjog1996@gmail.com>
 <20231013034808.8948-3-jagathjog1996@gmail.com> <20231014174626.3c203096@jic23-huawei>
In-Reply-To: <20231014174626.3c203096@jic23-huawei>
From: Jagath Jog J <jagathjog1996@gmail.com>
Date: Sun, 15 Oct 2023 16:00:34 +0530
Message-ID: <CAM+2EuJnrJn5QLm+yqJ_4_3NiZDXS6p9P5AhwZBjFUYm+2PMGQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] iio: imu: Add driver for BMI323 IMU
To: Jonathan Cameron <jic23@kernel.org>
Cc: andriy.shevchenko@linux.intel.com, u.kleine-koenig@pengutronix.de, 
	lars@metafoo.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linus.walleij@linaro.org, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
	FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Oct 14, 2023 at 10:16=E2=80=AFPM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 13 Oct 2023 09:18:08 +0530
> Jagath Jog J <jagathjog1996@gmail.com> wrote:
>
> > The Bosch BMI323 is a 6-axis low-power IMU that provide measurements fo=
r
> > acceleration, angular rate, and temperature. This sensor includes
> > motion-triggered interrupt features, such as a step counter, tap detect=
ion,
> > and activity/inactivity interrupt capabilities.
> >
> > The driver supports various functionalities, including data ready, FIFO
> > data handling, and events such as tap detection, step counting, and
> > activity interrupts.
> >
> > Signed-off-by: Jagath Jog J <jagathjog1996@gmail.com>
> Hi Jagath,
>
> Nice driver.
>
> We are rapidly approaching the end of this cycle and as this is a
> large driver, I think it could do to remain on list at least a week
> before I apply it or until it picks up some tags from others if that
> happens sooner. Hence I'm afraid it might well sneak into next cycle.

Hi Jonathan

Thank you for reviewing, I understand the need for additional time
to ensure a thorough review and to await feedback and tags from
other reviewers. I'm okay with your schedule.

> > +
> > +What:                /sys/.../events/in_accel_gesture_tap_wait_dur
> > +KernelVersion:       6.7
> > +Contact:     linux-iio@vger.kernel.org
> > +Description:
> > +             Timeout value for tap gesture confirmation.
>
> Units need to be specified.  Seconds?

Yes, these are in seconds. I will add units in the next series.


> >  source "drivers/iio/imu/bmi160/Kconfig"
> >  source "drivers/iio/imu/bno055/Kconfig"
> > +source "drivers/iio/imu/bmi323/Kconfig"
> Same on ordering.

Sure I will correct this in v3.

Regards
Jagath

