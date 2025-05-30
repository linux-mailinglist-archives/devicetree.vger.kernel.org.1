Return-Path: <devicetree+bounces-181732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 142D4AC8B3F
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 11:43:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9AC7117EDED
	for <lists+devicetree@lfdr.de>; Fri, 30 May 2025 09:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88E6822D4D7;
	Fri, 30 May 2025 09:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m+mie/MQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C75EA21E094
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748597889; cv=none; b=gvD9IQVeTiotMI1AwN8BdD6NUEDPsD2NArYLRdRF0rdQYBHYXn9TCb3X3mrXXJudAyNInuFD0XKOJhYqAGUYtzsz9n0GLH714w+n5AWZJlvtjp7C3xB7yMMIZzfADmzN/1pOxbKzIeqIxS7meS0IP0jUyJaq7wobf0teEkDNxGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748597889; c=relaxed/simple;
	bh=FiXibMwqe7Bzxv2bD86eTxQ7GxvzILN7JJ8MXnunTTg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lB4P1P+3Hw8K6uUgHBV3WjbjPi4FjLl/QVwCbjR8NMdr9jNQg0quEOOp6DdxLoQiNzSsp39O0YKk0L9dt+dG0k4duJp48sQ8xhCRhYv7hfxfeaN53Y+P522GvMjHm+4Ofqtdt6+WCUgKkhkVo1okjXCLmV/Cbi4jTlNDrHH+xNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m+mie/MQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54U0Mnnn011707
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:38:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zfYXyl7VrRhi9hOpPAB1dRuMBvVrvMKjYSFM2OAmP3g=; b=m+mie/MQgL01XB4R
	H0b1nhJl21Axh657OCSabkJDPAY37Ky5czOBYYlHWVWZQLNfHH2ctOW0l8mO76gY
	zpxEVBxa9YmA0En+bv7wHx4iiD+zrs3o4H7e//46uXASpHEsPzpA+5/gkMX5DcA5
	omhQ9Gmjhh7pl741ah6g1O3wWjwZwbWRzv8exE1IhLeUqKOc75lWff2VrK9VACgI
	0bdeMGWUMlYxxOusCwU69NkFWeaSRF3bMnVdbm5j0TJExJlZlRDHja5PsHVuLBHX
	WcVnLMi2LfQLBjEuYC98un7KXlJuHoY234MsqoB3ZPC7pHf1dyGpHs2ABSrW9vRl
	qPkyIg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u6g98kds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 May 2025 09:38:06 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7425efba1a3so1744037b3a.0
        for <devicetree@vger.kernel.org>; Fri, 30 May 2025 02:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748597885; x=1749202685;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zfYXyl7VrRhi9hOpPAB1dRuMBvVrvMKjYSFM2OAmP3g=;
        b=S/QfT6rTK3N4L3GquzW1xCO+LMH7o52ssziEvL7hZFbAjvmOBYBfhpWfBK6ZVOjHh2
         u3kpCGA+9vP4/hH9jBbVykBAn4+vTNr/2FBdLP6o3xUvgRD9CSOxFJGoMoYFdNvb0zL6
         ubwWFJvz8uTIWpxkQ/Cw8maKTylTdOBXwYdi7uvULn2tyJe0Lh+lRv2Kam+hDBKBR0nZ
         qnddXsuF/LQbCfhdxHatelY2/NqqP3AvRvuB8aJXcjCxjgU473iVN08EBBxynDfBKNO+
         Yu5Fr8Qt/jbQ7f0qr1FPe+HRbKee91XWFg7+HZ9gcQjNwAyUkTlbyNN/aSs5Q4p993JP
         CJGw==
X-Forwarded-Encrypted: i=1; AJvYcCVqsAbFwss1wcxrofsneJAm2HoRM8b2pKbiPlE8GdRnsSqPqzc80AEIKCVOE3YydepxWhmxuWttxt/s@vger.kernel.org
X-Gm-Message-State: AOJu0YxAZh99K7tXUua1o3zN9IUxwJXoYEwjh5U7fgCFogBs8ZJCAod4
	poSsqTF0oCJLcL5tLGDIVyA9VfuIziXjitiKLKKrXnZtBy1IJAuc7fVnpGnk/M5DkoCVvrvvU+c
	/5hE81DGFdun23fFPfEqevEZ08nAo4+gekyL3Dlfs/UNhyrCXDOcyUJrii+y2JwF/
