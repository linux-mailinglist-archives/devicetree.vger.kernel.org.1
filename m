Return-Path: <devicetree+bounces-144476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D344DA2E35E
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 06:05:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 00AC61887B3D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 05:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CC7174C08;
	Mon, 10 Feb 2025 05:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Up8ZFqL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f54.google.com (mail-qv1-f54.google.com [209.85.219.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DD402F2A
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 05:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739163947; cv=none; b=fofCEW9lCoC3vQQoDc//HmyKZUE6Rl5Ycgfvk2EhJ2Kkz14CdopHPt5jxdZgxQn2pJo4P4bhEJIRsZGC4GTYstJPKhzfXmXmiPhGaC/ptnwS2UugFktp8ezA1nBl8rrh42bkXnou4ZBxBiQAMLDFBeUUEECcaAhKkgxd9kx5oaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739163947; c=relaxed/simple;
	bh=08FZw4vg0dyzOVlejM84UEbXzFDqkwnEVFyEO04xML8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UtfdKS2QS65xHKBLT3tRpLir6MTRhVXa9fKUa95DF5TZjxWKDPbCZdhc3Qp3hBAODEIj4HIXwXvrSji6HNllJornDcXyQhQww/gu6tMVdRRNxttDmQqm3lGiYY+2Q8YDsmgzlOyuw36VDL+ojlw/Zy8z7ysnSxRtdWgNnxdBsHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Up8ZFqL+; arc=none smtp.client-ip=209.85.219.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f54.google.com with SMTP id 6a1803df08f44-6e432beabbdso29608466d6.3
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 21:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739163944; x=1739768744; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oN/LMTy1cceeWoHjC4B2UVm8QRxELJjvJ2fUPSe0KWo=;
        b=Up8ZFqL+yqpnHrSprI8FFMWciQKLk50B0UEan6KdENSHpW290RK4wVPhDBPCVCl56U
         hZhUAhWTcNyibWYI959dzX1sL1hcDMv9IlXDGOaFqPwaF9mCQ3dN0EUqWG/TwFFlIqe2
         BXWXrhkD3OBL1X5TfRzcmYNwaufEIq1Q7N/rPHpOqTON2WlIVSNZVDJJA5HUOIrbRxwe
         yt8sGs0funBNpppTaN0Qy76HRgA0L8HON/EMbrEXO5mga3tVx5WIcKFXcgl4OX5bBQmd
         SB2MRzkBpNtcolFQfAIObxREu/UlTMvb324hLZN724liiHXQwM5eovUskwWsuSKOk4Zo
         xHaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739163944; x=1739768744;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oN/LMTy1cceeWoHjC4B2UVm8QRxELJjvJ2fUPSe0KWo=;
        b=GETaY8ok7kMKzrKuJtaNraMstYuwwCZFi/QAjVehx51XrzTxd9vcisqvKSSynyqcBb
         4TinizEIhvSokDMyvSaoHt5Ff2b405qd21qYdFrRLIp+km6IpWKK3UhQGlAVCOmOTBLQ
         9Ru1ZaNk6J9xbuF2nXWPXl55kDd07aefc3yymKVT02gIb9cKRLs17dx5LCDgrej5JKl3
         fDGDZFcIPVdKUF8E2BC3g8KVWm68xZVA4CBYCN6Uw92PU66Bov//dDJrVE+M04Djcen7
         vurfZehTXm+H7LOC6CypKeE3Z+VaKuxZQnPFbVL7O8ASUoqdVsoNomYp/oL+CuJaeP9k
         TNpg==
X-Forwarded-Encrypted: i=1; AJvYcCVzi8X1gng44QTV4rulAniCNjzQj7sGuy9IJUfPFwqBX40nAlF3aXyxMXIBG3TilCP1ZyQH9b/T3BPo@vger.kernel.org
X-Gm-Message-State: AOJu0YwC7p796AJcklDpyhbeRXiIfKmZrHjfAcUSJE7/ocVZKi6peP46
	QOubI+XCDCSoLsP8Q1yNlG4nVManAY/+BVTEe5B8DpPvTAr+cR78rva5oA==
X-Gm-Gg: ASbGncuLADHYKiLeNx1arxgp1t4gdChxFzhqARBvYhxR2vsN+OdndkqqH9eFB6/5tU+
	SU91eZZbAx/NXVBXPbi0sENd17ZPfTJgeN/J1qfogs0yxNl/hYFcsZkl4Fbq0IQO/vgDrtseWD5
	nbHTwM3pbwxQJJcYFySPvB+OD2iw9Zm0+YykF5UpeIJIpZdJgrDVlMgMfQ+e3A6OTaPBWn7ZP4R
	KrAEW2mxpLfAkyeGvAPGisuW4ce/3JXnEjk9WHh+omrR7JTKOhHlpL5pWOrEadsXDg=
X-Google-Smtp-Source: AGHT+IEZ3gIKU0w+qpbzeYWI6N9OGRgytUU07Dxa+Ew5q1n+gnXaeHmksniXAnyip0SvVipgq3ybfg==
X-Received: by 2002:a05:6214:e47:b0:6e2:43d1:5fe5 with SMTP id 6a1803df08f44-6e4456c5b23mr204606956d6.34.1739163944461;
        Sun, 09 Feb 2025 21:05:44 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id 6a1803df08f44-6e453819913sm21711806d6.16.2025.02.09.21.05.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 21:05:44 -0800 (PST)
Date: Mon, 10 Feb 2025 13:05:38 +0800
From: Inochi Amaoto <inochiama@gmail.com>
To: Alexander Sverdlin <alexander.sverdlin@gmail.com>, soc@lists.linux.dev
Cc: Chen Wang <unicorn_wang@outlook.com>, 
	Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	Haylen Chu <heylenay@outlook.com>, linux-arm-kernel@lists.infradead.org, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Inochi Amaoto <inochiama@gmail.com>
Subject: Re: [PATCH 03/10] arm64: dts: sophgo: Add initial SG2000 SoC device
 tree
Message-ID: <g7gruyv5rczuqybblnxy7myh2rakk2dmldy3ks247evjb6k3zj@ffkzilxgp3gy>
References: <20250209220646.1090868-1-alexander.sverdlin@gmail.com>
 <20250209220646.1090868-4-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250209220646.1090868-4-alexander.sverdlin@gmail.com>

On Sun, Feb 09, 2025 at 11:06:28PM +0100, Alexander Sverdlin wrote:
> Add initial device tree for the SG2000 SoC by SOPHGO (from ARM64 PoV).
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>

Can you add a riscv version of the this file too? This also applies
to patch 4 and 5

Regards,
Inochi

> ---
>  arch/arm64/boot/dts/sophgo/sg2000.dtsi | 79 ++++++++++++++++++++++++++
>  1 file changed, 79 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/sophgo/sg2000.dtsi
> 
> diff --git a/arch/arm64/boot/dts/sophgo/sg2000.dtsi b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> new file mode 100644
> index 000000000000..4e520486cbe5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000.dtsi
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +
> +#define SOC_PERIPHERAL_IRQ(nr)		GIC_SPI (nr)
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +#include <riscv/sophgo/cv18xx-periph.dtsi>
> +#include <riscv/sophgo/cv181x.dtsi>
> +
> +/ {
> +	#address-cells = <1>;
> +	#size-cells = <1>;
> +	compatible = "sophgo,sg2000";
> +	interrupt-parent = <&gic>;
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>;	/* 512MiB */
> +	};
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu@0 {
> +			compatible = "arm,cortex-a53";
> +			device_type = "cpu";
> +			reg = <0>;
> +			i-cache-size = <32768>;
> +			d-cache-size = <32768>;
> +			next-level-cache = <&l2>;
> +		};
> +
> +		l2: l2-cache {
> +			compatible = "cache";
> +			cache-level= <2>;
> +			cache-size = <0x20000>;
> +		};
> +	};
> +
> +	pmu {
> +		compatible = "arm,cortex-a53-pmu";
> +		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
> +			     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
> +	timer {
> +		compatible = "arm,armv8-timer";
> +		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 11 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>,
> +			     <GIC_PPI 10 (GIC_CPU_MASK_SIMPLE(2) | IRQ_TYPE_LEVEL_LOW)>;
> +		always-on;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	gic: interrupt-controller@1f01000 {
> +		compatible = "arm,cortex-a15-gic";
> +		interrupt-controller;
> +		#interrupt-cells = <3>;
> +		reg = <0x01f01000 0x1000>,
> +		      <0x01f02000 0x2000>;
> +	};
> +
> +	soc {
> +		ranges;
> +
> +		pinctrl: pinctrl@3001000 {
> +			compatible = "sophgo,sg2000-pinctrl";
> +			reg = <0x03001000 0x1000>,
> +			      <0x05027000 0x1000>;
> +			reg-names = "sys", "rtc";
> +		};
> +	};
> +};
> +
> +
> +&clk {
> +	compatible = "sophgo,sg2000-clk";
> +};
> -- 
> 2.48.1
> 

