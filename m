Return-Path: <devicetree+bounces-246931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E51DECC188D
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 09:25:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 083573051D15
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 08:21:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67602339B20;
	Tue, 16 Dec 2025 08:19:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="N45WPxT6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jdhrsJx1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBA632D440
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765873147; cv=none; b=cT25dKITkDpRk2dECyumd9dv7X+a+jT7LvrNVDSbDKPFL4DDv2C0BI9EPD6jRFiO80197XemjxLVIJnfQfVSJlC+jM/Q3XPTi/fR7g0Pxp7pelXQO8QYEMH6mssE5o76rQJ6HV/LjPcbSPYs6qJZcGz2uMqQWA1x0kdrPUKQ8/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765873147; c=relaxed/simple;
	bh=1dc9RMeX8KMlLsgP6lFUbJHWrpqybk1Icr7xrEdhdu4=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=LdwZY1R9kaHco4JriI1cvSRtYdDv9NZYLGRfnHMQOUuvYiZVGNcgKrP5A1piWCFfbzk8q/BdesbcG5ebmxku2P02tKGP00qMpoCUbyITGLqt3oFIM/wIqcIcZFMZEEJWpXO0Y7BEoLSBnj5YH5vmmmY3/TWVPzwTVGBxdtbCK9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=N45WPxT6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jdhrsJx1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BG85CXg2869704
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:19:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=; b=N45WPxT6LavJqkR8
	km1PSKddLLH8FDd/Ch798GU+iUurTaJM14uAd+XvXPc64yN9CS/auMwq7vyarGF2
	KROvkq/SuFEeKkjrC/2P0wAm0m5dPKFHdeAul+RHdDIrOqeiHYXXmAaAvIua4Jx2
	5WgmAIikdwMTtxck53WD/D50mXZhaigb9naKwaOCZxVtbtk8sIigCc4sTv8lqn/M
	ChFUwJHEj0wmtrQRDtv1qrYpJm3DP6fiYAlikb7h7uQfqGWhGSkucADBbxf0kySr
	+i59YMPfQRcO0KIOKAPFNjdVY3AInHTVowaod/KKAG/B1lnOI4hc8PLnbhHO66NX
	0DsSBA==
