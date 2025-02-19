Return-Path: <devicetree+bounces-148430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A300DA3C03C
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 14:43:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E91147A56A1
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 13:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13C4B1E7C25;
	Wed, 19 Feb 2025 13:43:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="Sy1GdYfn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75FDE1E0B62
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739972592; cv=none; b=e51w3F+/uaPqdCCzAYTMdnRRwEAYkT2Ao71uFKxz1KKL2SV05EYJ0kZdIWG92xlmyvxb/ymmPZrn+r9NVkcfj2CSSaWSqbbGXCdL7WkKsa9NU8LZN+WvUBtGOF/jByvgFyW+EaHqz3bPmj+rdtFKvu3qQoV/ksCW13VmXWrlfio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739972592; c=relaxed/simple;
	bh=2ZTdAQt9df8PaTguKr01nU1Fak9WbZrG4FFH1ejRmE8=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WVVwhmWzfELSsOS/P0Fvew/+dTfInPH/jXH8wps8u977y9oJpXPZK2eF+m/U7PeVjL4SiycMKPdv0UOoCSsGx/P2m6SUnvIleaJmgTmFCPmOtIv5JC5MpDLnPn4hoiesblSyekLfkormsa952vknWyh6+0Xbpy00I9cgSYHlBlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=Sy1GdYfn; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f72.google.com (mail-oo1-f72.google.com [209.85.161.72])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 085533F2C5
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 13:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1739972588;
	bh=WFjePigVwF4Z8j9CYTif0ybYr6jQ2TZ/Iin7O5BwwQ4=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=Sy1GdYfnf0ibXu9MD7IVANlxgA5M+uiNrl+9OfU+GPV+FMWjwnhXXM4t4sIs/9fE3
	 3xfTi2QbzESK+biWiF/5dxO3iv+LbDoULGpFKp4G6zRVv/animRcaxX8atCQNMnxK2
	 I8lTJBCYhmUDGrQ7Aj++2sPA0omHtbhD8O7zc+cqKEV/aB+BAVGseXdn2SzDeb8vVc
	 p2LFBO8tJiR5kZr7NQrEr4i7+gZw0ttB94pagxjqvmCskiSiotwmPGef+64qkVBYa1
	 JXteMJfHht34KMA1KFjYEK5mmoV19grosRstT2TkwK/CO69cjH7y6xAa5VYkQWDI2p
	 QM03VYq3b/x4A==
Received: by mail-oo1-f72.google.com with SMTP id 006d021491bc7-5fcf9131da5so1000049eaf.1
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 05:43:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739972586; x=1740577386;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WFjePigVwF4Z8j9CYTif0ybYr6jQ2TZ/Iin7O5BwwQ4=;
        b=ZKucjX+OzHDdXDODbUA5JRq04WGa43LCZkRjx35lmqn/SAgOLYwOo+vhW3h7B/M0MY
         YgLhKRauytgE+z0cnTmReanbjQbBdNTP0zklRmjnMaaRNHbznYCnyp9jTZ8LdQbYppiX
         a+LMU5aBuvpcpO/czvH8XZi6dN//ly+qlBKOsHtNXbHU6auBw7XG3cwCaS/Wr2tLGr3v
         B+OEIK3gluCjvmKFH21NZv2q3LpxjOAEOuxfbFGHvjro7EzrS3Ac8a5G3eDYCaKRPU+I
         2Qat6O9p7jkcdYO5QZBgztQ+VM5CBdxZXsX5ZsdrfAVYnWbMmuCvQ9o6Ppq7VeTYeXgu
         H7+w==
X-Forwarded-Encrypted: i=1; AJvYcCXwaSZR22FGNnPxsTOHNEUnZw0vl1nEZOC/d25TXlDSgo1dAzfPb77wzf0PumAl2uhXHyglczojbmjM@vger.kernel.org
X-Gm-Message-State: AOJu0YyJCJfvw2u02ayWohhIGpACmWcsSPDCATAb15ozNLzr2sxruXw8
	lseo5RjgPJxYiSHFJYl5j6ly3d+U7CVAP4vynL2KLRuN3k7CAgxm/8WvOi7pStGUc7FU9LyHzGs
	UKxAsHBbsXdQye5F+BVptKWgdr/GREY12zRwYnHm+0OdJqgDtj84gkY2NWiXLAqp5mbR/UC9GQM
	fxME1TxJNyNxqFx88tCBK1Cs6p9PJnUyHgHY9/GLG7952V9U1C7w==
