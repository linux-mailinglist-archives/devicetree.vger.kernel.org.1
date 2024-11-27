Return-Path: <devicetree+bounces-125015-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 52DB29DA867
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:24:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D6EE9B21B97
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:23:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E469C1FCF55;
	Wed, 27 Nov 2024 13:23:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="knp5gxrE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30B11FAC5F
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732713832; cv=none; b=fHkwrKdraca8qdUqoudiFWivEH2STMSIG6oDOJcoRMaNEDV3D9SQfTguvzdNLk0NMdju8R5vp1T1Tu858u8s1RA6gRjZ7xU49xuUCbwE0t2sgxH8kvV3bTkXtMXdnLr7wp2OUrv/1oDJwH7B+bBh6KHkbQmxwup1nhXTMstJUdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732713832; c=relaxed/simple;
	bh=qtxiBUJrSqg0i3oZn3/EBpNkSvaRXXxPaeCDhN9LRp4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GcCJcs/4ZWz5xstAZh0FYI4t1JyQgE50rl5+6M7Aji83nS16nb3y1ZOgLwUh40iSDRO/HXZ7QwuMruv+40cl7OfXvkBIZi+9gKSQxOdktyaHrX5TZr6nK6HXTF2p1Sq8tiuJePRZPb2OvxP4koxqyLjIuO5hXBbmd2K10iY+3Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=knp5gxrE; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1E5AB3F1C0
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:23:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1732713829;
	bh=cL5M32W3R5eUX/4zpFKVLV/R7h3YjIcs++U+D/L5AM8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=knp5gxrEgQZ3p13zieBnRYFMh9F3iOKLvsTqRZWI75n83aiG8BtkWimm/F/xHwBCT
	 WF/EuAH2hrLekrjwP/8iDhrmClDE8gpI2m4BesYWNOVrGgLfac9aNon1HauG+rT6Eb
	 EhItWNHJWVGQxGclyP7s9sgvKRAEycUU5meyzHs/zBBv68tLq4K4uxArud0qbzfzLY
	 +hWtsmO1vXsMOXI3H09ygRmBArdvq/dmXwuYMCwGNV/GN4wh+AKc+PxFvI9MLBLroK
	 pB7QmMT+TI+xH2RFwZcGjjmGuH7hYmkkHmfx56XQDDEwgx1LlEzH66VOf/PCV/BZ+x
	 s7WKZ8ae1cVdg==
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-71d49784700so2692684a34.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:23:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732713828; x=1733318628;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cL5M32W3R5eUX/4zpFKVLV/R7h3YjIcs++U+D/L5AM8=;
        b=My8LsyGWAu0/p45Fi89K2b1dg+G23QbDRa/uzII0D8lhsaQSIZB5qimcymbCc9spCb
         k459uhwtlfaswpqkJvSAzrB2u+Q6BnXN86xXeJQscY75FnJ2KNwDbOH27660Qly6GTZg
         tCMK8E9PBpwi5kQJ6kBMaG7iOvE/W3bYMciJU1BxTLYz9FoDL8++LxmPAO+DBzEyH6Wg
         a+t8x4TTarPKX/7vBxgBrfRiK8Nmg/UiQI3Idg2Rq81nAtj/Yq5z8bkpLmuAwz0c5wtE
         3yAeCltGKd1+wQp+hFxskO3tmf2tS3n+zGR4ngsHFI4wAv2Kl6Czy8E7wC05kWZDQUtZ
         k4/A==
X-Forwarded-Encrypted: i=1; AJvYcCUw8kNtV9M/dzNVK5fgqKRpVXOZL6gGPy5C4vMf9E01AMwM9Uap7l073rRoMpq2o8dj5UdfIN5OmGnT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx84CP96ncOJImInvphyT696r2pRQmtX4W5cG+TK94Y+HV1m4uW
	tsiggm+AHMa00QPPnhwd0Pxkef/DPcUQUaDH7JQGLRQIS5jgi6xHuihk8CJ2LMzkjyclASebm+V
	LkAyc7k3tEnxLW2APOpx3Gum88OLblfiHsvCIREQP0CXrKHu8b4eL/N/516nCdEdlVlOehgX5fN
	y/Jg7MwLZ8SxYJzgC3Z5Gb/PP2p6wjHbEEz58irvCXkWT+DNXsmw==
X-Gm-Gg: ASbGncto4F737z9NcnrLa/tHTurRI9o4nObKhV6CiCkXJ4ccceaOoWgLER4MQdLMuTB
	AQRnma3zo82eIUkPWZkLfu60hjbNlgnDZ0qYArjoQ++56ZpAD35kPDfGnRbXZ
X-Received: by 2002:a05:6808:f0a:b0:3e0:4f6c:abcb with SMTP id 5614622812f47-3ea6dd47acbmr3886365b6e.28.1732713828044;
        Wed, 27 Nov 2024 05:23:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGufrHOyrMhM1rehaDhI1q2R5G+xXwoSxzeI2W2FAdnLZZRRJ6/ihK0V7J0ERO8UeSUM8vMDAVAOcN6kRcdi7Q=
X-Received: by 2002:a05:6808:f0a:b0:3e0:4f6c:abcb with SMTP id
 5614622812f47-3ea6dd47acbmr3886347b6e.28.1732713827792; Wed, 27 Nov 2024
 05:23:47 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Nov 2024 05:23:47 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20241126073836.17208-2-e@freeshell.de>
References: <20241126073836.17208-1-e@freeshell.de> <20241126073836.17208-2-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 27 Nov 2024 05:23:47 -0800
Message-ID: <CAJM55Z8---o6_ZxeyUu_M74LA_zKfeksBmRGFkm2C66hRJbPug@mail.gmail.com>
Subject: Re: [PATCH v3 1/1] riscv: dts: starfive: jh7110-pine64-star64: enable
 usb0 host function
To: E Shattow <e@freeshell.de>, Henry Bell <dmoo_dv@protonmail.com>
Cc: Conor Dooley <conor@kernel.org>, Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Pine64 Star64 set JH7110 on-chip USB host mode and vbus pin assignment

Here I'd like it explained that the Star64 board routes 1 of the 4 USB-A ports
to USB0 on the SoC rather than to the USB 3.0 <-> PCIe chip.

(Confusing for users that 1 of the 4 similar ports only does USB 2.0, but
that's too late to change and not relevant here)

With that fixed:
Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

>
> Signed-off-by: E Shattow <e@freeshell.de>
> ---
>  .../boot/dts/starfive/jh7110-pine64-star64.dts | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> index fe4a490ecc61..b764d4d92fd9 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-pine64-star64.dts
> @@ -80,7 +80,23 @@ &spi0 {
>  	status = "okay";
>  };
>
> +&sysgpio {
> +	usb0_pins: usb0-0 {
> +		vbus-pins {
> +			pinmux = <GPIOMUX(25,  GPOUT_SYS_USB_DRIVE_VBUS,
> +					       GPOEN_ENABLE,
> +					       GPI_NONE)>;
> +			bias-disable;
> +			input-disable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &usb0 {
> -	dr_mode = "peripheral";
> +	dr_mode = "host";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&usb0_pins>;
>  	status = "okay";
>  };
> --
> 2.45.2
>

