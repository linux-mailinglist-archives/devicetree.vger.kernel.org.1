Return-Path: <devicetree+bounces-212488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77004B42E5D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 02:48:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 404FC1BC6D70
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 00:48:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8F4A3594F;
	Thu,  4 Sep 2025 00:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LM9zTdKb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BA914A9B
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 00:48:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756946887; cv=none; b=dr+0kIR7fvJcU8KEXqTY2hECeB4cvhLX9t77zYLQv/8awE+yLSeeTL+qmnhUuhWUZepFlpT8Njt7kbHhRUqDI7oHc9+mJfwwTTe3mmygK4pdPOzWud8IMcGEotkhFHvOOilcgHKUrCuOMseOmtd0Y281CRU9GJJsECana6ou1hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756946887; c=relaxed/simple;
	bh=BZFnYqIYnYRUuOmS6pUYWVjxM+pjh2uog5aaF9XntgY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pxD3uIMdwvAqxIQzjpZYqOfUDWNu/WUlPdacc9RtJo5eMs3Bo2sc35wxJAnAxddkFs3NXwFjRdmL/kZIWFstJ6V49H8cBkukSZPigqgxkRHdwMydUnfW5SqpqyMQ4V7kR4VcJdLmweng5imW0/9Ytc3aNOsB5iQaFRbbw39N/eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LM9zTdKb; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx0aE019644
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 00:48:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	17s2MHhHmT5kNo+75PHQcfHsB0zgEcKrR7cg9CRVNlE=; b=LM9zTdKbue5Z6EDq
	tG/ztLKWWIwSlbttSMR8hW1e9f/LH2aBDqhmoXhV/T3Qtjb3PyXZNCHBmb50Wh6Y
	+4wwqerrTc/ReU701qKExxk+W90R4P+R6pKAOahRJObsmGsAKj+4XO6caspCKKB0
	7E2/rMltGZMcIlfTMYO/bijQfj/WfWIffKHGwt/kPBWLvuaQCYA4siZapL2B+ena
	eUnTUL2g+WtYLrwggiA0ER4sOHWVOreWXuho87UqELBqdZyvg7FKFxuZMHT3Uc7b
	BY1P61lAChDTd6C23/9Q6aZRpER5nuSecO5s4rtDdzxagdXzKREra1wNDr+a7o4X
	dPSuAQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk95fg2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 00:48:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-244581953b8so4982015ad.2
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 17:48:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756946884; x=1757551684;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=17s2MHhHmT5kNo+75PHQcfHsB0zgEcKrR7cg9CRVNlE=;
        b=J2Wdd7WtbArBy3h5Mus7hDA7wUxBx9pF9FZSbqDlwQZY/lTgJtfIiq6WVwDXoF3Fa8
         kpPkaqrchJCwELCIuhj6+ff98a07yuUVkNXy1Jts8zdtr9+W1OY1u+GG73ZzH/CVfK+u
         XpH5IUqtDX2EcQgGJfN3UDs3evKQVXoPS1qDnDNRxCsyVZvNX57Olu+/2vnB9bdqJx9Z
         6HyeGI6dKzLJj7neaPp/w9sNznJKxLgz4QiV1fgX22HoWRpM6Qn05CACKEfRzVqJ894A
         hLGeetNLp5FvZy55m5r+oFYRof72Rz2uFiiFX0Tcs+Pask6UMN2AIELAKadaQyAFDto4
         1a4w==
X-Forwarded-Encrypted: i=1; AJvYcCWcDB+xJV0PIyD8elFdiw7lIJyohn9A1WhC1q82lRXxooHaSngPBzlq32Dzjo50x4YB42PHx3X7znuN@vger.kernel.org
X-Gm-Message-State: AOJu0YzvGbXWPDrzZg8BgMbF3gJo6cHifPi0os3xyXdlqQCsvFQirDmC
	UE7Yv9mzJnGQjAIqXZH3IS86vkvN3hKvEernd/q3NR2jFTKl5NNFxBdSylfp6K5YmSpeZqc11x4
	0WrExVdmjds6EgFB5ZZT7Zb1Ly1ftJdADufDU/Me6lRqHLDX0IKqisrd4+Iad1CT3
X-Gm-Gg: ASbGncsVQy7f4+bgyVoq2B3GHaQqr+5tSqa+aiShCPheUkfjnwdo734p82HbZp5o8ju
	Hzidu7zlJI42Gl7gZySTRfND0TmoYgy9DC4U8+Ti0D5TMNSrwvon5JL1aBq/b42YQ6hJIc0h0rh
	VuRRn8e5J63xp7YiBbiaijk7GGQsnCcb34BYhaqoF7es6sus22+KMHfbafhZafIN2AH0/DPBmil
	/Z2Y5kX02KLIHgUniXQiHma/tOxO/KyhdLfUHv4VY2PqX2vL4mqo7IKIKXOR6uIGWIb5+pcW28N
	dJyqqSrvQjXkCTgBVu+GQ9u0U9rhM7kAFFLB2G3/T/nqGlrhT4aNPgMeWD4wWSNdQzWpHtRRIfm
	oCg6wjk7IeA6t/DTOMudwFxdWn9bj
