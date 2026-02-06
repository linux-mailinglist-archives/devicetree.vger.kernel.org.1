Return-Path: <devicetree+bounces-263359-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAL3AKnphWnCHwQAu9opvQ
	(envelope-from <devicetree+bounces-263359-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:16:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AC4F5FDF9B
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:16:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D8984305A489
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:15:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0B43330B12;
	Fri,  6 Feb 2026 13:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ba8oWIyY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dqEAypnJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7319F3D3D0B
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:15:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383717; cv=none; b=U9O65qareU8VTExFn0lt1zvKF+MzhSTcmJRo0vCFenVinZLYZZrYdvAlxxYzzqgKmPPgShI2C4Q6JuhqHWicq+CKClh3DZQOiTshqmc/F/kDD+YE0QT9rmU8EiFU+0Q2w7+m5pP6zqVM0T8Ry2tLp685Ayqs6AkiEHnNP+J4LME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383717; c=relaxed/simple;
	bh=RIyiRZawDBMZO4eMZo4oUsl2dSffInOezDYUotVje8Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HgGxZbbMGjv7SXfGrROzNpcNW97iXUDGUNfK1CAY1LWiK2zMVKDD4ZLK/mClpVRmXWD6GFI3mKd0pdJ6ZFDYcLeyVmx0Tj8zsx+aYHhMb8h6XRhDVm6qEnknu2xfW4/vAAbzEU3uhOtWP0800M4SapBBK9GOk38u6P3VUnO3USo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ba8oWIyY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dqEAypnJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 616B4Qtt3764233
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 13:15:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jdJy6dnIbw7vFQgp+55aNrKfackYgSIKphN7g2jedYA=; b=ba8oWIyYktiVHo79
	WMr3mDm+/SS0nr3dRJuY1GOxpTDpgPRrsteCxa2gPL9yYNRG+RyyalF5on1nSR6y
	EYiMilFA1ScMnCLgncr23ZljFDdIMd/nbY0U46qmpwinVOuPZZ0P7PnZtCBhFZI3
	fJH28E0/JpAVYKrG0wC2sgLZv4O257DUM+E7nZBsaH1EaOoaWw9b2Q+/JRnIpj2U
	C5j1L+DLzQGJmIHxIWwwb887ujd1aaK71k1xrm0CTIl0HfunOUNO6A/6PIfnvTgh
	uzZU+AHwFk784Y6RKmXILclnTOnECfFlf+bE5+2VK0NiRYbiehMxSXyBCh93gG63
	AD69JA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5f3wgbq4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 13:15:16 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6097ca315bso4315958a12.3
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770383715; x=1770988515; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jdJy6dnIbw7vFQgp+55aNrKfackYgSIKphN7g2jedYA=;
        b=dqEAypnJ/3yLIA6TNcl+Wd7FWA5+hECVCO1hMsZLjh4KcFhcFtlW3viPx2Eh2OVH92
         SedTIf19gxjAFbffueUFhVL+6Htazn34bAHKXQjmAzZdm9taP2CMpJU/CkxgpCuDd+j9
         EWZrClCwKE/0SH49f/Ajp/4pgP8KB94w9ky8gx7TIX/fdW6UlSLnrwwmXYsJiUiUum65
         6H5LYt4jL+MLsL/2c8qmzTEUUsdSQhDmYNlb2pnB/6zvoBB7nH1kE4bJQJLjQIvzwY7v
         LICFWo6pa0XtMwJCHwkCK8h3YCRwQT7SDDMv9Rz5kOlC2rJ28w8X4lADdmzWGajmtOI/
         Bu6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770383715; x=1770988515;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jdJy6dnIbw7vFQgp+55aNrKfackYgSIKphN7g2jedYA=;
        b=PP7eV2hRU/Gxi3itXt6Dj/p7y2cswIs7Kokgjx6PyZE3MB/MTNx+z6cnZGZaoZ4EHu
         YlmPxdFSzOqA5I6yF6zqyubcoPteawuKvEjey7W+2ovEvuQ6r/aeKsCPkR6DEtqWnvf0
         /UmgKufmzvVeQnpwqF4z81VqR5XD2IR6rDfzshj06rJbSBtsk2+hjOqk1SE1hu0/4u8R
         nNoNbd0ykFoW5nRYsOdr7Og65ExLyNHLzNLkepuAjUFfcsl5cLiK34/4UHfceDqFdFuU
         m5dXPfzvGNYJHHzXP5QzgvE9cCs96WOkQnxJgmNQdMi2dY1EIXUDpmhaDA8l/BEh5UUe
         GKZw==
X-Forwarded-Encrypted: i=1; AJvYcCVs/ogvveGjuUqLX9OlLI2hPVhEm9ggQ2VD38J3AuJIA5hZuzIk1YpzMQQYtBQA3QoWEZyWugwsRwVF@vger.kernel.org
X-Gm-Message-State: AOJu0YzdDGmIJYTqv13t3joZP890KXzTMOtPTylcneqv5awtsEygX3ki
	b7uKBuC8ZJN1jP04wzIa0hfVFWzd2ukF/SHCZQ7EnYaAFwWAP6ylY65Go5+QVn4XNCl5XmDXJ+F
	PggmcCw8ZA6i/YSKEkGW4kx5qPZ58HextNsKDDlGL5eN17EN3uPmTlN6bv/nHHYlz
X-Gm-Gg: AZuq6aKbNG6FHzT70egbFjKmU4e/WG6b0M4CUykEOMy0GIQGn7CryMEzzQEeNTHm06b
	pi9v9u/MeZlF8pobm+KMlJty7CeDHcvAAmrkdBrk3o6ToL3WB5HnuRg+iP0PCLICZmiXrsBA2d3
	zJx7Ah0DkirvDnWdWhjE4Lr9CYc1W0LyIjyvEzdcyCNo47Zi1FaaetWisKj6HKj4bZYeeZ6HZJU
	h+w2aJE9cyJbT4Drwc2gdf4fz+myH5mjF6NUemZykcWQ8Z97Yb/e3AO7akqTOzjNgb8/6I+Si4S
	NFLoAjlldSjXmENX1zk7b8tjcC8DDubm1pp/5c0OK4TA5D1zEXavURUCzSYO8kLkkfxC6hcXcqd
	8064beV0WRf6o8HSUOmlYJofq6t08Ii0n4+tyfEcQ7w==
X-Received: by 2002:a05:6a20:3954:b0:342:352c:77e5 with SMTP id adf61e73a8af0-393ad38c720mr2858074637.54.1770383715026;
        Fri, 06 Feb 2026 05:15:15 -0800 (PST)
X-Received: by 2002:a05:6a20:3954:b0:342:352c:77e5 with SMTP id adf61e73a8af0-393ad38c720mr2857888637.54.1770383712346;
        Fri, 06 Feb 2026 05:15:12 -0800 (PST)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9522128a5sm23484855ad.86.2026.02.06.05.15.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 05:15:11 -0800 (PST)
Message-ID: <6012ad64-3a10-4f05-9f37-f2d0c36df582@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 18:45:02 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V10 3/4] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, lumag@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, konradybcio@kernel.org,
        daniel.lezcano@linaro.org, sboyd@kernel.org, amitk@kernel.org,
        thara.gopinath@gmail.com, lee@kernel.org, rafael@kernel.org,
        subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com, rui.zhang@intel.com,
        lukasz.luba@arm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_kotarake@quicinc.com,
        neil.armstrong@linaro.org, stephan.gerhold@linaro.org
