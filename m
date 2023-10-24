Return-Path: <devicetree+bounces-11122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6A127D454C
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 04:05:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CF58B1C20A15
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 02:04:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E1416FC8;
	Tue, 24 Oct 2023 02:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1419C7460
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 02:04:54 +0000 (UTC)
Received: from szxga03-in.huawei.com (szxga03-in.huawei.com [45.249.212.189])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A10F810C2;
	Mon, 23 Oct 2023 19:04:49 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.54])
	by szxga03-in.huawei.com (SkyGuard) with ESMTP id 4SDwHZ4vTGzMmTB;
	Tue, 24 Oct 2023 10:00:10 +0800 (CST)
Received: from [10.174.178.156] (10.174.178.156) by
 kwepemm000013.china.huawei.com (7.193.23.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Tue, 24 Oct 2023 10:04:21 +0800
Message-ID: <c2803495-691d-9e3f-5012-1df13c32332c@huawei.com>
Date: Tue, 24 Oct 2023 10:04:20 +0800
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
CC: <vkoul@kernel.org>, <devicetree@vger.kernel.org>, <xuqiang36@huawei.com>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<dmaengine@vger.kernel.org>, <chenweilong@huawei.com>, <conor+dt@kernel.org>
References: <20231021093454.39822-1-guomengqi3@huawei.com>
 <20231021093454.39822-3-guomengqi3@huawei.com>
 <169788348856.1320467.2316881090457833857.robh@kernel.org>
From: "guomengqi (A)" <guomengqi3@huawei.com>
In-Reply-To: <169788348856.1320467.2316881090457833857.robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.178.156]
X-ClientProxiedBy: dggems701-chm.china.huawei.com (10.3.19.178) To
 kwepemm000013.china.huawei.com (7.193.23.81)
X-CFilter-Loop: Reflected


在 2023/10/21 18:18, Rob Herring 写道:
> On Sat, 21 Oct 2023 17:34:53 +0800, Guo Mengqi wrote:
>> Add device-tree binding documentation for sdma hardware on
>> HiSilicon Ascend SoC families.
>>
>> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
>> ---
>>   .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
>>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> /builds/robherring/dt-review-ci/linux/Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml: dma-can-stall: missing type definition
>
> doc reference errors (make refcheckdocs):
>
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20231021093454.39822-3-guomengqi3@huawei.com
>
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
>
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
>
>
> .

It seems "pip3 install dtschema --upgrade" does not work for me. I use 
git clone to get the correct validator.py.


'dma-can-stall' is not a vendor specific property.

Shall I state the missing type definition in my binding or elsewhere?


