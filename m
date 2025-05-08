Return-Path: <devicetree+bounces-175069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FFAAFB48
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 15:25:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B68993BE9BB
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 13:25:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E338229B2C;
	Thu,  8 May 2025 13:25:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1C37223DC4
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 13:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746710725; cv=none; b=mCrXCN6ww2KXrVtmip2B66AejNcxNisw5rJsjVbT92rdmSCKnYKzU6otGtj6CcnzFICSgbnd8veDT4BlpdZesuHOhvaX5StapBL5kxrdF2xL0XcbccaJ0BpnuDSM+Pko4xK69uzMhGCTlRShtMJJdWNtFVBW04GzTBZQRCIMSfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746710725; c=relaxed/simple;
	bh=HkZDeZg7fHxjXfu9dnFJ/sfo06r5wVZujQg/IB6PQXk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VnZk59RXSC+lwartmGunLV98Nnvnlzd9nTri9kywfBEnzgebkxtTxohSe4wGqfyH3VAy1FYifl8IwjsyTsKQuU1CTs2iHfM3+o0Iuw9OV9jVmWJC2YLHy1A89m0HqSJ9pwL7M5rvXW44Nrgt/ASBJ51yr/a6qSJkNuovnet2Yws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 39F8D106F;
	Thu,  8 May 2025 06:25:11 -0700 (PDT)
Received: from [10.1.196.46] (e134344.arm.com [10.1.196.46])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C7E1C3F58B;
	Thu,  8 May 2025 06:25:20 -0700 (PDT)
Message-ID: <9183535a-2866-4fa5-9ed4-96695f0437ee@arm.com>
Date: Thu, 8 May 2025 14:25:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] arm64: dts: fvp: Add CPU idle states for Rev C model
To: Sudeep Holla <sudeep.holla@arm.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Liviu Dudau <liviu.dudau@arm.com>, Leo Yan <leo.yan@arm.com>
References: <20250508103225.354925-1-sudeep.holla@arm.com>
Content-Language: en-US
From: Ben Horgan <ben.horgan@arm.com>
In-Reply-To: <20250508103225.354925-1-sudeep.holla@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 5/8/25 11:32, Sudeep Holla wrote:
> Add CPU idle state definitions to the FVP Rev C device tree to enable
> support for CPU lower power modes. This allows the system to properly
> enter low power states during idle. It is disabled by default as it is
> know to impact performance on the models.
> 
> Note that the power_state parameter(arm,psci-suspend-param) doesn't use
> the Extended StateID format for compatibility reasons on FVP.
> 
> Tested on the FVP Rev C model with PSCI support enabled firmware.
> 
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>   arch/arm64/boot/dts/arm/fvp-base-revc.dts | 32 +++++++++++++++++++++++
>   1 file changed, 32 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 9e10d7a6b5a2..ff4e6f4d8797 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -44,6 +44,30 @@ cpus {
>   		#address-cells = <2>;
>   		#size-cells = <0>;
>   
> +		idle-states {
> +			entry-method = "arm,psci";
> +
> +			CPU_SLEEP_0: cpu-sleep-0 {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x0010000>;
> +				entry-latency-us = <40>;
> +				exit-latency-us = <100>;
> +				min-residency-us = <150>;
> +				status = "disabled";
> +			};
> +
> +			CLUSTER_SLEEP_0: cluster-sleep-0 {
> +				compatible = "arm,idle-state";
> +				local-timer-stop;
> +				arm,psci-suspend-param = <0x1010000>;
> +				entry-latency-us = <500>;
> +				exit-latency-us = <1000>;
> +				min-residency-us = <2500>;
> +				status = "disabled";
> +			};
> +		};
Do we need a cpu-map so we know which cpus the cluster idle affects?
> +
>   		cpu0: cpu@0 {
>   			device_type = "cpu";
>   			compatible = "arm,armv8";
> @@ -56,6 +80,7 @@ cpu0: cpu@0 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C0_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu1: cpu@100 {
>   			device_type = "cpu";
> @@ -69,6 +94,7 @@ cpu1: cpu@100 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C0_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu2: cpu@200 {
>   			device_type = "cpu";
> @@ -82,6 +108,7 @@ cpu2: cpu@200 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C0_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu3: cpu@300 {
>   			device_type = "cpu";
> @@ -95,6 +122,7 @@ cpu3: cpu@300 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C0_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu4: cpu@10000 {
>   			device_type = "cpu";
> @@ -108,6 +136,7 @@ cpu4: cpu@10000 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C1_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu5: cpu@10100 {
>   			device_type = "cpu";
> @@ -121,6 +150,7 @@ cpu5: cpu@10100 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C1_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu6: cpu@10200 {
>   			device_type = "cpu";
> @@ -134,6 +164,7 @@ cpu6: cpu@10200 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C1_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		cpu7: cpu@10300 {
>   			device_type = "cpu";
> @@ -147,6 +178,7 @@ cpu7: cpu@10300 {
>   			d-cache-line-size = <64>;
>   			d-cache-sets = <256>;
>   			next-level-cache = <&C1_L2>;
> +			cpu-idle-states = <&CPU_SLEEP_0 &CLUSTER_SLEEP_0>;
>   		};
>   		C0_L2: l2-cache0 {
>   			compatible = "cache";

-- 
Thanks,

Ben


