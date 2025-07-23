Return-Path: <devicetree+bounces-198847-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B73B0E90F
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 05:29:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D007565055
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 03:29:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13F4244186;
	Wed, 23 Jul 2025 03:29:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LgDDuuYt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0982E24337D
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753241366; cv=none; b=KB3TatdLiORF5knY55zmzpf2pYneDe0dXfHDqbQrEibuWENA/sfFgCNv2pPSwigmBFc0Y3PLREP3K+8IoI3NIwXgvtrLSqpA/dVr5/VQj6SWT4Lx7KfJxOUai0oFMPsWEjPk6w9ERqwC98PgeFNeHCgZzM4bYx2UBRsX41Ku8v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753241366; c=relaxed/simple;
	bh=SJJ5CneRaxtKMDIEUXqqNF9XrcyVKRQFQumyQuT1MZ8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l8Immy648EZeRtDrCqGo0Ob+05Pi0fCksEJRstPaYHY4UEJnSypmWqUSryfWy6LpCiFIARNGuDUW2N7bIrOKpDojv6abE5E0/XPZcCvlE7S8/4Sjz8ZO1uOyxiZpDi7mKv5D+hjgMFg/A4zF76h4n8HpmHmXOLvF6N5BpC3AUPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LgDDuuYt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMONcJ030590
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:29:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GcRiJdqepO/ljPzq51yX3pTfKYPsMIe1eMnpPQHw5lM=; b=LgDDuuYtvjfjdbfk
	ukxxOgRGVQNnf52cnAPhdd4iAIevLrHx1Yei/W/9VA/sv+fb3OznEBFpv6OAUJQ5
	NLmJGZUkinfImkPENSzlLxLfDH4o/0cHkIYWr5uQ+XnQsI0fQqw6QuEB8a/vvKKO
	V9NUegxZMmMuCj1BuidjviST0AdS1BIDmUzIteTbwsrVIyDS+/0ktQxdIsrGWvxB
	jH2KGjInZi+nfOKBaTlUiVWDfwL6SNdxy+uoTLeyURwMRoC3woHNalcpJyuKHciP
	Yw6et6miFkG6Ad/Gg7ZCyGDxNl+fa/F0Efat7CJuOEHaGk0OTZXKvxCJlpeOw+Zk
	YUQHUg==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s3pfp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 03:29:23 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b321087b1cdso7129068a12.2
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 20:29:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753241362; x=1753846162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GcRiJdqepO/ljPzq51yX3pTfKYPsMIe1eMnpPQHw5lM=;
        b=OOf3YlIpM9UDW0KyL/6BkL+Lb5CT43V7dLa6keLrnP1PJQFX9T3oeY9eRjfwYqDH4e
         itmqT8omK98SQn1LtLTHKATTP601HVzmtbfKS1nA79e8OxsGMq5Ne/1AOuJhq4Jk+6/A
         MPNaRxGwbcpzR1cfmylgexhKWoHQyB1HP49vR3Dbt/kLnTt7Rquxy0jS6J5+FsMbLza3
         GuRTyiESWSTLyxKczq+l8YRKmKzOoME62ygmR0DcQiDi7KSydAZQoTGDAgu5vKB4d96b
         +tVjFlgIGcSI/+4dPRKnW/OSxI+yh1peN8cqLnsARf8ONbUGkKCBtqAQAm9ZF+0Gi3rn
         +4Kg==
X-Forwarded-Encrypted: i=1; AJvYcCW9fI+QPxejb4u7Fkkwh73xdAggSAOVKLBghtoKqWz1HIsz8KiHsYtHfTFKNDx5nBDvOUiDYuv3JFnW@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4yFMidbF3oL7ee/mNMOEtyF/8FUtK+deZN8htquzXhHO63ZCB
	WHV2XgueUgpY+KLCIDHN/m0pxCyMnLUHrLU0iDzgaNSely1o5khHLx+kTJdy2JhIheDJDXiiRQH
	to6cnalHVMtIGDDQOfUNGdK2KvXIy/zY4cuTz7iteHe9wFCO6NURybWC3z7kNdjxU