X-Gm-Gg: ASbGnct3aVe4RhyYg0oqtviH7xLK7ERaWPq/nepFVlPjg61vSjniq6OX07jXM2r+EKR
	dR7JBpFWD0iTkd1r39qxJeeK34y2WHGXexJG9dYrQhy6bbrAVt15/eGl98z6AYnx1fQ/LeDI7gI
	7/IzCi6FoCbCfOTiw=
X-Received: by 2002:a05:6808:398a:b0:3f4:d61:36cf with SMTP id 5614622812f47-3f40f236581mr2682840b6e.30.1739972586668;
        Wed, 19 Feb 2025 05:43:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGYn9lRXBv/JpzO42HxdnnTEcRnjUT2CvEOcRyp+AhxkqJL3rRw8dalMjzUUDUoa47Zxxh/fN+SUIulaLwLwpw=
X-Received: by 2002:a05:6808:398a:b0:3f4:d61:36cf with SMTP id
 5614622812f47-3f40f236581mr2682828b6e.30.1739972586434; Wed, 19 Feb 2025
 05:43:06 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:43:05 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 19 Feb 2025 05:43:05 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250207093618.126636-1-sandie.cao@deepcomputing.io>
References: <20250207093618.126636-1-sandie.cao@deepcomputing.io>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 19 Feb 2025 05:43:05 -0800
X-Gm-Features: AWEUYZknIHcy7u_-bftvl8Qvj-VvK3o4Nv3eX4N0vbhXOKNS0iUj00wp-j9bK3U
Message-ID: <CAJM55Z-Csuw+sUgKkNUdsXfX0LkhsQKRTXfVXxm4kmKeABodTg@mail.gmail.com>
Subject: Re: [PATCH] riscv: dts: starfive: fml13v01: enable pcie1
To: Sandie Cao <sandie.cao@deepcomputing.io>, Conor Dooley <conor@kernel.org>, 
	Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Sandie Cao wrote:
> Starfive Soc common defines GPIO28 as pcie1 reset, GPIO21 as pcie1 wakeup;
> But the FML13V01 board uses GPIO21 as pcie1 reset, GPIO28 as pcie1 wakeup;
> redefine pcie1 gpio and enable pcie1 for pcie based Wi-Fi.
>
> Signed-off-by: Sandie Cao <sandie.cao@deepcomputing.io>

Unfortunately I don't yet have a board to test this on, but it looks ok to me.

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> ---
>  .../jh7110-deepcomputing-fml13v01.dts         | 34 +++++++++++++++++++
>  1 file changed, 34 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> index 30b0715196b6..8d9ce8b69a71 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7110-deepcomputing-fml13v01.dts
> @@ -11,6 +11,40 @@ / {
>  	compatible = "deepcomputing,fml13v01", "starfive,jh7110";
>  };
>
> +&pcie1 {
> +	perst-gpios = <&sysgpio 21 GPIO_ACTIVE_LOW>;
> +	phys = <&pciephy1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pcie1_pins>;
> +	status = "okay";
> +};
> +
> +&sysgpio {
> +	pcie1_pins: pcie1-0 {
> +		clkreq-pins {
> +			pinmux = <GPIOMUX(29, GPOUT_LOW,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-down;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +
> +		wake-pins {
> +			pinmux = <GPIOMUX(28, GPOUT_HIGH,
> +					      GPOEN_DISABLE,
> +					      GPI_NONE)>;
> +			bias-pull-up;
> +			drive-strength = <2>;
> +			input-enable;
> +			input-schmitt-disable;
> +			slew-rate = <0>;
> +		};
> +	};
> +};
> +
>  &usb0 {
>  	dr_mode = "host";
>  	status = "okay";
>
> base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
> --
> 2.34.1
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

