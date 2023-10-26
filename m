Return-Path: <devicetree+bounces-12053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C84A37D7BE5
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 06:49:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB6ED1C20E69
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 04:49:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718C2BE6B;
	Thu, 26 Oct 2023 04:49:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="les9P+Wu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0A428F47
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 04:49:29 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92225186;
	Wed, 25 Oct 2023 21:49:27 -0700 (PDT)
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39Q3QZAE025980;
	Thu, 26 Oct 2023 04:48:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=hn7mI5XFOG6K7jwuqiR0Ffa6KjespaUDl8gFI+U8m5A=;
 b=les9P+WuPjyeIKUADLKxK3l/09OfKF3PEzo2QZxA0L2uAF9BQU4LeCIG6sYGbeJ06baJ
 71rJQytzxd+JqConSvP66cXNEspbXBYxPpcLmPxbKFwVTmA5GgYY1sU1Q/0TgezZTzay
 pQcpoMhXd2qN/KilxGLNwjqxRBPv/Se6/tKqxPFLW/nONAlfx+XhcA8uzjVjSTBi0m+y
 RmDwdaESTf0A2w5Eqok6w55Rq2bt3UWy7bTIuH3z99aWMVfDZlbgdcY3NusFLtTYLSr+
 +XLfRfDdK83n7765TGPT4EDXo66Iu2PLumiFJvBiFxyzhPvdA4z9hwb7QlYUh97+LjYI tw== 
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3tyfm9g636-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 04:48:57 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39Q4muAc014492
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 26 Oct 2023 04:48:56 GMT
Received: from [10.216.34.174] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Wed, 25 Oct
 2023 21:48:49 -0700
Message-ID: <ac44de13-f4e0-4bae-b06b-af90fadaa96c@quicinc.com>
Date: Thu, 26 Oct 2023 10:18:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
To: =?UTF-8?B?WW9uZyBXdSAo5ZC05YuHKQ==?= <Yong.Wu@mediatek.com>,
        "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
        "christian.koenig@amd.com"
	<christian.koenig@amd.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sumit.semwal@linaro.org" <sumit.semwal@linaro.org>
CC: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
        "jstultz@google.com" <jstultz@google.com>,
        "linaro-mm-sig@lists.linaro.org"
	<linaro-mm-sig@lists.linaro.org>,
        "linux-media@vger.kernel.org"
	<linux-media@vger.kernel.org>,
        "devicetree@vger.kernel.org"
	<devicetree@vger.kernel.org>,
        =?UTF-8?B?SmlhbmppYW8gWmVuZyAo5pu+5YGl5aejKQ==?=
	<Jianjiao.Zeng@mediatek.com>,
        =?UTF-8?B?S3VvaG9uZyBXYW5nICjnjovlnIvptLsp?=
	<kuohong.wang@mediatek.com>,
        "conor+dt@kernel.org" <conor+dt@kernel.org>,
        "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>,
        "benjamin.gaignard@collabora.com" <benjamin.gaignard@collabora.com>,
        "tjmercier@google.com" <tjmercier@google.com>,
        "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
        "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
        "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>,
        "angelogioacchino.delregno@collabora.com"
	<angelogioacchino.delregno@collabora.com>
References: <20230911023038.30649-1-yong.wu@mediatek.com>
 <20230911023038.30649-5-yong.wu@mediatek.com>
 <5d806772-a2b4-4304-be45-7c2ed2930fcc@quicinc.com>
 <c8bf01a083182fdc83742de8daad8c5ce8d56d5b.camel@mediatek.com>
Content-Language: en-US
From: Vijayanand Jitta <quic_vjitta@quicinc.com>
In-Reply-To: <c8bf01a083182fdc83742de8daad8c5ce8d56d5b.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: pGxxlDuuSPDcqHECPGkRKbpmHIVzrNfa
X-Proofpoint-GUID: pGxxlDuuSPDcqHECPGkRKbpmHIVzrNfa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-26_01,2023-10-25_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 mlxlogscore=999 adultscore=0 suspectscore=0 mlxscore=0 spamscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310170001 definitions=main-2310260038



