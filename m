Return-Path: <devicetree+bounces-154918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A62A54E8B
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 16:05:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 026597A5CFF
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 15:04:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45D6920E6E4;
	Thu,  6 Mar 2025 15:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="XVMOcd+P"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.59])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED65188A3A
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 15:05:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.59
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741273523; cv=none; b=eh9hjyq7ZWw7RNJk+wRBpc84AZA7gVHs6/vWSnJ0g+VgFvkjZvwa56++q2ZId4qMn0Iw+BzcgxhnkK5UKR5+XlvU+5ZbgWT+fhga3AZgsefKsnDlN2l1F+Ent5pUSxzwyGj3K/WG7W0QKeWi9APmbfytIW8Kb1Fsu6q3B2ztZo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741273523; c=relaxed/simple;
	bh=+Y6SHWnFujdn3zcp5fvAUFCBr/XdYP6difYNV1yyk7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ro9B3ItfapxcSUtVNb1ab6CbsLnKJL2Q8adpWLMaBL8RwmDEZ4joxfXlSm0Zm2TDlaEfwJgFNv83rVRSU5LPn1EwwrhhpMEJyMlcwj2XSUEAY9xWV6xzfaWMd/9cbYk0ttEM/VOFR0Pzh+ABGZGX4Oxnz075fI/S837uPJlpOZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=XVMOcd+P; arc=none smtp.client-ip=121.127.44.59
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741273518;
 bh=FKaVUl5lLXUSuhCF1ZlPAyZO1YDz2MZPYUTwBAZE0yM=;
 b=XVMOcd+PRjKdb7dO0EHiRbRSHXb4HRVJ1j6Jgmu1XoY3fR4AkjAbjwsQqWaTPMeQLLuKlqYJT
 vlsOLsF1buyK2juydbJ+YwkkhCcUNZBoxmKAaG3FfUohwNNFtc69iI3O5iKW4GNJTKbITEx+2lk
 cH/QwYcBK/Y1+BulM6NyUwCN/8DYlbnh6R72KrbohF6WYCECcZMJCceUolml/x23W5dFgYSM/eC
 nNOoby1KAoBD96ZzfF2mteiwo+prKTkcJjRHWElaFiG5HuL9478dZA215ofcUIPhSLVHWNs7wKm
 J1uoncAelk1AisIl+60Y5uFiAtb3Zlj4tZOQKHds+S1g==
X-Forward-Email-ID: 67c9b7257d53aa09926020ca
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.59
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <3181e8a0-b98f-4860-a0fa-abc3130c9b35@kwiboo.se>
Date: Thu, 6 Mar 2025 15:54:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: rockchip: enable SCMI clk for RK3528 SoC
To: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>
Cc: Yao Zi <ziyao@disroot.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org
References: <20250306131016.281290-1-amadeus@jmu.edu.cn>
 <20250306131016.281290-2-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250306131016.281290-2-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Chukun,

On 2025-03-06 14:10, Chukun Pan wrote:
> Same as RK3568, RK3528 uses SCMI clk instead of ARMCLK.
> Add SCMI clk for CPU, GPU and RNG will also use it.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  arch/arm64/boot/dts/rockchip/rk3528.dtsi | 32 ++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3528.dtsi b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> index 0c0e7f151462..aa68c2fef2f3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3528.dtsi
> @@ -59,6 +59,7 @@ cpu0: cpu@0 {
>  			reg = <0x0>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu1: cpu@1 {
> @@ -66,6 +67,7 @@ cpu1: cpu@1 {
>  			reg = <0x1>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu2: cpu@2 {
> @@ -73,6 +75,7 @@ cpu2: cpu@2 {
>  			reg = <0x2>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
>  		};
>  
>  		cpu3: cpu@3 {
> @@ -80,6 +83,22 @@ cpu3: cpu@3 {
>  			reg = <0x3>;
>  			device_type = "cpu";
>  			enable-method = "psci";
> +			clocks = <&scmi_clk SCMI_CLK_CPU>;
> +		};
> +	};
> +
> +	firmware {
> +		scmi: scmi {
> +			compatible = "arm,scmi-smc";
> +			arm,smc-id = <0x82000010>;
> +			shmem = <&scmi_shmem>;
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			scmi_clk: protocol@14 {
> +				reg = <0x14>;
> +				#clock-cells = <1>;
> +			};
>  		};
>  	};
>  
> @@ -110,6 +129,19 @@ gmac0_clk: clock-gmac50m {
>  		#clock-cells = <0>;
>  	};
>  
> +	sram@10f000 {
> +		compatible = "mmio-sram";
> +		reg = <0x0 0x0010f000 0x0 0x100>;
> +		ranges = <0 0x0 0x0010f000 0x100>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		scmi_shmem: sram@0 {
> +			compatible = "arm,scmi-shmem";
> +			reg = <0x0 0x100>;
> +		};
> +	};

This does not look correct, the shared memory is located in DRAM not in
SRAM. I used reserved-memory in my work-in-progress commit for adding
the GPU [1], something like, not sure if this is more correct:

	reserved-memory  {
		#address-cells = <2>;
		#size-cells = <2>;
		ranges;

		scmi_shmem: scmi-shmem@10f000 {
			compatible = "arm,scmi-shmem";
			reg = <0x0 0x0010f000 0x0 0x100>;
			no-map;
		};
	};

[1] https://github.com/Kwiboo/linux-rockchip/commit/f1cd58b2431a01e8cf6a430922204a71fee484f3

Regards,
Jonas

> +
>  	soc {
>  		compatible = "simple-bus";
>  		ranges = <0x0 0xfe000000 0x0 0xfe000000 0x0 0x2000000>;


