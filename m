Return-Path: <devicetree+bounces-146109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 559D3A336EE
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 05:29:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF1C23A744B
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 04:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1312063DA;
	Thu, 13 Feb 2025 04:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="msam2604"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B375205E3B
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 04:29:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739420953; cv=none; b=BZYGl6faZ5hsF22oAbmEKe0begvT6jzKLd/VWRqPw3jXFfWq4OZaMPHkrhvoqzrDHKuE7jsjKkBvOjtcCqp9t2LF2uMWdGrr0cqo7+yoYZ0FnL18AIoRFYiF15h/DjdSkpJG4FYm9xNHz+q0lV2mZ6Q0D/ZHKHtzRnF4Gbh2j8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739420953; c=relaxed/simple;
	bh=h3/8+/iHl10FDDdqUS3icszTzDsLmSrr3EXBpjwf3qs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FhVZspC8+V+Wc26OxBFgtErCP0/yTFSvq90ZauoZc30CcoS3YrYXfmUp7sLfkGlG8Juk4galIbRK6D0SP9jodQ+cOO1NETbm2NwpKJxN/RzwL0gjmJM6Yt+H+QKG+z/g0WAzHMkPIdY8MPrr/G/i+ppqdE+kd4K7ybBtJR+Q+9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=msam2604; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43946b5920cso2439465e9.1
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 20:29:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739420950; x=1740025750; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mpG/X92CWnMdpmxP4abdXtAgCygQA19P9d/qpK5HzEo=;
        b=msam2604gUAu3pD+51yhjvpPeEfoiuD3I1GM97U43Jc082ZOxjKvdMhINx3tc0Bhzo
         a1+WychCHOj5oXo1gixCTT0aER3wOpRXGnYk8M6HqkO18H1lKYZz27fMd06aY7cwKygu
         JzflX69Kj0K1M+kQSG230Q/MjhXqCND38yMnqkskV5csjfk4Nk8AK7jkT3oe58tAO46H
         m71v4gUyPcOdkSzc9rEaycxe5Ivp8AxqTPIGBsiSrHy/HYl0pvwglEJGWYLDUb3Johyb
         JZz2MwACJGybbiOIeJqfvs41wJg6jcW4mKG6fA/yEhDSKYwg6LJspBJyWsxSVYj1EXTH
         7mmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739420950; x=1740025750;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mpG/X92CWnMdpmxP4abdXtAgCygQA19P9d/qpK5HzEo=;
        b=Yh3GIR+I2OSupnCenRJiTNBppYzUYqIIWIInwXVUzSd1ihC9n60UAI7IHbEZof6X5E
         WmSd8+Urwd9DSr07eVHieWFmxfIFjcaIvn7UoFXr2Zcb8/Yf2tujYT4TfdJAYvNa49H+
         ihXJLsuT1au1Am7JhCf0JgNVzP916bQ8BQNcekdDr4d0fLiAGmgYzB9VYih8QhllJj92
         rpq5egeaICaLkPiHKBVXD+x7O+YCGHjRDrFQ7KunOU1lQeE7Pi5vygYkOvkpiMl81kWF
         h6acpcP2yqCJfn0691NlK0NYae0XG8VXA85U/Y2hxHcDIc6nwD586sSmXBkCzuGFdlbP
         tDHw==
X-Forwarded-Encrypted: i=1; AJvYcCVyjNV2LoUW33Xl8qMF4UX3tm0A78N0RcH9xjptee6Iloi6J8c0T2QynHLZFeioSvKs5FHvRzHNFG4c@vger.kernel.org
X-Gm-Message-State: AOJu0YxAgJR8jEMYDxENzNlAPhLLA4cM6BWdrISL/FtPS7CVwB3kJf1p
	2HkAkcDHIGlytuc/TRKWNp9fz01Pawa3CL/GqEPlMfSsNWkxIbggLRCNV0+C6suDLz3QI+dynf9
	1KWI1wQfgBDgIpPZ2OHg2aHVe4QA=
X-Gm-Gg: ASbGnctF3OAol9dURH4Ty0CMMOnR6ND8yuKomF6Yxo+DyvsddY9aRKKyaaIDNnln5aX
	/9hdEMyAU4AgQkHBSYsl4xKc6KH0YuLFv2DKxJ6AbvoHtr82oQmP2m1eE/unH+WghZgDU2TpIf+
	sOZGrFxLWoabu2CwH5S+RFExKXwy/r
