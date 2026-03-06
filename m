Return-Path: <devicetree+bounces-271827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SNdkKy5tqmkPRQEAu9opvQ
	(envelope-from <devicetree+bounces-271827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 06:59:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1693721BE15
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 06:59:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9273A309D1A7
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 05:57:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A5E36DA19;
	Fri,  6 Mar 2026 05:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DID515sq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TDB/soW+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFE4363C4B
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 05:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772776638; cv=none; b=huVcwv3nulcs1jDoPq5xcNsYn7bYd7l0gfaJ/V5iLOpGXqlH6v9ijw+9PHCaW/31S0uSvAJA8AS4n5eBS6awF8ffGibnO2L+Occ+ey7smJEIiNbX2PQZCeEyCI4lDCBRabNClqEldfgpAWDxRQhwzM5qfXZm9O0LIR/dLKnEo10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772776638; c=relaxed/simple;
	bh=XRshhNWCUls58Ec0Kd4jJCVhaUfesTsvoPyvZA++FtU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jFyyTD6Dc5yVzwSB9OMQNuGKfmbwh4Kkuw0A/at7slUT+H4IqbwL2RZK5yRLdf+wecXfS1UMvQOJauVE8UP3/zE0UWutuysfNUwN8EUDJbWoe1AceeecYm2/p8WugVV/gE7f2x42KcBAnKZmS8kdQUfKHnixximGfLnH8zAxuFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DID515sq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TDB/soW+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aEZQ264636
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 05:57:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MiXXC9Y+HRfo/jOm96rMU2xnZoWoXsElrX39FtTY000=; b=DID515sqloTkGjjK
	Vui+++KEzoj0Wxds/W4mV/0g10ClKvTW3vPTjZ964veVCtbjD809lgLtEmEdDQAO
	b22bd9QJyFlYBqRnHEdG1aJB85TekWY8EZy/RcMITCHj11ZDfSPbiHJ/SANnpeA4
	+D+mTJkT0oiwML1XU95qCTl2CDvIAXlkxe6e38EzHrMwqAhiej8itSubDrc3pkLM
	K3ANdeURHnJta5Z0WUDxVWcs/W+0FOQw+jEMNgAUiVs7asxzpXTbZyVQ8Q6Kokg9
	LV52HSK2KbpWijGSJ8wkcuhgsOosLtKm8N0az+DiHVQLsJwsWLQ/zh+DsddmDNwb
	hNphYg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqdvkt7v5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:57:14 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2ae53ec06b0so233988765ad.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 21:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772776634; x=1773381434; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MiXXC9Y+HRfo/jOm96rMU2xnZoWoXsElrX39FtTY000=;
        b=TDB/soW+z+JlevVnzYPNEBMQt6xu9xIel6ZSmGjwZTxQNrTfNkgE8iU7HFDaFCLNc6
         ra/jX3jOX6hOvWqTSJfJgNuipWUHLLxdY7FFVH+3dNxRsVMxapbysY8QpqYwsOtv5pwh
         vEZcJjKPe2XihrNLRp+xqZ8nNe9aKL0PsY7Y2mLez5SutvmQZrJDWwrFLmy9JFusFoS1
         m6d1hTd6hEkzLFTeMKX5dH8ms2dJRP1aiGPt6D0y18f7fsq7hvJVJ9XTYyhBXo5jcqte
         IxItZvthfsKcnz1bFg1hHpbE0WwMK1SWG9Q28iG9lWfNZx1W6lhKUyQ3Lik/qYmovP8M
         GM9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772776634; x=1773381434;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MiXXC9Y+HRfo/jOm96rMU2xnZoWoXsElrX39FtTY000=;
        b=mn0LyzAccGHeSPIof81e125i7jhhQil7G3Tfg5p7vw1MV9yRsE44vLSBgM7KyeiKZ9
         jiOpS6xO22dW7lefChNCP96k2ZfUmhGVtbWKIUpQDJ+jObRnlrloxl29Ov2q3UK3de+I
         wjn+09Dd5BpCnKoKzZkQcBTVelwWCdf54LQ52OxyAlL9Vw8BA6WZlFKOWtxJB9qOCXv/
         mbb3ge6Z//QIRowv99JnWwVlBRDnd+Dz15pgq0yY0KDBnyWjhhIvhE9wScsFfpq9BmLK
         CQmk35d0dd4WezOj5+jAs/wcUMakZLfxoiDyHcIg/xK+hd2ecS7ULVnk/m0Emgz441Cj
         XDpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXsnbETvVSsRpyzzPs0D69qNUPj3MsDXmmaJxnzrjIOcUB1YBGqDBTky4uSyqjKhS1EgtkKNBFSM/Wg@vger.kernel.org
X-Gm-Message-State: AOJu0YxA9WDfjjKFqZQmfar6CxBnf0CKC7AW3LfPq61zgVe9sSb5hIxJ
	Bv6TOsszXhGhrI48jq7nFKoSOj/34jURxxaTKW0QoDsC60KvQBeskudeWtr2Qp39VNADtj/l8de
	XZfoTKV0JQN8i0IEEFUFLT+ILIULASd/5P7r0sQsIShSgixD9Yab/4+D203ybUDk0
X-Gm-Gg: ATEYQzxvmC+7VXfImKWJV4XUUGl/oUnt+8db3nbbl3dKVKB0yfMQq1XoyUKRnf7kZ77
	99d0b/yrSgGbOMo8W5gp6ePOen9HpaG4cNhYHnurYp/qWk8zdSoeQX5eiWQuRlw3vv5dwbGhCjm
	Oc4xU7jBoPWlv27lrSE6D1yR2zVlG7WQdSO3p0KR2QHy3nIx5vYQJwiWIaomafRU4kA4CAfq0Xa
	o8jrGTHHjmSdkO45MTcgCHmYkM4uZYEbaTIPTgfVEw+Yq3yWf3hp+g7DpCVcb54cXfhWO6a0mQQ
	LTZlojCOd/npZkWt4dcA2gr232jaFcabfff0kjzJkBXUBs3zR6L0uYayB6BlkDqrJgFaNhxqNjO
	Y0MrqhnMndDEAT0/WfnMOHNrIoZfrmmO1Ih5lD07MoSBgms99qbE=
X-Received: by 2002:a17:903:2ece:b0:2ae:567f:fd7f with SMTP id d9443c01a7336-2ae8249ad12mr12630485ad.53.1772776634039;
        Thu, 05 Mar 2026 21:57:14 -0800 (PST)
X-Received: by 2002:a17:903:2ece:b0:2ae:567f:fd7f with SMTP id d9443c01a7336-2ae8249ad12mr12630055ad.53.1772776633508;
        Thu, 05 Mar 2026 21:57:13 -0800 (PST)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae83fa81d5sm5952335ad.71.2026.03.05.21.57.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 21:57:13 -0800 (PST)
Message-ID: <20301a77-2f75-4447-979a-f2dd4431c85c@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 11:27:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V11 3/4] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
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
References: <20260209105438.596339-1-jishnu.prakash@oss.qualcomm.com>
 <20260209105438.596339-4-jishnu.prakash@oss.qualcomm.com>
 <20260228193946.2e60ea5e@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20260228193946.2e60ea5e@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=M7xA6iws c=1 sm=1 tr=0 ts=69aa6cba cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=UEldCo81gXLG25mkEUsA:9 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA1NSBTYWx0ZWRfX5W++paMOtmvq
 Y6RAOhwxcz1nhhFNIWpJaZ4IRTgebbG3oYWx/cR8oBkP9UHjh70gS1vP/cRErFGVgyYQIpl+1Be
 xHIuzLadY2kf6HOsaafcoabnq2DAddmAHCz7LyXF4PZkbO5WarxzC7O03qVGym9mxQzxDQ4LWH3
 vuPDxOmlheDWunJWE4DAi4shsQfWCOBjGijz36LlxX8k9QHBXis8lLvIOUrK0TB3mFsvM+GoaLm
 zO9i/jUDKL1IuIUxx22EGuxSO7cWDqcDEz/SjokFf0Q5X1UUBRvv/cucP+Ghbv5kWgrkqWnd9Rv
 ZIsItk2IqEf6ynQ1iRkFcHdMT3URdX7Witm8VaDV7/4J/ZkWmfwuzULD3TAqxzO0lXyoHuYi5Ur
 gbCnF95BOJWo0czsE4SKiPm3Mj9xhi3+3ehgPS7IywMtRXIH8S1C1b/S8ckkCMI6XNDIkXp6rNm
 yF3suOz2hjZZR3cz/Pg==
