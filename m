Return-Path: <devicetree+bounces-12392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C187D93E0
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:38:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 544BCB210FF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9F2316424;
	Fri, 27 Oct 2023 09:37:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B122016417
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:37:54 +0000 (UTC)
Received: from szxga02-in.huawei.com (szxga02-in.huawei.com [45.249.212.188])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A893110CC;
	Fri, 27 Oct 2023 02:37:49 -0700 (PDT)
Received: from kwepemm000013.china.huawei.com (unknown [172.30.72.56])
	by szxga02-in.huawei.com (SkyGuard) with ESMTP id 4SGyCj2fgYzVlMy;
	Fri, 27 Oct 2023 17:33:53 +0800 (CST)
Received: from [10.174.178.156] (10.174.178.156) by
 kwepemm000013.china.huawei.com (7.193.23.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.31; Fri, 27 Oct 2023 17:37:46 +0800
Message-ID: <8032bf97-4d22-1d67-09e2-7183d3a75ae3@huawei.com>
Date: Fri, 27 Oct 2023 17:37:45 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH v6 2/2] dt-bindings: dma: HiSilicon: Add bindings for
 HiSilicon Ascend sdma
To: Rob Herring <robh@kernel.org>
CC: <vkoul@kernel.org>, <dmaengine@vger.kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
	<devicetree@vger.kernel.org>, <xuqiang36@huawei.com>,
	<chenweilong@huawei.com>
References: <20231026072549.103102-1-guomengqi3@huawei.com>
 <20231026072549.103102-3-guomengqi3@huawei.com>
 <20231026165502.GA3979802-robh@kernel.org>
From: "guomengqi (A)" <guomengqi3@huawei.com>
In-Reply-To: <20231026165502.GA3979802-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.174.178.156]
X-ClientProxiedBy: dggems702-chm.china.huawei.com (10.3.19.179) To
 kwepemm000013.china.huawei.com (7.193.23.81)
X-CFilter-Loop: Reflected


在 2023/10/27 0:55, Rob Herring 写道:
> On Thu, Oct 26, 2023 at 03:25:49PM +0800, Guo Mengqi wrote:
>> Add device-tree binding documentation for sdma hardware on
>> HiSilicon Ascend SoC families.
>>
>> Signed-off-by: Guo Mengqi <guomengqi3@huawei.com>
>> ---
> This is where you explain any expected failure. Resending the same patch
> with the same failure again is not a great strategy. The patch needs to
> stand on its own and not rely on some explanation in a prior version.

OK, will do this next time. I was eager to see whether those kernel 
build warnings are fixed, so sent the new patch quickly.

>>   .../bindings/dma/hisilicon,ascend-sdma.yaml   | 73 +++++++++++++++++++
>>   1 file changed, 73 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/dma/hisilicon,ascend-sdma.yaml
> Reviewed-by: Rob Herring <robh@kernel.org>
>
> I had missed that pasid-num-bits and dma-can-stall are IOMMU consumer
> properties. (We really should have prefixed them with 'iommu'.) I've now
> added them to dtschema which should fix the warning.

They do look a little confusing.

Thanks.

-Mengqi

> Rob
>
> .

