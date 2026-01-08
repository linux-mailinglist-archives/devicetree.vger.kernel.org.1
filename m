Return-Path: <devicetree+bounces-252663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C887D02487
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 12:04:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7C2AD302BA93
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 10:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F5B3502A3;
	Thu,  8 Jan 2026 08:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y/Bb5zSa";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Mrjhl7Ez"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960D3332918
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 08:54:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767862490; cv=none; b=nT+K1+Tu7vJ+nClyez0ookXrCZ4WhB6+779F251cGRfnG1xItrwc8uUzMf9MDzktadQ2EKfhJoKTt4Mu/5auWfIHeaLBeUvZtwYcpAGOVjQ3IDlSMOrb1clWZlcmtsMDH3RTqeLx3Uzj9dxODs6yyFN7np4LHHCg+m+7JtKEVEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767862490; c=relaxed/simple;
	bh=mVSMXFK7v+Ah1A7LBJUtANrEGYnXVMe+OP0c2TZf/J0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K07lqkfSRbb5hRy0km7TcQKntesidnTsr7e58hqfv4jaYSfH4N8wgrFLT3ulVPPlnlImu+RsQ59ROW1vsvUaQQ5NI2oGSIlN2EQH9pZ5WEnhtbARvcyubIFDWELqoN9QuGaW03i3VaR5c9ZO6W0nLpmMk6i6vNeoKpgnvo+w/wc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y/Bb5zSa; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Mrjhl7Ez; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6084bIGg2593363
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 08:54:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yoe34/R7xZJT8mu6kS6uEUp3vVo/O98wM0lwlPWZ0Hw=; b=Y/Bb5zSaYvFdWnf9
	awnXNWIyId5BHWwCbCccY6ArNvfk2q1nmPmyJx+RNUQGOEQeXZavfE+cWYce/IC9
	omeP7S6yRGQ1dMdbZaMuq8vRsdWQZ8ZJIFXQxaJ47wdOwBWe72+/C0yZKN3ji/ch
	t14YsuAz3ofZ4U7u0kA4lrAUR/inDAV5xxx6A8HMtE2EcAXcgXA+tJ5eEfOM0dAs
	/bnveI08c+Uf1hHIHozvyzhjSNxXwwrHgK0BWe4wXFHc3J2vxhzaK1crRB5eWEo3
	aKmJJKmtKcXoFCvuMGgzBze6OXT48ibkQ5e1IcERJXEcj+lP9riFt7D0/8ukMNIi
	IUNmzA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn2940um-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 08:54:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f357ab5757so9801031cf.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 00:54:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767862477; x=1768467277; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yoe34/R7xZJT8mu6kS6uEUp3vVo/O98wM0lwlPWZ0Hw=;
        b=Mrjhl7EzbXy3I2SqTBflfUT0ptztZTZwu91OLxSv4JFJVVdTsVIQ9CAGAwYHcUvCRy
         phPrnXNdq2QkeM7+e2vZcxeV9jWizyh/+ziQc//MZ7PElu17u0XrszgRTRYOviPzqHHR
         7N5tjbtdQzmsw+luUhku49wsDmBMYMuBb4JhtkM1fImf02qwEca0GK/rQE1gC1NVeEiB
         t7PPvAParvTFF8SSBwIevxIgsDC3hhlxscwZa9j8uD0Q6sOs1VK4v3a8agLohIdjHqi4
         GicoIwJtUMsLBQ7ST4eM80zGP6s8V8i2PFa5gqOUz10HS3fIy8UU+ykZTsPYqo1/LGal
         BfFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767862477; x=1768467277;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yoe34/R7xZJT8mu6kS6uEUp3vVo/O98wM0lwlPWZ0Hw=;
        b=w5CwCFtA/6O5ee9lv3SN9ptIkNfJ5sgf+vsONbRXd4B23wBbLQatJgMnWEOE8T+lG4
         UPItEmHvywKguImc6PZDa2Gox3WOF/wsxWT6pTRkEKbd172mR/pgNmzxqjsc53a0JjTW
         Sl03WbBEfDhCX4qh0PEOVVQz0WffcO7Uyc3Oggjq7YlUhI4A0cLS0czK02wjnaqHQeTP
         SJruXBI2kcSsLS7HbFHnUObUtijDp75t9LI3HdrSmxxxiULb4YSgNu7AYp20RHuccxRt
         E2DQfHAElMK0xKsxt7w2NHdPvBmuN5j/wWZik4BtR8SSfP+tyiVUwdnI3S/d0CKD+umQ
         PlnA==
X-Forwarded-Encrypted: i=1; AJvYcCXJ7z2aHc37p7d0Wn0cefaK+yjYKi6YoKceNMYIMAqHc6sho3ViVb2/VqeLFMniwZ2rWTLy8oqhrds/@vger.kernel.org
X-Gm-Message-State: AOJu0Ywryn0/Hkyc4n0jIkt4O8dHyO7Ij5fvjgTCOyDtnfJzZAjXjupr
	ckCoe631g25EjmTQOwfttW/Hz/rhOGka/5sY4u6/IRLuTykWFBzmqCwGM5U/yngLunvtQrtXpKF
	6crn4nOEp1RMxNL1A9BY/LtkAWq/444sYjsAQu1OiHAGb/H7PcmkumPIiBVt76t+P
