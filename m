Return-Path: <devicetree+bounces-176400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 40666AB3D5A
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 18:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 440BE1887B36
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 16:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2162248F7D;
	Mon, 12 May 2025 16:21:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9062F247288
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 16:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747066873; cv=none; b=IPItubwEpq5SFyeaEYWmPje4l/AlYWprlNZLpr4/lVa37oXqj+sXe+il+f+nmEV5EHKA6mAN4me/3VQatp1o78CHA/NTF1IjgeglrQ/iePXSo2rL3ENr74mCHTvtoAPS8SMOkWlhW3Y/nH1fz+ZFCa97OgrcRA1QbGU3IDODLxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747066873; c=relaxed/simple;
	bh=RePUUGOBxDJjMozkfbHau1maZS5C052bA5fRrMmph3s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fvYXQTCvEE1QVucA3bedBPTrRAtHZKm1a8IALuXvQL1aALJzShQxO5eoOxxeWOanZ+2Gg0/qrs2Y+5MQ7N54AbTyVUt/xilZDzkbsgkCmR+jYmp63w056eN3ESz2okVEwMpLD+GZ0l/BAG6YPxoC8r8LIHPrnsREuO60McjyoGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A9E6C150C
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 09:20:59 -0700 (PDT)
Received: from e110455-lin.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6F0453F63F
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 09:21:10 -0700 (PDT)
Date: Mon, 12 May 2025 17:21:03 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Leo Yan <leo.yan@arm.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: fvp: Add system timer for broadcast
 during CPU idle
Message-ID: <aCIf71dwiloB-Mrm@e110455-lin.cambridge.arm.com>
References: <20250509154640.836093-1-sudeep.holla@arm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250509154640.836093-1-sudeep.holla@arm.com>

On Fri, May 09, 2025 at 04:46:38PM +0100, Sudeep Holla wrote:
> Introduce a system-level timer node in the FVP device tree to act as
> a broadcast timer when CPUs are in context losing idle states where
> the local timer stops on entering such low power states.
> 
> This change complements recent CPU idle state additions.
> 
> Tested-by: Leo Yan <leo.yan@arm.com>
> Message-Id: <20250508103225.354925-2-sudeep.holla@arm.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

For the whole series:

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
>  arch/arm64/boot/dts/arm/fvp-base-revc.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> v1->v2:
> 	- Dropped clock-frequency property
> 	- Fixed #size-cell to 1 as expected by the schema
> 	- Also update the ranges property and the frame reg property
> 
> diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> index 9e10d7a6b5a2..50b5993a2460 100644
> --- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> +++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
> @@ -217,6 +217,19 @@ timer {
>  			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
>  	};
>  
> +	timer@2a810000 {
> +		compatible = "arm,armv7-timer-mem";
> +		reg = <0x0 0x2a810000 0x0 0x10000>;
> +		ranges = <0 0x0 0x2a820000 0x20000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		frame@2a830000 {
> +			frame-number = <1>;
> +			interrupts = <GIC_SPI 26 IRQ_TYPE_LEVEL_HIGH>;
> +			reg = <0x10000 0x10000>;
> +		};
> +	};
> +
>  	pmu {
>  		compatible = "arm,armv8-pmuv3";
>  		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
> -- 
> 2.34.1
> 

-- 
====================
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    ¯\_(ツ)_/¯

