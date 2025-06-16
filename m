Return-Path: <devicetree+bounces-186374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD800ADB756
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 18:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C15683AE411
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 16:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAFA1288C32;
	Mon, 16 Jun 2025 16:48:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d5Xd7REY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DAA1286409
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750092515; cv=none; b=U17YMfkYiK1V8y1YZvnkhxHOXnch12fhVk9hZoic98Gh+WoJjmcELdzakgr10wt3z4bXoi89gGesGbNiJXp/YgngZgM0d7GL3jvzzzaQVQ8Luehr/ZJsWDM4T3NXryXqnxaEY2mXnoZ7TwpXlLAxGnCkQOkuxFyCFFqvwEdKRf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750092515; c=relaxed/simple;
	bh=/h+0C0+QWS3aA/QPz3SawkeyoNRtLolokTJ/FYPaC3o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MhuYfUfIua4wYGDGO5+rwOCSoCQaA4WA4jHn5uwq/2zlBmOawOUf8GkfQ3wgNbzM3dJv+T52uc0nHVZIGKeJL5v8+g7spZc6ahF9FIGaXWFgpVKQbU70PZJouGiV5z04jbSlIhTeCINfieFKqTjTC9HQ9qoqp42WDhXtQx4bglI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d5Xd7REY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55GGeATt032725
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:48:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lxyeOcoLjC3T2xwCWZvRjoeExdTH0SjUCC/Y0ERYeNQ=; b=d5Xd7REYM3S9gnS5
	n7bYGFpFbiw+1+kJ2EqZbnWEMgfB2xuele5T5Pwm9aKsDRA78/EKtOy0F2QNTYzT
	KJvLT7ey6fAz3mjnpAWR432o8QADvN+IEnRwpM9Yj6bc0Ge8sjvzz0ZWiAwbFZTq
	nSepVk6eUNbh2ajDno4AWOc80XhTQlCWJcNa+Xm0CfPGPAoe58ojfQ9t2H2KbETZ
	z7mYYqFgR+aN0ahVuhbD8tNmbaw4ythr6pL1F0kGDSq4MFutDxLYRwjZC/QWS+ot
	Q/wBmVMGl0R5Qzntex2p8lKoFoNZds64/OuZsZjde6FVoaFAvIo75Ja0bP5wgTr2
	Mlo+Yg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9w9kq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 16:48:33 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-745e89b0c32so7682136b3a.3
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 09:48:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750092513; x=1750697313;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lxyeOcoLjC3T2xwCWZvRjoeExdTH0SjUCC/Y0ERYeNQ=;
        b=aPGPY89LMG99Osi5pj0WevGIq/u9ejhaNwjV1v4Gc/t/U8T5PC4pa1/WOkp8TMjuHB
         3QC1/2M35dRfzls7a7Pe855XE7L8GZp5hm77+y8Tb1NmXInubHsJfOJUmoLgW30u8B4m
         9egool0Ew1Ubgt/VL0cuN2oiOdt4dpDTX3n4/3AOvBFfjirgaOoGxh4aNvQ21gaeU5bU
         S5Wx0UJv0zMCH8MPKSYixxshs96shU6+8n9rFqNmmUOF1LbwB39DqZfbvXABlCaXlzFm
         7bsakUDq49p5F4uiVBCVZHMoIUnsURxTuSY6Mbfz+bkk2urIOcGVRD6YdnNZmvraR5ey
         BYyg==
X-Forwarded-Encrypted: i=1; AJvYcCUInoLRlfOirE4/RHgBrfzGm38ubl8COW4bp/U1FInBeh3oL+jcv1l1ig4fVjXJiBu3hDmdsDhnkymI@vger.kernel.org
X-Gm-Message-State: AOJu0YwtD+/h4NguRAhLk/56iS7wFCgwm2U5XKzqA6I1AqSym8kkpBgm
	Hj6Nw42+W9dZ+5TeZKz1P7WbGBmFPu1cfYhYsFoClvK822GwhgZxb5FcME0TERHa6ZRsouRTF/k
	CdCfFGJ7POaI5eJGOgVq4xc/SHAQ/dZ1x4A27cYlDHbWwY9ZR8Y8PRz6GDhw1nlQIrfWpCeph
