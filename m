Return-Path: <devicetree+bounces-202043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4D7B1BE01
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 02:46:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DBD6164F58
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 00:46:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BA4DC13B293;
	Wed,  6 Aug 2025 00:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Lqa7HURT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DBB2629C
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754441155; cv=none; b=dW8DQFngIeoKfDV0xcgr/6rHgTjGVkTM9hdT1Zjps0abgtOHfnDPxTjWdJhpfgcdjTh35FH8P5JUpkTa4d1hSpj56m94Th/YDeh1dGy+I36Kddeqj5QHnwb3VdZH9g/wjnsvsWnjMQMQ07EdufdburVXwdAOGuwpck8TscynHbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754441155; c=relaxed/simple;
	bh=GtJ9hkeudm0oq8iwmb8yoRxVECyeFoP9SFq1UVixiGk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TkdhJLL+aLrnahnRagzg5Exe7VtuTtN3RDYIG6VZQoI7VgoOyTeIEC9x1vhz0ddf9LlP4YoExbm+bS5WASgJaFbjBzmAWIs2tNEi7gPvzckhqHScokDMK4ve9OjmRATYmPxvtvlEdzn/DpwdWMd90jlFUa5jC1is/doWqLR0qdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Lqa7HURT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 575I3A9l012848
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 00:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0iF7VyAktj1df9uStQYVjfJ1tKq1t1jAnCoxG1j63Og=; b=Lqa7HURTFNlxNvtI
	M604CNroFqhwQv0SyDPFVLfZjZH5SG4e57qqdzE90SJ3n+r8o3a+i0lNiSs2QIYY
	JjCJRG3YpDGS7fpIKLueHnO1EXpK55ZjvyDoV01RhdhRJtXV8CriqXlLzqXOVGZP
	HLyJPLyzOA4IhSS9KQeNuOSvAJXpy9HgnVsBhPpE2Yiq6F2UXn+RlsOPrJDL3mox
	7eZQ6itChPlZUuPH1QbAsSZ66ixdbnVY+rK9KCez3GouHkPD+72jGiGa+cHtyqqk
	NhufmR9S3gGJi2LssloDK61t4Gbi5MfeZCNO+0Nsbt1lcFHwdKyZKiWBx7GMkryi
	grprMg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpw2rvda-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 00:45:52 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2403c86ff97so70803225ad.1
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 17:45:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754441151; x=1755045951;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0iF7VyAktj1df9uStQYVjfJ1tKq1t1jAnCoxG1j63Og=;
        b=AQn3sUGpiG84IQbGPaE/NwPUrNsY7Ty8LQq9JAuWj+PXnTiMJ6rYb+xxXTx63Nb7Tv
         0eLgjuRAojDvz/9O7RJW2/mzpUZOsgTsVPOukw1kfuXmNHC4vgm9LQLCTvQf1Bl0hm7O
         LngMsJ2SzHoV4u4VdMrerZr0gc5JKwH7on5A4q+89LoAaMz2RmoEyZSWwtobvg5qLVGP
         wj9lFt6S72Vm5ObJKjZ7MAq/Y4PGn0v6yQTkC5krc0xzACvdXs5vvM4cjccAHRKIvqFM
         0tLUS8PW9o9tiZTA/tnxxV0IKrS7T+SnLjtGT3wzVyTNhmFbQjGYadk5K+KlwSI5eMXz
         M0wg==
X-Forwarded-Encrypted: i=1; AJvYcCUq1JH+GuKadhNUSc2zuUc2m2aX1cVURxtWOA8xBsuGOv/OU+GmJbjCae1ofQM7cOFWkK3fwWfcTcD4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxsy7PZ8KUwznyWRaJaf6Rk1/jH7+k3OsHqQov80nAtn/xYOQqc
	ANyttxWddwmHK5OhRwg6dSEFgudrA0FqRA31LyV3TOxAiNA/O7jF8F7XCG4vkOtyJCo2ASXEjSG
	jhI4tMp1SJBFhh0/WjlW0t9BMwJvks4Tm3cj6rIckWEsPAPlfJ0v4kDbf9pS/uQ7Y
