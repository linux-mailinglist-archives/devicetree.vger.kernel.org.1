Return-Path: <devicetree+bounces-17585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4F67F2E55
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 14:31:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B4DE2825B3
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 13:31:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD1FE4643D;
	Tue, 21 Nov 2023 13:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="r5eBZjKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C977ED4C;
	Tue, 21 Nov 2023 05:30:53 -0800 (PST)
Received: from pps.filterd (m0369458.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3ALBtFEP008776;
	Tue, 21 Nov 2023 14:30:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=wH6jj928aqrBjiG1F8WJ2A3tTTsaMSh/zRMWl0Buscg=; b=r5
	eBZjKJanpHJ0TaPhRtWcmOp6SYS6sQLOgKCuiuwCn0adGr8/R1idgBnIBRJKhD+D
	U8UgWc2ANNmfe3k+sJ6TMbxyrUVDLuHsYvgbBpPUB2eb9BEdvuMi+XLJ8uG4XoBw
	5XYWpqfTZcymRXXTsPVZsKUz/zLL3aIwExF5slDAth8b+zt1GLX+59JzPp2+cirg
	DBZ0Pe/AUFjFCnp54/sVIQLAbArPVVOEU/5615TIFtT4NqtmsGoc1XHy6x1qWUVZ
	azp6YrI+go26xQRSs7r2fPVtTqLOt/vuaN2tflO9D2Fas4+kqSH3OXVjnnFPgkEF
	MTJTN/j295qVPigxkAvw==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uf7q4ayn5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 21 Nov 2023 14:30:43 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 84D0E10002A;
	Tue, 21 Nov 2023 14:30:42 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7BDFF2207A8;
	Tue, 21 Nov 2023 14:30:42 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Tue, 21 Nov
 2023 14:30:41 +0100
Message-ID: <6cbc9758-5142-403a-a6e6-06b334639dba@foss.st.com>
Date: Tue, 21 Nov 2023 14:30:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: stm32: add STM32F746 syscfg clock
Content-Language: en-US
To: Ben Wolsieffer <ben.wolsieffer@hefring.com>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>
CC: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>
References: <20231101155153.2767482-2-ben.wolsieffer@hefring.com>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20231101155153.2767482-2-ben.wolsieffer@hefring.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.201.21.122]
X-ClientProxiedBy: SHFCAS1NODE1.st.com (10.75.129.72) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-21_05,2023-11-21_01,2023-05-22_02

Hi Ben

On 11/1/23 16:51, Ben Wolsieffer wrote:
> The syscfg syscon was missing its clock, therefore any attempt to
> read/write it after clk_disable_unused() silently failed. This was
> preventing external pin interrupts from working if they were initialized
> after this point.
> 
> Signed-off-by: Ben Wolsieffer <ben.wolsieffer@hefring.com>
> ---
>   arch/arm/boot/dts/st/stm32f746.dtsi | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boot/dts/st/stm32f746.dtsi b/arch/arm/boot/dts/st/stm32f746.dtsi
> index 4942753d011e..cce6ab0e4617 100644
> --- a/arch/arm/boot/dts/st/stm32f746.dtsi
> +++ b/arch/arm/boot/dts/st/stm32f746.dtsi
> @@ -501,6 +501,7 @@ sdio1: mmc@40012c00 {
>   		syscfg: syscon@40013800 {
>   			compatible = "st,stm32-syscfg", "syscon";
>   			reg = <0x40013800 0x400>;
> +			clocks = <&rcc 0 STM32F7_APB2_CLOCK(SYSCFG)>;
>   		};
>   
>   		exti: interrupt-controller@40013c00 {

Applied on stm32-next.

Thanks
Alex

