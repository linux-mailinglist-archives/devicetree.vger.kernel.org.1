Return-Path: <devicetree+bounces-263360-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IwA8BLjphWk0IQQAu9opvQ
	(envelope-from <devicetree+bounces-263360-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:16:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AB76CFDFAA
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 14:16:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BD445304179C
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 13:15:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC113A7F72;
	Fri,  6 Feb 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M65YF92D";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q86SuUTc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF8933C1B2
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 13:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770383734; cv=none; b=CqAqR++PvYUlJs232GYmvETmBw1Rk7cSMmU+StcLderahjn9iVGhhz6R/6DSb9J3sTYAG+N+jub/WjPb5ip7b4pbqpyKklIReN7Z1xi6oSII5fh5pb6/FDuyrEcG4/OBq/0D0qw4P+NJK/aNUE7SvcwVdlzdCmmncCq/Uy/cD2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770383734; c=relaxed/simple;
	bh=OP8/OArL2cMmvjrS2BcXJQ+YVC6QxtE/6FgIyIpyXfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=njfuMFGavrp1R/SLRr63rmvWuAiqsD/CktGSHiX6qPywiISjLbuEphDwqPuQeIVn3QWSRB6CJJu2kTqpKmECEmcsKN0bFLHcBGtLtBK1qQE4R2IWdhUIW8UFrN9TaLzFgjwSYIgWboOjcp56v1TtKbWeGnkE8+jo0s2mEV3q+5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M65YF92D; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q86SuUTc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6167bcdb4042038
	for <devicetree@vger.kernel.org>; Fri, 6 Feb 2026 13:15:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HmNmeyWa+J7dZZyEeSg9GnKnpszfkH8n3cTwO4E6RzI=; b=M65YF92DxN324jlJ
	W7osZxwxct4DPC6cKtRVM6kQS8dSFdHbySHsE5Xn0MOQoVcmeSMdyI1oeE02vCxR
	6JmADaxuUkK/uESgT0AqQ/Zthyzagr1LJvH9yiQXMmgBThDRiB/X8BjM1bOblo/B
	ZNSgXWVwE3AqQdJM8DAIBo1jBAQGLiROvIYdCcNG64uTSJpns6hOnA9/iCa/4GTu
	svURhO7ODgvTRuw7LGhSIaTmQi4O/g+lThjWlDwCHTu88ZPCa57qXUtmI04I74IK
	8E8QVm94ZHqMh5GvbGddgtpr+gB8CNfZrpwHwBhY55PB11Hfia5FJ8jjCJ/DhxK9
	3qXOvQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c5c2w11nd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 13:15:33 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a943529ff5so23131745ad.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 05:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770383732; x=1770988532; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HmNmeyWa+J7dZZyEeSg9GnKnpszfkH8n3cTwO4E6RzI=;
        b=Q86SuUTc9fxbeyjZ9vic8XaqF/gOf3QgjcXwpXxf/lyO7FXppWbgZstpIMDXUXVIpj
         0IB/yNJJ+KaAG5uLfllCDLgMJ+P8B6U7oM7heVHCekW4jod9+SyWk9VzixoJa/6biz2D
         gCdGTJllSLcOY2W8R2vBQUgRd45ugjRuJCNnfDLIzRbdElPVxZsGCOmDPm/Qhe8kI4W3
         qsiwGMhVSmkykrV3WhLdyh/yu4+ukFL0sqINpSQc6cpvjUqsfnOgsdnV6WYcr77pF3nY
         OI+N3wX9P+KPGX7zMGP0r60d6jK3BL99tw/oEhFCmbXqKipa7AgCNjv4Cp0MmE7auYtW
         JUxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770383732; x=1770988532;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HmNmeyWa+J7dZZyEeSg9GnKnpszfkH8n3cTwO4E6RzI=;
        b=ml3vi4EIan7BNu01H53xPfWTufgEM+DGzrvJkvxpn2Ci2ztuecOCgDyxXJ3tjijfQk
         yhh8+erfzsujYlG0SKguBEi/kAoXzB20Z2nUtoq3KpW/xG96lysywf0SemkKvfzk65g1
         1o8SqrWIsEFdjtoX+wl2GkH+rHhMDrQnxzNE5BtBQjQ/1bfSNY8gZ1No7KfD+pWfTMdZ
         BwYGokbCPNk8x4y33A3/HDule6fDxpq/rJJR1k2nAur+B8BNUSSB709bpQXYw5dEAzQi
         dGf0mN6+UrRe48YzVsegGtS/+/eBPrVlC6vcM2P6Chzu4Es2XT0XztNGRn6qqBvPGSr7
         ScaQ==
X-Forwarded-Encrypted: i=1; AJvYcCVgTg3lPu3Dj3CO6egm/vgDWqJt78ZeIMNnagbWyiuJeagNn5vbm59NQoy2AFFYlmDuLlppBqSL6u3a@vger.kernel.org
X-Gm-Message-State: AOJu0YyTBrwBszMDBpPomJDI3YQ1GRExoS70SgKS4a4hgq+6s8P7VYpt
	fuRnpeuQpJ8c2yPBz3lh64PaQ7U4KTs7wOgTmxMxYywqQ593m3DPl9UnzpY2Bfvqa1SlhgTV/rt
	v351JuBqLci8u49w/CoEnBRsm3m+nLUPjom+4JsInLGslHFVtCKXmz9qQ4tDc58rP
X-Gm-Gg: AZuq6aLAKN3HejKVeoHy47kwIgP3BYO2O+AmXEwPZ7T6aW5XLI3nEE5trGj4wR5Ti0Z
	2it62PIRONPTknWJJQKfFUA2GMvNBqu/YT2njt1lNkpkxMJ1ohB/b+Huq9J2GNXlwn24A+bDzxt
	0C6j/Q4SXTc4Fyje/he08ueUR3C1xn5zI7WJKKL4BaPCyrHmHAaslexDKaWRFv8x/vNFoE+krWS
	VxCHT9hNxLfXaapiClrLf1Hd8ZbOxJYMent9KGHvlA+eyXUl5jcSWGW25NlpeuzVSztAeC+r8TZ
	ocoAGCkFQZNZDCX7TW6CYZDpgHy9oQLoq+D5dYZoGLp4ZNUR9NjbKZLewm84ivXghci7HTYfB5n
	9KnxwUuAI8om7C8nETyuRIXrHhv7qyUnlUlZQW9LFPw==
X-Received: by 2002:a17:903:3d0f:b0:2a2:d2e7:1601 with SMTP id d9443c01a7336-2a9519428c7mr28925165ad.48.1770383732476;
        Fri, 06 Feb 2026 05:15:32 -0800 (PST)
X-Received: by 2002:a17:903:3d0f:b0:2a2:d2e7:1601 with SMTP id d9443c01a7336-2a9519428c7mr28924715ad.48.1770383731980;
        Fri, 06 Feb 2026 05:15:31 -0800 (PST)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a9521f8cb6sm24970545ad.79.2026.02.06.05.15.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Feb 2026 05:15:31 -0800 (PST)
Message-ID: <def530e3-3a5d-41cd-9f1a-1dc3f98747f9@oss.qualcomm.com>
Date: Fri, 6 Feb 2026 18:45:22 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V10 4/4] thermal: qcom: add support for PMIC5 Gen3 ADC
 thermal monitoring
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
 <20260130115421.2197892-5-jishnu.prakash@oss.qualcomm.com>
 <20260131175412.0ded39d4@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20260131175412.0ded39d4@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA2MDA5MCBTYWx0ZWRfXwatmYcZoTp6R
 Jt++3UBRvhcaqOASBFUWL+uXRqEhHqxTaoMDw8QDSV1NGyHfq0MdxZnGFU0jtjeShv6Wt4TAaMK
 68VbYvZAXkaOK9dFXU4Plv6fITiFJiQvGThoEk0C2Z05XigDgHdJlKu7kzYunvGMcdaXyrvL817
 I1qu3oL3CZZoTTzKv/HEMjdU5cC4GwBajzsmaZ8BCUiDNPrXLh/ce72bE0f9nSP9wbwmy1nyipi
 6yy7cnRCJFOclQuQWx/2Yl+ofgV+VsLvaLWubj8qZ6UJL7awU7FOjZ+DtU2HTzSP7/+xR0aCUmw
 9nqZE7otSCayHYozhc47tPaZGZqwrOwzcYRJujxLJPt6wdXHV8qMxja0YqCWgw+dr5ze0VSqUth
 tIUhCXQ4AWO5/0LziNJQexeoVf+iQlQz51SVxPsf6qQSSuuIYbnJ0sdHgiTDe91wxuGTp9Iy/uw
 j+Ng5OTBAkeBoMJ/a5w==
