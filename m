Return-Path: <devicetree+bounces-47986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E2E8086F90B
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 04:42:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 713141F21072
	for <lists+devicetree@lfdr.de>; Mon,  4 Mar 2024 03:42:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50B4179C5;
	Mon,  4 Mar 2024 03:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="QL4UKo1j"
X-Original-To: devicetree@vger.kernel.org
Received: from omta36.uswest2.a.cloudfilter.net (omta36.uswest2.a.cloudfilter.net [35.89.44.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDC4D2E0
	for <devicetree@vger.kernel.org>; Mon,  4 Mar 2024 03:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=35.89.44.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709523680; cv=none; b=Pu0/MplUEcXEC6jqflv2LzsrMzdpKOzJVXmsRmT8xVtc30daxMmc3/Q1iwcUedvtSZFEwU+W7/zvEHzuojQ4gq2f6q74TDxc35GmYeBKOO9OZBr4vWwb2yBwzfu8OrRA9BLxYDGbmct4OsoiC2QgpDoCxrsO0c6vteWcH/ukhXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709523680; c=relaxed/simple;
	bh=Rg+pzDNmbManVke3fIBOfJ8dG4UDF3YMZcF2cVJ/riE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nw8WsDdnXu3TtshjxQb61xKpPJFpvBLj4Pv3xM5HJ0N/9CECc3dSPa8/cnGrBDbsEPC3qN5gs36iKq2UTKRTP9bM5F/5U52cogEA8EqpyMecbq50aa7xi5RSZEZiIdjHrVzwGFHZFo9kadchiC6UFJKYIlBLh3tArcqSSkDA06A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=QL4UKo1j; arc=none smtp.client-ip=35.89.44.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6003a.ext.cloudfilter.net ([10.0.30.151])
	by cmsmtp with ESMTPS
	id gyuJrDV7Dtf2QgzCQr6iWY; Mon, 04 Mar 2024 03:41:10 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id gzCOrEE2Org2TgzCPrRxtS; Mon, 04 Mar 2024 03:41:10 +0000
X-Authority-Analysis: v=2.4 cv=JOA9sdKb c=1 sm=1 tr=0 ts=65e542d6
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=K6JAEmCyrfEA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=VwQbUJbxAAAA:8 a=MmOvKMSS5G6_t_hUHboA:9 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=AjGcO6oz07-iQ99wixmX:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=Q52LpUpqR//h+pvDH+rpgnfhu416PeLSosuhD8x0a10=; b=QL4UKo1j8a2bTV/Th/8IJPwYPh
	Y0dDmE0i9+G6kJqw4Xbxz4+qcsBlDPCt/gVjFpi6S/slpIugEyqy0GgnLbFPhrseBRylARLgB+tdr
	uswktWCmVXt6l86+XOZEiKJCe1ER5fOZanJZJjLg9eibj2mixfLgq8Rq0QBZWmQxftDH8oyRn2x9h
	eFCvLwB0dj89ie21PB/tybcZV5L3GLgAWe5AtY9ouQLyvaLMsGy2IzjDbFa7nbkdVVRERlCT0wnXN
	RQqbcSUGszhZQCGs9x0ghznSM4/tp4dWYyromeoHQgA2EKIXMXNf9eKq2dn+RQTUnKsgYTnZRn1ce
	iIslJ19g==;
Received: from [122.165.245.213] (port=37602 helo=[192.168.1.4])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1rgzCM-001eEe-2z;
	Mon, 04 Mar 2024 09:11:06 +0530
Message-ID: <0c89e7d1-39be-4776-8098-68307d397434@linumiz.com>
Date: Mon, 4 Mar 2024 09:11:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add Seeed studio NPi based
 boards
Content-Language: en-US
To: Rob Herring <robh@kernel.org>
Cc: robh+dt@kernel.org, linux-imx@nxp.com, linux-kernel@vger.kernel.org,
 kernel@pengutronix.de, shawnguo@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 Parthiban <parthiban@linumiz.com>, sre@kernel.org
References: <20240229082337.3090778-1-parthiban@linumiz.com>
 <170921330970.3211978.15088255449645039046.robh@kernel.org>
From: Parthiban <parthiban@linumiz.com>
Organization: Linumiz
In-Reply-To: <170921330970.3211978.15088255449645039046.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-79.webhostbox.net
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - linumiz.com
X-BWhitelist: no
X-Source-IP: 122.165.245.213
X-Source-L: No
X-Exim-ID: 1rgzCM-001eEe-2z
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.4]) [122.165.245.213]:37602
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 10
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfDsQGl6Jl4NbxroE2QZbHVnZc/AF/XjR6kB1L5zcAzSiY3ru230KTryUH+w9JIxj3EGSMGkHYH2Mwh9YePhdL+fozkP8NPQPxpBUIWWnMCD/OPgjo/AL
 t+9Jrw3q+LoVAzBw1q64mnX+o+jdEpN/wR5TbBIODT4rqpsCd5DZ5mkAGuY9Rfnz2k1KN8eQCvr5CUQHLMMbOR/fTIkzYPCaVg4=

Dear Rob,

On 2/29/24 19:05, Rob Herring wrote:
> 
> On Thu, 29 Feb 2024 13:53:36 +0530, Parthiban Nallathambi wrote:
>> NPi i.MX6ULL eMMC/NAND is Seed Studios SoM using i.MX6ULL.
>> Development baords can be either based on NAND or eMMC
>> SoM.
>>
>> Signed-off-by: Parthiban Nallathambi <parthiban@linumiz.com>
>> ---
>>  Documentation/devicetree/bindings/arm/fsl.yaml | 8 ++++++++
>>  1 file changed, 8 insertions(+)
>>
> 
> 
> My bot found new DT warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform

https://patchwork.kernel.org/project/linux-arm-kernel/list/?series=830038
patch series which is fixing the bindings issues.

Thanks,
Parthiban N

> maintainer whether these warnings are acceptable or not.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> New warnings running 'make CHECK_DTBS=y nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb' for 20240229082337.3090778-1-parthiban@linumiz.com:
> 
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/touchscreen@2040000: failed to match any schema with compatible: ['fsl,imx6ul-tsc']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/touchscreen@2040000: failed to match any schema with compatible: ['fsl,imx6ul-tsc']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/pinctrl@20e0000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/pinctrl@20e0000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-emmc.dtb: /soc/bus@2200000/pinctrl@2290000: failed to match any schema with compatible: ['fsl,imx6ull-iomuxc-snvs']
> arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board-nand.dtb: /soc/bus@2200000/pinctrl@2290000: failed to match any schema with compatible: ['fsl,imx6ull-iomuxc-snvs']
> 
> 
> 
> 
> 