X-Google-Smtp-Source: AGHT+IF3MLudSFVnNY7klY1SEt5ogElGI4HfqObuRC7k5kXvKAxlXf08Y0jTlDnCHx2XzTyWFmqcq9hbMH/xhQHroM0=
X-Received: by 2002:a05:600c:8509:b0:439:4858:3c77 with SMTP id
 5b1f17b1804b1-439601a12b0mr15576355e9.19.1739420949976; Wed, 12 Feb 2025
 20:29:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <Z60MU05JLtI9VzuU@windev.fritz.box> <Z60MiujaPpWNYmBE@windev.fritz.box>
In-Reply-To: <Z60MiujaPpWNYmBE@windev.fritz.box>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 12 Feb 2025 22:28:59 -0600
X-Gm-Features: AWEUYZl_RV7h_eBDUzo5-bNaWEOJWWryUGI0L0oblCDcfiOMUP1xSlcFRXyIMWg
Message-ID: <CALWfF7KHagN=ef1C01PmmpfumdthBy6PKPi3U+9K+rgP8sNrOQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: add MNT Reform 2
To: Patrick Wildt <patrick@blueri.se>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

A few questions below.

[ snip ]
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi
> new file mode 100644
> index 000000000000..898a7b29692f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-firefly-icore-3588q.dtsi

That's interesting, the Firefly Core 3588Q SoM's dtsi is more than 95%
the same as the Core 3588J SoM's dtsi.

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-firefly-core-3588j.dtsi?h=v6.14-rc1

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> new file mode 100644
> index 000000000000..cd7a82a3b0de
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-mnt-reform2.dts
> @@ -0,0 +1,348 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Copyright (c) 2021 Rockchip Electronics Co., Ltd.
> + * Copyright (c) 2024 MNT Research GmbH
> + *
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include <dt-bindings/soc/rockchip,vop2.h>
> +#include <dt-bindings/usb/pd.h>
> +
> +#include "rk3588-firefly-icore-3588q.dtsi"
> +
> +/ {
> +       model = "MNT Reform 2 with RCORE RK3588 Module";
> +       compatible = "mntre,reform2-rcore", "firefly,icore-3588q", "rockchip,rk3588";
Will you be adding "chassis-type"?

> +
> +       aliases {
> +               ethernet0 = &gmac0;
> +               mmc1 = &sdmmc;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial2:1500000n8";
> +       };
> +
> +       backlight: backlight {
> +               compatible = "pwm-backlight";
> +               pwms = <&pwm8 0 10000 0>;
> +               enable-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_HIGH>;
> +               brightness-levels = <0 8 16 32 64 128 160 200 255>;
> +               default-brightness-level = <128>;
Interestingly, the brightness curve is more fine-grained than one used
for the IMX8MQ SoM and the A311D SoM. Should those be updated
eventually?

brightness-levels = <0 32 64 128 160 200 255>;
default-brightness-level = <6>;

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/freescale/imx8mq-mnt-reform2.dts?h=v6.14-rc1#n24
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/amlogic/meson-g12b-bananapi-cm4-mnt-reform2.dts?h=v6.14-rc1#n198

[ snip ]
> +
> +&combphy1_ps {
> +       status = "okay";
> +};
Should this be left out? It doesn't look like pcie2x1l0 or sata1 is being used.

> +
> +&combphy2_psu {
> +       status = "okay";
> +};
Should this be left out? It doesn't look like pcie2x1l1, sata2, or
usb_host2_xhci is being used.

> +
> +&saradc {
> +       vref-supply = <&avcc_1v8_s0>;
> +       status = "okay";
> +};
> +
> +&tsadc {
> +       status = "okay";
> +};
These nodes should be sorted alphabetically

> +
> +&sdmmc {
> +       bus-width = <4>;
> +       max-frequency = <40000000>;
> +       no-sdio;
> +       no-mmc;
> +       no-1-8-v;
> +       cap-sd-highspeed;
> +       vqmmc-supply = <&vcc3v3_pcie30>;
> +       vmmc-supply = <&vcc3v3_pcie30>;
> +       cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +       disable-wp;
> +       status = "okay";
> +};
> +
> +&mdio0 {
> +       rgmii_phy: ethernet-phy@0 {
> +               compatible = "ethernet-phy-ieee802.3-c22";
> +               reg = <0x0>;
> +       };
> +};

Jimmy

