Return-Path: <devicetree+bounces-190364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F16AEB8A7
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 15:17:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD5E017CABF
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 13:17:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA4122D979D;
	Fri, 27 Jun 2025 13:17:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSjtysg0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525D7293B4F
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:17:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751030222; cv=none; b=BP/7rt9kyeYgM1cuj3oDiGDj1VIu5pDU8dizmx2vAeIjh3L/Sg6Df1LWNDRCCCCfrNjf32479EUntSPaNFXvnq/4FW9FeXuyLNrA8XEWHYTXmvJ8PoS9TtAkmnJNRkGn97khe9DAFgUSl0zkGYVcjq5Bw0SDGuLwpU8CxA6QkGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751030222; c=relaxed/simple;
	bh=yiyNdGeiM0/3rnsrP8u+xLmDAXJYg4VU9hp8H1v8Pvk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rl8TWfF5o04qvu1cfXO1/mrc/OJv1duwSTPL0EgalTpmZs9Z36x/Onej+EWoFustDATqMmM0svYMV2Z/WHrp47WB87EfhEcdygdC+4Oabv7+LcPxwPrq2ztqCzAw1/XjcsL5lvtVZKkm/8bRJT7mJlK7I03bn1Z6NgZa2DwA5q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSjtysg0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCYJP0008316
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:17:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	khTFytKeLrUqbhsKq7ecq567W1WVbzKKiaYL2pfTB64=; b=jSjtysg0jKrjOltv
	oj+YJd+0uPzYj3WvNGEFQxvn2lQcPSLfGIqtco4rZrWbaWrsNgJqJZVBYJgpdIOd
	BbBg7qatnGCFyztJqxfmlfWBSviachjBiC5tVwj8DlL+px5Ig1YQ2RnR5uswc3t5
	D3MZ7tAITbcPE+43Ic2ylo1X7eluYRMP23xeA9OFspdYqXUSlpuKuMC40yuKYnjq
	/u5EoltyjVBEb0ccqXEtXKppp2SxiJPwrxzOdaWkKL6gUUk/YxyPfAFWV3wIuWrQ
	XDYZqI6tSI577IHKy2HTu8kZpRz1GgwK+IhLuaqhNt3aAWCR9mCvAHzMVrI1CCWY
	9gELsA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47evc604ak-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 13:17:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d09a3b806aso40693585a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 06:17:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030219; x=1751635019;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=khTFytKeLrUqbhsKq7ecq567W1WVbzKKiaYL2pfTB64=;
        b=Z65liUA90WNYANVhkO1RnS9VPrGWRpOKlUV89SVAihtoiHzSmQfPUr6YdNoxWOpA/4
         Zf1MZSux/rDcY8anrac3yXQajH98ZinhPv1HalC5IULy3A6YJY04ineVdEUEHBpb5JVW
         zzAZYSvlmaaPgLuDdyr0t8KQpCXgIwrk1eQlKLPowm9l53V1GKoYyp0BWzcgb0xpg2rS
         WxsaVp6F6B4fHPTuwYjx/7L6uw0sJayHN6Y3aVRTCsbF9E6wDuO7lyfXvPwTuBXRxCKI
         50Lq9B2sYDOC4/30XjUZHRsFK1WHx4lxqHq1ixUF09cIoSvy/NIw70AWbfZYr+k91cuq
         JAjQ==
X-Forwarded-Encrypted: i=1; AJvYcCW2Rck1OpUzhMTBuzOmrqmxWgODm8nYYuoT9TxY/FJkf7GM3S96pYIC3v+ezkVTVg7HaQW+uM3Fe0Ys@vger.kernel.org
X-Gm-Message-State: AOJu0YxYcsijE+W8a/pt9tHjajDWGtJTF8RowX5YJRr25/01hzto3ouF
	dcttqWmw7J47dNkoqwbZLOQe94nAKyt9GVf7efNar46oe3dEkW49WL+28+J8k+z/+OcQOFVNZ5x
	mFFc9j0yWTo8Kq1auVZpiisWSdniGykzS7U3C2iscZBYxSbxFzMm0tuniINzUP+xb
X-Gm-Gg: ASbGncsgLZGyB95yKPY669xpNlAfMUqGFw3syZm9wxg1BCAsr59JmNY8RuF3L8kQtXK
	emmVr+tPLNHBlm/LBa41cqx7KPqfENfPEqueWW004SnUPJ2cFBy1iBK2FGYIuzxTLv/Q1CY+plg
	7djhxP0dubKS7rf7zGl1CvArudjOg9RUf18KWMEhaOLnJWU3Rla9PsKTc6QAGX25fMM+ojdEq/u
	x61KaFvc6lw3yHL0YAgcbQME1aIpWO0wfoLHZJ3uMGlavU39fPTZRUKWEUMt9EFcfsT14mGeH39
	7/GnQeX4EVFc1R6SyO+hx3oRuWtsbMD/stg3HRj89mr5905uWidPPl7zV5HcjzRZ9yOXDB+H+PH
	lhj0=
X-Received: by 2002:a05:620a:4251:b0:7d0:9ded:31e0 with SMTP id af79cd13be357-7d44388a2c1mr157388385a.0.1751030218702;
        Fri, 27 Jun 2025 06:16:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGC61VItBRS1DDwdCG91Ja2xlvgLnLdWcajuTrRe6ZwgKpNp8cadb7nGVjQm2wEb5XU/R1Y5Q==
