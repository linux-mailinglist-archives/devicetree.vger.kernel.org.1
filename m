Return-Path: <devicetree+bounces-25498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7268D813635
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 17:29:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A54A31C20C42
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 16:29:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E7D15FF19;
	Thu, 14 Dec 2023 16:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=foss.st.com header.i=@foss.st.com header.b="3byN0jhl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com [185.132.182.106])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4327121;
	Thu, 14 Dec 2023 08:29:20 -0800 (PST)
Received: from pps.filterd (m0288072.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BEFk9WK028436;
	Thu, 14 Dec 2023 17:28:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	message-id:date:mime-version:subject:to:cc:references:from
	:in-reply-to:content-type:content-transfer-encoding; s=
	selector1; bh=pAFj17HSIvNG/OLKmPGmMGVsrYHbgRXqCu1eFIvc9PU=; b=3b
	yN0jhljL5JhheeeJFR9IjZaIjEXxOFX95NxnHVUx8D74jxLUIXAhLS3RZv9N1iGJ
	aFUBSWUW2hynJ0Iop4ChAApJWNAzQ+a0ulntP0/B/TY7v5lROyq4bB3vvhGuKtIV
	hgohmF39qCD13T1JBQMJGNyQM0TCkSDuEPwwG6o1IBfMKfjwwHygulWibAwBCreI
	gPVVXE6JpjV8YsrknCC/Hy9KfuK2x3qap/e97pPSBTCFr/fCiZfbFUpmUJ9B2XQF
	FiJAMJzTb/L+4URlOX2AaJ9hPTOWAq7xzlmg0rjoSLu47PyukjBDQxT4utifTZYX
	BZb9fYSttgY12Uftr4+g==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uvehmpevx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 14 Dec 2023 17:28:53 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 10B76100053;
	Thu, 14 Dec 2023 17:28:43 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EEA6A2747B2;
	Thu, 14 Dec 2023 17:28:42 +0100 (CET)
Received: from [10.201.21.122] (10.201.21.122) by SHFDAG1NODE1.st.com
 (10.75.129.69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Thu, 14 Dec
 2023 17:28:41 +0100
Message-ID: <0145e75a-0d4c-4e34-a247-7852796f0552@foss.st.com>
Date: Thu, 14 Dec 2023 17:28:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] stm32: add support for STM32MP25 BSEC to control OTP
 data
Content-Language: en-US
To: Patrick Delaunay <patrick.delaunay@foss.st.com>,
        Srinivas Kandagatla
	<srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Catalin
 Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Fabrice
 Gasnier <fabrice.gasnier@foss.st.com>
CC: Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson
	<quic_bjorande@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Konrad Dybcio
	<konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski@linaro.org>,
        Marek Szyprowski
	<m.szyprowski@samsung.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <nfraprado@collabora.com>,
        Peng
 Fan <peng.fan@nxp.com>, Udit Kumar <u-kumar1@ti.com>,
        <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>
References: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
From: Alexandre TORGUE <alexandre.torgue@foss.st.com>
In-Reply-To: <20231117143338.1173475-1-patrick.delaunay@foss.st.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-14_11,2023-12-14_01,2023-05-22_02

Hi

On 11/17/23 15:33, Patrick Delaunay wrote:
> 
> Non volatile memory area is available on STM32MP25 with OTP in BSEC.
> 
> The 12 Kbits of OTP (effective) for STM32MP25x SoC Family
> are organized into the following regions:
> - lower OTP (OTP0 to OTP127) = 4096 lower OTP bits,
>    bitwise (1-bit) programmable
> - mid OTP (OTP128 to OTP255) = 4096 middle OTP bits,
>    bulk (32-bit) programmable
> - upper OTP (OTP256 to OTP383) = 4096 upper OTP bits,
>    bulk (32-bit) programmable,
>    only accessible when BSEC is in closed state.
> 
> BSEC is only accessible by secure world, so the OTP access is done
> by driver with OP-TEE TA, as on STM32MP13x family.
> 
> 
> 
> Patrick Delaunay (4):
>    dt-bindings: nvmem: add new stm32mp25 compatible for stm32-romem
>    nvmem: stm32: add support for STM32MP25 BSEC to control OTP data
>    arm64: defconfig: enable NVMEM STM32 ROMEM for stm32mp25
>    nvmem: add bsec support to stm32mp25
> 
>   .../bindings/nvmem/st,stm32-romem.yaml           |  1 +
>   arch/arm64/boot/dts/st/stm32mp251.dtsi           | 16 ++++++++++++++++
>   arch/arm64/configs/defconfig                     |  1 +
>   drivers/nvmem/stm32-romem.c                      | 16 ++++++++++++++++
>   4 files changed, 34 insertions(+)
> 


patch[4] (DT) applied on stm32-next.

thanks
Alex

