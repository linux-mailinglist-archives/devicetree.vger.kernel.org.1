Return-Path: <devicetree+bounces-187991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 75FBFAE210F
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 19:39:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AA9316D9EE
	for <lists+devicetree@lfdr.de>; Fri, 20 Jun 2025 17:39:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1E272E6127;
	Fri, 20 Jun 2025 17:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fuufy6ry"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480672E172A
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750441153; cv=none; b=cJP+OsDxvR7XzWpM2EKW3bNVaPx7a4+Sk1xZ+nFECeVKCZUgpGulz9lMWl5GQPLm38nPEOnmkyxyT86rMH3RQNDtrCPKYgf8YFl7+lJxZpgZMsKG3oud7+TjpCLALigscLExgUvnmPcniiC1aV4sQ3/78vuZtX6fW3JW7vhLux0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750441153; c=relaxed/simple;
	bh=oZD1xNj16wBtMPl2KYpBMl1KQEJsUgQ9ZavXtFYw6i0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DSZR6z59JyqstCygm22gd/SpmS4sCmjrU0haaa7cSVqN8oBCiCz4EqAzCzyusTwf1iXOgrVZcXTpMuLO0vtxdjabDj67wKRrobij9KF3Edvys5B2oTqMSQmdggzvRgeX8FNsq2mI6Yrn6IQDQymvY6SMDoOhL54QUHRUEHJS3m0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fuufy6ry; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55KHbvLw023644
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:39:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MIzQyroerxtQLieSpZxpk3xlFK40waICuo303fVMmi0=; b=Fuufy6ry8qgXPJPt
	JJEosJEMbmSyKSA0kmjxQrwb8SGypixrZS7uneGJL5ogRsBI9VMW58JdGyY9YgXB
	mbNRZqPwTNv+H8Xw2CNCOmhXSzo3f+dew0Y6XNzEDe+kha7wAUQcl5oFu7Tc1eyn
	wVLOiImOuhhWfOTgip69DjB1FkJLksmxDzd2RaWIMXcyU06lC2+PjFSpuxupNETH
	YWT7rT1yflnGE+4mb1PHjFBL+lZa7sN5TsEcR3m0wxTL49ih26bZwe/ifc7khWao
	92oxTadDoYJbc5WXv3rWLuBbxwGxmd47upAu6EPqnjImsW7m0B5P+k3S8cx9GiEp
	EYHCxQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47dc72r02p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 17:39:10 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6facbe71504so4674206d6.2
        for <devicetree@vger.kernel.org>; Fri, 20 Jun 2025 10:39:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750441150; x=1751045950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MIzQyroerxtQLieSpZxpk3xlFK40waICuo303fVMmi0=;
        b=Uf8RL7bdn76Urknr4auv5R6aJ+tiF9Cw6ydzPUc55QU66EoSd4QZnJy8h3BbE8yCiv
         MkeTz2BDzWrSOn3zqEc8Y4LSd5JpSfQZI093M4OX2FEEEiAiJCsjOYc76Va+TvuiUg2r
         1vDPmmGjIbb8RbIh/TqfLX+IcYl37luSVP2sMgGKNis3cVkvD48UX3qQidtw78v3Sq6r
         tbH354mf8PFuY92sF9aAU9TRJCoSRlDN/Jx/ehNP5vQIsOIAp9zHGuwzAtEiC7SyCEF2
         XYsjSr2bhV7vNID35NTjjetSGI7a0vFX/q0HGUII8hLCTen4en0DzFn6FzXRn6VoTBv/
         CAqQ==
X-Forwarded-Encrypted: i=1; AJvYcCVlcAXEnUJFJ5pmx3m6GXQUiJ9GmI6TpRcwgf2isuhRuw7qHSijUGru6ApntSlyrAAg2U+7CPWlvbQa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2iQo6pd45xShJQQBIHfxXylm+wPDl7JpbQC7/bcTDOfp+VYBx
	WQNO2V9G44Ow2DSvQZ/pobijDDE4E5+NOAm2620qOK1je+tBEsSlUMCvyt05b9BoyLO0csaBtv3
	bESoubUbtULw1RyUGUyp8aWELe8431JajRM2/e3u+fLbYOy0CGW8Z4IfVixc/RaBD
X-Gm-Gg: ASbGncvyWoRAlnALPAfxtYmmarcSjnICdZsIhf5XreXJnQpa0CxziXGUM0MKxXFkVCh
	rre720on/Mwg2saUdMrtr09JTpsTDYbqIHmuVKiFXmNlu+Z1eVI1luiNGmDEI6DGplOAGbN5M1C
	bAS+5QLu0p7YnvragpNardZItFfEAC2+hh7+1BzQsbJPqXz5o2ZD5+6yuRqxuQei/V0v1a10k3v
	9w07IarUMeqBm+X0EMhKOqC9CY9O8GmVITpYX8S6LQi9OfrTTz4JbpJRcIdQ5KhlaH3+AMNyaz9
	zr3tepuJaLMA8ssi62IjOtRau0b2nVHdFx3BUONDsiv7F0JXnvA5MJVvdonY4O4ia3h4+x+jtqr
	/bVw=
