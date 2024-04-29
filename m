Return-Path: <devicetree+bounces-63620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9B58B5A28
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4E8EA1C2042D
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:35:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45EF26F510;
	Mon, 29 Apr 2024 13:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="hYUDOJAO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7181E6F061
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.122
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714397721; cv=none; b=bMP06AbspD6j0efYoqRLke2ueO+nIdESu5aDwIk+HnqdxLxCR8jjWM//7DO/pR5l+trFLoT2/BoItLDXEO1101b1fzVre89n1qVzV6f10aH7eftb24v8nlsUcHeIbXcVauTVlM1aCr1pVRUZxq8NejQrNZDB3pkzmEs/KSkI1eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714397721; c=relaxed/simple;
	bh=B6VTiH0KYg0gEG2Ew3mUFZhda0K7Z/OiKAZpiiqwOsY=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l5ePA5h4ZclYazymgAc3DtryEYObDXQuPl+JDz/OSZGuQbRy9QT1qnjwTiXuca51mLIJYzKTvVJM+cxwhrrfpCCS4roFS7OEAOxDNbdIze0xO+Meecm05+p8iXRunBkO0r3B7JgR/vbx27QjvRHDhkYMxmFvWLoUg37VrKPBSWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=hYUDOJAO; arc=none smtp.client-ip=185.125.188.122
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com [209.85.210.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 3F7773F337
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1714397712;
	bh=i5EFwpTQ/yod+PFPXLLx86U7SIhYrJEKRoBvtVYnwsk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=hYUDOJAOl0lHYimJNheUshwWRuKiHoQt8r/VZuQVencz0ukrltQ77BTUzxgqh+rsW
	 5Y3o/W9MPC+u8zZl8GwIV9M/oePkyDE+wE1onvrh3QeVsR9c/EIQ3j1lYvvYMDgZs2
	 x/7pAuGL+8cNJAipMunSfTcXn3jAJ/FhASmSAo7Jrah1WBE4ufTFWSGy4d1THyB64R
	 OefT/1qn7WWGjQJyj4T2tCvPOElPTsdmseMVhRJ17d5quJw6QYnr+22fBZreswC5It
	 RKp2fpA9MT6AjqYoH13Gy4CbROIDK0dQ6SQPstpfV/md76858GeW5RWkFuxs4TG4Uw
	 mFpYl1aGeBg6g==
Received: by mail-ot1-f69.google.com with SMTP id 46e09a7af769-6ed1d9ee926so6507456a34.3
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:35:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714397711; x=1715002511;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i5EFwpTQ/yod+PFPXLLx86U7SIhYrJEKRoBvtVYnwsk=;
        b=xIj0WbUt/o1w64DqZAycECENE1FCvuX6h/45rqsSpObX77Witq0tQQjm/ZlcGLVIUu
         7N3pIbi3qR0JIJ/HUB2W9SiBLQrG8QCdEZ+KQAczuhh2TLJAMe0ZmU4nlei1Ekdouhqy
         eYyLYZysuDmCq9m8KvNPGJx/DNUMUOO0S0h/wC4r3knchCYo/1/Qpf3OB1b83hsqZLgH
         I+CRl/nEXcG0hiA46E5DB9yIfITsk94l5dNQrpyTYqmzS/zL/evc8ouva5YZ7yHyX98R
         hhTv4rsaDukhgeWSOSVEn24pBfsezjH/fWC3JxJylK6gc3fuGABAvVfUi6BGPv34X+eR
         8TWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVn9TzaexPrDm6F3gQp4fFdCcfbT+HlX5fHcP4Sek/NFUl5wvHRMR2jLRBCN8Ap0YIc00xJZIVpKJpNIt01zmOKjA+bkFsx8Yzxug==
X-Gm-Message-State: AOJu0YxKt/OKYHKnc0jGeMpg3nMr9kEGIcauvvTCVwF3yuYqbcgL+DyB
	6rwb8C0XhGF8iw8HynCW4yDDv4hI5omIqcaxDji4p+hS8NqR0Sp7gEUB8EE+EsUMyC7d8Aoday4
	gvS3k5f1TdAVrTz5FhSO5HAsOGi0ZAXJwsy/tz6c/k2v8flJD2BrQEg/pg/du17HV0SGZBQbh/W
	udcg2kPZyQ920+wBqOqgrcwtMz1uTMK3ZFoyoLR7uzWmCVvGNsmQ==
X-Received: by 2002:a05:6870:a79f:b0:22f:bdb:6335 with SMTP id x31-20020a056870a79f00b0022f0bdb6335mr13790811oao.7.1714397711109;
        Mon, 29 Apr 2024 06:35:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHryGySPZmEKV0fYg09/ur2qjkloaaZt4s3fSluvMfQOiv7YMdvq2iMMpRVWKIiPQEaQVwHIzoJhKPdHnAHsMw=
X-Received: by 2002:a05:6870:a79f:b0:22f:bdb:6335 with SMTP id
 x31-20020a056870a79f00b0022f0bdb6335mr13790792oao.7.1714397710814; Mon, 29
 Apr 2024 06:35:10 -0700 (PDT)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 29 Apr 2024 09:35:10 -0400
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20240425082138.374445-4-thomas.bonnefille@bootlin.com>
References: <20240425082138.374445-1-thomas.bonnefille@bootlin.com> <20240425082138.374445-4-thomas.bonnefille@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Mon, 29 Apr 2024 09:35:10 -0400
Message-ID: <CAJM55Z-3rjs8m4Dt6DVEv-5XfKUgRedY1p=BaPPdDG2_fh3AUg@mail.gmail.com>
Subject: Re: [PATCH 3/4] riscv: dts: thead: Add TH1520 I2C nodes
To: Thomas Bonnefille <thomas.bonnefille@bootlin.com>, jszhang@kernel.org, guoren@kernel.org, 
	wefu@redhat.com, andi.shyti@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org
Cc: miquel.raynal@bootlin.com, thomas.petazzoni@bootlin.com, 
	linux-riscv@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu
Content-Type: text/plain; charset="UTF-8"

Thomas Bonnefille wrote:
> Add nodes for the five I2C on the T-Head TH1520 RISCV SoC.
> All the I2C nodes are fed with the same clock named i2c_ic_clk.
> As there is currently no clock support, the i2c_ic_clk is exposed
> through a fixed-clock to mimic the existing nodes.
>

Thanks!

Reviewed-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Tested-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>

> Signed-off-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
> ---
>  arch/riscv/boot/dts/thead/th1520.dtsi | 66 +++++++++++++++++++++++++++
>  1 file changed, 66 insertions(+)
>
> diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dts/thead/th1520.dtsi
> index d2fa25839012..86ae507576dc 100644
> --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> @@ -153,6 +153,12 @@ sdhci_clk: sdhci-clock {
>  		#clock-cells = <0>;
>  	};
>
> +	i2c_ic_clk: i2c-clock {
> +		compatible = "fixed-clock";
> +		clock-frequency = <50000000>;
> +		#clock-cells = <0>;
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		interrupt-parent = <&plic>;
> @@ -258,6 +264,36 @@ portc: gpio-controller@0 {
>  			};
>  		};
>
> +		i2c0: i2c@ffe7f20000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f20000 0x0 0x4000>;
> +			interrupts = <44 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c1: i2c@ffe7f24000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f24000 0x0 0x4000>;
> +			interrupts = <45 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
> +		i2c4: i2c@ffe7f28000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xe7f28000 0x0 0x4000>;
> +			interrupts = <48 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		gpio3: gpio@ffe7f38000 {
>  			compatible = "snps,dw-apb-gpio";
>  			reg = <0xff 0xe7f38000 0x0 0x1000>;
> @@ -312,6 +348,16 @@ portb: gpio-controller@0 {
>  			};
>  		};
>
> +		i2c2: i2c@ffec00c000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xec00c000 0x0 0x4000>;
> +			interrupts = <46 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		uart2: serial@ffec010000 {
>  			compatible = "snps,dw-apb-uart";
>  			reg = <0xff 0xec010000 0x0 0x4000>;
> @@ -322,6 +368,16 @@ uart2: serial@ffec010000 {
>  			status = "disabled";
>  		};
>
> +		i2c3: i2c@ffec014000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xec014000 0x0 0x4000>;
> +			interrupts = <47 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		dmac0: dma-controller@ffefc00000 {
>  			compatible = "snps,axi-dma-1.01a";
>  			reg = <0xff 0xefc00000 0x0 0x1000>;
> @@ -394,6 +450,16 @@ uart5: serial@fff7f0c000 {
>  			status = "disabled";
>  		};
>
> +		i2c5: i2c@fff7f2c000 {
> +			compatible = "thead,th1520-i2c", "snps,designware-i2c";
> +			reg = <0xff 0xf7f2c000 0x0 0x4000>;
> +			interrupts = <49 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks = <&i2c_ic_clk>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			status = "disabled";
> +		};
> +
>  		timer4: timer@ffffc33000 {
>  			compatible = "snps,dw-apb-timer";
>  			reg = <0xff 0xffc33000 0x0 0x14>;
> --
> 2.44.0
>
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

