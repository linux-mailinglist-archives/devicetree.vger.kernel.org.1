Return-Path: <devicetree+bounces-180755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4D7AC4C8C
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 12:59:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F12693A5FC1
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 10:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1826F2571DD;
	Tue, 27 May 2025 10:59:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTRsl6f+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D4DA2512EB
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:59:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748343568; cv=none; b=sTYZe4vqbEsH5rjgtAnzuJ8+cfuKl7OtZpDHN0adOjk2pJKHSiwEhtI2HEssXL4J+eT7mc7jaXkSfJ9TQmzAsSQoaZp0t/Rc6s8J3NkCxgsqgqPqg7NXHpBQt5ZTiqK+/v03gwhyhC3H4wIh7Ar75cKTl5rIkL1qVTbnfFcoQjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748343568; c=relaxed/simple;
	bh=nAhhNH6vu5VSXZoeXbMVn7GYF7eDAXmR/I2kCc4UShE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=poyEAInqXWEsyAfeEdwSLx/nJKXxMkGG7iCLO8ffrG61k9S7QvYWbfOt020UFXtiQB+CeqNnJurv6LMVCqKTtwZQ/xC4Lq8WgVFzDre8LXTFqzISnGG3q0L0vfFg11HGtiDlw8U0ZG9CqGojDWIq+0zS0SLaEnFE2gVF/pcvfN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTRsl6f+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RAQJKU016904
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:59:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dVRH8mgws61DCnh4JmBYd/UFPtwOI3PX+7lhuMe5vMw=; b=RTRsl6f+rxZwqFg2
	crtUAHbU2YP3TKS1eFoMYKeeqPfoel5yumU3H/6lRRMbAFGPBH8jZDB6BK3bTnGL
	6gjWDHUip6UHUgS761v5RtuACJLjmJxtMm5czUfz04/bY0uPyWcbPYsjc6Hd/11s
	AJ/7DgWU2Z6JevyKjGl8oTiFUFrzmAZHF78UBh9BDA+CdaEyVOvQNQxXIIIjFkhw
	4fR8heZWPboq5piWRgmLUv3Ps54u0yXI5Y1QuEpsk/2Xyc7cPmM/NcZZM3nI/fOJ
	4R/SPrRkyicqsAuCVSIFCKCxMxoGZLew2ebZ1pIYyLUr2ClEMsa93HUI0hsu2iuj
	YsPcTw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46vmgcu20m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 10:59:25 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6fa9cc8eb70so1279136d6.0
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 03:59:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748343564; x=1748948364;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dVRH8mgws61DCnh4JmBYd/UFPtwOI3PX+7lhuMe5vMw=;
        b=mPUwAt75CW1YD9CmqC8yZOo+80Oti5gnggLYdPrX3wmwHGA0aCfvfxrVZqnie33/NN
         7wymNOrZLBjQkhpc5W2s+YGY7K12EvLN+8irpDkQyRl+mXM4T57ihFEu8RQpI/yass/i
         jaQ/tXBfGNv82fBPfITDJhJU5VKSpvz6dZOxvTQamdk/x6GhbFb+aph3hqJB2zbS1w5V
         tjIvGDJEpmxSI15kI2sI0sv/spkYlSfEGDYDUNd1cK6c7IesbPnhA+AbMUAuWOV1Renz
         43HMe+OIVOY0B4YAyCVQzbQM58C6JWZeM8rg92lmDrU+wrwu82TUGQM0RYK3Ji94Vs+z
         S49Q==
X-Forwarded-Encrypted: i=1; AJvYcCV8cBBaaqTEwjeXdGHUWUkQKgNgVSopSTHIGtqUTYtCrh+izUoxFllQXDWxlmogsZqw0IIMN2TYy4BP@vger.kernel.org
X-Gm-Message-State: AOJu0YxsapiSjLwfd6pUFpdc9ToHINO/tWwRwYDow4DxD3IHQYKlP1iN
	k3wNxp5lHD9GCHXZQx1CiJgzdJn5pV6/gs+1TyQYeGe5BBM39Q2bNZHtDqYe1ludlU9QWGM1HIr
	UurnT8I66BfApv01yFoPQN5s2t99OC0x55EyU67EpRZYk3qxLmdyDwLIt7BhPAEFJ
X-Gm-Gg: ASbGncvbFQnURs/9tMpS1MLezvrxRZoC6eK736YHxKZjXpBoPAR3RHVRJC4ZWRKgZEC
	ihppT8i7LvKYC95C1ghmN7+j+laJhwr1jWhcKWIiTMm6XIeQ2mLQobiO4fLd2velxA76xZLa9qe
	MAW7NeBytoLNbGxkeJTaR0sjUXb0uJgK9kddli677RZ3KJzPYTCAuGUu1Sfpsf8m54Ue9lR4yPi
	4hJbOK5o6ymaoa3+Z5uylJv2ziQkUPKWf7K9JdNyRauWWAKduMZD3mNl4QOn6yXWzlaRXHyQ9pS
	TtV0sFzXszrdDRpTwA3/ho39MRp0M6ZUtm9LXdgqRT6wChp3ASOsygJ4NlypITLaBA==
