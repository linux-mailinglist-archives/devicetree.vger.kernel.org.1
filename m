Return-Path: <devicetree+bounces-135800-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2842A023ED
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 12:06:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E14D9163463
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 11:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80C711DB95E;
	Mon,  6 Jan 2025 11:06:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="ajuQd6VF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C363C1D86ED;
	Mon,  6 Jan 2025 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.132.182.106
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736161595; cv=none; b=eVoBlFdRG0QyzyXvlitN5k9C1ely3TQR+h+fOMvwLhGN1gPW4TE7D5+WJkV5CndaUeGCrvglmHYwx6aLDmtOyCek3RVqp9AnFpiO7y+EX+NQIcjraXtgPnbRh3gnSuBRXu8Vh7XMqLs/8dDsckvWMifVqc1JgaQoaGsms+JuFlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736161595; c=relaxed/simple;
	bh=oe4bKLvrn8EHpwJG4HrnGSCmAnDIfd0q4fImuu1QIsI=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=BB1eRUiGMM1GwyXpduMt4f38PgEiBkjURYi/QLv+eRYrHKMO11jS/6KsI8L20sOjCqruWfWrebzsula9coerZ9fbrRCigETIlPLcX0EgvgAwn+A0Y3a44SxthgoixTTYyCp5t6DBen+JEFjA7W5X39zWvsPtRIgYUZi0LWLMPIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com; spf=pass smtp.mailfrom=foss.st.com; dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b=ajuQd6VF; arc=none smtp.client-ip=185.132.182.106
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=foss.st.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=foss.st.com
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5069EEDI023833;
	Mon, 6 Jan 2025 11:41:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	TJml0PBmXuMv4A11WWoV7KaNcI5rKzbslCWhFCYnuBU=; b=ajuQd6VFp/aROeUu
	uarVOb0JeoGTf5OBft4wSLSDzfZ+7fnMc8J15fObHwh+b1cFhbRFxUcSAEsv56Au
	kVIOScL8WBLZXea/HdnK53UOpuGM9e+DR3FFUG69UffClny9AwdZ4JuXq4Kw5YjO
	ek9XcZMvFMGocUrPePfN2tYbFvl6JieCIT61KqB2lfzIaQaD9SjjohJBfi5fj6PJ
	iTYiwSz+K5xU9LNfw4jpyTy1ai/ac6XAcw4vEsDrpKOapqfkN3edOW/ogY59OF3r
	Jl0lIskmxFcMT7mwj9/7QYO4xraMJ8541bxdLUoi6UUdMQMHNbaYCPx821DU1Ece
	LWsMuA==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 440cc78c5g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 06 Jan 2025 11:41:21 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id 1B97940049;
	Mon,  6 Jan 2025 11:39:55 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 034A126E738;
	Mon,  6 Jan 2025 11:39:14 +0100 (CET)
Received: from [10.48.87.62] (10.48.87.62) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 6 Jan
 2025 11:39:13 +0100
Message-ID: <13598662-b9ee-4dc6-93be-a54842c90c18@foss.st.com>
Date: Mon, 6 Jan 2025 11:39:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] ARM: dts: st: add node for the MALI gpu on
 stih410.dtsi
To: Alain Volmat <avolmat@me.com>, David Airlie <airlied@gmail.com>,
        Daniel
 Vetter <daniel@ffwll.ch>,
        Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20241006-sti-gpu-v2-0-c6bb408d6903@me.com>
 <20241006-sti-gpu-v2-2-c6bb408d6903@me.com>
Content-Language: en-US
From: Patrice CHOTARD <patrice.chotard@foss.st.com>
In-Reply-To: <20241006-sti-gpu-v2-2-c6bb408d6903@me.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SHFCAS1NODE2.st.com (10.75.129.73) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01



On 10/6/24 22:42, Alain Volmat wrote:
> Add the entry for the GPU (Mali400) on the stih410.dtsi
> 
> Signed-off-by: Alain Volmat <avolmat@me.com>
> ---
>  arch/arm/boot/dts/st/stih410.dtsi | 34 ++++++++++++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/st/stih410.dtsi b/arch/arm/boot/dts/st/stih410.dtsi
> index a69231854f783b1b9fd685ba2822eb406e0ffdf5..d56343f44fda4e9e1de2e5efc86e2d984bad14b4 100644
> --- a/arch/arm/boot/dts/st/stih410.dtsi
> +++ b/arch/arm/boot/dts/st/stih410.dtsi
> @@ -285,5 +285,39 @@ cec@94a087c {
>  			resets = <&softreset STIH407_LPM_SOFTRESET>;
>  			hdmi-phandle = <&sti_hdmi>;
>  		};
> +
> +		gpu: gpu@9f00000 {
> +			compatible = "st,stih410-mali", "arm,mali-400";
> +			reg = <0x9f00000 0x10000>;
> +			/* LIMA driver needs 2 clocks, use the same for both */
> +			clocks = <&clk_s_c0_flexgen CLK_ICN_GPU>,
> +				 <&clk_s_c0_flexgen CLK_ICN_GPU>;
> +			clock-names = "bus", "core";
> +			assigned-clocks = <&clk_s_c0_flexgen CLK_ICN_GPU>;
> +			assigned-clock-rates = <400000000>;
> +			resets = <&softreset STIH407_GPU_SOFTRESET>;
> +			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 46 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 47 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "gp",
> +					  "gpmmu",
> +					  "pp0",
> +					  "ppmmu0",
> +					  "pp1",
> +					  "ppmmu1",
> +					  "pp2",
> +					  "ppmmu2",
> +					  "pp3",
> +					  "ppmmu3";
> +
> +			status = "disabled";
> +		};
>  	};
>  };
> 
Hi Alain

Reviewed-by: Patrice Chotard <patrice.chotard@foss.st.com>

Thanks
PAtrice