X-Received: by 2002:a05:620a:4251:b0:7d0:9ded:31e0 with SMTP id af79cd13be357-7d44388a2c1mr157386985a.0.1751030218095;
        Fri, 27 Jun 2025 06:16:58 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353ca1d1asm120934766b.154.2025.06.27.06.16.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 06:16:57 -0700 (PDT)
Message-ID: <b37e3aaa-e340-464d-badf-2ca014a88e20@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 15:16:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add PMXR2230 PMIC
To: Luca Weiss <luca.weiss@fairphone.com>, Lee Jones <lee@kernel.org>,
        Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
 <20250625-sm7635-pmxr2230-v1-3-25aa94305f31@fairphone.com>
 <bced42f0-bc9a-47e6-bbdf-c49657d2e18b@oss.qualcomm.com>
 <DAXBXDDJAXDE.2V71E3E8F3GIH@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <DAXBXDDJAXDE.2V71E3E8F3GIH@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Lv43AMRjbnOpvb0m0LAG2Vw7op9KnxU_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwOSBTYWx0ZWRfX5zVhsIjaGdS2
 0rpJj+Na3nvLxQHiaVa7IlBLrck0//IiEh8CnnnHxNuf43pbZSbqGWhrskyOF3BOCsdqmwdTa/x
 NLd8eiKLwMKTjRur1FW7AcQ2ONcRc9uH1MgbDGHbAy0XqLgiBcDRNXYJrYk4suFBrDaWHONBdHq
 wIfohe3yj3ArtruWB3GWXrcK4Msf1uyKlJZjoCp3GF+OxPMkza/dnYLk04LZFLqPXtrtFHSdv2B
 uzZdeMkR/qXhHmmeMImTgO7DgFfm1pRV3SNsdE/t4IapMAnL7BpwpSTu5HLty862AExoC3qRnGo
 ZoPiA+Skjc6GHvUbFQ5nQHnx7jY9FjmDonh+ZhZMnPOmQ7lQQCXY89/oM0IlGVSkgophAFpN29l
 7I3wZxo+w+WSJjwfunvjk1fo2NM9LipRCXZ7UBJ1HaSdjwP53qOkN9Uz/tBwXsSijNqYSnBP
X-Authority-Analysis: v=2.4 cv=caHSrmDM c=1 sm=1 tr=0 ts=685e99cc cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=6H0WHjuAAAAA:8 a=h56Vx8HxoSJ7g-UfYxsA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-ORIG-GUID: Lv43AMRjbnOpvb0m0LAG2Vw7op9KnxU_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 adultscore=0 mlxscore=0 spamscore=0
 malwarescore=0 phishscore=0 clxscore=1015 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270109

On 6/27/25 2:54 PM, Luca Weiss wrote:
> On Wed Jun 25, 2025 at 3:20 PM CEST, Konrad Dybcio wrote:
>> On 6/25/25 11:18 AM, Luca Weiss wrote:
>>> Add a dts for the PMIC used e.g. with SM7635 devices.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi | 63 ++++++++++++++++++++++++++++++++++
>>>  1 file changed, 63 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/pmxr2230.dtsi b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
>>> new file mode 100644
>>> index 0000000000000000000000000000000000000000..a7650f3230c01422b76ef78e897e5e7ae2f20cc6
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/qcom/pmxr2230.dtsi
>>> @@ -0,0 +1,63 @@
>>> +// SPDX-License-Identifier: BSD-3-Clause
>>> +/*
>>> + * Copyright (c) 2025, Luca Weiss <luca.weiss@fairphone.com>
>>> + */
>>> +
>>> +#include <dt-bindings/interrupt-controller/irq.h>
>>> +#include <dt-bindings/spmi/spmi.h>
>>> +
>>> +/ {
>>> +	thermal-zones {
>>> +		pmxr2230_thermal: pmxr2230-thermal {
>>> +			polling-delay-passive = <100>;
>>> +
>>> +			thermal-sensors = <&pmxr2230_temp_alarm>;
>>> +
>>> +			trips {
>>> +				pmxr2230_trip0: trip0 {
>>> +					temperature = <95000>;
>>> +					hysteresis = <0>;
>>> +					type = "passive";
>>> +				};
>>> +
>>> +				pmxr2230_crit: pmxr2230-crit {
>>
>> This name is "meh", please change to tripN
>>
>>> +					temperature = <115000>;
>>
>> Unless there's some actual electrical/physical SKU differences,
>> downstream lists 145C as critical for a PMIC carrying the same
>> name
> 
> [    0.085990] spmi-temp-alarm c400000.spmi:pmic@1:temp-alarm@a00: No ADC is configured and critical temperature 145000 mC is above the maximum stage 2 threshold of 125000 mC! Configuring stage 2 shutdown at 125000 mC.
> 
> Same for the PMIV0104:
> 
> [    0.086556] spmi-temp-alarm c400000.spmi:pmic@7:temp-alarm@a00: No ADC is configured and critical temperature 145000 mC is above the maximum stage 2 threshold of 125000 mC! Configuring stage 2 shutdown at 125000 mC.
> 
> What shall I do?

IIUC you'll need this series to achieve the full range

https://lore.kernel.org/linux-arm-msm/20250620001918.4090853-5-anjelique.melendez@oss.qualcomm.com/

Which makes me think the driver today may not be doing the greatest
thing in the world for this gen of PMICs..

We can either set it to 125 and leave a comment (which I assume is
sorta 'meh' because that's Linux specifics interfering with DT)
or we can wait until that series gets in

Personally, I wouldn't mind option 1 since we ultimately don't want
the PMIC to run at either 125 or 145 degC most of the time..

Konrad

