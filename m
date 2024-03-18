Return-Path: <devicetree+bounces-51279-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A423E87EB7A
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 15:56:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5A40A282266
	for <lists+devicetree@lfdr.de>; Mon, 18 Mar 2024 14:56:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C85314EB30;
	Mon, 18 Mar 2024 14:56:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="TPf4Go0H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AC54C619
	for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 14:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710773812; cv=none; b=ghAc5ILMmHYmqawUatRfZskJ86UcTCFZdm6Y25oMKu/993v4WLjGHtuFVXbWBzL8LzDZhJJaRO0VSPL4mvve0qkikRXBO3lTZY7wzHDzYU8PJtzseQzakR9lhaDyhW3kw0swtUdgUicJSn0GCfV9LiyfK/gUuARkImg7qozcBsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710773812; c=relaxed/simple;
	bh=2Hto5oSU100k6eNTwmcTTVUdT7dUBLnbh2DWJiUzoe8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KHk2AYZGNnoxF2ULmXd8d0y4LLssp7kQSVUVwr7yd/TJABCVmdxwiwxOpvMoXQP1LUWVdE7t+byXb0jcxTsMd57M9jq8SM6aWdghcnMbOrwtlC6ItRC+N8XD6vBJg626UuCmEaQGzwTA1kbejW877j6OLGEyRgkzfoxUBbrRVXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=TPf4Go0H; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dcc73148611so4720681276.3
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 07:56:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1710773810; x=1711378610; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVgpcRP8MLBq/WazqUdFYV0IEInnP4rHr8dpbkNJyf0=;
        b=TPf4Go0HHxpv04ohTqCgHVdipRANJ575P/lxFQJxYXOrM9eogEFEc9+sqTDJyoYAD9
         uHafDOsojII6FIbTixVQKCdd3u752zZtO4cR+8HPifG+3lhDG3NtOG0nxrCAdvwI0E/M
         6TgR+tGAeTz09DrF8hiEa7r8ZYBWGSLDjZoyeNtjreMZ0itptoTS0jxsZjfhcS+YA8PH
         H6iKyqwYvzKVwOcbyIapq372LDUSsqGXRRivu+mnVsV3aGx67P4BN2VHnyhXOsQH5DK/
         vum/vo5drO+RPKfyvo3s5UytQZ20hYZkqmfsybtYEBlaS5kDmvkhJODz7Y7Thg0cdaGe
         jo+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710773810; x=1711378610;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fVgpcRP8MLBq/WazqUdFYV0IEInnP4rHr8dpbkNJyf0=;
        b=TsnbxOAEvg7ZrEEyOMIS2M4XZVIyxxZ3gRewoWbfyKOytoIpfYo7li18qKqIZUSaQR
         WIDdl/jEDRapUo/nPHrYsFQOrKDJZ11B5GE8FQ8yPcggVMM4Y3oDCk2yRO5uEfsZ+oHT
         ixR9G16+kQzgGAYr+/o5XRjZ9cqPlvmRjSpM9PCIqHtwsX3EpKqTZ7SxkL770kMuCvVk
         q7QojYF6caXjxAQFGX9G1KwsKFa96LrEYab1vbJvnxQhfYMXODBkyVpTq/gtL/h6D9wj
         PUOL88Ay9Q1C2Iw7uQz91HSZojwZPH9LwAeOlltjczVQ2MnYPNTlRURsRES+XQ7dU/aY
         5bDw==
X-Forwarded-Encrypted: i=1; AJvYcCWJeF0WjuQ9QrFku5i9OtjXgW1KbAY/nWK50ioNCDps6lACJr0+FhWzJgSJpv5cHZKli9HhQ+XzKL5Pv0dsPsTu+w5IXLoHzkqUKg==
X-Gm-Message-State: AOJu0Yz7N/BqUTYLaKQ45gFTolfqDomemTw1LfKG9yw1wdwpf9TkI+aa
	IC20ZXKlN84J0fJM6IDRurtelbxSnHUVQm9j7IdQ1C2lsJqc+m7H6xX5o4kLI1ppls53+29jab0
	uKRtNhuQ7sd/PyFaXujLIG3LtqKL2AnhKvf2oqA==
X-Google-Smtp-Source: AGHT+IEnA7F8oObBo9EpGKUoTWl7xIkFkkhBSRtsHPS/Q76RbIYXpSMTCDQr6RlLla2KELDBAn8BXlshzPylOc5iUTM=
X-Received: by 2002:a25:2689:0:b0:dcc:8d09:c7c4 with SMTP id
 m131-20020a252689000000b00dcc8d09c7c4mr10552640ybm.7.1710773809757; Mon, 18
 Mar 2024 07:56:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240301213231.10340-1-laurent.pinchart@ideasonboard.com> <20240301213231.10340-13-laurent.pinchart@ideasonboard.com>
