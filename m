Return-Path: <devicetree+bounces-10691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E4BDA7D27C7
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 03:05:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80B35B20C44
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 01:05:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C416EA32;
	Mon, 23 Oct 2023 01:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7944A7E8
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 01:05:07 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3CE6E9;
	Sun, 22 Oct 2023 18:05:04 -0700 (PDT)
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id A192924E167;
	Mon, 23 Oct 2023 09:04:51 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 23 Oct
 2023 09:04:51 +0800
Received: from [192.168.125.85] (183.27.99.123) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 23 Oct
 2023 09:04:50 +0800
Message-ID: <bd441e1d-73ae-4abc-8eb2-877419acb2df@starfivetech.com>
Date: Mon, 23 Oct 2023 09:04:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 01/20] dt-bindings: PCI: Add PLDA XpressRICH PCIe host
 common properties
Content-Language: en-US
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Conor Dooley
	<conor@kernel.org>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
	"Rob Herring" <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	"Lorenzo Pieralisi" <lpieralisi@kernel.org>, Daire McNamara
	<daire.mcnamara@microchip.com>, Emil Renner Berthing
	<emil.renner.berthing@canonical.com>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-pci@vger.kernel.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, Mason Huo
	<mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>,
	Kevin Xie <kevin.xie@starfivetech.com>
References: <20231020104341.63157-1-minda.chen@starfivetech.com>
 <20231020104341.63157-2-minda.chen@starfivetech.com>
 <8ced1915-7b94-4abc-bd8b-cb4bf027fa01@linaro.org>
From: Minda Chen <minda.chen@starfivetech.com>
In-Reply-To: <8ced1915-7b94-4abc-bd8b-cb4bf027fa01@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [183.27.99.123]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag



On 2023/10/20 19:04, Krzysztof Kozlowski wrote:
> On 20/10/2023 12:43, Minda Chen wrote:
>> Add PLDA XpressRICH PCIe host common properties dt-binding doc.
>> Microchip PolarFire PCIe host using PLDA IP.
>> Move common properties from Microchip PolarFire PCIe host
>> to PLDA files.
>> 
>> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
>> Reviewed-by: Hal Feng <hal.feng@starfivetech.com>
>> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>> Reviewed-by: Rob Herring <robh@kernel.org>
>> ---
>>  .../bindings/pci/microchip,pcie-host.yaml     | 55 +-------------
>>  .../pci/plda,xpressrich3-axi-common.yaml      | 75 +++++++++++++++++++
> 
> Where was this patch reviewed?
> 
> Best regards,
> Krzysztof
> 
This Conor's review tag. v2 : https://patchwork.kernel.org/project/linux-pci/patch/20230727103949.26149-2-minda.chen@starfivetech.com/
This is Rob's review tag v3: https://patchwork.kernel.org/project/linux-pci/patch/20230814082016.104181-2-minda.chen@starfivetech.com/

