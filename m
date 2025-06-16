Return-Path: <devicetree+bounces-186277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0835ADAE8A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:32:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47E8E170D5A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:32:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 277F2279794;
	Mon, 16 Jun 2025 11:32:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ltHrVmla"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0CD261570
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750073548; cv=none; b=lQB4qOTNJq9rSvWP/EEtIAeED+MhrdYuq3xoO0l7WSNaKnSXvtnhRBB9N3+WQYMS19/ZExZyqc/iMDCH4nYZtLTSp4kDvb2mYV+fln1LwrEu+7ONjO3PHnAfYPfSgvwWH+SByr0szezbKW5ORjJ7h4X0qHCHXHOW280b8sWSjRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750073548; c=relaxed/simple;
	bh=OM4ukmkvHF3bWa/6MQDtPcqF7cFW5tgL3BM4AR4AZOE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kWvVsWKrprp8yUZnuE0bfv0Z93yHXghcbs3yMqbZRgG/rtjB/36P0hebUpB6UHt9GQtT9noMJo73QDSgaOW67M+dBGMpw0+aUYTPonEr5HKcgP8ak7BNeg/8lvMLlRJKW6lh7ejv6b0kVOkaeIZ0W2osmM1EBABiTvVtHoxjqKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ltHrVmla; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8KMlH031440
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:32:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VhReFJIFGzRzknyzHaRK8EX3c4dPqPcybLOZHXiPHaI=; b=ltHrVmlaevrDM6Yw
	vDwkUIrqFh5TtWieEbQC1jISg4cA4vqe9qAL8rEjWPgMd+7nKkvyTI2vGQZPHX3J
	Ebht9/fAeja80kT38fIzNMbgJDtuIX1bZlc5fS8bpFIVrj7yjLFc7H9Dz1ONNZyo
	IJVa8Z2UnsW88IoOwiLZzC75BZvj73zwO7CEDs3Hzvb4V5L8EYBJkAC9G4H5REE6
	Ml3yJrduYbLAoLtHQad1xeiwOXzgDbkwTH6trNnrOgeNwdZB3dmMhXClZ4BK6Kem
	CPxBhCKqp9xTdPOFo9LV5GEg6u5nCHYBIp8x9V0Vk/i2TfVoEBQBApoNjyEsDUHA
	a2BqtQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9v8rw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:32:25 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5cd0f8961so1005430085a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:32:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750073541; x=1750678341;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VhReFJIFGzRzknyzHaRK8EX3c4dPqPcybLOZHXiPHaI=;
        b=R5q9fUfpjU663pF9KPqyRDioI2fITi5vCNHBfC5fs8jKzEXxbeNNYVrgXcZwQA5lUC
         Jya5C34pCl7gck+eH/a/F11bV88sr8CbZk5GFTOAaptxVZoE1Yjo643nZnuWcAvlpI4p
         jk/qnx+xJGNM8cvysPafk31Tg6lcq8yVA3fjBh5dqVFHXJY0iuRMDBG4xHiGvF+Y+Iyr
         2rf7uAod+uO3fQz27oDUsm7LBwkysLvz8xLlyfj3kX6yyYiQShT8t0WmWvs987sCZVzV
         qKU/w/zc1ZJmLKhnc/Bp+pDz2WTCHYKeJy4xR3pHFPCVBf/r34RIcKgCYwzwkQ/PIF7E
         neAA==
X-Forwarded-Encrypted: i=1; AJvYcCV4LObpO+OACQKu9R2x7E8StNH/NoPEJX6nbZxtkaeDxuGTBnVuldi++JW+j86BDX7monlnqUsKDzun@vger.kernel.org
X-Gm-Message-State: AOJu0YzGsO0npuGY251W+86yZOgyrlDK858l2vtD0n4X++gtagWHhF2S
	sMU5CkmGRNCUfhXVlVJfGA+FFkXdT28PrHjDBEtCxZewRofFOoGj9Fe2y9DQqwFrIZpt58q/ks+
	db/UPLtKu9RTyCUhwbe51gysU6vXi7BB04LqwYBpcmMlfQrZ+PW3Sk13oao+Py8Z/