X-Gm-Gg: ASbGnctV3YuZTMxoEp66Lrwp2SgYColLk1QqUwXa3Bz3+bjcMZO8ECFkm/i9kKOyray
	3mZJQCjHGy7m5AaH74qYrED+x/cHatw5Cs3tzHTieLlYojLDmTJNKKr+J/gX8atvN94v02ctrXh
	bQXCw/aW/f1qlBBQP+AaMcZBTka0B24RCZDri07VFSxxfpJbstCZU8rVfLc9mAYOjX9qF6OLzc0
	paWpojWGiS30FlC6cyG2fAeytmm0bskJmSL3ldfJ6MgAFtMQB4RhtgChZVjmJPr5xSQT/X0S3pb
	hcgIFytKnYav+xOlA6gXg3r+4mF38xPIr7XALsvBr3ftrCpa6jtOc+pFQI7KBhWZ7kw2hxhz9xx
	zOA6zRfMgLuDnPC5WYYRnKoI=
X-Received: by 2002:a17:902:f684:b0:234:ed31:fca7 with SMTP id d9443c01a7336-23f981db976mr18720865ad.48.1753241362434;
        Tue, 22 Jul 2025 20:29:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFy1PnWRL2YDKxRY1ylTuYEKI0uH+mVP5x4g+cnb66HuHnPlsooq1YxXsS2pw2RklDksMxGAg==
X-Received: by 2002:a17:902:f684:b0:234:ed31:fca7 with SMTP id d9443c01a7336-23f981db976mr18720395ad.48.1753241361974;
        Tue, 22 Jul 2025 20:29:21 -0700 (PDT)
Received: from [10.133.33.27] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6f2306sm86067305ad.213.2025.07.22.20.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 20:29:21 -0700 (PDT)
Message-ID: <85cada69-a0ad-48c6-9a6d-42b26a51c971@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 11:29:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 RESEND 08/10] coresight: tmc: add a switch buffer
 function for byte-cntr
To: Mike Leach <mike.leach@linaro.org>, Jie Gan <jie.gan@oss.qualcomm.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
 <20250714063109.591-9-jie.gan@oss.qualcomm.com>
 <CAJ9a7VhLXrdP_CPQPgAYTAGWJfsVUa9SG9Bzv9dLtFzR4nFROg@mail.gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VhLXrdP_CPQPgAYTAGWJfsVUa9SG9Bzv9dLtFzR4nFROg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDAyNyBTYWx0ZWRfX/swiWyQbimuj
 3GCscbhMCQMoTIUNj3Hoayj6SOWzHaD/JVVUt2/J4jTR0GX0/D7DsUX6YwHIhGqwEVZpWp51CyL
 D/OQ5agHRaMxEA+sbWbkISMVgQlfJnN/Z/jjkUSw0DHtcNNh2QSzWiQaTejijFL7eVWjMjB2wbx
 ED/KElLNd1MjwOobafUQlRmowYPCBmpAT+Kn2Js+DbtyR2gmdZkMUM2EFS9d8dkWeVMbPraTjin
 Idy54WhDj60MUn2vAzqQWkfRTW2KlIsx5PWAH/33t4Fc9XjMqdezGG9NCKhOpJvCQRhhZ3E9em7
 uoVKTJO1WOAkQzd5tgm23Eoa5PEfAHiRYHfGPMr1M3OeT3UgnU5CEIhBteCdW5LK4JMS9ROzSEz
 0kn2DfUCeks2iM9rJe+opYQqw4bFxesxmkEasF1ygQbAwu9XHTlAvVjd/VK4kRjp8ELCZ25b
X-Proofpoint-ORIG-GUID: 4sRebxNEDwAL-rn53Z0zMKBCJCGEurxX
X-Proofpoint-GUID: 4sRebxNEDwAL-rn53Z0zMKBCJCGEurxX
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=68805713 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=3p4PawPDRryEjlqJgAUA:9
 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230027