X-Gm-Gg: ASbGnctt1teIFSMQL9v9kUnirZ6hbGUU9WKEW+K6omwBFgeKStllEF8QoS+FyYA5KNQ
	13qHWUC7EX3eq1Ax/HHX9lVilH0wYNF1lWUTlD+4sT+p0N1clad1zqCQhAAAnSiasjVTEEDCS5z
	pUoEsnj41Mk1ObagQGVWEMGbuWQR4nqCyPaBfuYTE9Y2jUpHEGIVVX5k0QCAPK8ef4Q8iMlT4+g
	CC4u3F5+ggBX77oCVE8EFiPClYsw21cH77InAGpz+CWgHq3i1q/aLg7+RVjANUfmCLqbGyVc6qz
	UdiwwYeBRPkDGYtpaoTcJWOP+0dg/E2AD+SZrVj5CH+kcEsiG05nDzM4U39z6dAmWNUrN+m1hYY
	xmEyd2Q8iKd4A2NL+NLtP0jdU
X-Received: by 2002:a17:903:120f:b0:240:8369:9b9d with SMTP id d9443c01a7336-242a0a90da9mr9569495ad.9.1754441150818;
        Tue, 05 Aug 2025 17:45:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvEEsM420ujNnosuNHEbFJFINBlZS10U2Hkuy33LauXmSRAro+5w56Hd5w+DB2dVJIMtSXIQ==
X-Received: by 2002:a17:903:120f:b0:240:8369:9b9d with SMTP id d9443c01a7336-242a0a90da9mr9569215ad.9.1754441150382;
        Tue, 05 Aug 2025 17:45:50 -0700 (PDT)
Received: from [10.133.33.195] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31f63f0ba97sm18047477a91.29.2025.08.05.17.45.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 17:45:50 -0700 (PDT)
Message-ID: <d7960d95-d076-4c0d-929c-421480f330d4@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 08:45:44 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 04/10] coresight: tmc: add create/delete functions for
 etr_buf_node
To: Mike Leach <mike.leach@linaro.org>, Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
 <20250725100806.1157-5-jie.gan@oss.qualcomm.com>
 <CAJ9a7VgOTfDHG+nrEUQ5+fxrcCd+ZaWWnxt_F8kavbHP38QCVw@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VgOTfDHG+nrEUQ5+fxrcCd+ZaWWnxt_F8kavbHP38QCVw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Vbz3PEp9 c=1 sm=1 tr=0 ts=6892a5c0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=_2nvVlcBbLE0w9leeUgA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: QATyApwJ_SKXppToolwugI6tjj_zAwCc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwMiBTYWx0ZWRfXxSPBup170UyF
 GX5jC5UiV9xkdxroc3RJGdnCG0siMjo52lyNUKIS3bq21QWSdNJ8diIfG45C8xQwTpdOa1URDiO
 Jpgeg0pXysWSuAmiEWQEZ2xMFiIbJkmIJ4y98GK+btHpsTPKMcJZbDY6SUiKOXN3jrl9oMLcXg0
 7lHWJ5RPSo+5mBWDrQxw1DYYJgMejdpAWIpG8cRP6Itk03kHL+jgeJ+kc8IsusRIbOL+5k7JWea
 dDyCJGifgz2E9rfw4fjCuxXqYZp8fxu3RAkkwgvgHsq+kBsD+xVoNKTf5d1lGEB4U9uM5EXJsM4
 0HKSE6TDHjhoMbCQexxAtqZiPOKVPHs3SLwbLZHXBVBezylFJjPDI7yQATJyTq+Tw2M5Uy19lCC
 Fllfw5S8JI/sDNuxcWfnGg0GhxJZXJoKLALlU/nZ4+zY1Rw5ikOTZCev9I1qd2OMNscu1aaC
X-Proofpoint-GUID: QATyApwJ_SKXppToolwugI6tjj_zAwCc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 lowpriorityscore=0 clxscore=1015 malwarescore=0 mlxlogscore=999
 adultscore=0 suspectscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 spamscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2507300000
 definitions=main-2508060002



