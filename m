Return-Path: <devicetree+bounces-63760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A71D58B6608
	for <lists+devicetree@lfdr.de>; Tue, 30 Apr 2024 01:10:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 633B82838B1
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 23:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6577441F;
	Mon, 29 Apr 2024 23:10:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC401E886;
	Mon, 29 Apr 2024 23:10:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714432240; cv=none; b=tTaNVIEw+HfsLvkmy+jkUfPLRzDgMY187CHBwgYOE2bJuj4evtNjsVGR5CpRctLZ/ppaHs0ed38EXLSI+oA3QmLBVKQs/1nHRjjsgwXKjoXwf9ZquDGtS5neNgNJdvFGe80v+sawfuxS4z1loy0L4mr5aDdv1x2uPzE1mMjLCLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714432240; c=relaxed/simple;
	bh=SbRHJCSbdxa/qHvVX0OGFsqW3ckRvJ41Yn/16rcpiaU=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ku2Ne1ugC/OlqSMCs8X6Ru0FsDm/2kmi8bAqose+32fZzMf8Cp14JF2nL7A6aQ9FOsFmhhxU7T2FFsO3M9T396sqfFRodY70uhKXEC9D0gI3d6r3Gsi0HLLj/fqwnl3WRfd0ICGKj02hLwdoNAt1XRExEQJEYeBfgP5ug/FreCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 466312F4;
	Mon, 29 Apr 2024 16:11:04 -0700 (PDT)
Received: from minigeek.lan (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 251303F762;
	Mon, 29 Apr 2024 16:10:36 -0700 (PDT)
Date: Tue, 30 Apr 2024 00:10:02 +0100
From: Andre Przywara <andre.przywara@arm.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: linux-sunxi@lists.linux.dev, wens@csie.org, jernej.skrabec@gmail.com,
 samuel@sholland.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: allwinner: Add cache information to the SoC
 dtsi for H6
Message-ID: <20240430001002.4797e4e3@minigeek.lan>
In-Reply-To: <49abb93000078c692c48c0a65ff677893909361a.1714304071.git.dsimic@manjaro.org>
References: <6a772756c2c677dbdaaab4a2c71a358d8e4b27e9.1714304058.git.dsimic@manjaro.org>
	<49abb93000078c692c48c0a65ff677893909361a.1714304071.git.dsimic@manjaro.org>
Organization: Arm Ltd.
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.31; x86_64-slackware-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Sun, 28 Apr 2024 13:40:36 +0200
Dragan Simic <dsimic@manjaro.org> wrote:

> Add missing cache information to the Allwinner H6 SoC dtsi, to allow
> the userspace, which includes lscpu(1) that uses the virtual files provided
> by the kernel under the /sys/devices/system/cpu directory, to display the
> proper H6 cache information.
> 
> Adding the cache information to the H6 SoC dtsi also makes the following
> warning message in the kernel log go away:
> 
>   cacheinfo: Unable to detect cache hierarchy for CPU 0
> 
> The cache parameters for the H6 dtsi were obtained and partially derived
> by hand from the cache size and layout specifications found in the following
> datasheets and technical reference manuals:
> 
>   - Allwinner H6 V200 datasheet, version 1.1
>   - ARM Cortex-A53 revision r0p3 TRM, version E
> 
> For future reference, here's a brief summary of the documentation:
> 
>   - All caches employ the 64-byte cache line length
>   - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative instruction
>     cache and 32 KB of L1 4-way, set-associative data cache
>   - The entire SoC has 512 KB of unified L2 16-way, set-associative cache
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

I can confirm that the data below matches the manuals, but also the
decoding of the architectural cache type registers (CCSIDR_EL1):
  L1D: 32 KB: 128 sets, 4 way associative, 64 bytes/line
  L1I: 32 KB: 256 sets, 2 way associative, 64 bytes/line
  L2: 512 KB: 512 sets, 16 way associative, 64 bytes/line

tinymembench results for the H6 are available here:
https://github.com/ThomasKaiser/sbc-bench/blob/master/results/26Ph.txt
and confirm the theory. Also ran it locally with similar results.

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Thanks,
Andre

> ---
>  arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 37 ++++++++++++++++++++
>  1 file changed, 37 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> index d11e5041bae9..1a63066396e8 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
> @@ -29,36 +29,73 @@ cpu0: cpu@0 {
>  			clocks = <&ccu CLK_CPUX>;
>  			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache>;
>  		};
>  
>  		cpu1: cpu@1 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			reg = <1>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
>  			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache>;
>  		};
>  
>  		cpu2: cpu@2 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			reg = <2>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
>  			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache>;
>  		};
>  
>  		cpu3: cpu@3 {
>  			compatible = "arm,cortex-a53";
>  			device_type = "cpu";
>  			reg = <3>;
>  			enable-method = "psci";
>  			clocks = <&ccu CLK_CPUX>;
>  			clock-latency-ns = <244144>; /* 8 32k periods */
>  			#cooling-cells = <2>;
> +			i-cache-size = <0x8000>;
> +			i-cache-line-size = <64>;
> +			i-cache-sets = <256>;
> +			d-cache-size = <0x8000>;
> +			d-cache-line-size = <64>;
> +			d-cache-sets = <128>;
> +			next-level-cache = <&l2_cache>;
> +		};
> +
> +		l2_cache: l2-cache {
> +			compatible = "cache";
> +			cache-level = <2>;
> +			cache-unified;
> +			cache-size = <0x80000>;
> +			cache-line-size = <64>;
> +			cache-sets = <512>;
>  		};
>  	};
>  
> 