X-Gm-Gg: ASbGncuWX3InDfrqzjbxy3ff6DIs/O8KlQfR7C0Z0MVdMu3uj6sNxGvCK2Yg1Mzj+AE
	LGXwKodKZt8wMyNDnaOMvhsWnYAFrUmFNEZqGhQsewahkPXm9TSCYeRNmofLVMQRonmCq6Sar3M
	QyAgOAtB5+eIgKacPJvpe0SvcubMJmvacOofqn+TM+aGzyfh5Vya8hqQs57i9uptNCf7N2xzBBS
	YR0/zbQ5PqKmD/GGZqWEG6OvGrOiQevXT1DjtZLPzYRUHjFmbm8nsdPMfvn0nDJTeRoHpnwdE6N
	DhCkHxX2DqHtan8wNsMP9ggbYJhpYBQNhc5UOMIMA+Y1HsxfENWTG/uDWOmFihjl/OK9on+6dXI
	i
X-Received: by 2002:a05:6a00:a87:b0:742:ae7e:7da1 with SMTP id d2e1a72fcca58-747bdbe8035mr3778285b3a.0.1748597885076;
        Fri, 30 May 2025 02:38:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7NO4N0v3Y1dOO+Iz5dJNKpo+fSGcvNyKt4RkjS35cwzJzfWOV/qn3qrS95ChBrq+phaPJRQ==
X-Received: by 2002:a05:6a00:a87:b0:742:ae7e:7da1 with SMTP id d2e1a72fcca58-747bdbe8035mr3778244b3a.0.1748597884623;
        Fri, 30 May 2025 02:38:04 -0700 (PDT)
Received: from [10.133.33.104] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747affd437asm2661533b3a.150.2025.05.30.02.38.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 May 2025 02:38:03 -0700 (PDT)
Message-ID: <3df56548-49ea-498c-9ee3-b7e1d2d85d2e@oss.qualcomm.com>
Date: Fri, 30 May 2025 17:37:58 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] power: supply: qcom_battmgr: Add charge control
 support
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <497BF3hThnrmYe-YHKmdOyZwdjP3ivm1hFYDDy3-HkSOvkCOMVSkokyhb859mcTarGb55Go5nJLfgsc553u7ZA==@protonmail.internalid>
 <20250530-qcom_battmgr_update-v2-5-9e377193a656@oss.qualcomm.com>
 <8b396edf-e344-47e9-b497-3f7fb35783ed@linaro.org>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <8b396edf-e344-47e9-b497-3f7fb35783ed@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=68397c7e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=fnrE3p8kPbNp4-9vzRIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: _BP0vJVlhFtY9wQoOyhnrkjiDUOzFv9R
X-Proofpoint-GUID: _BP0vJVlhFtY9wQoOyhnrkjiDUOzFv9R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTMwMDA4MSBTYWx0ZWRfX01yaAd0eG2sw
 xZ9gL86Co/yfiUZ6zLg+NYTtPETgwgVd5MeW4jOGJZi3JYoOM71pSi3xZROJTge/ZVaA910u0tf
 aVYrlNqY5jrO9/oeBeTWc9KiiYYJWJMPXOXNZZnVi4jdKkU9EQZgS+lFN8TyPB2QsJ+j/fyJ6G7
 2HkMTuQ09G7mXs8iloib6jj5Sjc/nnI++yRFZLeYD+8h9GIJuKea5+38UEaJ2G2+yAkXsErEt7P
 ESFJ/X5+0kyplizExOG1U7FwoDvRMxsuC4rxPcougKMOmI77KTXLngB2ax5No3P7h1AAhBIKi0+
 wl5bSjCyZx0flpmQMZ3CtiaGszvQ6W/1+KVOk24wY3nIPINGDUO2c23e91xiiDDH/hKG6bno/O7
 ki2sC2R8da/HUxih7pbVVaqEt4hJSmLMSEs0Wf0dtBrmxfMe5sczTjx7Z09FhnC/MbFi/Ot9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-30_04,2025-05-29_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 malwarescore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 clxscore=1011
 impostorscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505300081

Thanks for reviewing the change!