On 8/5/2025 6:27 PM, Mike Leach wrote:
> Hi,
> 
> On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> Create and insert or remove the etr_buf_node to/from the etr_buf_list.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../hwtracing/coresight/coresight-tmc-etr.c   | 65 +++++++++++++++++++
>>   drivers/hwtracing/coresight/coresight-tmc.h   |  2 +
>>   2 files changed, 67 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index b07fcdb3fe1a..e8ecb3e087ab 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1909,6 +1909,71 @@ const struct coresight_ops tmc_etr_cs_ops = {
>>          .panic_ops      = &tmc_etr_sync_ops,
>>   };
>>
>> +/**
>> + * tmc_clean_etr_buf_list - clean the etr_buf_list.
>> + * @drvdata:   driver data of the TMC device.
>> + *
>> + * Remove the allocated node from the list and free the extra buffer.
>> + */
>> +void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata)
>> +{
>> +       struct etr_buf_node *nd, *next;
>> +
>> +       list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
>> +               if (nd->sysfs_buf == drvdata->sysfs_buf) {
>> +                       list_del(&nd->node);
>> +                       kfree(nd);
>> +               } else {
>> +                       /* Free allocated buffers which are not utilized by ETR */
>> +                       list_del(&nd->node);
>> +                       tmc_free_etr_buf(nd->sysfs_buf);
>> +                       nd->sysfs_buf = NULL;
>> +                       kfree(nd);
>> +               }
>> +       }
>> +}
>> +EXPORT_SYMBOL_GPL(tmc_clean_etr_buf_list);
>> +
>> +/**
>> + * tmc_create_etr_buf_node - create a node to store the alloc_buf and
>> + * insert the node to the etr_buf_list. Create a new buffer if the
>> + * alloc_buf is NULL.
>> + * @drvdata:   driver data of the TMC device.
>> + * @alloc_buf: the buffer that is inserted to the list.
>> + *
>> + * Return 0 upon success and return the error number if fail.
>> + */
>> +int tmc_create_etr_buf_node(struct tmc_drvdata *drvdata, struct etr_buf *alloc_buf)
> 
> This list handle function pair look a little asymmetric. Is it not
> possible to change this to tmc_create_etr_buf_list(struct tmc_drvdata
> *drvdata, int num_nodes)
> so that one function creates all the nodes, and another destroys them.
> 
> In the logic that decides between using multi buffer or single buffer
> you can then use  a construct such as:
> 
> if (single_buffer)
>        drvdata->sysfs_buf = <alloc sysfs buffer>
> else {
>       tmc_create_etr_buf_list(drvdata, 2);
>       <switch in avail buffer to drvdata->sysfs_buf
> }

The lsit handle function pair definitely looks a little bit asymmetric. 
I will consider the suggestion in next version.

Thanks,
Jie

> 
>> +{
>> +       struct etr_buf_node *sysfs_buf_node;
>> +       struct etr_buf *sysfs_buf;
>> +
>> +       if (!alloc_buf) {
>> +               sysfs_buf = tmc_alloc_etr_buf(drvdata, drvdata->size, 0, cpu_to_node(0), NULL);
>> +               if (IS_ERR(sysfs_buf))
>> +                       return PTR_ERR(sysfs_buf);
>> +       } else
>> +               sysfs_buf = alloc_buf;
>> +
>> +       sysfs_buf_node = kzalloc(sizeof(struct etr_buf_node), GFP_KERNEL);
>> +       if (IS_ERR(sysfs_buf_node)) {
>> +               if (!alloc_buf)
>> +                       tmc_free_etr_buf(sysfs_buf);
>> +               return PTR_ERR(sysfs_buf_node);
>> +       }
>> +
>> +       sysfs_buf_node->sysfs_buf = sysfs_buf;
>> +       sysfs_buf_node->reading = false;
>> +       if (!alloc_buf)
>> +               sysfs_buf_node->is_free = true;
>> +       else
>> +               sysfs_buf_node->is_free = false;
>> +       list_add(&sysfs_buf_node->node, &drvdata->etr_buf_list);
>> +
>> +       return 0;
>> +}
>> +EXPORT_SYMBOL_GPL(tmc_create_etr_buf_node);
>> +
>>   int tmc_read_prepare_etr(struct tmc_drvdata *drvdata)
>>   {
>>          int ret = 0;
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/hwtracing/coresight/coresight-tmc.h
>> index 52ee5f8efe8c..3cb8ba9f88f5 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -461,5 +461,7 @@ void tmc_etr_remove_catu_ops(void);
>>   struct etr_buf *tmc_etr_get_buffer(struct coresight_device *csdev,
>>                                     enum cs_mode mode, void *data);
>>   extern const struct attribute_group coresight_etr_group;
>> +void tmc_clean_etr_buf_list(struct tmc_drvdata *drvdata);
>> +int tmc_create_etr_buf_node(struct tmc_drvdata *drvdata, struct etr_buf *alloc_buf);
>>
>>   #endif
>> --
>> 2.34.1
>>
> 
> Regards
> 
> Mike


