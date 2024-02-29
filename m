Return-Path: <devicetree+bounces-47280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 181F786CA84
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 14:43:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A3B11C21196
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 13:43:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CB2086266;
	Thu, 29 Feb 2024 13:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b="DdFVivt/"
X-Original-To: devicetree@vger.kernel.org
Received: from omta034.useast.a.cloudfilter.net (omta034.useast.a.cloudfilter.net [44.202.169.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A02117E0E7
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 13:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=44.202.169.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709214181; cv=none; b=HUOpZPxRMDXA51AAFzZwQCz9Dt+jXk8HCE2Vq2KB8xlDXq7H7q1oDVG+bm8j8+ATqieytH/aZ1Qcvp+C9fC76ExhoZ5UTjnAI7pAvyzPre7IflCpiCqLeYs9p5Y7GPPXNQ5RBIM99G0Qi6KGragbQppV0pEKRCNIqkZ3fZGF4mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709214181; c=relaxed/simple;
	bh=8rYwzbxYj4vrnha0t2AKzLRwzjvgBm6Z1yuT19Cy4XU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tz//6CGpHfyOlBBAsOCHJOTtDUQF22LrZ9/WLjaP5eYA5Ji5lj0gXme+rY2tC//EQe0bAQukp7y6eK6NBA5BQ5vHXe3WXStXFyqdUsInJ5FGOzO78fWbOG9L5LcJ82s7Fg8qfQagzABjo4tpKGCFahUyFq/LqDS+9HJUAZRV8CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com; spf=pass smtp.mailfrom=linumiz.com; dkim=pass (2048-bit key) header.d=linumiz.com header.i=@linumiz.com header.b=DdFVivt/; arc=none smtp.client-ip=44.202.169.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linumiz.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linumiz.com
Received: from eig-obgw-6006a.ext.cloudfilter.net ([10.0.30.182])
	by cmsmtp with ESMTPS
	id fdAKr71u2s4yTfggbrnga4; Thu, 29 Feb 2024 13:42:57 +0000
Received: from md-in-79.webhostbox.net ([43.225.55.182])
	by cmsmtp with ESMTPS
	id fggXrV0HOdVpCfggZroLiz; Thu, 29 Feb 2024 13:42:56 +0000
X-Authority-Analysis: v=2.4 cv=SaLxdORu c=1 sm=1 tr=0 ts=65e089e0
 a=LfuyaZh/8e9VOkaVZk0aRw==:117 a=kofhyyBXuK/oEhdxNjf66Q==:17
 a=IkcTkHD0fZMA:10 a=k7vzHIieQBIA:10 a=oz0wMknONp8A:10 a=vU9dKmh3AAAA:8
 a=gEfo2CItAAAA:8 a=30BekZBjpCcCcibuRJYA:9 a=QEXdDO2ut3YA:10
 a=rsP06fVo5MYu2ilr0aT5:22 a=sptkURWiP4Gy88Gu7hUp:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=linumiz.com
	; s=default; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=FrgbLBsNF0iWzcBTdaTIwKxZagkFXCPdJPVu5FIYbjQ=; b=DdFVivt/Q9LFR5NHCWVK9gIp6C
	9j5x6z00P0eb+0B0nIFQvWtWbDjVMGWjVT7am0LzHSL/AVQoV7n4HS9MQYMQAxFnJr4b/z/HzxCLY
	fwURMkl7x92zwHm7bkwikPzZrfyfsYiOwoUqJtm0He2PDRz8oQNvtm5CuP+9yCw14D95yUHnGJStO
	0YvEK6/qOzzwSRciKvvMrUBy5VOQdevfBU+eisiCFXaSJy2VTUWMXz9EXEHm0YguIoXkpWAtK+zz5
	9Y2jQYj8SoRxTGFVR3P46IVEBVYXSVjLC5ArrdlTM4BUUWgmPblNwz5s8jfWKyJV9ijtMaCqIaDdu
	Nkq7jcvA==;
Received: from [122.165.245.213] (port=44614 helo=[192.168.1.101])
	by md-in-79.webhostbox.net with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <parthiban@linumiz.com>)
	id 1rfggU-0029Zh-2M;
	Thu, 29 Feb 2024 19:12:50 +0530
Message-ID: <f1cb3511-c960-4986-996c-6bc7a7fd93c6@linumiz.com>
Date: Thu, 29 Feb 2024 19:12:47 +0530
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
 Parthiban <parthiban@linumiz.com>
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
X-Exim-ID: 1rfggU-0029Zh-2M
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.1.101]) [122.165.245.213]:44614
X-Source-Auth: parthiban@linumiz.com
X-Email-Count: 6
X-Org: HG=dishared_whb_net_legacy;ORG=directi;
X-Source-Cap: bGludW1jbWM7aG9zdGdhdG9yO21kLWluLTc5LndlYmhvc3Rib3gubmV0
X-Local-Domain: yes
X-CMAE-Envelope: MS4xfKXl3RwVNr0debVfqmC5sgpNqDdb505vyLCnI3RH+LVOq+R/rUQ4Xpcwo9R6R2V1UcfZfK+ejcK0BSMKwLzy8LfOT+R2NL8nkPSLsfhLGGZl6KHUPwTx
 efmHDJRadETE5yD5xF1SJlIQN9uEssbL5nCyuAvEqsQZbOihsFsXYt5jqzcMDPFIw/53NqdfnDiTcQuzJbT8QIaX8GIMejmCgU4=

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
> maintainer whether these warnings are acceptable or not.

