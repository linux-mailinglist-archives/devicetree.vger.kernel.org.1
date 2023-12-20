Return-Path: <devicetree+bounces-27351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E97E481A039
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 14:48:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CF56B227E1
	for <lists+devicetree@lfdr.de>; Wed, 20 Dec 2023 13:48:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051CE36AED;
	Wed, 20 Dec 2023 13:48:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="qxxP/xo7"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F5936B1F
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id A814E3F442
	for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 13:48:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1703080106;
	bh=cLKk4FLFKZPRJCthkwAAXukNGNTHJtGoc9bArlIgi7E=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=qxxP/xo7cvOnM1juZZr26+NntHIMVegsp4Wq31JF5Tu8muRM8t5aG9NOB8T1pMvEK
	 70u6nh/3MeyurL9bqrQbdxzV/+XFI9z8S1Mhw+HwCaiz+zj6B2yp/gIFvbJEz9Ml23
	 pZaYcYU4+9gXsSYACFm3gCZPmZWiMNtuHTVy4fKWHYjvfVzs5+oenAmGXdpxseKw81
	 WHt67g/tCXIR8KXG/bS0q4wgeHMCY9iZXPbVC1i+Yrnl2rCziTNbdb9D80O0mTn6Ch
	 zMX2I8YtEG06yxXBxIrRy0VvGWEmkGVKqsz2jesbjg3P1AccwZiRdiSRseGBKvPlx6
	 YfYow+OdLG55w==
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-5ca26c07848so77331447b3.0
        for <devicetree@vger.kernel.org>; Wed, 20 Dec 2023 05:48:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703080105; x=1703684905;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cLKk4FLFKZPRJCthkwAAXukNGNTHJtGoc9bArlIgi7E=;
        b=Qc2kFUw6hdB/LLvna4W/7WKsvdMK7zEZxm0Gi4RoyHC87dziHe12UvlkpxOHiEoZjy
         eMkjzvp6NFnopDRMW/FfV8xGQkmGNRdC8jxZ+JB6DUxy0KQCJW1ASPYauEJnv0C3OTjE
         TnuC6SoEbmOIjB85HWk2GVpHyTnKvF+QpdyHGDAixB2RQgvtIGqDeCdv+idSuyZZs0+k
         GaYvhuQR8FSAcv7ha520MPc9Ai4mFlGhbrXmr+zTCUbxnvBj8yX5KdcjDjzhtD/rjRfD
         tq12D571C3C0kPc9CFpt7S+xaTfnvPwlc4evCk57qSU2Pod0Brtblrvf+xdb4LV6t8l2
         VGRA==
X-Gm-Message-State: AOJu0YzFx/m8uhfotUcCj2/2RQPt2HC2BsjNr0VH77Sp4mn6r+o3o6Hb
	H77C+gZdi9wV8Fy3XiChRxM0JDDY/lGDim+IWX5YzUgBt1Z0nvDlFKaNbidbBpvgKg6nbwHT/mB
	g2WFoI9nxey8RJAszWi6jrVkgK6ZXRUW2vzYjl7B6zPaEarWeNMq7Qes=
X-Received: by 2002:a25:903:0:b0:dbc:dbc2:16bd with SMTP id 3-20020a250903000000b00dbcdbc216bdmr7636392ybj.62.1703080105360;
        Wed, 20 Dec 2023 05:48:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAc0XaKPCbNpSMKwITz2F/kdmz4jNbuavgxZb/kvZBD55MIEy+1R3WMm9C61a7/L2w9ih86rzWOb3+xyezKOI=
X-Received: by 2002:a25:903:0:b0:dbc:dbc2:16bd with SMTP id
 3-20020a250903000000b00dbcdbc216bdmr7636383ybj.62.1703080105113; Wed, 20 Dec
 2023 05:48:25 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 20 Dec 2023 05:48:24 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231220004638.2463643-5-cristian.ciocaltea@collabora.com>
References: <20231220004638.2463643-1-cristian.ciocaltea@collabora.com> <20231220004638.2463643-5-cristian.ciocaltea@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 20 Dec 2023 05:48:24 -0800
Message-ID: <CAJM55Z-+2RY+owdd9YJM_CihKqDtAgykSDZN0tLZAGRTRGQhBA@mail.gmail.com>
Subject: Re: [PATCH v5 4/4] riscv: dts: starfive: beaglev-starlight: Setup phy
 reset gpio
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, 
	Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Richard Cochran <richardcochran@gmail.com>, 
	Andrew Lunn <andrew@lunn.ch>, Jacob Keller <jacob.e.keller@intel.com>
Cc: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org, kernel@collabora.com, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>
Content-Type: text/plain; charset="UTF-8"

Cristian Ciocaltea wrote:
> The BeagleV Starlight SBC uses a Microchip KSZ9031RNXCA PHY supporting
> RGMII-ID which doesn't require any particular setup, other than defining
> a reset gpio, as opposed to VisionFive V1 for which the RX internal
> delay had to be adjusted.
>
> Co-developed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../boot/dts/starfive/jh7100-beaglev-starlight.dts    | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts b/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> index 7cda3a89020a..b79426935bfd 100644
> --- a/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> +++ b/arch/riscv/boot/dts/starfive/jh7100-beaglev-starlight.dts
> @@ -11,3 +11,14 @@ / {
>  	model = "BeagleV Starlight Beta";
>  	compatible = "beagle,beaglev-starlight-jh7100-r0", "starfive,jh7100";
>  };
> +
> +&mdio {
> +	phy: ethernet-phy@7 {
> +		reg = <7>;
> +		reset-gpios = <&gpio 63 GPIO_ACTIVE_LOW>;
> +	};
> +};
> +
> +&gmac {
> +	phy-handle = <&phy>;
> +};

..and here.

