Return-Path: <devicetree+bounces-143215-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A28A28824
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 11:36:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3668E7A8627
	for <lists+devicetree@lfdr.de>; Wed,  5 Feb 2025 10:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06EE522ACFD;
	Wed,  5 Feb 2025 10:35:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="o8r6l/gh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 637DC22ACD6
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:35:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738751747; cv=none; b=N91JjyZh2nDrohTIQJ21q8vKPOTevCuAmwztmsh+aYok6uMkbPHf3hiE15/fclaoT93Qo+Bp2wNOVOfifD63Mfc6sy9VlP7ZNpIg8JJ1Sh4HvMb2ox2qdSCW1vmOeKqi0l4vBGLdvjtS2LInm7kHKFyRzbD8A0qnpC5gSs/Qvkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738751747; c=relaxed/simple;
	bh=If5NYv49CJleYu6U1SFTC0glm8Qe56wbokRLBDQt7Dk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jBxWT6qV7EgQYDGKyOwyLQih/LUli3ohaJkRYTojyjRPMTi+Sjj7Pwu7yM9iY5i30+0sWGjrzoQPVdic+ZdFDLq68uKfNldb+dqTbIqNe4XePBh283TD8o0SzmF60GF6fSBM6f9rHw8uiisyxX/EgRYzWfEskPPwbwlZvHvEn+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=o8r6l/gh; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oa1-f69.google.com (mail-oa1-f69.google.com [209.85.160.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 51BFE3F277
	for <devicetree@vger.kernel.org>; Wed,  5 Feb 2025 10:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1738751744;
	bh=YsKw1TEBNMtqD2nTeVDQmEu2xielTkirvVyE9cb9euk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=o8r6l/ghcgz9+NI3TRgYcf14BLF2B/8gXXTKn68tarU0+8bT351hieK4LY2LlWb4I
	 PHjBvghISp+o5WqYGOMeMWKlb6qASow/rxcvAIbt/L3b339WFO2e9zoM3w2vXCk9WX
	 Hhnl2Mmr4J+Q++v+EbTOISXrQasmbGWeRJUV8JgaYp5XxagSuXnTpM58G9FtoZ0+e/
	 5GrGBdAUEn96eSLV3jjzDkxoGtr97JVEKPGVCgTy12NeOVfFlX09vwoBVOokRg+GrD
	 XRgxGr1ox9pEkdkXHV0D6RZhq6xOr7uPAfACI7qzcRmiMy4n1/a5ZKNLIiUO6ckStv
	 5srgSmR1fqo9Q==
Received: by mail-oa1-f69.google.com with SMTP id 586e51a60fabf-2b81795a8bdso1056fac.0
        for <devicetree@vger.kernel.org>; Wed, 05 Feb 2025 02:35:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738751743; x=1739356543;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YsKw1TEBNMtqD2nTeVDQmEu2xielTkirvVyE9cb9euk=;
        b=ryY1zyuRm6wqy2winxWYvgeVMR0gGEJAL8pH3zJ2WMZ1XEz5XgpMmg0EYLZO7zaVig
         04EhoxnPIGlU5HwZgRtgW6yZHe3+2wtJ6/q1rUNl69JqNB5GfdYMMjO5ztCxDyM+lFo0
         BvWZnH+wj+uneVaeGk5jZ/xvKV9mqLGs9jemN8tvKimrdluQrR8MDSl542G0ceVsmYy4
         zLgHZouu6MAvrzPzhdKZArdLKsFeGwO+UzVWS9kDYjWyMcrpS5nn3OUBGvl7qVawNATm
         rX6J8Rads6zVyJDeISRuGRd89eEIp56Za2MHwpZQ/dH3sK0oDh+kC+uJShYJQb4YbHhI
         mwzg==
X-Forwarded-Encrypted: i=1; AJvYcCVYuULCqwseYBkDMn7ccjDPSAmdEQ/o0SLQGstTdJxJ9cUEiOv1DsbXRZexdvIjxAjrklZmelFKdSLL@vger.kernel.org
X-Gm-Message-State: AOJu0YwFPml6YrW7HMBY1s1ntUrAGnP9xd4yjrs/2x8ctEDN47rHqDve
	LAU9d3KDQKSq4b1SxlRVsCKEbiEgJ7PNIZoOFOKg1d8NBtMLU6TVp3y8KqiMItaCI30m5ozK6MQ
	c1T2XyI0hqIVC29LkW525pJqcwnnrHAXMjq/TKtbAUe/+VHNNqZDLdF7y3JosMkWWX/I/RSqLKH
	Ci2WpwtCewy5+e3oFAZcwnIhqXo0KUyL0pGL8uP/1J9iQIWv9Lcw==
X-Gm-Gg: ASbGnctTU34Kp+8t2jm7pIR4kN86jgCcaAJ5DfKpBAxN41DWLI1nTtD/QtijRwLOPYs
	zhI/TVC54YfaIYAgxpMerBRcFUSx63ZzsS+eAU6jmekpea7X7tbK/e/+B0jFzypMjQJZTqYlczM
	ylJ4QgmFEr/MCx1jY=
X-Received: by 2002:a05:6871:4607:b0:2b7:f2dc:a4c2 with SMTP id 586e51a60fabf-2b804fa3926mr1450884fac.18.1738751743199;
        Wed, 05 Feb 2025 02:35:43 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgHRkYQfxZijOHZSWLsYQXFYonztRK0/8FyzsAHEDsc0C9B0GJ+PU4ngVF93zt76VSrCDa1Lbmf3cJU/GplFU=
X-Received: by 2002:a05:6871:4607:b0:2b7:f2dc:a4c2 with SMTP id
 586e51a60fabf-2b804fa3926mr1450870fac.18.1738751742931; Wed, 05 Feb 2025
 02:35:42 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:35:42 -0800
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 5 Feb 2025 02:35:42 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20250203013730.269558-6-e@freeshell.de>
References: <20250203013730.269558-1-e@freeshell.de> <20250203013730.269558-6-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 5 Feb 2025 02:35:42 -0800
X-Gm-Features: AWEUYZlC49Ns_mcDAKYs7EnS5g_lujF3CtHenhbVzwWucgE36pERYwwD4QIAsgw
Message-ID: <CAJM55Z8oWonQBbUHPbMrVmN2HG9Dwjyr6o7L7spJQFhQfj+7Pw@mail.gmail.com>
Subject: Re: [PATCH v2 5/5] riscv: dts: starfive: jh7110-common:
 bootph-pre-ram hinting needed by boot loader
To: E Shattow <e@freeshell.de>, Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

E Shattow wrote:
> Add bootph-pre-ram hinting to jh7110-common.dtsi:
>   - i2c5_pins and i2c-pins subnode for connection to eeprom
>   - eeprom node
>   - qspi flash configuration subnode
>   - memory node
>   - uart0 for serial console
>
>   With this the U-Boot SPL secondary program loader may drop such
>   overrides when using dt-rebasing with JH7110 OF_UPSTREAM board targets.
>
> Signed-off-by: E Shattow <e@freeshell.de>

I can't find the booph-pre-ram property in any of the schemas in
Documentation/devicetree/bindings. Does make ARCH=riscv <..> dtbs_check not
complain about this?

/Emil

> ---
>  arch/riscv/boot/dts/starfive/jh7110-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> index 30c5f3487c8b..c9e7ae59ee7c 100644
> --- a/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> +++ b/arch/riscv/boot/dts/starfive/jh7110-common.dtsi
> @@ -28,6 +28,7 @@ chosen {
>  	memory@40000000 {
>  		device_type = "memory";
>  		reg = <0x0 0x40000000 0x1 0x0>;
> +		bootph-pre-ram;
>  	};
>
>  	gpio-restart {
> @@ -247,6 +248,7 @@ emmc_vdd: aldo4 {
>  	};
>
>  	eeprom@50 {
> +		bootph-pre-ram;
>  		compatible = "atmel,24c04";
>  		reg = <0x50>;
>  		pagesize = <16>;
> @@ -323,6 +325,7 @@ &qspi {
>  	nor_flash: flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
> +		bootph-pre-ram;
>  		cdns,read-delay = <2>;
>  		spi-max-frequency = <100000000>;
>  		cdns,tshsl-ns = <1>;
> @@ -405,6 +408,7 @@ GPOEN_SYS_I2C2_DATA,
>  	};
>
>  	i2c5_pins: i2c5-0 {
> +		bootph-pre-ram;
>  		i2c-pins {
>  			pinmux = <GPIOMUX(19, GPOUT_LOW,
>  					      GPOEN_SYS_I2C5_CLK,
> @@ -413,6 +417,7 @@ GPI_SYS_I2C5_CLK)>,
>  					      GPOEN_SYS_I2C5_DATA,
>  					      GPI_SYS_I2C5_DATA)>;
>  			bias-disable; /* external pull-up */
> +			bootph-pre-ram;
>  			input-enable;
>  			input-schmitt-enable;
>  		};
> @@ -641,6 +646,7 @@ GPOEN_DISABLE,
>  };
>
>  &uart0 {
> +	bootph-pre-ram;
>  	clock-frequency = <24000000>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&uart0_pins>;
> --
> 2.47.2
>