X-Gm-Gg: ASbGncsVfeimJvuek1FLfEZ/CokDDI/ulhY6iVrc5BddINjZMHKjvjfRw5Y+LyIZWUh
	gGefEilq/QmTQUFRgP/DmaMlzNop4RFiYrRdBimOeG9E8o0EW326dfkxQl8oPDnn+baDy9d1M7c
	nqwMQBpu/oW7I0+D6H1Vctol/098GeQhPRFlWrR+gvVfT6DeZeWLiJay5lyGm8IGLoiDomKJOgY
	CY/7NZSIKgIX+hPfIwOFU8fqElcG+4kzaXCzKYLYWonUoFiYqndp9pg5qDGUO4DKOeLISf6UJSQ
	6F9rI1xFzbNDuOQXMvuSmwndf8CTrSKSYYXq0rieqw==
X-Received: by 2002:a05:6a21:318c:b0:215:d611:5d9b with SMTP id adf61e73a8af0-21fbd4bbd5fmr14908428637.12.1750092512629;
        Mon, 16 Jun 2025 09:48:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFiRsfJISsTnkxLW8qZGNZNt7p0Rfn9bVYWR0l8aBesdxG90+o4bb4c6x4zbi0HdUx7zVZcJw==
X-Received: by 2002:a05:6a21:318c:b0:215:d611:5d9b with SMTP id adf61e73a8af0-21fbd4bbd5fmr14908365637.12.1750092512245;
        Mon, 16 Jun 2025 09:48:32 -0700 (PDT)
Received: from [10.206.104.82] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b2fe1680454sm6019135a12.37.2025.06.16.09.48.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 09:48:31 -0700 (PDT)
Message-ID: <31c50188-986a-44e8-8765-c1fce6ad3c2c@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 22:18:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: opp: adreno: Update regex of OPP
 entry
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
        Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
References: <20250611-x1p-adreno-v2-0-5074907bebbd@oss.qualcomm.com>
 <20250611-x1p-adreno-v2-1-5074907bebbd@oss.qualcomm.com>
 <492417fe-c086-4980-b108-0487bad08155@kernel.org>
 <d482653e-5c0e-4b03-98d6-2c898b445917@quicinc.com>
 <750da319-d25f-454d-b376-ebbc194e0e41@kernel.org>
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <750da319-d25f-454d-b376-ebbc194e0e41@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7mKk4p8I1ACPJuCkqk67ujEzqwiVNnTq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDExMSBTYWx0ZWRfXylksQpjMT4qs
 vEBNp5u2v5Zb+NdFRUUyvwuoNsyQ5z8B8V3GGZQ75B0yseUMU2Qvq7RTJoq/IvLjcIy4/1p7Kcu
 KVxMc98pn5eZuqxl3Nmx8aTTTfceLBMpHzb2ZalkjB52T22mfFAPuN9W74SRFk6ad2dOypK8lG5
 /sHRzpJkWSATsuxSoYNPLtMue0SNrAc6YTDit/BNeUYl6BiYrS4H39clAJJc0hGNccbPNU9eDI8
 f5YZEtMJu1QxZLjxbp6vtxAOWVwlFzBXei8LE+8kNjtajVKbQzqgDKQY6fxCZ89y008PcLWC0gw
 2G+m39FUV375Sg0jyUT6OoZwnPZ9YPJ+If6gwwR5KT+GZr/dn61Y9wbAOAWmZPDGiJgWqKXavaH
 IlvtBM4Y1keqYTsjM3AZ+4RCCc0l3J73vhXshEfKnUI64eMebH0FLxe2LJmSrluhQ+Dyxjmy
X-Proofpoint-ORIG-GUID: 7mKk4p8I1ACPJuCkqk67ujEzqwiVNnTq
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=68504ae1 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=DDAlTcr3_WI9VELS8V8A:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_08,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=946
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160111

On 6/12/2025 4:59 PM, Krzysztof Kozlowski wrote:
> On 11/06/2025 14:24, Akhil P Oommen wrote:
>>>>  
>>>>  patternProperties:
>>>> -  '^opp-[0-9]+$':
>>>> +  '^opp(-?[0-9]+)*$':
>>>
>>> Not correct regex. You allow "opp", "opp1" and all other unusual
>>> variants. Commit does not explain what problem you are solving, so I
>>> have no clue what you want here, but for sure opp1 is wrong.
>>
>> Just to confirm, would this be fine for the requirement I mentioned above?
>>
>> "'^opp(-[0-9]+)*$'"
> 
> No, You did not solve half of the problems - still allows "opp" and
> commit msg does not explain why "opp" is now correct. Describe the
> actual problem and then write the regex solving it in specific way, not
> causing other effects.

Gotcha. If we want to be super strict, the regex should be:
^opp(-[0-9]+){1,2}$

I will send out a new patch.

-Akhil

> 
> Best regards,
> Krzysztof