In-Reply-To: <20240301213231.10340-13-laurent.pinchart@ideasonboard.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 18 Mar 2024 14:56:33 +0000
Message-ID: <CAPY8ntAYbb8oBOww5yR+7u8UA-V=zemJMkZ7SWySH3C2bqmFMA@mail.gmail.com>
Subject: Re: [PATCH v6 12/15] ARM: dts: bcm2711-rpi: Add pinctrl-based
 multiplexing for I2C0
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

Hi Laurent

On Fri, 1 Mar 2024 at 21:32, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> From: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
>
> BCM2711-based Raspberry Pi boards (4B, CM4 and 400) multiplex the I2C0
> controller over two sets of pins, GPIO0+1 and GPIO44+45. The former is
> exposed on the 40-pin header, while the latter is used for the CSI and
> DSI connectors.

It's true for all Pis that I2C0 is exposed over 2 sets of gpios.
Seeing as we want to support cameras on Pi0-3, is there a reason not
to include the mux on those?

Looking back I had started this way back in [1] with all the variants.
I thought I'd posted the v2 follow up, but can't find it.
The original Pi 1 models A & B were the annoyances. The rev1 put the
camera on i2c1 GPIOs 2&3, with the rev2 on i2c0 with GPIOs 0&1.

Whilst it would be nice to have support for all platforms, this
doesn't stop us moving the mux into bcm283x-rpi.dtsi at a later date
to add support for the other devices.
I'm happy enough having the first step of getting Pi4 working, with
others being done later.

[1] https://linux-rpi-kernel.infradead.narkive.com/lmzYlT3c/rfc-arm-dts-add=
-i2cmux-pinctrl-config-to-raspberry-pi-i2c-0

> Add a pinctrl-based I2C bus multiplexer to bcm2711-rpi.dtsi to model
> this multiplexing. The two child buses are named i2c0_0 and i2c0_1.
>
> Note that if you modified the dts before to add devices to the i2c bus
> appearing on pins gpio0 + gpio1 (either directly in the dts or using an
> overlay), you have to put these into the i2c0_0 node introduced here
> now.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <uwe@kleine-koenig.org>
> Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
> Changes since v3:
>
> - Split addition of the RTC to a separate patch
> - Move the mux to bcm2711-rpi.dtsi
> ---
>  arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi | 31 +++++++++++++++++++++
>  1 file changed, 31 insertions(+)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/=
dts/broadcom/bcm2711-rpi.dtsi
> index 86188eabeb24..826ed6efa9ff 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> @@ -17,6 +17,32 @@ aliases {
>                 pcie0 =3D &pcie0;
>                 blconfig =3D &blconfig;
>         };
> +
> +       i2c0mux: i2c0mux {
> +               compatible =3D "i2c-mux-pinctrl";
> +               #address-cells =3D <1>;
> +               #size-cells =3D <0>;
> +
> +               i2c-parent =3D <&i2c0>;
> +
> +               pinctrl-names =3D "i2c0", "i2c0-vc";
> +               pinctrl-0 =3D <&i2c0_gpio0>;
> +               pinctrl-1 =3D <&i2c0_gpio44>;
> +
> +               status =3D "disabled";

Why defaulting to disabled?

The current mainline DT defaults to i2c0 being enabled on GPIOs 0&1
(done via bcm2835-rpi.dtsi).
If the mux is disabled, then this change has left i2c0 being enabled
but with no pinctrl property, so it's not connected to the outside
world.
GPIOs 44&45 have never had any other user, therefore claiming them for
the mux isn't a regression in my view.


As long as we can enable the other platforms later, and with the minor
caveat over being enabled or not:

Acked-by: Dave Stevenson <dave.stevenson@raspberrypi.com>

Minor point that CONFIG_I2C_MUX_PINCTRL appears not to be in the arm64
defconfig. I don't know what the policy is there, but there seem to be
many other SoCs throwing modules in there for their configurations.
It is in arm/multi_v7_defconfig.

  Dave

> +
> +               i2c0_0: i2c@0 {
> +                       reg =3D <0>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +               };
> +
> +               i2c0_1: i2c@1 {
> +                       reg =3D <1>;
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +               };
> +       };
>  };
>
>  &firmware {
> @@ -49,6 +75,11 @@ &hvs {
>         clocks =3D <&firmware_clocks 4>;
>  };
>
> +&i2c0 {
> +       /delete-property/ pinctrl-names;
> +       /delete-property/ pinctrl-0;
> +};
> +
>  &rmem {
>         /*
>          * RPi4's co-processor will copy the board's bootloader configura=
tion
> --
> Regards,
>
> Laurent Pinchart
>