On 7/22/2025 10:09 PM, Mike Leach wrote:
> Hi,
> 
> This buffer swap code looks OK in principle. The ETR is stopped,
> memory synced and set to be read.
> See other comments inline.
> 
> On Mon, 14 Jul 2025 at 07:31, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>
>> Switching the sysfs_buf when current buffer is full or the timeout is
>> triggered and resets rrp and rwp registers after switched the buffer.
>> Disable the ETR device if it cannot find an available buffer to switch.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   .../hwtracing/coresight/coresight-tmc-etr.c   | 52 +++++++++++++++++++
>>   1 file changed, 52 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-etr.c b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> index 2b73bd8074bb..3e3e1b5e78ca 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-etr.c
>> @@ -1287,6 +1287,58 @@ static struct etr_buf *tmc_etr_get_sysfs_buffer(struct coresight_device *csdev)
>>          return ret ? ERR_PTR(ret) : drvdata->sysfs_buf;
>>   }
>>
>> +static bool tmc_byte_cntr_switch_buffer(struct tmc_drvdata *drvdata,
>> +                                       struct ctcu_byte_cntr *byte_cntr_data)
>> +{
> 
> This entire function should be in one of the byte_cntr source files,
> not in the main etr files. Please keep byte cntr code separate as far
> as possible
> 
>> +       struct etr_buf_node *nd, *next, *curr_node, *picked_node;
>> +       struct etr_buf *curr_buf = drvdata->sysfs_buf;
>> +       bool found_free_buf = false;
>> +
>> +       if (WARN_ON(!drvdata || !byte_cntr_data))
>> +               return found_free_buf;
>> +
>> +       /* Stop the ETR before we start the switching process */
>> +       if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
> 
> Can this function be called if the mode is not CS_MODE_SYSFS?

Should be ok with called if the the is DISABLED.
I will check the condition.

> 
>> +               __tmc_etr_disable_hw(drvdata);
>> +
>> +       list_for_each_entry_safe(nd, next, &drvdata->etr_buf_list, node) {
>> +               /* curr_buf is free for next round */
>> +               if (nd->sysfs_buf == curr_buf) {
>> +                       nd->is_free = true;
>> +                       curr_node = nd;
>> +               }
>> +
>> +               if (!found_free_buf && nd->is_free && nd->sysfs_buf != curr_buf) {
>> +                       if (nd->reading)
>> +                               continue;
>> +
>> +                       picked_node = nd;
>> +                       found_free_buf = true;
>> +               }
>> +       }
>> +
>> +       if (found_free_buf) {
>> +               curr_node->reading = true;
>> +               curr_node->pos = 0;
>> +               drvdata->reading_node = curr_node;
>> +               drvdata->sysfs_buf = picked_node->sysfs_buf;
>> +               drvdata->etr_buf = picked_node->sysfs_buf;
>> +               picked_node->is_free = false;
>> +               /* Reset irq_cnt for next etr_buf */
>> +               atomic_set(&byte_cntr_data->irq_cnt, 0);
>> +               /* Reset rrp and rwp when the system has switched the buffer*/
>> +               CS_UNLOCK(drvdata->base);
>> +               tmc_write_rrp(drvdata, 0);
>> +               tmc_write_rwp(drvdata, 0);
> 
> This cannot possibly be correct. RWP / RRP are pointers into the
> system memory where the ETR stores data.

It should be sysfs_buf->hwaddr here.
I made a mistake.

will fix it.

> 
>> +               CS_LOCK(drvdata->base);
>> +               /* Restart the ETR when we find a free buffer */
>> +               if (coresight_get_mode(drvdata->csdev) == CS_MODE_SYSFS)
>> +                       __tmc_etr_enable_hw(drvdata);
> 
> What happens if the ETR is not restarted? Using __tmc_etr_disable_hw()
> is correct for this use case, but if you do not restart then the extra
> shutdown that would ordinarily happen in tmc_etr_disable_hw() does not
> occur. How is this handled in the rest of the update?

Yes, there is a problem here. It's incorrectly put a strict condition here.

I will check the logic here and fix in next version.

Thanks,
Jie

> 
>> +       }
>> +
>> +       return found_free_buf;
>> +}
>> +
>>   static int tmc_enable_etr_sink_sysfs(struct coresight_device *csdev)
>>   {
>>          int ret = 0;
>> --
>> 2.34.1
>>
> 
> Regards
> 
> Mike
> 
> --
> Mike Leach
> Principal Engineer, ARM Ltd.
> Manchester Design Centre. UK