References: <20260130115421.2197892-1-jishnu.prakash@oss.qualcomm.com>
 <20260130115421.2197892-4-jishnu.prakash@oss.qualcomm.com>
 <20260131173941.68b8116d@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20260131173941.68b8116d@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA5MCBTYWx0ZWRfX+sNqsqvnsdXQ
 sl4Q5hUXUhiSBHN4152+FxjukxArMeriT8twOpyeulZLI93X/Gk0OMYXLNB1y4oESaOncjqwpLi
 CGP7z+FQaY3DblQP5RKKWsVVmZaBhhZrijqdo0YcUHIgojDgqePf/0MPB4coN6Kdt9sd9S4YJ6N
 WUsf3+ZnL9QmaKPPSu5jyKhT8oGxZiIfhkfAIPu/9NoYABWtfaycb0leZkJmNq+oBevzku0M88P
 DHDw34Dlub0dNukji3bQuaNXabCUpX/aQAwiTFp3jfdxo76paNMre61R5EzA1NltyYVvucC7kQJ
 5TeWZVeoEcoMk6EY88aw46etII7/F5r9dqJrBqLWq80Cjh6EAHHWOzvlfZYWMdJHwM1KrJ2zD/j
 d2o6OxcYDQ5E/rr7s3ZM1ipV6khTl3+BgIMCuwnasr31GcgwjBtjr2AOGPLmNKYSivAYvbxosKT
 SHrVGPUGh2sYDyPnSxw==
