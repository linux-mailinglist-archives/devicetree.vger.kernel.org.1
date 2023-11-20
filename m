Return-Path: <devicetree+bounces-17147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C48787F157A
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 15:16:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52CDAB21924
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 14:16:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 945301C2AB;
	Mon, 20 Nov 2023 14:16:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="mc8v5xay"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx08-00178001.pphosted.com [91.207.212.93])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AB71116;
	Mon, 20 Nov 2023 06:16:22 -0800 (PST)
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3AKD2cCY023981;
	Mon, 20 Nov 2023 15:15:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=BWJHaZUvp0pSmKDdFFMoLBoZtib1z4Q4scKppJuNI5g=; b=mc
	8v5xayw4hk8oZODrfeURCrRZl6qO7bQphdmiSD+TYodyXPMy4AbxoHoUYte4h636
	248NjQ7OHZv8nUVNjZVqmSCzJ9UKs/sh6yHm4SIVXeeEU6cOKEit28cZuavJoGkg
	XReZR0cmbwXfxDDYrvRp3zzIbplxIXBDH7O30Nn4Z3xXFAnu5CmtIdOJ+yqvkIBM
	XOUUYALKPnVmRuLMhEqFmNjJEZlrSEwfV4uVhZTIEImr0LFbct7I/zf8l+Vs3NVN
	G6zdwriR4nx4Ac8pZmCLbTBvBYeNZAoprBZBGPBvTyTeDssVVkAxajP2q4YEtgEC
	XMEYkJeCs/XfgW7ZG4SQ==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uen1hy31j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 20 Nov 2023 15:15:50 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1847810002A;
	Mon, 20 Nov 2023 15:15:49 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 10350228A30;
	Mon, 20 Nov 2023 15:15:49 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 20 Nov
 2023 15:15:48 +0100
Message-ID: <32583d1c-942d-40e8-a039-c79f3c63bfa8@foss.st.com>
Date: Mon, 20 Nov 2023 15:15:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] nvmem: add bsec support to stm32mp25
Content-Language: en-US
To: Patrick Delaunay <patrick.delaunay@foss.st.com>,
        Rob Herring
	<robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
 <20231117153310.4.I8fa60abf176f777721ee5beb2bad216f833ed31a@changeid>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20231117153310.4.I8fa60abf176f777721ee5beb2bad216f833ed31a@changeid>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-20_13,2023-11-20_01,2023-05-22_02

Hi Patrick

On 11/17/23 15:33, Patrick Delaunay wrote:
> Add BSEC support to STM32MP25 SoC family with SoC information:
> - RPN = Device part number (BSEC_OTP_DATA9)
> - PKG = package data register (Bits 2:0 of BSEC_OTP_DATA122)
> 
> Signed-off-by: Patrick Delaunay <patrick.delaunay@foss.st.com>
> ---

DT looks good for me, and yaml verification is passed. Only thing to fix 
is the commit title. If you don't have to send a V2 for other remarks 
then I will fix during merge else fix it in your v2.

Thanks

Alex

> 
>   arch/arm64/boot/dts/st/stm32mp251.dtsi | 16 ++++++++++++++++
>   1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
> index 124403f5f1f4..96859d098ef8 100644
> --- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
> +++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
> @@ -140,6 +140,22 @@ sdmmc1: mmc@48220000 {
>   			};
>   		};
>   
> +		bsec: efuse@44000000 {
> +			compatible = "st,stm32mp25-bsec";
> +			reg = <0x44000000 0x1000>;
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			part_number_otp@24 {
> +				reg = <0x24 0x4>;
> +			};
> +
> +			package_otp@1e8 {
> +				reg = <0x1e8 0x1>;
> +				bits = <0 3>;
> +			};
> +		};
> +
>   		syscfg: syscon@44230000 {
>   			compatible = "st,stm32mp25-syscfg", "syscon";
>   			reg = <0x44230000 0x10000>;