X-Received: by 2002:a05:622a:148a:b0:494:b829:665 with SMTP id d75a77b69052e-49f4703eb42mr68702141cf.9.1748343564546;
        Tue, 27 May 2025 03:59:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbqhUM+kngM9h8FOZPZbOSvqul+W4jdRKAgtAArw3nUiRXyCMh/+aUX7lcOuXcL6YHsU61/A==
X-Received: by 2002:a05:622a:148a:b0:494:b829:665 with SMTP id d75a77b69052e-49f4703eb42mr68702021cf.9.1748343564099;
        Tue, 27 May 2025 03:59:24 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d44205asm1845574266b.100.2025.05.27.03.59.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 03:59:23 -0700 (PDT)
Message-ID: <df414979-bdd2-41dc-b78b-b76395d5aa35@oss.qualcomm.com>
Date: Tue, 27 May 2025 12:59:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] dt-bindings: net: qca,ar803x: Add IPQ5018 Internal GE
 PHY support
To: Krzysztof Kozlowski <krzk@kernel.org>,
        George Moussalem <george.moussalem@outlook.com>,
        Andrew Lunn
 <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>,
        "David S. Miller"
 <davem@davemloft.net>,
        Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
        Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <20250525-ipq5018-ge-phy-v1-0-ddab8854e253@outlook.com>
 <20250525-ipq5018-ge-phy-v1-1-ddab8854e253@outlook.com>
 <aa3b2d08-f2aa-4349-9d22-905bbe12f673@kernel.org>
 <DS7PR19MB888328937A1954DF856C150B9D65A@DS7PR19MB8883.namprd19.prod.outlook.com>
 <9e00f85e-c000-40c8-b1b3-4ac085e5b9d1@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9e00f85e-c000-40c8-b1b3-4ac085e5b9d1@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 49sW3fPiUvGNhYuU0EIfGj1bukltBWyj
X-Proofpoint-GUID: 49sW3fPiUvGNhYuU0EIfGj1bukltBWyj
X-Authority-Analysis: v=2.4 cv=Ws4rMcfv c=1 sm=1 tr=0 ts=68359b0d cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=_VzbdjocUJMGqeFO5uwA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDA5MCBTYWx0ZWRfX6ebhNbOicFtT
 NB6tOHO5SnsWZhpXF1loID94x+W7EsFxbV1LFOsf4Gnj87UWKbTBIiAvKRg95D2dBFmM3bhvbYO
 xSTfZs4ADijzmSr/plJv3Wn5QH+fOwxqCIFS2MniRcCWZdrxnAQ04705qAgbkuh6iMmdaFnaB6A
 cV5kSwFrjF5DkP6mgYNxw09Mf15PwHES20Cw9lVPgxuqFfHkMHp7b9vOAM9gL7NVVeAOR65sWSF
 YuZBgA4CiaxgYw0nxxGz92QENnmg9lAwqvXCnBIJEu+tqTc2Hhp+UA9/4sGwFlm4TutNakmwOay
 URMLU9mxJvKt9RcY6vK6ODCI1zFOQayAHhJSriM66Agva+ynxtoMuv3jNUhklxUX21H1XmQ/FBj
 iB8RKoseDMCEOSaOi+Xuc7FwI7EaUBMRn5HedU50t1LD56TpeenMHuo9AG3q2DPKHWEWUjAv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_05,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 impostorscore=0 spamscore=0 adultscore=0
 phishscore=0 mlxlogscore=985 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505270090

On 5/26/25 2:55 PM, Krzysztof Kozlowski wrote:
> On 26/05/2025 08:43, George Moussalem wrote:
>>>> +  qca,dac:
>>>> +    description:
>>>> +      Values for MDAC and EDAC to adjust amplitude, bias current settings,
>>>> +      and error detection and correction algorithm. Only set in a PHY to PHY
>>>> +      link architecture to accommodate for short cable length.
>>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>>> +    items:
>>>> +      - items:
>>>> +          - description: value for MDAC. Expected 0x10, if set
>>>> +          - description: value for EDAC. Expected 0x10, if set
>>>
>>> If this is fixed to 0x10, then this is fully deducible from compatible.
>>> Drop entire property.
>>
>> as mentioned to Andrew, I can move the required values to the driver 
>> itself, but a property would still be required to indicate that this PHY 
>> is connected to an external PHY (ex. qca8337 switch). In that case, the 
>> values need to be set. Otherwise, not..
>>
>> Would qcom,phy-to-phy-dac (boolean) do?
> 
> Seems fine to me.

Can the driver instead check for a phy reference?

Konrad