X-Received: by 2002:a05:620a:608a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3f98b45efmr205529485a.1.1750441149923;
        Fri, 20 Jun 2025 10:39:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEldEd/5u4LjK+ngUSwInt4G+HtJbJuyQ7dN6nn2mCwiZYCVBKZAsFgmxDZfrnlwznHevAmEw==
X-Received: by 2002:a05:620a:608a:b0:7d0:aafe:dd6 with SMTP id af79cd13be357-7d3f98b45efmr205527585a.1.1750441149405;
        Fri, 20 Jun 2025 10:39:09 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0542035ddsm193586066b.147.2025.06.20.10.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Jun 2025 10:39:08 -0700 (PDT)
Message-ID: <ffe32102-cc55-4f86-b945-ae77a4e163bd@oss.qualcomm.com>
Date: Fri, 20 Jun 2025 19:39:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: clock: qcom,sm8450-videocc: Add minItems
 property
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel test robot <lkp@intel.com>
References: <20250618-sm8450-videocc-camcc-bindings-single-pd-fix-v1-0-02e83aeba280@quicinc.com>
 <20250618-sm8450-videocc-camcc-bindings-single-pd-fix-v1-1-02e83aeba280@quicinc.com>
 <4657c6d8-8454-478a-aac3-114c6194b72e@linaro.org>
 <5ed72663-da54-46a4-8f44-1ceda4a7d0d9@quicinc.com>
 <6068badd-8d33-4660-aef8-81de15d9b566@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <6068badd-8d33-4660-aef8-81de15d9b566@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=GNgIEvNK c=1 sm=1 tr=0 ts=68559cbe cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=-bYYbqjr0qm3h48m4OUA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: aJAahkIXxsNUxkOBXUjgU2qZ8KCOq4Jw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjIwMDEyNCBTYWx0ZWRfX2SHPJjiALI48
 4oBl9DB5CHU4/8Nbr0QcBxfWFoZSBc42pBUWAvdTqfPGoP24HLY1LvMjm1T/O6qS+L+7ibzk+Mw
 SjOkWtZyImyfncfJRf52ltUT7YESBBfLjjj6oFO0i200Dq8rLTKOtbU3G5Cy0TAvLIajyiYm8Ku
 oMii5E9Fc+4w8OZSWN4R1LCwTQQxhmMgGBtKX2CzIfhOVb0NNaFdLpYccwy2syK9PoaaCV+SkOG
 QLYWM1VhklCqT6Ew8N1nwDsKxi1W2XPorlR48OuwMRr0XIoTsynYyK5ILMzdKKvp3I/JdVh1Ht2
 FDRHxSL8Luilc866qndds9jXEhLAeVV+6/0ZbMDnYTNy2uJKB83fQ3MiaWie4mZIaPghiD7AC5Q
 HRnajZfkk7pWR80d/9mb3YwHqOjY8R6H+08rR4/aBnfBGgL83KA6a8pOtjyNIuDWdvN5TuFh
X-Proofpoint-GUID: aJAahkIXxsNUxkOBXUjgU2qZ8KCOq4Jw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-20_07,2025-06-20_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 mlxscore=0 suspectscore=0 spamscore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 clxscore=1015 malwarescore=0 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506200124

On 6/20/25 7:56 AM, Krzysztof Kozlowski wrote:
> On 19/06/2025 12:20, Jagadeesh Kona wrote:
>>
>>
>> On 6/18/2025 11:56 AM, Krzysztof Kozlowski wrote:
>>> On 17/06/2025 21:07, Jagadeesh Kona wrote:
>>>> Add minItems as 1 for power-domains and required-opps properties
>>>> to allow this binding to be compatible with both single and multiple
>>>> power domains.
>>>
>>> This is your hardware, so you know how it works thus I expect here
>>> arguments why this is correct from the hardware point of view. Without
>>> this, it is impossible to judge whether this is a correct change.
>>>
>>> If I overlook this now, it will be used in discussions by other qcom
>>> engineers, so unfortunately you see, you need to prepare perfect commits
>>> now...
>>>
>>
>> These clk controllers mainly require MMCX power domain to be enabled to access
>> the clock registers. But to configure the cam & video PLLs in probe, an additional
>> MXC power domain also needs to be enabled.
> 
> 
> Then your patch is not correct. Anyway, you should explain the hardware
> in commit msg, why this domain is optional in the hardware.
> 
>>
>> Since the initial DTS changes only added MMCX power domain, this change is required
>> to be backward compatible with older DTS and avoid ABI breakage as discussed in below
>> thread.
> 
> 
> So you send incorrect hardware description allowing something which will
> not work? Or how exactly?

So I think there's a mistake in understanding the backwards compatibility
paradigm here.

There exists a single, objectively correct and represented in hardware,
list of required power-domains and the commit that caused the schema
validation errors was essentially "align YAML with reality" which should
be coupled with an immediate DT update to match and we forget about the
incomplete past

Konrad 