X-Authority-Analysis: v=2.4 cv=Wtom8Nfv c=1 sm=1 tr=0 ts=6985e975 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=i0EeH86SAAAA:8 a=yfIZU4QQ0lc7Zzv-pR8A:9 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: _32yPCPfv_aiZNitNJU0GzbQtHUGaowP
X-Proofpoint-ORIG-GUID: _32yPCPfv_aiZNitNJU0GzbQtHUGaowP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-06_04,2026-02-05_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 spamscore=0 lowpriorityscore=0
 suspectscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602060090
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com,intel.com,arm.com,vger.kernel.org,chromium.org,quicinc.com];
	TAGGED_FROM(0.00)[bounces-263360-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[huawei.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
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
X-Rspamd-Queue-Id: AB76CFDFAA
X-Rspamd-Action: no action

Hi Jonathan,

On 1/31/2026 11:24 PM, Jonathan Cameron wrote:
> On Fri, 30 Jan 2026 17:24:21 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
>> Add support for ADC_TM part of PMIC5 Gen3.
>>
>> This is an auxiliary driver under the Gen3 ADC driver, which implements the
>> threshold setting and interrupt generating functionalities of QCOM ADC_TM
>> drivers, used to support thermal trip points.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> 
> Hi Jishnu.
> 
> Some minor editorial style stuff below if you are spinning again.
> Otherwise this looks good to me
> 
> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
> Given I expect this patch will go through the thermal tree and not IIO.

Just to confirm, would it be fine to keep your Reviewed-by tag in place
if I only make changes in this patch to address your comments, in the
next patch series?

> As mentioned in previous patch review, we've missed this cycle for IIO where
> I'd expect to spin an immutable branch for 1-3 so we can do this early
> next cycle.
> 
> Thanks,
> 
> Jonathan
> 
> 
>> diff --git a/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c b/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
>> new file mode 100644
>> index 000000000000..882355d6606d
>> --- /dev/null
>> +++ b/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
>> @@ -0,0 +1,512 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>> + */
>> +
>> +#include <linux/auxiliary_bus.h>
>> +#include <linux/bitfield.h>
>> +#include <linux/bits.h>
>> +#include <linux/cleanup.h>
>> +#include <linux/container_of.h>
>> +#include <linux/device.h>
> 
> Similar comment to previous.  It's rare we need device.h
> and if a forwards definition of struct device is enough it
> is better to just do that.

I can do that in this file.

> 
>> +#include <linux/device/devres.h>
>> +#include <linux/dev_printk.h>
>> +#include <linux/err.h>
>> +#include <linux/iio/adc/qcom-adc5-gen3-common.h>
>> +#include <linux/interrupt.h>
>> +#include <linux/kernel.h>
>> +#include <linux/module.h>
>> +#include <linux/thermal.h>
>> +#include <linux/types.h>
>> +#include <linux/workqueue.h>
>> +#include <linux/unaligned.h>
>> +
>> +#include "../thermal_hwmon.h"
> 
>> +
>> +static void tm_handler_work(struct work_struct *work)
>> +{
>> +	struct adc_tm5_gen3_chip *adc_tm5 = container_of(work, struct adc_tm5_gen3_chip,
>> +							 tm_handler_work);
>> +	int sdam_index = -1;
>> +	u8 tm_status[2] = { };
>> +	u8 buf[16] = { };
>> +
>> +	for (int i = 0; i < adc_tm5->nchannels; i++) {
> 
> Not that important but you've been a bit inconsistent on this style
> of putting the loop iterator declaration in the for loop or not.
> You could definitely do it in a few more places.  I didn't comment on those
> because it's a style choice, but consistency is a good idea - hence I'm
> commenting here.

I'll update this everywhere in both driver files and also address your
other comments in the next patch series.

Thanks,
Jishnu

> 
>> +		struct adc_tm5_gen3_channel_props *chan_prop = &adc_tm5->chan_props[i];