Yes I noticed the same in my end. AFAIK these warnings are from existing dtsi. Quick check different dtb resulted the same,

make CHECK_DTBS=y ARCH=arm CROSS_COMPILE=arm-none-linux-gnueabihf- nxp/imx/imx6ull-tarragon-master.dtb O=./master -j32
make[1]: Entering directory '/home/parthiban/data/parthiban/mainline/linux/master'
  DTC_CHK arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/spba-bus@2000000/spi@200c000/ethernet@0: failed to match any schema with compatible: ['qca,qca7000']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/spba-bus@2000000/spi@2014000/ethernet@0: failed to match any schema with compatible: ['qca,qca7000']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/spba-bus@2000000/asrc@2034000: failed to match any schema with compatible: ['fsl,imx6ul-asrc', 'fsl,imx53-asrc']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/spba-bus@2000000/asrc@2034000: failed to match any schema with compatible: ['fsl,imx6ul-asrc', 'fsl,imx53-asrc']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/tsc@2040000: failed to match any schema with compatible: ['fsl,imx6ul-tsc']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/anatop@20c8000: failed to match any schema with compatible: ['fsl,imx6ul-anatop', 'fsl,imx6q-anatop', 'syscon', 'simple-mfd']
/home/parthiban/data/parthiban/mainline/linux/master/arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: tempmon: '#thermal-sensor-cells' is a required property
        from schema $id: http://devicetree.org/schemas/thermal/imx-thermal.yaml#
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/pinctrl@20e0000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2000000/iomuxc-gpr@20e4000: failed to match any schema with compatible: ['fsl,imx6ul-iomuxc-gpr', 'fsl,imx6q-iomuxc-gpr', 'syscon']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2100000/weim@21b8000: failed to match any schema with compatible: ['fsl,imx6ul-weim', 'fsl,imx6q-weim']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2100000/weim@21b8000: failed to match any schema with compatible: ['fsl,imx6ul-weim', 'fsl,imx6q-weim']
arch/arm/boot/dts/nxp/imx/imx6ull-tarragon-master.dtb: /soc/bus@2200000/iomuxc-snvs@2290000: failed to match any schema with compatible: ['fsl,imx6ull-iomuxc-snvs']
make[1]: Leaving directory '/home/parthiban/data/parthiban/mainline/linux/master'

> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade

Thanks, am already using the latest version.

Thanks,
Parthiban N

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