On 10/20/2023 3:29 PM, Yong Wu (吴勇) wrote:
> On Thu, 2023-10-19 at 10:15 +0530, Vijayanand Jitta wrote:
>>  	 
>> External email : Please do not click links or open attachments until
>> you have verified the sender or the content.
>>  
>>
>> On 9/11/2023 8:00 AM, Yong Wu wrote:
>>> Initialise a mtk_svp heap. Currently just add a null heap, Prepare
>> for
>>> the later patches.
>>>
>>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>>> ---
>>>  drivers/dma-buf/heaps/Kconfig           |  8 ++
>>>  drivers/dma-buf/heaps/Makefile          |  1 +
>>>  drivers/dma-buf/heaps/mtk_secure_heap.c | 99
>> +++++++++++++++++++++++++
>>>  3 files changed, 108 insertions(+)
>>>  create mode 100644 drivers/dma-buf/heaps/mtk_secure_heap.c
>>>
>>> diff --git a/drivers/dma-buf/heaps/Kconfig b/drivers/dma-
>> buf/heaps/Kconfig
>>> index a5eef06c4226..729c0cf3eb7c 100644
>>> --- a/drivers/dma-buf/heaps/Kconfig
>>> +++ b/drivers/dma-buf/heaps/Kconfig
>>> @@ -12,3 +12,11 @@ config DMABUF_HEAPS_CMA
>>>    Choose this option to enable dma-buf CMA heap. This heap is
>> backed
>>>    by the Contiguous Memory Allocator (CMA). If your system has
>> these
>>>    regions, you should say Y here.
>>> +
>>> +config DMABUF_HEAPS_MTK_SECURE
>>> +bool "DMA-BUF MediaTek Secure Heap"
>>> +depends on DMABUF_HEAPS && TEE
>>> +help
>>> +  Choose this option to enable dma-buf MediaTek secure heap for
>> Secure
>>> +  Video Path. This heap is backed by TEE client interfaces. If in
>>> +  doubt, say N.
>>> diff --git a/drivers/dma-buf/heaps/Makefile b/drivers/dma-
>> buf/heaps/Makefile
>>> index 974467791032..df559dbe33fe 100644
>>> --- a/drivers/dma-buf/heaps/Makefile
>>> +++ b/drivers/dma-buf/heaps/Makefile
>>> @@ -1,3 +1,4 @@
>>>  # SPDX-License-Identifier: GPL-2.0
>>>  obj-$(CONFIG_DMABUF_HEAPS_SYSTEM)+= system_heap.o
>>>  obj-$(CONFIG_DMABUF_HEAPS_CMA)+= cma_heap.o
>>> +obj-$(CONFIG_DMABUF_HEAPS_MTK_SECURE)+= mtk_secure_heap.o
>>> diff --git a/drivers/dma-buf/heaps/mtk_secure_heap.c b/drivers/dma-
>> buf/heaps/mtk_secure_heap.c
>>> new file mode 100644
>>> index 000000000000..bbf1c8dce23e
>>> --- /dev/null
>>> +++ b/drivers/dma-buf/heaps/mtk_secure_heap.c
>>> @@ -0,0 +1,99 @@
>>> +// SPDX-License-Identifier: GPL-2.0
>>> +/*
>>> + * DMABUF mtk_secure_heap exporter
>>> + *
>>> + * Copyright (C) 2023 MediaTek Inc.
>>> + */
>>> +
>>> +#include <linux/dma-buf.h>
>>> +#include <linux/dma-heap.h>
>>> +#include <linux/err.h>
>>> +#include <linux/module.h>
>>> +#include <linux/slab.h>
>>> +
>>> +/*
>>> + * MediaTek secure (chunk) memory type
>>> + *
>>> + * @KREE_MEM_SEC_CM_TZ: static chunk memory carved out for
>> trustzone.
>>> + */
>>> +enum kree_mem_type {
>>> +KREE_MEM_SEC_CM_TZ = 1,
>>> +};
>>> +
>>> +struct mtk_secure_heap_buffer {
>>> +struct dma_heap*heap;
>>> +size_tsize;
>>> +};
>>> +
>>> +struct mtk_secure_heap {
>>> +const char*name;
>>> +const enum kree_mem_type mem_type;
>>> +};
>>> +
>>> +static struct dma_buf *
>>> +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
>>> +      unsigned long fd_flags, unsigned long heap_flags)
>>> +{
>>> +struct mtk_secure_heap_buffer *sec_buf;
>>> +DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>>> +struct dma_buf *dmabuf;
>>> +int ret;
>>> +
>>> +sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
>>
>> As we know, kzalloc can only allocate 4MB at max. So, secure heap has
>> this limitation.
>> can we have a way to allocate more memory in secure heap ? maybe
>> similar to how system heap does?
> 
> This is just the size of a internal structure. I guess you mean the
> secure memory size here. Regarding secure memory allocating flow, our
> flow may be different with yours.
> 
> Let me explain our flow, we have two secure buffer types(heaps).
> a) mtk_svp
> b) mtk_svp_cma which requires the cma binding.
> 
> The memory management of both is inside the TEE. We only need to tell
> the TEE which type and size of buffer we want, and then the TEE will
> perform and return the memory handle to the kernel. The
> kzalloc/alloc_pages is for the normal buffers.
> 
> Regarding the CMA buffer, we only call cma_alloc once, and its
> management is also within the TEE.
> 

Thanks for the details.

I see for mvp_svp, allocation is also specific to TEE, as TEE takes
care of allocation as well. 

I was thinking if allocation path can also be made generic ? without having
dependency on TEE.
For eg : A case where we want to allocate from kernel and secure that memory,
the current secure heap design can't be used. 

Also i suppose TEE allocates contiguous memory for mtk_svp ? or does it support
scattered memory ?

>>
>> Thanks,
>> Vijay
>>