X-Gm-Gg: AY/fxX6Peqq1r/IX9Re4hlbP/iRCJRTxzCRFsbk8+FpILSP3Qp3AWqzaZ5I/dPd0H/C
	EjHrPCo1ASYA2SyI0GTsRyGI056h3T/Lpi+MiW6StIUd/CvdpjS1Sl7cqD6IOIS3gUOo08aoegQ
	21FHMqF3WDKmv+4zq7a5dtFAIhfqDiINgHYQekZfgZ1NAWuuZrBRR0XzO3j0ABm23bQ+0ASQGM/
	3z1+gH1m0fL+kSiinRSCCH8P35Ji0qTyEwIf6lJgHx5gMxCNAPbFK/v1cR0qV7wo+k6TxPNSz5l
	ozbD38DVHCQgrx9WQe7so7qDVPCj5coNVKukUPeYvi3lJ22IadJMaBqtwDffelAb+vc79a3vOgR
	7lgyNbqbsTOUbC6gIYR6+E/VLz7cVxfXOR0iOWohbg4vfPHFi32Z41bHub/E4RZyHYQ0=
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr54667721cf.4.1767862477029;
        Thu, 08 Jan 2026 00:54:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE9Zu4B4c1u8CU9ENDyOwL5KHQpxYNvhOydpv0jjl8YDszapOdfdCaPnmBYxJ0lXpbM7zjfFQ==
X-Received: by 2002:a05:622a:408:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ffb487595amr54667601cf.4.1767862476596;
        Thu, 08 Jan 2026 00:54:36 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507bf6d5absm6893952a12.33.2026.01.08.00.54.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 00:54:36 -0800 (PST)
Message-ID: <45a2b510-c825-4191-975a-1389f4f18903@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 09:54:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/7] dt-bindings: backlight: qcom-wled: Document ovp
 values for PMI8994
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260108-pmi8950-wled-v2-0-8687f23147d7@mainlining.org>
 <20260108-pmi8950-wled-v2-1-8687f23147d7@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260108-pmi8950-wled-v2-1-8687f23147d7@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: okkuWTLLE-YlSpdVEUp5y29K3d233pQ6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA1OSBTYWx0ZWRfX3fO86DR+VHeY
 YMd6x/QA3BNVeLUzA1R284BtKcqPYL9jmI9GUeD4oVP4i+Qzi+W3h0PDt9L65OS+SOScoOu6iog
 p1zW5U+ScI6EeSRy40R3u21nYNRy89R64tBAvED1MSTZUQWhps+RGGqzljO3Le1sBdnsaR97Qat
 eCFwoAQeKkYKiRXsqA1vpEO3QrVB3jaN2TD+acAZ/8wGyEYKtEqmjp8W13vSqUrhWiNPp6UZwms
 zvRffXD8O5AeWHcNfzGzG+Xv2R5OA2sUndImfDtLzvVix9Lmz66kDJYuMniWVdVs5hJY2/HW5+m
 q1pFwsSz8owbRXU5gB4M5Gu1MCYwVB9hXMHmAixp3fAKDzrG9XVVd98Zmm520YcgG+3+9P8B9Ca
 JkmUKZ5lRGOF4B/Ql6/abMagUL9aUeeL7NqOzJb5WmRctpN5DPwlHualJQOhDIrd+mi0zWK6ME0
 dR9jLoIUM/nyVT653eg==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695f70ce cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=OuZLqq7tAAAA:8
 a=RLX663m6bzWGV7rLlMIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: okkuWTLLE-YlSpdVEUp5y29K3d233pQ6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080059

On 1/8/26 4:43 AM, Barnabás Czémán wrote:
> Document ovp values supported by wled found in PMI8994.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

I reviewed a version of this that said PMI8950, which is very much
not the same..

Let me try and get some more docs to confirm or deny what you're
saying..

Konrad

> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  .../bindings/leds/backlight/qcom-wled.yaml         | 22 ++++++++++++++++++++--
>  1 file changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> index a8490781011d..19166186a1ff 100644
> --- a/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> +++ b/Documentation/devicetree/bindings/leds/backlight/qcom-wled.yaml
> @@ -98,8 +98,8 @@ properties:
>      description: |
>        Over-voltage protection limit. This property is for WLED4 only.
>      $ref: /schemas/types.yaml#/definitions/uint32
> -    enum: [ 18100, 19600, 29600, 31100 ]
> -    default: 29600
> +    minimum: 17800
> +    maximum: 31100
>  
>    qcom,num-strings:
>      description: |
> @@ -239,6 +239,24 @@ allOf:
>            minimum: 0
>            maximum: 4095
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,pmi8994-wled
> +
> +    then:
> +      properties:
> +        qcom,ovp-millivolt:
> +          enum: [ 17800, 19400, 29500, 31000 ]
> +          default: 29500
> +
> +    else:
> +      properties:
> +        qcom,ovp-millivolt:
> +          enum: [ 18100, 19600, 29600, 31100 ]
> +          default: 29600
> +
>  required:
>    - compatible
>    - reg
> 