On 5/30/2025 4:48 PM, Bryan O'Donoghue wrote:
> On 30/05/2025 08:35, Fenglin Wu via B4 Relay wrote:
>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>
>> Add charge control support for SM8550 and X1E80100. It's supported
>> with below two power supply properties:
>>
>> charge_control_end_threshold: SOC threshold at which the charging
>> should be terminated.
>>
>> charge_control_start_threshold: SOC threshold at which the charging
>> should be resumed.
>
> Maybe this is very obvious to battery charger experts but what does 
> SOC mean here ?
>
> Reading your patch you pass a "int soc" and compare it to a threshold 
> value, without 'soc' having an obvious meaning.
>
> Its a threshold right ? Why not just call it threshold ?
>
"SOC" stands for battery State of Charge, I will rephrase the commit 
text for better explanation.
>>
>> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>> ---
>>   drivers/power/supply/qcom_battmgr.c | 256 
>> ++++++++++++++++++++++++++++++++++--
>>   1 file changed, 248 insertions(+), 8 deletions(-)
>>
>> -    if (battmgr->variant == QCOM_BATTMGR_SC8280XP)
>> +    if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
>> +            battmgr->variant == QCOM_BATTMGR_X1E80100)
>
> Please run your series through checkpatch
>
I actually did that before sending the patches out. I run checkpatch 
with below two commands and I saw no issues:

git format -1 xxxx --stdtout | ./script/checkpatch.pl -

b4 prep --check

Can you let me know what specific command that you ran with it?

> 0004-power-supply-qcom_battmgr-Add-state_of_health-proper.patch has no 
> obvious style problems and is ready for submission.
> CHECK: Alignment should match open parenthesis
> #95: FILE: drivers/power/supply/qcom_battmgr.c:521:
> +    if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
> +            battmgr->variant == QCOM_BATTMGR_X1E80100)
>
>>
>> +static int qcom_battmgr_set_charge_start_threshold(struct 
>> qcom_battmgr *battmgr, int soc)
>> +{
>> +    u32 target_soc, delta_soc;
>> +    int ret;
>> +
>> +    if (soc < CHARGE_CTRL_START_THR_MIN ||
>> +            soc > CHARGE_CTRL_START_THR_MAX) {
>> +        dev_err(battmgr->dev, "charge control start threshold exceed 
>> range: [%u - %u]\n",
>> +                CHARGE_CTRL_START_THR_MIN, CHARGE_CTRL_START_THR_MAX);
>> +        return -EINVAL;
>> +    }
>
> 'soc' is what - a threshold as far as I can tell.

I will update it with a more meaningful name

>>
>>       if (opcode == BATTMGR_NOTIFICATION)
>>           qcom_battmgr_notification(battmgr, data, len);
>> -    else if (battmgr->variant == QCOM_BATTMGR_SC8280XP)
>> +    else if (battmgr->variant == QCOM_BATTMGR_SC8280XP ||
>> +            battmgr->variant == QCOM_BATTMGR_X1E80100)
>>           qcom_battmgr_sc8280xp_callback(battmgr, data, len);
>>       else
>>           qcom_battmgr_sm8350_callback(battmgr, data, len);
>> @@ -1333,7 +1560,8 @@ static void qcom_battmgr_pdr_notify(void *priv, 
>> int state)
>>   static const struct of_device_id qcom_battmgr_of_variants[] = {
>>       { .compatible = "qcom,sc8180x-pmic-glink", .data = (void 
>> *)QCOM_BATTMGR_SC8280XP },
>>       { .compatible = "qcom,sc8280xp-pmic-glink", .data = (void 
>> *)QCOM_BATTMGR_SC8280XP },
>> -    { .compatible = "qcom,x1e80100-pmic-glink", .data = (void 
>> *)QCOM_BATTMGR_SC8280XP },
>> +    { .compatible = "qcom,x1e80100-pmic-glink", .data = (void 
>> *)QCOM_BATTMGR_X1E80100 },
>> +    { .compatible = "qcom,sm8550-pmic-glink", .data = (void 
>> *)QCOM_BATTMGR_SM8550 },
>
> Please separate compat string addition from functional changes.
>
The compatible string "qcom,sm8550-pmic-glink" has been present in the 
binding for a while and it was added as a fallback of "qcom,pmic-glink". 
The battmgr function has been also supported well on SM8550 for a while. 
The change here is only specifying a different match data for SM8550 so 
the driver can handle some new features differently. Does it also need 
to add it in a separate change? If so,  this change would be split into 
following 3 patches I think:

1) add QCOM_BATTMGR_SM8550/X1E80100 variants definition in 
qcom_battmgr_variant.

2) add compatible string with corresponding match data for SM8550.

3) add the charge control function support.

>>       /* Unmatched devices falls back to QCOM_BATTMGR_SM8350 */
>>       {}
>>   };
>>
>>
>> -- 
>> 2.34.1
>>
>>
>>
>