X-Proofpoint-ORIG-GUID: -ya4u5l5IHxI-yRyb9quDXK4d6qSMeo2
X-Authority-Analysis: v=2.4 cv=NajrFmD4 c=1 sm=1 tr=0 ts=6985e964 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=5130DEEzvUW_sqHk1DIA:9 a=QEXdDO2ut3YA:10
 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: -ya4u5l5IHxI-yRyb9quDXK4d6qSMeo2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 priorityscore=1501 impostorscore=0 bulkscore=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com,intel.com,arm.com,vger.kernel.org,chromium.org,quicinc.com];
	TAGGED_FROM(0.00)[bounces-263359-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: AC4F5FDF9B
X-Rspamd-Action: no action

Hi Jonathan,

On 1/31/2026 11:09 PM, Jonathan Cameron wrote:
> On Fri, 30 Jan 2026 17:24:20 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
>> The ADC architecture on PMIC5 Gen3 is similar to that on PMIC5 Gen2,
>> with all SW communication to ADC going through PMK8550 which
>> communicates with other PMICs through PBS.
>>
>> One major difference is that the register interface used here is that
>> of an SDAM (Shared Direct Access Memory) peripheral present on PMK8550.
>> There may be more than one SDAM used for ADC5 Gen3 and each has eight
>> channels, which may be used for either immediate reads (same functionality
>> as previous PMIC5 and PMIC5 Gen2 ADC peripherals) or recurring measurements
>> (same as ADC_TM functionality).
>>
>> By convention, we reserve the first channel of the first SDAM for all
>> immediate reads and use the remaining channels across all SDAMs for
>> ADC_TM monitoring functionality.
>>
>> Add support for PMIC5 Gen3 ADC driver for immediate read functionality.
>> ADC_TM is implemented as an auxiliary thermal driver under this ADC
>> driver.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Hi Jishnu
> 
> Whilst there are a couple of comments below, I think this is ready to go.
> Unfortunately this is just a few days too late to merge for this coming
> cycle as I need to send the IIO pull request today or tomorrow (due to going
> through char-misc) so this would get no soak time in next.
> 
> Also, I'm not sure how we actually want to merge this given close coupling with
> the thermal driver.  Perhaps best bet is I do an immutable branch of next rc1
> once available that we pull into both trees. That would have the first 3 patches
> on it. 
> 
> Jonathan
> 
>> diff --git a/drivers/iio/adc/qcom-spmi-adc5-gen3.c b/drivers/iio/adc/qcom-spmi-adc5-gen3.c
>> new file mode 100644
>> index 000000000000..f8168a14b907
>> --- /dev/null
>> +++ b/drivers/iio/adc/qcom-spmi-adc5-gen3.c
>> @@ -0,0 +1,860 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include <linux/auxiliary_bus.h>
>> +#include <linux/bitfield.h>
>> +#include <linux/bits.h>
>> +#include <linux/cleanup.h>
>> +#include <linux/completion.h>
>> +#include <linux/container_of.h>
>> +#include <linux/delay.h>
>> +#include <linux/device.h>
> If you happen to be spinning again for some reason, I think you might be able to replace
> this device.h include with a forwards declaration of struct device;
> 
> If you can that would be good as we are trying to reduce includes of these
> mega headers.

I have a query about this. From what I understand, having a forwards
declaration of struct device may be valid if we only use the device struct
definition directly, but not if we try to dereference any of the struct's members.

I see that at some places in this file(qcom-spmi-adc5-gen3.c), we dereference
the device's parent:


One example:
void adc5_gen3_mutex_lock(struct device *dev)
{
    struct iio_dev *indio_dev = dev_get_drvdata(dev->parent);
    ....


Another example:
static int adc5_gen3_probe(struct platform_device *pdev)
{
    struct device *dev = &pdev->dev;
    regmap = dev_get_regmap(dev->parent, NULL);
    ....

We do not dereference the device's parent in the other new files
(qcom-adc5-gen3-common.h and qcom-spmi-adc-tm5-gen3.c), so
I can drop the device.h inclusion and use a forward declaration
of struct device in them.


In this file, what would you suggest I do, keep or drop the
device.h inclusion? 

I do see that device.h is included in auxiliary_bus.h,
iio.h and platform_device.h, so chances may be low that
it is somehow dropped later from all of those files and
will need to be explicitly included here.


Also, is it alright if I push the next series to address
your comments immediately? Would you be able to include patches 1-3
in the immutable branch you mentioned, once it's available?


> 
>> +#include <linux/device/devres.h>
>> +#include <linux/dev_printk.h>
>> +#include <linux/err.h>
>> +#include <linux/export.h>
>> +#include <linux/iio/adc/qcom-adc5-gen3-common.h>
>> +#include <linux/iio/iio.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/mod_devicetable.h>
>> +#include <linux/mutex.h>
>> +#include <linux/platform_device.h>
>> +#include <linux/property.h>
>> +#include <linux/regmap.h>
>> +#include <linux/types.h>
>> +#include <linux/unaligned.h>
> 
> 
>> +static int adc5_gen3_probe(struct platform_device *pdev)
>> +{
>> +	struct device *dev = &pdev->dev;
>> +	struct iio_dev *indio_dev;
>> +	struct adc5_chip *adc;
>> +	struct regmap *regmap;
>> +	int ret, i;
>> +	u32 *reg;
>> +
>> +	regmap = dev_get_regmap(dev->parent, NULL);
>> +	if (!regmap)
>> +		return -ENODEV;
>> +
>> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*adc));
>> +	if (!indio_dev)
>> +		return -ENOMEM;
>> +
>> +	adc = iio_priv(indio_dev);
>> +	adc->dev_data.regmap = regmap;
>> +	adc->dev = dev;
>> +
>> +	ret = device_property_count_u32(dev, "reg");
>> +	if (ret < 0)
>> +		return ret;
>> +
>> +	adc->dev_data.num_sdams = ret;
>> +
>> +	reg = devm_kcalloc(dev, adc->dev_data.num_sdams, sizeof(u32),
>> +			   GFP_KERNEL);
>> +	if (!reg)
>> +		return -ENOMEM;
>> +
>> +	ret = device_property_read_u32_array(dev, "reg", reg,
>> +					     adc->dev_data.num_sdams);
>> +	if (ret)
>> +		return dev_err_probe(dev, ret,
>> +				     "Failed to read reg property\n");
>> +
>> +	adc->dev_data.base = devm_kcalloc(dev, adc->dev_data.num_sdams,
>> +					  sizeof(*adc->dev_data.base),
>> +					  GFP_KERNEL);
>> +	if (!adc->dev_data.base)
>> +		return -ENOMEM;
>> +
>> +	platform_set_drvdata(pdev, indio_dev);
>> +	init_completion(&adc->complete);
>> +	ret = devm_mutex_init(dev, &adc->lock);
> 
> I'd move this stuff up to before you get reg so you can keep all the stuff
> related to num_sdams together.
> 

Will address this in the next patch series.

Thanks,
Jishnu

>> +	if (ret)
>> +		return ret;
>> +
>> +	for (i = 0; i < adc->dev_data.num_sdams; i++) {
>> +		adc->dev_data.base[i].base_addr = reg[i];
>>
> 


