Return-Path: <devicetree+bounces-275345-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKetIn4otGkQiQAAu9opvQ
	(envelope-from <devicetree+bounces-275345-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:08:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A27C285951
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 16:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D688230A6340
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 14:57:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F073A784B;
	Fri, 13 Mar 2026 14:57:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DA13A6EF9;
	Fri, 13 Mar 2026 14:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773413850; cv=none; b=lk25xHJpLU69ITEUa8Gd98TE3gWCLEqJToGqXUzD+/GWSych5IleBeujeNfYeqTQbXOFDgBdWQD7B0CBZV9f2Qg99/K+uOiLSxq+6MyPIKqJni+cnmAhT/2P34MglzbB1k3MSpNekaCIGnM/Oq4WO0Vm5jVeIIK3/X55riXP5CE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773413850; c=relaxed/simple;
	bh=zVAyDfk+/KL9v8xAn88DDKz8ed4LOj5sWBckPsMwZmE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Xr6PQaJ5snFqXq2K72NFNv8G2HceRpWaHVOehjC4MZcdYwPm/mavYcCmB3ekQ61a1I/elqbbBR09GGoO80RJlzYbz6qwoz3X/up5AKD6gjA6BgmgEBtYfaL/lYHbCn1dzrp0gz8FdmJyhZA3+NK/Nw/6TfwvSg6bk8DUFvbHYwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 00920165C;
	Fri, 13 Mar 2026 07:57:23 -0700 (PDT)
Received: from [192.168.178.24] (usa-sjc-mx-foss1.foss.arm.com [172.31.20.19])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3912C3F7BD;
	Fri, 13 Mar 2026 07:57:27 -0700 (PDT)
Message-ID: <29ea4774-ba12-4338-9245-096a02293921@arm.com>
Date: Fri, 13 Mar 2026 15:57:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: zena: Refactor Devicetree nodes
To: Debbie Horsfall <debbie.horsfall@arm.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, liviu.dudau@arm.com,
 sudeep.holla@kernel.org, lpieralisi@kernel.org, linusw@kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20260311173948.3478931-1-debbie.horsfall@arm.com>
Content-Language: en-US
From: Andre Przywara <andre.przywara@arm.com>
In-Reply-To: <20260311173948.3478931-1-debbie.horsfall@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-1.36 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[arm.com : SPF not aligned (relaxed), No valid DKIM,none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275345-lists,devicetree=lfdr.de];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andre.przywara@arm.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.810];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[arm.com:email,arm.com:mid,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.0.0.100:email,1a810000:email,4.196.180.0:email,0.1.150.64:email]
X-Rspamd-Queue-Id: 2A27C285951
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

On 3/11/26 18:39, Debbie Horsfall wrote:
> Move the SRAM node into the SoC node. Move the memory node out of
> the include to make it customizable for each platform variant.

Looks good to me, indeed just moving the nodes around.

> Signed-off-by: Debbie Horsfall <debbie.horsfall@arm.com>

Reviewed-by: Andre Przywara <andre.przywara@arm.com>

Cheers,
Andre

> ---
> This targets for-next/juno/updates in response to
> https://lore.kernel.org/linux-arm-kernel/20260309-manipulative-inescapable-labradoodle-7a76e4@sudeepholla/
>   arch/arm64/boot/dts/arm/zena-css-fvp.dts |  8 +++++
>   arch/arm64/boot/dts/arm/zena-css.dtsi    | 44 ++++++++++--------------
>   2 files changed, 26 insertions(+), 26 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/arm/zena-css-fvp.dts b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
> index b75204a91882..53c5412d92b2 100644
> --- a/arch/arm64/boot/dts/arm/zena-css-fvp.dts
> +++ b/arch/arm64/boot/dts/arm/zena-css-fvp.dts
> @@ -14,6 +14,14 @@ / {
>   	chosen {
>   		stdout-path = &soc_serial0;
>   	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +
> +		/* ~2GB mapped at 2GB, another 2GB at 2TB */
> +		reg = <0x00000000 0x80000000 0x00000000 0x7f000000>,
> +		      <0x00000200 0x00000000 0x00000000 0x80000000>;
> +	};
>   };
>   
>   &soc {
> diff --git a/arch/arm64/boot/dts/arm/zena-css.dtsi b/arch/arm64/boot/dts/arm/zena-css.dtsi
> index 9899d2883337..0b41ee4bf4c6 100644
> --- a/arch/arm64/boot/dts/arm/zena-css.dtsi
> +++ b/arch/arm64/boot/dts/arm/zena-css.dtsi
> @@ -634,6 +634,24 @@ soc: soc {
>   		#size-cells = <2>;
>   		ranges;
>   
> +		sram: sram@104000 {
> +			compatible = "mmio-sram";
> +			reg = <0x0 0x00104000 0x0 0x00001000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +			ranges = <0 0x0 0x00104000 0x00001000>;
> +
> +			scmi_shmem_tx: scpshmem-sram-section@0 {
> +				compatible = "arm,scmi-shmem";
> +				reg = <0x0 0x100>;
> +			};
> +
> +			scmi_shmem_rx: scpshmem-sram-section@100 {
> +				compatible = "arm,scmi-shmem";
> +				reg = <0x100 0x100>;
> +			};
> +		};
> +
>   		timer@1a810000 {
>   			compatible = "arm,armv7-timer-mem";
>   			reg = <0x0 0x1a810000 0x0 0x10000>;
> @@ -748,30 +766,4 @@ timer {
>   			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
>   			     <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
>   	};
> -
> -	sram: sram@104000 {
> -		compatible = "mmio-sram";
> -		reg = <0x0 0x00104000 0x0 0x00001000>;
> -		#address-cells = <1>;
> -		#size-cells = <1>;
> -		ranges = <0 0x0 0x00104000 0x00001000>;
> -
> -		scmi_shmem_tx: scpshmem-sram-section@0 {
> -			compatible = "arm,scmi-shmem";
> -			reg = <0x0 0x100>;
> -		};
> -
> -		scmi_shmem_rx: scpshmem-sram-section@100 {
> -			compatible = "arm,scmi-shmem";
> -			reg = <0x100 0x100>;
> -		};
> -	};
> -
> -	memory@80000000 {
> -		device_type = "memory";
> -
> -		/* ~2GB mapped at 2GB, another 2GB at 2TB */
> -		reg = <0x00000000 0x80000000 0x00000000 0x7f000000>,
> -		      <0x00000200 0x00000000 0x00000000 0x80000000>;
> -	};
>   };