X-Received: by 2002:a17:903:388c:b0:249:33db:34b with SMTP id d9443c01a7336-24944b3fa5amr207542325ad.42.1756946884313;
        Wed, 03 Sep 2025 17:48:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHxb9Q6ymf/7LlpnATnajz4oPJxLQ/auiRISza8RTn4ZuddVk1oudIFgSFwT0ws67aSUTyLJg==
X-Received: by 2002:a17:903:388c:b0:249:33db:34b with SMTP id d9443c01a7336-24944b3fa5amr207541965ad.42.1756946883807;
        Wed, 03 Sep 2025 17:48:03 -0700 (PDT)
Received: from [10.133.33.16] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24c9304b790sm29195915ad.67.2025.09.03.17.47.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 17:48:03 -0700 (PDT)
Message-ID: <2b36c742-f517-4685-950c-696a34bc9c1e@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 08:47:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] coresight: tpdm: add static tpdm support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
 <20250822103008.1029-3-jie.gan@oss.qualcomm.com>
 <4a28c9ea-fe71-44de-ada9-eda3111eff9e@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <4a28c9ea-fe71-44de-ada9-eda3111eff9e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8nSw6-CRqF0eImU1GRVjIwE7A1uWm1xE
X-Proofpoint-ORIG-GUID: 8nSw6-CRqF0eImU1GRVjIwE7A1uWm1xE
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b8e1c5 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=Uvk-ifDgNjwOAWHDOfAA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX3pG7ULSSm8D0
 i9D8j/B3NlMe6m+cIkuiccRvpRkfx3PBGAFgU//tCmo1giTVZcSwxuXWJc8ihjdO9xpgGBIpKAV
 tzJPtK2B/1LT5JAD5dFoyXAD7SkBtCt3z494qYP+VzSWyAsn/VvvO4ExFxXNP/OhdViIh2XyFsh
 JxJgQ6TlphQ2zFj3MuTNhB6ux++5IguP4qaoXdNaCyq0kp1mK0Z4Tuf4KssVJ9qAEdc3fY9p80v
 ilGbbvpF1eXZ1+GmFFADTCsV1/JRbiM6YsqgwPy6w9kK+jMIU6INttQWi+ggXY8tVQgOPdbE65n
 GZ6ONRv/pVdCA8uwAae+k88e958U1Mk4k+0kCCUbVQ1UJCla9b6mjmFGuiSelQmJI1W15vS2fab
 vssaMHhi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_11,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042



On 9/3/2025 7:06 PM, Konrad Dybcio wrote:
> On 8/22/25 12:30 PM, Jie Gan wrote:
>> The static TPDM function as a dummy source, however, it is essential
>> to enable the port connected to the TPDA and configure the element size.
>> Without this, the TPDA cannot correctly receive trace data from the
>> static TPDM. Since the static TPDM does not require MMIO mapping to
>> access its registers, a clock controller is not mandatory for its
>> operation.
>>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-tpda.c |   9 ++
>>   drivers/hwtracing/coresight/coresight-tpdm.c | 148 ++++++++++++++-----
>>   drivers/hwtracing/coresight/coresight-tpdm.h |   8 +
>>   3 files changed, 131 insertions(+), 34 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
>> index 333b3cb23685..4e93fa5bace4 100644
>> --- a/drivers/hwtracing/coresight/coresight-tpda.c
>> +++ b/drivers/hwtracing/coresight/coresight-tpda.c
>> @@ -68,6 +68,15 @@ static int tpdm_read_element_size(struct tpda_drvdata *drvdata,
>>   	int rc = -EINVAL;
>>   	struct tpdm_drvdata *tpdm_data = dev_get_drvdata(csdev->dev.parent);
>>   
>> +	if (coresight_is_static_tpdm(csdev)) {
>> +		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
>> +					      "qcom,dsb-element-bits", &drvdata->dsb_esize);
>> +		rc &= fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
>> +					       "qcom,cmb-element-bits", &drvdata->cmb_esize);
> 
> This allows either pass/pass or fail/pass combinations to succeed
> - is this intended?

Yes. For static TPDM, we cannot read related registers to confirm which 
types it supported, just depend on the element-bits property which 
defined in DT.

So we treat either pass/pass or fail/pass(pass/fail) as succeed.

Thanks,
Jie

> 
> Konrad


