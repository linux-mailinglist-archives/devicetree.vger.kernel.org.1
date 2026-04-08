Return-Path: <devicetree+bounces-285812-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MHzdFmxg1mmDEwgAu9opvQ
	(envelope-from <devicetree+bounces-285812-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 16:04:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3ABA3BD600
	for <lists+devicetree@lfdr.de>; Wed, 08 Apr 2026 16:04:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AAFDD302631D
	for <lists+devicetree@lfdr.de>; Wed,  8 Apr 2026 13:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB9983D16E1;
	Wed,  8 Apr 2026 13:57:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b="vgmvJ81o"
X-Original-To: devicetree@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 063C63CF02A
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 13:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775656630; cv=none; b=LOGMh52eDLTBfNQJi2rs9NBEdreKGVO0LzCQ7BCrBup2Zs4bLK/DiXC1ZXscJnhzEI5sB20l/Orux5wvDwH0po9Q5FImN8DyIhobSKVOXtS88hdM7YEGTJr0WaqtKm7uo3xX5IzxY9Sppov7ZFeCuDCJ8gMMsIXBcVzJH2f3NFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775656630; c=relaxed/simple;
	bh=DtgfAHIcG2yL3Uyz3ksmN6rTp9I1YSd/gQUgwKu2M3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b8OCYFPCqLLSKxAoaUtNHFUA+x3jiFU841zyKbqp3FvC35sF8jgodLsra6TCSY8eh/boxsoEKoAOeKX68UeAlOhspvtuQMxNnPINQyAdzI+GYBoHXT+n+vi+d/mn6BdEnVLrYcgER/OCHmE1VqkPQ4hmVFOW+KHpwlMhTjb9DGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; dkim=pass (1024-bit key) header.d=arm.com header.i=@arm.com header.b=vgmvJ81o; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 872CF267F
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 06:57:02 -0700 (PDT)
Received: from [192.168.0.1] (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 0AF1C3F641
	for <devicetree@vger.kernel.org>; Wed,  8 Apr 2026 06:57:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=arm.com; s=foss;
	t=1775656628; bh=DtgfAHIcG2yL3Uyz3ksmN6rTp9I1YSd/gQUgwKu2M3Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vgmvJ81oGtuXE1lNMP7rMFHoIh1TSpmM4zdbjmnBBf5AbQ5GiRpV8YtdQ2hxratdO
	 yUYBs9DF3pPwLp9a8MbHGkQW5wT1H/2CiqvDoanbusPpHnqv56LVq7ig2atCoxQQNJ
	 DC6qctBqEN7JbW0OpHTnV8qgC2VQwiQ0zqRhD/LQ=
Date: Wed, 8 Apr 2026 14:56:47 +0100
From: Liviu Dudau <liviu.dudau@arm.com>
To: Guangliu Ding <guangliu.ding@nxp.com>
Cc: Daniel Almeida <daniel.almeida@collabora.com>,
	Alice Ryhl <aliceryhl@google.com>,
	Boris Brezillon <boris.brezillon@collabora.com>,
	Steven Price <steven.price@arm.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3] arm64: dts: imx952: Describe Mali G310 GPU
Message-ID: <adZeny_sRg7t_A3j@e142607>
References: <20260407-master-v3-1-5a05cea0c521@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260407-master-v3-1-5a05cea0c521@nxp.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[arm.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[arm.com:s=foss];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-285812-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[22];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[collabora.com,google.com,arm.com,gmail.com,ffwll.ch,linux.intel.com,kernel.org,suse.de,nxp.com,pengutronix.de,lists.freedesktop.org,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[liviu.dudau@arm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[arm.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,nxp.com:email,msgid.link:url,arm.com:dkim,arm.com:email,4d900000:email,4c200200:email]
X-Rspamd-Queue-Id: C3ABA3BD600
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Apr 07, 2026 at 11:15:03AM +0800, Guangliu Ding wrote:
> Support Mali G310 GPU on i.MX952 board. Describe this GPU in the DT.
> Include dummy GPU voltage regulator and OPP tables.
> 
> A hardware GPU auto clock‑gating mechanism has been introduced,
> enabling GPUMIX to automatically manage the GPU clock. This improves
> overall response time.
> 
> Signed-off-by: Guangliu Ding <guangliu.ding@nxp.com>

Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>

Best regards,
Liviu

> ---
> This series enable Mali G310 GPU support on i.MX952 boards, the same GPU
> IP as the instance on i.MX95 boards.
> ---
> Changes in v3:
> - Follow the order of interrupts/interrupt-names in arm,mali-valhall-csf.yaml.
> - Drop dt-bindings change in arm,mali-valhall-csf.yaml.
> - Replace "nxp,imx952-mali" with "nxp,imx95-mali" in compatible.
> - Link to v2: https://patch.msgid.link/20260401-master-v2-0-20d3fbcd19d6@nxp.com
> 
> Changes in v2:
> - Improve patch description, adding more GPU information.
> - Remove Reviewed-by tag.
> - Link to v1: https://patch.msgid.link/20260331-master-v1-0-65c8e318d462@nxp.com
> ---
>  arch/arm64/boot/dts/freescale/imx952.dtsi | 36 +++++++++++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx952.dtsi b/arch/arm64/boot/dts/freescale/imx952.dtsi
> index 91fe4916ac04..ced09e7a1dc5 100644
> --- a/arch/arm64/boot/dts/freescale/imx952.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx952.dtsi
> @@ -318,6 +318,28 @@ usbphynop2: usbphynop2 {
>  		clock-names = "main_clk";
>  	};
>  
> +	gpu_opp_table: opp-table {
> +		compatible = "operating-points-v2";
> +
> +		opp-500000000 {
> +			opp-hz = /bits/ 64 <500000000>;
> +			opp-hz-real = /bits/ 64 <500000000>;
> +			opp-microvolt = <920000>;
> +		};
> +
> +		opp-800000000 {
> +			opp-hz = /bits/ 64 <800000000>;
> +			opp-hz-real = /bits/ 64 <800000000>;
> +			opp-microvolt = <920000>;
> +		};
> +
> +		opp-1000000000 {
> +			opp-hz = /bits/ 64 <1000000000>;
> +			opp-hz-real = /bits/ 64 <1000000000>;
> +			opp-microvolt = <920000>;
> +		};
> +	};
> +
>  	soc {
>  		compatible = "simple-bus";
>  		#address-cells = <2>;
> @@ -1262,5 +1284,19 @@ usbmisc2: usbmisc@4c200200 {
>  			reg = <0x0 0x4c200200 0x0 0x200>,
>  			      <0x0 0x4c010014 0x0 0x4>;
>  		};
> +
> +		gpu: gpu@4d900000 {
> +			compatible = "nxp,imx95-mali", "arm,mali-valhall-csf";
> +			reg = <0 0x4d900000 0 0x480000>;
> +			interrupts = <GIC_SPI 289 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 290 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 288 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "job", "mmu", "gpu";
> +			clocks = <&scmi_clk IMX952_CLK_GPU>;
> +			clock-names = "core";
> +			power-domains = <&scmi_devpd IMX952_PD_GPU>;
> +			operating-points-v2 = <&gpu_opp_table>;
> +			dynamic-power-coefficient = <1013>;
> +		};
>  	};
>  };
> 
> ---
> base-commit: 0138af2472dfdef0d56fc4697416eaa0ff2589bd
> change-id: 20260331-master-7ec7ff0fe1b2
> 
> Best regards,
> --  
> Guangliu Ding <guangliu.ding@nxp.com>
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