Received: from mail-pg1-f199.google.com (mail-pg1-f199.google.com [209.85.215.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b33kw81uh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 08:19:04 +0000 (GMT)
Received: by mail-pg1-f199.google.com with SMTP id 41be03b00d2f7-b6097ca315bso7540039a12.3
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 00:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765873144; x=1766477944; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=;
        b=jdhrsJx1EJYr2opRU83h+5dZIUJFDlHYtGyEhTLc5590avsww0B64GYZxrtvrkTsGN
         pq7LI1B4z0A+/bi/XY+WWtHpSl+qW+hvnpmKr/raIen73Z4ggo3JDF1G8yt2xSD7YKfT
         1j88dxzeccJqwiG6KoU6G6zxAwV/y90Z2LN1wLsuUmGHuGXFmOMnaUo4nubCeOsTWoex
         gPNCOqWq78wjo6erdZ8j47WBvIQHMH9VzGdJVgx6JsW8M6Kwmoh0r4zTK+BL+5u3OF8D
         B7oD4y5zUOSpBf2vC3tm0a/QdrCMrIF/hQCkbn/NAz1qPEAQvp29aRUY07X9DykDjtij
         ZoHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765873144; x=1766477944;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=huFM7pFhu3QjZVVHAh0e9KZi69KVAcuDEQj7pluXnaM=;
        b=GGRbxshWW8I048VVger5EP8tDkS5oYS+JfMHinzf0qwxXxCsvRDVpOAVwnV46+OxI7
         diD0QCVQehWN1Bz0iC6nEGKtfahC1YaXaIiyqAi8TFwnWA2rs9bg4wdwMEWCIooC3cc3
         4JcT4yZTddoogyJ8K66SlbzLyA/bUVYao1hu7cNsuVUMVxpUk51OD++fzIjI3OZ/RFqI
         t/MqoMExx3AoJLPSho2gbVsrHAbyHQpILMYQJCWK2o2uOL+IfeDGzTnS8NTE9LOT6oro
         2H6xElC7FauE+IEXGDIzMFs0CepTzbyskojfZLyZE6DfqrHck8oiMuQ5BPKIT2AeyzyK
         gXBg==
X-Forwarded-Encrypted: i=1; AJvYcCUsec3/8BTS23p3yJZt/VXsqys8nZN8WlX7rTiyGjeLJjOU5Go5c8+ooW//2k+OSd7XE08oCyvrzb25@vger.kernel.org
X-Gm-Message-State: AOJu0YyoM7xgMOyOuvi3tiRYqfWfyldglXoDxUYt1dVguRsO3fL87FPj
	y87MGkxBnuYNVhqTB4zj3YVvW/OxAeqo7ZrU0EO8YPtBDN5ovNF95d3WAsYhlf28apPSun5mFpS
	9d5jFQYkDvBKfsK54o47wbB/GwSOF1RhJtFu3AHVkLKMNT+ewMamD1bfNOIlTqV39
X-Gm-Gg: AY/fxX70lfKFQShX2c1OLEqupYcc74OQA3Ky7hMxupYTU4udKy3uPAfGeTQ2Tree+TI
	qgd5c8Ugxq3tA+5t1achlAwu/1+dtApf5eBbihGW7HWxBULJ0mXC2RLWc6PQ6Z62u8W8wLVsa9x
	wMpjb9BrJXPZcSR3KMSAMnbQty5RENuiUMyt/LF3tW2IYxKdIVN1xnW7UXJHJi82aC4bs0Fx4lG
	8coyAZom0mPo6jSwOiz57NClcHDcA2XgQ4jB8UCp2i4EQVEE1AWBQ2OsvDZbutxPNn14Z5LS31o
	TvvImBojvKZF1zyMa4YwKlhCudBH3GNRIR1WFS0VW8n6emajSlALgxC3tYTNbectzbnxn79Lb1e
	lptF99vNOOw6xJWWctEf9ztFXMR5I96ceAhx1JbHtWy16pQ==
X-Received: by 2002:a05:7301:53c3:b0:2ac:4db:9481 with SMTP id 5a478bee46e88-2ac2f8d1712mr8796797eec.19.1765873143530;
        Tue, 16 Dec 2025 00:19:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHtWK4e1bXvpwdT10fDqm6Qj7IweZrG+0/Xy2p/wK3bauMqiPSgjejfvkiWk4/F8BT9BHrDXg==
X-Received: by 2002:a05:7301:53c3:b0:2ac:4db:9481 with SMTP id 5a478bee46e88-2ac2f8d1712mr8796785eec.19.1765873142910;
        Tue, 16 Dec 2025 00:19:02 -0800 (PST)
Received: from [10.217.219.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ae4f054711sm652371eec.34.2025.12.16.00.18.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 00:19:02 -0800 (PST)
Message-ID: <09debd16-dd3d-4a9c-9b70-8b1093d4d5c1@oss.qualcomm.com>
Date: Tue, 16 Dec 2025 13:48:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: qcom,snps-eusb2-repeater: Add
 squelch param update
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-2-krishna.kurapati@oss.qualcomm.com>
 <fxf66ulont7wnmozqww2cklpp3djkzsgvc3znew4m7t47qlye7@32hxp3yze7h5>
 <20251206-efficient-tireless-dragonfly-c5d2ff@quoll>
 <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <db033ab1-9b5f-41e7-8048-3ae327b48ad4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TLpIilla c=1 sm=1 tr=0 ts=694115f8 cx=c_pps
 a=Oh5Dbbf/trHjhBongsHeRQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=lUzGdAYB4nMR4joB8mcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=_Vgx9l1VpLgwpw_dHYaR:22
X-Proofpoint-GUID: 23uBTFMvFt47WJQz1nry0HovJ2laIQV4
X-Proofpoint-ORIG-GUID: 23uBTFMvFt47WJQz1nry0HovJ2laIQV4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE2MDA2OCBTYWx0ZWRfX3Qh5inNEPT8R
 kLjz+8myFVlbVKnqf0LzkGrHEjfi4Nkyv0C5mhpeGhlxF0dOhhUduoWwJR/7H5uha9k347cW7g4
 q3jWQ0VDkyRLC7IJs+6+ZdGghQkoQ8K815UHep/6PwbaJFwVnmzsxMqyV7w4XtF7xDr+lN9lM3O
 j7oiay1OMswt77/oRyZYnj9j3nUJkwAp9NRaaEX7hsMSOhWIhjoid2xliZNr9r3wYgCih326p8X
 u1XSuoPCTh7tQV6Y6eUvGt6HVLWOez3SDW+UIAdHgfdUclugk/MU6V4psqJnoqf4NQeKeftw0ul
 7oeDdhcs/6dVlNe+0ibXjuATI2gmEmVH3iQvZdxYBGbjJxdOF97FpZJP4kcCWHzpJ6YGUM0xeOG
 geTmEYZTu3mOD+dPboLMeEWBbXQ3dw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-16_01,2025-12-15_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 lowpriorityscore=0 bulkscore=0 malwarescore=0
 clxscore=1015 adultscore=0 priorityscore=1501 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512160068



On 12/9/2025 10:06 AM, Krishna Kurapati wrote:
> 
> 
> On 12/6/2025 4:32 PM, Krzysztof Kozlowski wrote:
>> On Fri, Dec 05, 2025 at 10:55:36PM +0200, Dmitry Baryshkov wrote:
>>> On Thu, Dec 04, 2025 at 10:16:42AM +0530, Krishna Kurapati wrote:
>>>> Add squelch detect parameter update for synopsys eusb2 repeater.
>>>>
>>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>>> ---
>>>>   .../devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 8 ++++ 
>>>> ++++
>>>>   1 file changed, 8 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2- 
>>>> repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps- 
>>>> eusb2-repeater.yaml
>>>> index 5bf0d6c9c025..f2afcf0e986a 100644
>>>> --- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2- 
>>>> repeater.yaml
>>>> +++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2- 
>>>> repeater.yaml
>>>> @@ -59,6 +59,14 @@ properties:
>>>>       minimum: 0
>>>>       maximum: 7
>>>> +  qcom,squelch-detector-bp:
>>>
>>> -uV? -mV?
>>
>> If thi sis adjustment in ratio, then bp is correct. Some sort of
>> explanation in commit msg would be nice, but I don't want to stall the
>> patchset for that.
>>
>> Assuming this is indeed ratio without actual SI units:
>>
>> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>
> 
> Thanks for the RB Krzysztof,
> 
>   Can I update the following as commit text and retain your RB when 
> sending v3:
> 
> "Add squelch detect parameter update for synopsys eusb2 repeater. The
> values (indicated in basis-points) depict a percentage change with
> respect to the nominal value."
> 

Hi Krzysztof,

  Can you help let me know if the above commit message can be added with 
retaining your RB tag.

Regards,
Krishna,

