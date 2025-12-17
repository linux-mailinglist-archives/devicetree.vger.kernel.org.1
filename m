Return-Path: <devicetree+bounces-247505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9757DCC8336
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:32:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CF75F30787A4
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:23:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3540F1D5CF2;
	Wed, 17 Dec 2025 14:22:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 463FA15ADB4
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 14:22:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765981373; cv=none; b=bn1+bZKNQPXS6hcPwqDPwm0Ib5/HX+x0lAZfJyBfrYIkW3sVANgPl18NpMFpxp60mtfqtDgiZJZhXUeQHDtG4aJWP7QNnaSm5ajTwUpYIMMVkR1gfAq1TGeLaQftb8NOxf0WWSNtSA7HJqSmF9BCa+AtcFkvyMWwbySH/pBUNLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765981373; c=relaxed/simple;
	bh=3Xlxjs02BTpUT/TrRq4wzpBEx6B0aMFuPsPW5tSNCaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U+kACaCgcpBoJ9Vtb5kj4FrRC+XRTHFXp3esw+fb85xF4IfyK+joL7d0SuznV9FSou5TLBj52WVL3FmuXv538NwxX800fvQC913BvhT9hNvU84dpjgXT+M91OHvo+LEiOa79iD0iGg4Oe7YlWbg7ZMOv9TRJbr2nAPOlaOsihuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4717614BF
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 06:22:42 -0800 (PST)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 2F9A33F73B
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 06:22:49 -0800 (PST)
Date: Wed, 17 Dec 2025 14:21:58 +0000
From: Liviu Dudau <liviu.dudau@arm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: soc@kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: vexpress/v2m-rs1: Use documented
 arm,vexpress,config-bus child node names
Message-ID: <aUK8hkoz0LmsIZXA@e142607>
References: <20251216191212.2879226-2-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251216191212.2879226-2-robh@kernel.org>

On Tue, Dec 16, 2025 at 01:12:12PM -0600, Rob Herring (Arm) wrote:
> Update the arm,vexpress,config-bus child node names to use the
> documented ones. Most of these were updated a while back, but I missed
> these.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
> SoC maintainers may want to take this directly?
> 
>  arch/arm/boot/dts/arm/vexpress-v2m-rs1.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/arm/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/arm/vexpress-v2m-rs1.dtsi
> index 158b3923eae3..248b8e492d43 100644
> --- a/arch/arm/boot/dts/arm/vexpress-v2m-rs1.dtsi
> +++ b/arch/arm/boot/dts/arm/vexpress-v2m-rs1.dtsi
> @@ -420,7 +420,7 @@ mcc {
>  					compatible = "arm,vexpress,config-bus";
>  					arm,vexpress,config-bridge = <&v2m_sysreg>;
>  
> -					oscclk0 {
> +					clock-controller-0 {
>  						/* MCC static memory clock */
>  						compatible = "arm,vexpress-osc";
>  						arm,vexpress-sysreg,func = <1 0>;
> @@ -429,7 +429,7 @@ oscclk0 {
>  						clock-output-names = "v2m:oscclk0";
>  					};
>  
> -					v2m_oscclk1: oscclk1 {
> +					v2m_oscclk1: clock-controller-1 {
>  						/* CLCD clock */
>  						compatible = "arm,vexpress-osc";
>  						arm,vexpress-sysreg,func = <1 1>;
> @@ -438,7 +438,7 @@ v2m_oscclk1: oscclk1 {
>  						clock-output-names = "v2m:oscclk1";
>  					};
>  
> -					v2m_oscclk2: oscclk2 {
> +					v2m_oscclk2: clock-controller-2 {
>  						/* IO FPGA peripheral clock */
>  						compatible = "arm,vexpress-osc";
>  						arm,vexpress-sysreg,func = <1 2>;
> @@ -447,7 +447,7 @@ v2m_oscclk2: oscclk2 {
>  						clock-output-names = "v2m:oscclk2";
>  					};
>  
> -					volt-vio {
> +					regulator-vio {
>  						/* Logic level voltage */
>  						compatible = "arm,vexpress-volt";
>  						arm,vexpress-sysreg,func = <2 0>;
> -- 
> 2.51.0
> 