X-Gm-Gg: ASbGncuX/AD09SZw3N6eE0SH61PoSydrwr8HH5oK7G5kZMie/P6xlSVJ8Okk8Bo0jYK
	RZyBblS4L8dp7EMzav9XF7BxeuXBb28HRba0b8jEBcPuVEOxJKr1E7E2OB4tQt0kAdnmZpzKSsx
	h4N9Pqc3mfdSXy//oo/FYvY832yt8ybFw1dNfSfjPwllxXII3uoWUYSc7s/bbB2AfPQr+7gyxUM
	W7Qz7LKCe+qYEdHOeUJFtisYGLyfJShRRxH5jxBXncrJZLfZeK9qhV29ToeUCHHXMnNRr+H11dz
	T8I8E0+XVqDKy7IJ8+xybe1plgPG/OUoqSkz+O84cf5ccS83YUNv8dQoktTwdQFx2RNsCuaC/Gs
	ZnKJBuVpesOiWaRxscwyNVi6h1E+1fkIt8oj9Ede5cdzhFH2EmhdBbxlPnAR0nWLUYRamRmmOyD
	U=
X-Received: by 2002:a05:6214:3d9c:b0:6fb:3e3e:89da with SMTP id 6a1803df08f44-6fb4776e0e4mr143194816d6.25.1750073540798;
        Mon, 16 Jun 2025 04:32:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGwjE7NgqGQJ5dlBHGyGS3GLtFKWMEQiXrYgTad8WhvvEtddvjIxuizLej1JtENs1oh6vFd5Q==
