Return-Path: <devicetree+bounces-12740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DDD7DB4D1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:07:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0520CB20C27
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 08:07:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01A6CCA70;
	Mon, 30 Oct 2023 08:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="lTlSH6dh"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC6D6AA6
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 08:07:08 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC493B7;
	Mon, 30 Oct 2023 01:07:06 -0700 (PDT)
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39U63n84009873;
	Mon, 30 Oct 2023 08:06:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=qcppdkim1;
 bh=CzfcykcmaTk3q+/0NaoWixc3ET1mX3McxzjIyfp2wBs=;
 b=lTlSH6dhTjIrXQOwZfsNIwf/mYTcvIIeTWZlscz7Aft2kKkPw4jDWwL9MwVnGbdpbgtr
 VE+ni0iEaFgVzXn25C3z6GnVJDHnWuGVMQveMf8zhfB5wh7T+31YwbxG1bJuaCUamFDD
 5MR75Iy28MOzmTKUWuqgmZA5uLXy0Uzc0m8i5Y71E0QDpkqv2tdnYgaGZmHCwr9xtPTx
 1Dg+10To9X50cfnPPC+yVqIQt5aZguKICXhc1Oai8qEycgrjv5IFQUpIPoJ4Fk1MiGGG
 HUZIM3uvmoScZBdaBbRtle9ci52UR25lRZWjC44COb32hxYd0dYuY7yqH5fQaPb6Tw9+ Rg== 
Received: from nalasppmta04.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u0sambbx8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 08:06:45 +0000
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39U86i6W017093
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 08:06:44 GMT
Received: from [10.216.19.181] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.39; Mon, 30 Oct
 2023 01:06:37 -0700
Message-ID: <91f0a8cf-3aef-4c54-b4b6-afd76cd5fdc8@quicinc.com>
Date: Mon, 30 Oct 2023 13:36:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/9] dma-buf: heaps: Initialise MediaTek secure heap
Content-Language: en-US
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
 <ac44de13-f4e0-4bae-b06b-af90fadaa96c@quicinc.com>
 <7eb7ca8f64789c4eb5096e19f4cf15f6b53bb260.camel@mediatek.com>
From: Vijayanand Jitta <quic_vjitta@quicinc.com>
In-Reply-To: <7eb7ca8f64789c4eb5096e19f4cf15f6b53bb260.camel@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
X-Originating-IP: [10.80.80.8]
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: VBWUIqmr2oYncc2Y5rCxBHtjSNGlkbSV
X-Proofpoint-ORIG-GUID: VBWUIqmr2oYncc2Y5rCxBHtjSNGlkbSV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_06,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 priorityscore=1501 bulkscore=0 spamscore=0 mlxscore=0 phishscore=0
 suspectscore=0 adultscore=0 clxscore=1015 mlxlogscore=999 impostorscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300060



On 10/27/2023 1:17 PM, Yong Wu (吴勇) wrote:
> On Thu, 2023-10-26 at 10:18 +0530, Vijayanand Jitta wrote:
>>  	 
>> External email : Please do not click links or open attachments until
>> you have verified the sender or the content.
>>  
>>
>> On 10/20/2023 3:29 PM, Yong Wu (吴勇) wrote:
>>> On Thu, 2023-10-19 at 10:15 +0530, Vijayanand Jitta wrote:
>>>>   
>>>> External email : Please do not click links or open attachments
>> until
>>>> you have verified the sender or the content.
>>>>  
>>>>
>>>> On 9/11/2023 8:00 AM, Yong Wu wrote:
>>>>> Initialise a mtk_svp heap. Currently just add a null heap,
>> Prepare
>>>> for
>>>>> the later patches.
>>>>>
>>>>> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
>>>>> ---
>>>>>  drivers/dma-buf/heaps/Kconfig           |  8 ++
>>>>>  drivers/dma-buf/heaps/Makefile          |  1 +
>>>>>  drivers/dma-buf/heaps/mtk_secure_heap.c | 99
>>>> +++++++++++++++++++++++++
> 
> [...]
> 
>>>>> +
>>>>> +static struct dma_buf *
>>>>> +mtk_sec_heap_allocate(struct dma_heap *heap, size_t size,
>>>>> +      unsigned long fd_flags, unsigned long heap_flags)
>>>>> +{
>>>>> +struct mtk_secure_heap_buffer *sec_buf;
>>>>> +DEFINE_DMA_BUF_EXPORT_INFO(exp_info);
>>>>> +struct dma_buf *dmabuf;
>>>>> +int ret;
>>>>> +
>>>>> +sec_buf = kzalloc(sizeof(*sec_buf), GFP_KERNEL);
>>>>
>>>> As we know, kzalloc can only allocate 4MB at max. So, secure heap
>> has
>>>> this limitation.
>>>> can we have a way to allocate more memory in secure heap ? maybe
>>>> similar to how system heap does?
>>>
>>> This is just the size of a internal structure. I guess you mean the
>>> secure memory size here. Regarding secure memory allocating flow,
>> our
>>> flow may be different with yours.
>>>
>>> Let me explain our flow, we have two secure buffer types(heaps).
>>> a) mtk_svp
>>> b) mtk_svp_cma which requires the cma binding.
>>>
>>> The memory management of both is inside the TEE. We only need to
>> tell
>>> the TEE which type and size of buffer we want, and then the TEE
>> will
>>> perform and return the memory handle to the kernel. The
>>> kzalloc/alloc_pages is for the normal buffers.
>>>
>>> Regarding the CMA buffer, we only call cma_alloc once, and its
>>> management is also within the TEE.
>>>
>>
>> Thanks for the details.
>>
>> I see for mvp_svp, allocation is also specific to TEE, as TEE takes
>> care of allocation as well.
> 
> Yes. The allocation management of these two heaps is in the TEE.
> 
>>
>> I was thinking if allocation path can also be made generic ? without
>> having
>> dependency on TEE.
>> For eg : A case where we want to allocate from kernel and secure that
>> memory,
>> the current secure heap design can't be used. 
> 
> Sorry, This may be because our HW is special. The HW could protect a
> certain region, but it can only protect 32 regions. So we cannot
> allocate them in the kernel arbitrarily and then enter TEE to protect
> them.
> 

Got your point , I see for your case allocation must happen in TEE.
I was just saying if we want to make secure heap generic and remove
hard dependency on TEE, we must have a way to allocate irrespective
of what hypervisor/TZ being used. As current design for secure heap
assumes OPTEE.

We have a case where allocation happens in kernel and we secure it
using qcom_scm_assign_mem , this wouldn't be possible with current
design.

Probably some ops to allocate, similar to ops you pointed out to secure ?
in you case these ops would just allocate the internal structure.

Thanks,
Vijay

>>
>> Also i suppose TEE allocates contiguous memory for mtk_svp ? or does
>> it support
>> scattered memory ?
> 
> Yes. After the TEE runs for a period of time, the TEE memory will
> become discontinuous, and a secure IOMMU exists in the TEE.
> 
>>>>
>>>> Thanks,
>>>> Vijay
>>>>

