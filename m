Return-Path: <devicetree+bounces-51280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3611787EB7C
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:57:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E411728231A
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 14:57:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43CEB4EB39;
	Mon, 18 Mar 2024 14:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="LBWbdg7R"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE3024EB32
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 14:57:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710773833; cv=none; b=JW94bYIwOtGCkchWghoN3cFrM873sqbLSo0/aqlsaLjTogbtuFiU//Mn3M57QxsDtvCKSUDWBZ3kza9mnnWZchTW2nMxjBfBVl+9b+/6pGdLvEquPFEC7yJ+Hfh67fAWtV8pGwtYqu0nRy7z3OK7DHXcEJ6DZLhLEz8auGW9KME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710773833; c=relaxed/simple;
	bh=aqkSeiNbaBa/hffN1QtsyUDdszzapf+0lbAovHQToIA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fl47Ukh1VfSnm9EFNLIQqzumQxzYRxBxwNvIqz2/NIqZX1n5Nc6AqurYSYV52ODVeuJh5vT9IlHIoQTIV6iI/G3R8K1TUHTGgDydeIvDYaud+UlNdzm2B/r8kf2qRXKALWU5ORpdiHL6CyTN9hF3+QX1S2UT8Lfe4FModwfUQec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=LBWbdg7R; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dc74e33fe1bso3628084276.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1710773830; x=1711378630; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0GXVk/R89vNIXPbvaLrsF3w7BXuAR03eMrFTrEPGNw4=;
        b=LBWbdg7RQI0ax3avqpOJU5l+eC7JBR8FWEiNwu1wlXXoP1apf1g1Crx6iiz0vp+NJe
         yXg+Hq46hADZu8IL538EpclNtP1T+gqr7e6ZmyIsYOky+jMwEa2zJeIl2uxov3HWOgZz
         zzDNCjO84SgK/gsplpeUM91wsGrK4gHo0GUmaN7CdyYAQBwPmqVGvHrCNvEAA0Q8ci56
         XGpTEba2Bwbk9tQj/dheHMJpQwfK+oRQnW4xE2hTAYSFEQ9ZuWfizZgUlhLMj3XXvTvW
         0cwOHiUn0xl6FeZdqSPsiotNJtPg2pJXVoEEuUTW6PpDOI/08lMR8sAxCFoxaN/HrJ1J
         41DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710773830; x=1711378630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0GXVk/R89vNIXPbvaLrsF3w7BXuAR03eMrFTrEPGNw4=;
        b=uRdE+wYkBiiZ+31aoGUXpCN2rscx/O61jAByVT7s3XVs7nTv5IAzHo6H/NzXqbloeH
         PoaD93vpPnnLl8QRPQnR1p9c+7oeJBOOS/UHyVR66MYfaPK45Ef/ut/OvmuMFM/YyhVD
         iKBTeH2Xjk7Ycch6wG/dTRw4xJwL/aIA07n1+L3x+9vJZaSTN6L7BVTVmbQ0NdQrD9Ko
         R9rQR5rIKweJ016F5lHBN9eoOJiWIM8SCywOGUfXn8CfN0SWhQHV/Na3VNua1BRHkcAj
         qqz3V6CDgfYZyng5AZ9ao1isfZLWqk+7ynMWuR8S5NWl/KaWgK2hJ10h/yQ7SUfjo9o0
         V9vA==
X-Forwarded-Encrypted: i=1; AJvYcCUlHvFoXY4tlYJA8QcrXGIA5yBa0jvjHjwJP/AHC6RCc5wd0FxL0NvkaiMRXM6hPm0b5gVGUHQb3Gwayeo28DBwdjYj1T7C3IbtcA==
X-Gm-Message-State: AOJu0YzYefJsLoMeya/G0bPXJrz+L8zRVPpghKc9Hg+AmZ8jXRukOnRJ
	4c4dpc8Nw3bs5pYoZcQxGUh9oMZ+ilj7r6gmDDWvdhqRlv635YrQi/Q/cSgxtJTqlo4kq2lv2Zt
	WV0bH20tPln+HPxXc1Bpzgsbyu61Wm9mQ3NpC/A==
X-Google-Smtp-Source: AGHT+IEp48gLWDwrHpqJRLvZRWympTh8tSaF9+n6pHvpcSzAPqxUKjFJLnucvzJ6+Pd7HR5O1tTBBqSnQUpKp61xs9c=
X-Received: by 2002:a25:5:0:b0:dbd:8f9:a71 with SMTP id 5-20020a250005000000b00dbd08f90a71mr9261659yba.28.1710773830603;
 Mon, 18 Mar 2024 07:57:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301213231.10340-1-laurent.pinchart@ideasonboard.com> <20240301213231.10340-14-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20240301213231.10340-14-laurent.pinchart@ideasonboard.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 18 Mar 2024 14:56:53 +0000
Message-ID: <CAPY8ntA+PSTfee=B8kZ0MkndCQ2iDErSPdm54bzgQAJ2RnwfcA@mail.gmail.com>
Subject: Re: [PATCH v6 13/15] ARM: dts: bcm2711-rpi-cm4-io: Add RTC on I2C0
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: linux-media@vger.kernel.org, David Plowman <david.plowman@raspberrypi.com>, 
	Jean-Michel Hautbois <jeanmichel.hautbois@ideasonboard.com>, 
	Hans Verkuil <hverkuil-cisco@xs4all.nl>, Naushir Patuck <naush@raspberrypi.com>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, kernel-list@raspberrypi.com, 
	linux-rpi-kernel@lists.infradead.org, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, bcm-kernel-feedback-list@broadcom.com, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <uwe@kleine-koenig.org>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 1 Mar 2024 at 21:32, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> From: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
>
> The cm4-io board comes with a PCF85063 on I2C0, connected to the GPIO44
> and GPIO45 pins. Add it to the device tree.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v4:
>
> - Use the right part number in the compatible string
> - Add the quartz-load-femtofarads property
>
> Changes since v3:
>
> - Separate addition of the RTC to a patch of its own
> ---
>  .../boot/dts/broadcom/bcm2711-rpi-cm4-io.dts    | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts b/arch/arm=
/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts
> index d7ba02f586d3..d5ebb535afd2 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts
> +++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi-cm4-io.dts
> @@ -101,6 +101,23 @@ &genet {
>         status =3D "okay";
>  };
>
> +&i2c0 {
> +       status =3D "okay";
> +};

This is already the default from bcm2835-rpi.dtsi

> +
> +&i2c0_1 {
> +       rtc@51 {
> +               /* Attention: An alarm resets the machine */
> +               compatible =3D "nxp,pcf85063a";
> +               reg =3D <0x51>;
> +               quartz-load-femtofarads =3D <7000>;
> +       };
> +};
> +
> +&i2c0mux {
> +       status =3D "okay";

Default status queried on patch 12/15.

With those clarified:

Acked-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

> +};
> +
>  &led_act {
>         gpios =3D <&gpio 42 GPIO_ACTIVE_HIGH>;
>  };
> --
> Regards,
>
> Laurent Pinchart
>

