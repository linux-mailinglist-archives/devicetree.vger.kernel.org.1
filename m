Return-Path: <devicetree+bounces-10833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D4C7D2DA7
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:09:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5BFF6B20C8F
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 09:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ADC812B77;
	Mon, 23 Oct 2023 09:09:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89FF3101F0
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 09:09:05 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 993C398;
	Mon, 23 Oct 2023 02:09:02 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.56])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4SDTlz6dxYzMm8l;
	Mon, 23 Oct 2023 17:04:47 +0800 (CST)
Received: from [10.174.178.156] (10.174.178.156) by
 kwepemm000013.china.huawei.com (7.193.23.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Mon, 23 Oct 2023 17:08:58 +0800
Message-ID: <ff4df55f-27f2-8042-be58-a5feb2620551@huawei.com>
Date: Mon, 23 Oct 2023 17:08:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v5 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
To: Rob Herring <robh@kernel.org>
CC: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <xuqiang36@huawei.com>,
	<chenweilong@huawei.com>
References: <20231021093454.39822-1-guomengqi3@huawei.com>
 <20231021093454.39822-3-guomengqi3@huawei.com>
 <20231022211348.GA682758-robh@kernel.org>
From: "guomengqi (A)" <guomengqi3@huawei.com>
In-Reply-To: <20231022211348.GA682758-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.178.156]
X-ClientProxiedBy: dggems703-chm.china.huawei.com (10.3.19.180) To
 kwepemm000013.china.huawei.com (7.193.23.81)
X-CFilter-Loop: Reflected


在 2023/10/23 5:13, Rob Herring 写道:
> On Sat, Oct 21, 2023 at 05:34:53PM +0800, Guo Mengqi wrote:
>> Add device-tree binding documentation for sdma hardware on
>> HiSilicon Ascend SoC families.
>>
>> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
>> ---
>>   .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
>> new file mode 100644
>> index 000000000000..7b452b54fe0c
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
>> @@ -0,0 +1,73 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/dma/hisilicon,ascend-sdma.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: HiSilicon Ascend System DMA (SDMA) controller
>> +
>> +description: |
>> +  The Ascend SDMA controller is used for transferring data
>> +  in system memory.
>> +
>> +maintainers:
>> +  - Guo Mengqi <guomengqi3@huawei.com>
>> +
>> +allOf:
>> +  - $ref: dma-controller.yaml#
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - hisilicon,ascend310-sdma
>> +      - hisilicon,ascend910-sdma
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  '#dma-cells':
>> +    const: 1
>> +    description:
>> +      Clients specify a single cell with channel number.
>> +
>> +  dma-channel-mask:
>> +    minItems: 1
>> +    maxItems: 2
>> +
>> +  iommus:
>> +    maxItems: 1
>> +
>> +  pasid-num-bits:
>> +    description: |
>> +      This tells smmu that this device supports iommu-sva feature.
> How is this a feature of the DMA controller? Shouldn't this be part of
> the iommu cells? How does pasid relate to SVA?
Hi

"pasid-num-bits" shows number of address spaces that device can access.

The property is necessary because iommu driver use this property to 
decide whether the device supports SVA.

For example,

     pasid-num-bits = <0x10>; // the device can access page table from 
at most 16 user processes

Descriptions can be found at 
Documentation/devicetree/bindings/iommu/iommu.txt .

This does not fit in iommu cells? I think iommu cells only hold stream 
id and dma window.

>
>> +      This determines the maximum number of digits in the pasid.
>> +    maximum: 0x10
>> +
>> +  dma-coherent: true
>> +
>> +  dma-can-stall: true
> What is this?

This means dma controller can wait for iommu to handle the page fault.

When present, the master can wait for a transaction to  complete for an 
indefinite amount of time.

The hardware is designed with stalling support.

>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - dma-channel-mask
>> +  - '#dma-cells'
>> +  - iommus
>> +  - pasid-num-bits
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    dma-controller@880e0000 {
>> +        compatible = "hisilicon,ascend310-sdma";
>> +        reg = <0x880e0000 0x10000>;
>> +        dma-channel-mask = <0xff00>;
>> +        iommus = <&smmu 0x7f46>;
>> +        pasid-num-bits = <0x10>;
>> +        dma-coherent;
>> +        dma-can-stall;
>> +        #dma-cells = <1>;
>> +    };
>> +
>> +...
>> -- 
>> 2.17.1
>>
> .