X-Received: by 2002:a05:6214:3d9c:b0:6fb:3e3e:89da with SMTP id 6a1803df08f44-6fb4776e0e4mr143194396d6.25.1750073540332;
        Mon, 16 Jun 2025 04:32:20 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a4:c3fb:c59f:e024:c669:a69b? (2001-14bb-a4-c3fb-c59f-e024-c669-a69b.rev.dnainternet.fi. [2001:14bb:a4:c3fb:c59f:e024:c669:a69b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1c1195sm1509064e87.141.2025.06.16.04.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:32:19 -0700 (PDT)
Message-ID: <cdf0accd-82dd-49e5-a8e5-1b4865e97356@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 14:32:17 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
 <e2a8528b-fa18-471f-9cb8-da64bb488f2a@quicinc.com>
 <07bfc5f3-1bcb-4018-bd63-8317ec6dac48@linaro.org>
 <5f70a482-6e61-4817-afdb-d5db4747897a@quicinc.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <5f70a482-6e61-4817-afdb-d5db4747897a@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: bK3DMeetlv54Rmo-EkkxpIXhBXsSFV-j
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MSBTYWx0ZWRfX3ZWow3EiN1mY
 QUvR1273bRHRW/E4Y+0pVxR3zOG2nCrXxLwtwQlkVyBQkV71+flUrOFnErf7MgVFqRSjwZatNDV
 MliW2MP66BCRmNlnOjxrO78WQ8LYZYDgZdePiFArlOfWkpw7pa4xWNnNDVzE2TaE8+mn8a5hH48
 0BSuSJFmOEpFEXS+jHrWr/PJ804vF6jW1GaVxLrinn20Xk41jARgvHhX89W/KpCeIMan1KShPHo
 8NZD0DKS+Ho520QkkRM3HSoUwxTBJNnbD0OZdGs7apmR3tO/6FGVKigNi4f45GNvKGHJ2qUi/fa
 akmqpiTNUUQmNX/dgvabYtlqTfPU/NgdfNgego92Uqwg//uEfhuz3T5wl8PyzLg4+Sypz0A3aFq
 e96I+YsbsFVOlz4C1vZ4Fpy5YcDpitN5JwCN7s3UoD+IBkC51ZIkcBNkWf9Ja7z+IiHOOccl
X-Proofpoint-ORIG-GUID: bK3DMeetlv54Rmo-EkkxpIXhBXsSFV-j
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=685000c9 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=NEAV23lmAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=KKAkSRfTAAAA:8 a=iV2O8m49h_L4xXlhIwoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160071

On 16/06/2025 14:28, Ling Xu wrote:
> 在 4/8/2025 4:14 PM, Srinivas Kandagatla 写道:
>>
>>
>> On 07/04/2025 10:13, Ling Xu wrote:
>>> 在 3/21/2025 1:11 AM, Srinivas Kandagatla 写道:
>>>>
>>>>
>>>> On 20/03/2025 09:14, Ling Xu wrote:
>>>>> The fastrpc driver has support for 5 types of remoteprocs. There are
>>>>> some products which support GPDSP remoteprocs. Add changes to support
>>>>> GPDSP remoteprocs.
>>>>>
>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>>>> ---
>>>>>     drivers/misc/fastrpc.c | 10 ++++++++--
>>>>>     1 file changed, 8 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>>>> index 7b7a22c91fe4..80aa554b3042 100644
>>>>> --- a/drivers/misc/fastrpc.c
>>>>> +++ b/drivers/misc/fastrpc.c
>>>>> @@ -28,7 +28,9 @@
>>>>>     #define SDSP_DOMAIN_ID (2)
>>>>>     #define CDSP_DOMAIN_ID (3)
>>>>>     #define CDSP1_DOMAIN_ID (4)
>>>>> -#define FASTRPC_DEV_MAX        5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>>>> +#define GDSP0_DOMAIN_ID (5)
>>>>> +#define GDSP1_DOMAIN_ID (6)
>>>>
>>>> We have already made the driver look silly here, Lets not add domain ids for each instance, which is not a scalable.
>>>>
>>>> Domain ids are strictly for a domain not each instance.
>>>>
>>>>
>>>>> +#define FASTRPC_DEV_MAX        7 /* adsp, mdsp, slpi, cdsp, cdsp1, gdsp0, gdsp1 */
>>>>>     #define FASTRPC_MAX_SESSIONS    14
>>>>>     #define FASTRPC_MAX_VMIDS    16
>>>>>     #define FASTRPC_ALIGN        128
>>>>> @@ -107,7 +109,9 @@
>>>>>     #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>>>>>       static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
>>>>> -                        "sdsp", "cdsp", "cdsp1" };
>>>>> +                        "sdsp", "cdsp",
>>>>> +                        "cdsp1", "gdsp0",
>>>>> +                        "gdsp1" };
>>>>>     struct fastrpc_phy_page {
>>>>>         u64 addr;        /* physical address */
>>>>>         u64 size;        /* size of contiguous region */
>>>>> @@ -2338,6 +2342,8 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>>>>             break;
>>>>>         case CDSP_DOMAIN_ID:
>>>>>         case CDSP1_DOMAIN_ID:
>>>>> +    case GDSP0_DOMAIN_ID:
>>>>> +    case GDSP1_DOMAIN_ID:
>>>>>             data->unsigned_support = true;
>>>>>             /* Create both device nodes so that we can allow both Signed and Unsigned PD */
>>>>>             err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
>>>>
>>>>
>>>> Can you try this patch: only compile tested.
>>>>
>>>> ---------------------------------->cut<---------------------------------------
>>>>   From 3f8607557162e16673b26fa253d11cafdc4444cf Mon Sep 17 00:00:00 2001
>>>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>> Date: Thu, 20 Mar 2025 17:07:05 +0000
>>>> Subject: [PATCH] misc: fastrpc: cleanup the domain names
>>>>
>>>> Currently the domain ids are added for each instance of domain, this is
>>>> totally not scalable approch.
>>>>
>>>> Clean this mess and create domain ids for only domains not its
>>>> instances.
>>>> This patch also moves the domain ids to uapi header as this is required
>>>> for FASTRPC_IOCTL_GET_DSP_INFO ioctl.
>>>>
>>>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>>> ---
>>>>    drivers/misc/fastrpc.c      | 45 ++++++++++++++++++++-----------------
>>>>    include/uapi/misc/fastrpc.h |  7 ++++++
>>>>    2 files changed, 32 insertions(+), 20 deletions(-)
>>>>
>>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>>> index 7b7a22c91fe4..b3932897a437 100644
>>>> --- a/drivers/misc/fastrpc.c
>>>> +++ b/drivers/misc/fastrpc.c
>>>> @@ -23,12 +23,6 @@
>>>>    #include <uapi/misc/fastrpc.h>
>>>>    #include <linux/of_reserved_mem.h>
>>>>
>>>> -#define ADSP_DOMAIN_ID (0)
>>>> -#define MDSP_DOMAIN_ID (1)
>>>> -#define SDSP_DOMAIN_ID (2)
>>>> -#define CDSP_DOMAIN_ID (3)
>>>> -#define CDSP1_DOMAIN_ID (4)
>>>> -#define FASTRPC_DEV_MAX        5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>>>    #define FASTRPC_MAX_SESSIONS    14
>>>>    #define FASTRPC_MAX_VMIDS    16
>>>>    #define FASTRPC_ALIGN        128
>>>> @@ -106,8 +100,6 @@
>>>>
>>>>    #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>>>>
>>>> -static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
>>>> -                        "sdsp", "cdsp", "cdsp1" };
>>>>    struct fastrpc_phy_page {
>>>>        u64 addr;        /* physical address */
>>>>        u64 size;        /* size of contiguous region */
>>>> @@ -1769,7 +1761,7 @@ static int fastrpc_get_dsp_info(struct fastrpc_user *fl, char __user *argp)
>>>>            return  -EFAULT;
>>>>
>>>>        cap.capability = 0;
>>>> -    if (cap.domain >= FASTRPC_DEV_MAX) {
>>>> +    if (cap.domain >= FASTRPC_DOMAIN_MAX) {
>>>>            dev_err(&fl->cctx->rpdev->dev, "Error: Invalid domain id:%d, err:%d\n",
>>>>                cap.domain, err);
>>>>            return -ECHRNG;
>>>
>>> I tested this patch and saw one issue.
>>> Here FASTRPC_DOMAIN_MAX is set to 4, but in userspace, cdsp1 is 4, gdsp0 is 5 and gdsp1 is 6.
>>
>>
>> Why is the userspace using something that is not uAPI?
>>
>> Why does it matter if its gdsp0 or gdsp1 for the userspace?
>> It should only matter if its gdsp domain or not.
>>
> 
> Give an example here:
> In test example, user can use below API to query the notification capability of the specific domain_id,
> (actually this will not have any functional issue, but just return an error and lead wrong message):
> request_status_notifications_enable(domain_id, (void*)STATUS_CONTEXT, pd_status_notifier_callback)
> 
> this will call ioctl_getdspinfo in fastrpc_ioctl.c:
> https://github.com/quic-lxu5/fastrpc/blob/8feccfd2eb46272ad1fabed195bfddb7fd680cbd/src/fastrpc_ioctl.c#L201
> 
> code snip:
> 	FARF(ALWAYS, "ioctl_getdspinfo in ioctl.c domain:%d", domain);
> 	ioErr = ioctl(dev, FASTRPC_IOCTL_GET_DSP_INFO, &cap);
> 	FARF(ALWAYS, "done ioctl_getdspinfo in ioctl.c ioErr:%x", ioErr);
> 
> and finally call fastrpc_get_dsp_info in fastrpc.c.
> 
> if I use the patch you shared, it will report below error:
> 
> UMD log:
> 2025-01-08T18:45:03.168718+00:00 qcs9100-ride-sx calculator: fastrpc_ioctl.c:201: ioctl_getdspinfo in ioctl.c domain:5
> 2025-01-08T18:45:03.169307+00:00 qcs9100-ride-sx calculator: log_config.c:396: file_watcher_thread starting for domain 5
> 2025-01-08T18:45:03.180355+00:00 qcs9100-ride-sx calculator: fastrpc_ioctl.c:203: done ioctl_getdspinfo in ioctl.c ioErr:ffffffff
> 
> putty log:
> [ 1332.308444] qcom,fastrpc 20c00000.remoteproc:glink-edge.fastrpcglink-apps-dsp.-1.-1: Error: Invalid domain id:5, err:0
> 
> Because on the user side, gdsp0 and gdsp1 will be distinguished to 5 and 6.
> so do you mean you want me to modify UMD code to transfer both gdsp0 and gdsp1 to gdsp just in ioctl_getdspinfo?

No, we need to modify the kernel code to ignore cap.domain here. The 
user has already open the particular FastRPC device. All queries should 
be target that device and that domain. As such, cap.domain doesn't make 
sense and should be ignored by the kernel.

>>
>> --srini
>>
>>
>>> For example, if we run a demo on gdsp0, cap.domain copied from userspace will be 5 which could lead to wrong message.
>>>
>>> --Ling Xu
>>>
>>>> @@ -2255,6 +2247,24 @@ static int fastrpc_device_register(struct device *dev, struct fastrpc_channel_ct
>>>>        return err;
>>>>    }
>>>>
>>>> +static int fastrpc_get_domain_id(const char *domain)
>>>> +{
>>>> +    if (strncmp(domain, "adsp", 4) == 0) {
>>>> +        return ADSP_DOMAIN_ID;
>>>> +    } else    if (strncmp(domain, "cdsp", 4) == 0) {
>>>> +        return CDSP_DOMAIN_ID;
>>>> +    } else if (strncmp(domain, "mdsp", 4) ==0) {
>>>> +        return MDSP_DOMAIN_ID;
>>>> +    } else if (strncmp(domain, "sdsp", 4) ==0) {
>>>> +        return SDSP_DOMAIN_ID;
>>>> +    } else if (strncmp(domain, "gdsp", 4) ==0) {
>>>> +        return GDSP_DOMAIN_ID;
>>>> +    }
>>>> +
>>>> +    return -EINVAL;
>>>> +
>>>> +}
>>>> +
>>>>    static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>>>    {
>>>>        struct device *rdev = &rpdev->dev;
>>>> @@ -2272,15 +2282,10 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>>>            return err;
>>>>        }
>>>>
>>>> -    for (i = 0; i < FASTRPC_DEV_MAX; i++) {
>>>> -        if (!strcmp(domains[i], domain)) {
>>>> -            domain_id = i;
>>>> -            break;
>>>> -        }
>>>> -    }
>>>> +    domain_id = fastrpc_get_domain_id(domain);
>>>>
>>>>        if (domain_id < 0) {
>>>> -        dev_info(rdev, "FastRPC Invalid Domain ID %d\n", domain_id);
>>>> +        dev_info(rdev, "FastRPC Domain %s not supported\n", domain);
>>>>            return -EINVAL;
>>>>        }
>>>>
>>>> @@ -2332,19 +2337,19 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>>>        case SDSP_DOMAIN_ID:
>>>>            /* Unsigned PD offloading is only supported on CDSP and CDSP1 */
>>>>            data->unsigned_support = false;
>>>> -        err = fastrpc_device_register(rdev, data, secure_dsp, domains[domain_id]);
>>>> +        err = fastrpc_device_register(rdev, data, secure_dsp, domain);
>>>>            if (err)
>>>>                goto fdev_error;
>>>>            break;
>>>>        case CDSP_DOMAIN_ID:
>>>> -    case CDSP1_DOMAIN_ID:
>>>> +    case GDSP_DOMAIN_ID:
>>>>            data->unsigned_support = true;
>>>>            /* Create both device nodes so that we can allow both Signed and Unsigned PD */
>>>> -        err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
>>>> +        err = fastrpc_device_register(rdev, data, true, domain);
>>>>            if (err)
>>>>                goto fdev_error;
>>>>
>>>> -        err = fastrpc_device_register(rdev, data, false, domains[domain_id]);
>>>> +        err = fastrpc_device_register(rdev, data, false, domain);
>>>>            if (err)
>>>>                goto populate_error;
>>>>            break;
>>>> diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
>>>> index f33d914d8f46..89516abd258f 100644
>>>> --- a/include/uapi/misc/fastrpc.h
>>>> +++ b/include/uapi/misc/fastrpc.h
>>>> @@ -133,6 +133,13 @@ struct fastrpc_mem_unmap {
>>>>        __s32 reserved[5];
>>>>    };
>>>>
>>>> +#define ADSP_DOMAIN_ID (0)
>>>> +#define MDSP_DOMAIN_ID (1)
>>>> +#define SDSP_DOMAIN_ID (2)
>>>> +#define CDSP_DOMAIN_ID (3)
>>>> +#define GDSP_DOMAIN_ID (4)
>>>> +
>>>> +#define FASTRPC_DOMAIN_MAX    4
>>>>    struct fastrpc_ioctl_capability {
>>>>        __u32 domain;
>>>>        __u32 attribute_id;
>>>
> 


-- 
With best wishes
Dmitry

