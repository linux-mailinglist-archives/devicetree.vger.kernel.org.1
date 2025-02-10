Return-Path: <devicetree+bounces-144481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 02843A2E39D
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 06:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B8851883221
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 05:26:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA1A0188596;
	Mon, 10 Feb 2025 05:26:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kB6kz+Wq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com [209.85.222.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E50316F841
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 05:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739165184; cv=none; b=E3xJZse8n56vPDu2tmm19RcKcE1RWyApeHjGz1tGnsbH3n+Vx7ay2xmmlWwXVDHRGCk2P/ZrTJZEpJeqhJ732CQvB0NdhtUk743Rw4+6+3a98CdDgH8/P+oM3k+xZuiiKMGhrXBCXeYUrts50FL3A56HZmkf+R/ntuFX2ooUwN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739165184; c=relaxed/simple;
	bh=LTE+PX/ZSOyMkfirYl9HsdnpbiVUPrNMAyoC6WmBsrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KyOIFgHWQCsvoDXNfkefI+sHL+rXHfjRgrCN5tHpdXDBVU/OvAxgZVkFWGMIWrBwVxoaiK5zVl9Umb/wAtlJQPzosvitTQYdg+ap82+yK0iMnRrqJ4KcWH/YZ/9PnnjdLC/qBiHSroJQJ93sDrStMZVX3sQINlJnbahkB/2RwMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kB6kz+Wq; arc=none smtp.client-ip=209.85.222.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f172.google.com with SMTP id af79cd13be357-7c05bb6dab7so74171085a.0
        for <devicetree@vger.kernel.org>; Sun, 09 Feb 2025 21:26:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739165182; x=1739769982; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=AXYcUvZi8iP9/2G1vVDC0LktbbVfVEhz/5iLisBlzSA=;
        b=kB6kz+Wq/HXWR1FbOvJAscC/qSHe4jkKggZdkFc/3MmXroxlvR6sWnu/dtWDjRLN9A
         nywCQUknFu/Ow0RIOxyIAyrvw4fpae2khFHPn859NfX/8NSn7UCT6sf9nC9uznheoNzH
         BnN+lLN3wzry50WT6+gSn2HtE8ZO0r6gWXr/NZ0ImIBwgCF3oJW8A4pByYxaDtYvhJqT
         Z8hXm5VwbmJta0Y9tXbpXe7G7aXX3xlfyoLq87E589BRHBsn7qW16m5nZymMU+tDZHu3
         cfZCR5ZIfPXpKEPTJpJJxPiryT642azHfcWXP+DV5SCqQgg2w2tckVH1Z15eJtdt4Kei
         ft9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739165182; x=1739769982;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AXYcUvZi8iP9/2G1vVDC0LktbbVfVEhz/5iLisBlzSA=;
        b=GbnH31s+xxoYyPA7ewKSzwN2uhOCkA8qzU2fyZHLSMLHSSL0o0mLF7nh9ZVMBKE9gs
         PylLSGmOAA/ipNlXSFkAoD0g7z00d+e0vjPqNvSrBBlYZq1gu8mV/rWC9Qmin5IBloQW
         iaSJUVCy5cot0U//tVxTWSnK8SlUByAidVGRc7KsB+6jKJJOUwlkdnbuPpHgRSNJjVOJ
         ToF6vteW8obGI4kBASq5xvt8ridPVLF9GR1CImn0QZTTY01sYx7rbqmtM3MGeaB5Q1C4
         B4iXkmkOEJKZX1lYxca29bD5t3CQgg5XSAiuAYPNPsHeEwzvF+A3KaF7T2IxFXj0Ydb0
         pBoA==
X-Forwarded-Encrypted: i=1; AJvYcCUCqqmmUu8UVPspv0kG1L2IPouHQUMXdsBFPxrLVIm5ptTOe6L5acCUIJL/4WDMoo6HeDRfXLELohAa@vger.kernel.org
X-Gm-Message-State: AOJu0YysKinml+U/GGNeLeRfzwKSeYOGVEHPNDosuXUXh37OUYJGZTIO
	Ngzo6/OWSq+TPqFF15JAjVz3cvxQy0MvZOuvAga3nKojPpN+J1rb
X-Gm-Gg: ASbGncuvvm4XY8MPV4X327UIbrdflxz0SDV+3HXautFeaZs84ZxBk5tU8LQvaejzwo8
	+RzdQL+M8GfYYFPeE1GVSKYgcc219k9qOiyCANFE8xKgJ45L1ltEIhwGsxtOhkLyPas9nhivJMm
	sQA5MX8458ujonEkKWR25grdvo/shyDWnmtN03eK4x4EHnAlotAR3WkzvOUbQCamoRYdrgHnd0C
	f4EDB21mSd0k3zSNk78cW4uwQiGJciX7LH184WDtv7YsehpFyZiH+o8Lt0KIZcqmao=
X-Google-Smtp-Source: AGHT+IFAwtxGg0YS49lIs6yVOg3N0/ziSObLsA90REDBDAU+q9pSQjI9Jz7uKB4OPYLwvX/ixw2jPQ==
X-Received: by 2002:a05:620a:404c:b0:7b1:ab32:b71e with SMTP id af79cd13be357-7c047e2d53cmr1763316285a.0.1739165182125;
        Sun, 09 Feb 2025 21:26:22 -0800 (PST)
Received: from localhost ([2001:da8:7001:11::cb])
        by smtp.gmail.com with UTF8SMTPSA id af79cd13be357-7c041dec2e9sm487596785a.20.2025.02.09.21.26.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Feb 2025 21:26:21 -0800 (PST)
Date: Mon, 10 Feb 2025 13:26:15 +0800
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
Message-ID: <4pyb47jbypkdx2x2gozx6iz7ecepff2c7k5zkenwhsbssghtgo@n3lyr7h2hu4p>
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

Separate these into a separate CPU file so SG2002 can reuse it.

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