X-Proofpoint-GUID: ZVCs4fxjOWZUAXR9x6uf6vJlbZiQT611
X-Proofpoint-ORIG-GUID: ZVCs4fxjOWZUAXR9x6uf6vJlbZiQT611
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_02,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1015 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060055
X-Rspamd-Queue-Id: 1693721BE15
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,oss.qualcomm.com,linaro.org,gmail.com,intel.com,arm.com,vger.kernel.org,chromium.org,quicinc.com];
	TAGGED_FROM(0.00)[bounces-271827-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[30];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jishnu.prakash@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Hi Jonathan,

On 3/1/2026 1:09 AM, Jonathan Cameron wrote:
> On Mon,  9 Feb 2026 16:24:37 +0530
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
> Ah. I just realized I built the immutable branch from v10 not this.
> I wasn't seeing any review outstanding on that version and didn't read your
> email closely enough :(
> 
> I'd rather not cause more confusion by ripping it down and creating a new
> one.  From a quick look none of the changes since v10 look vital.
> Perhaps we can spin a follow up patch to pull into IIO to make those
> tweaks if you want them?  That way the immutable branch remains
> the same.
> 

Thanks for picking the patches. Picking v10 shouldn't be a problem,
I can make separate refactoring patches for the v10->v11 differences later.

Since you have made the immutable branch now picking patches 1-3,
is it possible for the thermal maintainers to pick v10 patch 4 now
or are there any other procedures to be completed?

Thanks,
Jishnu

> Thanks,
> 
> Jonathan
> 
> 
>> ---
>> Changes since v10:
>> - Made following changes to address Jonathan's comments:
>>   - Replaced inclusion of device.h header file in 
>>     include/linux/iio/adc/qcom-adc5-gen3-common.h with forwards declaration
>>     of struct device.
>>   - Updated all for() loops to declare and initialize the loop iterator
>>     inside the for() loop statement.
>>   - Moved initializations for drvdata, completion struct and mutex within
>>     adc5_gen3_probe().
>>
>> Changes since v8:
>> - Dropped the common module (drivers/iio/adc/qcom-adc5-gen3-common.c) and moved
>>   all of its contents to drivers/iio/adc/qcom-spmi-adc5-gen3.c as suggested by Dmitry.
>> - Made following changes to address Dmitry's comment to use module_auxiliary_driver()
>>   in auxiliary driver patch, by simplifying auxiliary device structures:

