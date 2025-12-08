Return-Path: <devicetree+bounces-245183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 95573CAD343
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 13:54:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 05C9B300551C
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 12:54:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE40C313E26;
	Mon,  8 Dec 2025 12:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BN/V7dPq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hjm6pa9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF932DC337
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 12:54:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765198473; cv=none; b=aUbExZyBzFcdi05dFSKRHjCfL+BuY9dYyb+jRfmQT7HLJvCvFJpJ7Y4cioyKwuymDNkAcBg2mMhDRhqpMtjr2io6dqxInlCzF17mjQ746pn1ey+tJdW8oAglvV6N34r3otack3AMRdMepkCZz83Vfz7w/d9bdHPoxRqsoyJPXw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765198473; c=relaxed/simple;
	bh=/Sp5/ezr/jzNevVrEIBiDL1TzMgf9rJ4FcX2YNgjUXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kicnKO7PVudx6BfWfKlu+Is93t0r1/Wg2EmWhIjXOjH0nY2cp899m+fEv/FN8lCa5jxgCgiM7VfmOYzGwuEwiquvqkdHFI9X3T6nU1Kz1dOX8Jkb7HF527AnJr6hYUWYzg7cQWiRcoBPQG3r/wzIol8r30r3NCj7XpOAWMyOQ6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BN/V7dPq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hjm6pa9g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B8BQt6v827753
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 12:54:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=; b=BN/V7dPqmQC9jA2l
	IRTU196kIEPTxOZc9KjsiqFibOPwrZAx8CNrO4ucRh8CDCZNPrTcrStK9gP6MQWQ
	q/LUj384d5sSVNXeGIp4AJpfvryvRpF6ObGHzcjcZLGCU5rjeNbi34aOWOaSXrkB
	ChTu7EmLKz6Y9DrBWBeQQisFoE99fCJsmPX8yrdYTe86FSgWJKZfEm/4Oe1u6Lvh
	B/shU+iKu3faxk97qwkg5En1XJeYI/l0wTmYFf+4q9eQpIzZLldggwlpwDqTx4Ol
	RHOQAc/YBkW8B2NYs1AA/DtondkrwadudTB+eIJjfThOqsOqesWNW7dnLIno46st
	YWjCYg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4awwt887p5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 12:54:31 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-8804372387fso13391036d6.0
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 04:54:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765198470; x=1765803270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=;
        b=Hjm6pa9gtd62yrxEQiBzRlitMqilJY5wb06EbGp8w1WuyHaYO3eFgK5hKqCd6kMsx+
         8PhNp3laXErcQRbl6znkODe8tRIFjMXxNfB5tbapGEmGiA5OcFTba33PecGLpI4wBgNA
         ggqDMDyMYp8aNpkvFIR1t4YbQcQGLIm/jT7lUk8h9Mrg2L2f4TuYBto+w9voReGBWqG5
         AN+XFh6hebi25xW+paEonQiL794fLtR+5cpYpM1oHrdrrKvRNJFgzUj/Ed+12nBqCy8F
         bP8tBEMdm+Hn06BFcTt2Surx33feU6FtTo86DJkvreq2lAiPOBaT7SCWkJh3HTSEYYV/
         Yvww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765198470; x=1765803270;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DynSpd4KFfYO1sk2F294Gqbq8wFKDDPMSoUlpXNI9s0=;
        b=YFuMSZcakvu+pErEvZZJ1fqo/3c+zzTLZZID6ofDY0HbuiKMZD6otqyi9DYRyEQpa6
         JtzPD7iNjYm3BqZtXyF8pOax0i8YlJfR1DjJg1nlKwyuBF04Cg8dQAEIWwRESW/PQpLp
         t25pG+/0zyvOfgfxAIDl0iJeMlXk12b+3q9puiD4f5htH5jnkBT6saUSGbff+iXPsqJq
         GfEmwE3V+5JwiY6JmPeBkqRRPf8eDSaaKmzCvVaAI7qGSL0uk28mvZITpxoOnhbTDwhM
         LCt9B2nLGYdsFmtebK4VTtkAlqG4KVr+MBuuYcoURDGOFDez4JTksu8DYpqcpjPMGpCN
         i95w==
X-Forwarded-Encrypted: i=1; AJvYcCV1KCRgp3/ER6iYD2m8hrJB3XbwIqFu3zcxcGz4wOl+O29K+iCjyNgdm7X4pw0JHL36WVt7m43jg3mS@vger.kernel.org
X-Gm-Message-State: AOJu0YwqW+/NpLWf8OCliVNcf01KzqFIdGXj8hJVOcH8Ldi5c8lY1oUq
	5ewyISia0PgwOvAqy5ZZFFCUJNDj1V+nlHCngDBcyX62MR0pXsh59GeYztQDksVnQ30f1ChjP8h
	CllY24cthSaBH1yTOd3qqNpRRPIo/0d0KIPKGWfjxTsrgtkepQq9CAaLN69Z6yo1U
X-Gm-Gg: ASbGncszvJOW8x3t9kP5l6VZkz6Pk3pimWpF9SmIzLDfb3ePTUDEs1QazYmJkBj2QuT
	sGr+uleBl2AmaV5Hbgy1/A/6hu3Lf76h0m5v50aZg/Vf8viU5jtsKtyFCPRWWFG+o0RO9kcZNLW
	hdxzk4ANC1epUh8XXQjlBqqMpKFbNlrJ+STJ/TStykD9PRgMxfdQnAzp377jGOyz+pPRG13bPxg
	ZkkABgoq4GPL8pjVbsRemPG9D9Sq2+mQGgAM8k1FzbYfyew8VJDIqwpNpK67M8W3Ca7/QhcJQZK
	XJUm00/NqlQbixZsEpapVWs8IuXfwhbyc3+ZR/SMKutzfeJ5HckioJyEek6yRYg7KyTXU9orTjG
	+xuRFFEJgly7Udp6e+9u1ZKgAlpxgR+E9NaCjUbq2P/IpyEFBJpmhKBGi8jNQSL673w==
X-Received: by 2002:a05:622a:1105:b0:4f0:2b7e:c5c3 with SMTP id d75a77b69052e-4f03fc876a7mr89445661cf.0.1765198470547;
        Mon, 08 Dec 2025 04:54:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG0gW5HREx87/vjahlRMbtYsg+iw5KQvZGmCzt+n533CjTg5/76ejBvrrzJ+IipzoGePsVXmA==
X-Received: by 2002:a05:622a:1105:b0:4f0:2b7e:c5c3 with SMTP id d75a77b69052e-4f03fc876a7mr89445281cf.0.1765198470018;
        Mon, 08 Dec 2025 04:54:30 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-647b2edf72asm10759405a12.11.2025.12.08.04.54.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 Dec 2025 04:54:29 -0800 (PST)
Message-ID: <65efffcc-195d-41c9-953c-e3f6c0b0ed5d@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 13:54:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] phy: qualcomm: phy-qcom-eusb2-repeater: Add
 squelch detect param update
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Luca Weiss
 <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Pengyu Luo <mitltlatltl@gmail.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251204044644.3072086-1-krishna.kurapati@oss.qualcomm.com>
 <20251204044644.3072086-3-krishna.kurapati@oss.qualcomm.com>
 <755b7579-757f-4ced-b3c4-39c20e6b25a7@oss.qualcomm.com>
 <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b772d61e-ba75-4f45-946d-211a0bb755d0@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=aKP9aL9m c=1 sm=1 tr=0 ts=6936ca87 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=805bfMFN-6O86olI7_EA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: pWbEYWFPXn4PSmxt0QNOPwhUKjg_sGbY
X-Proofpoint-GUID: pWbEYWFPXn4PSmxt0QNOPwhUKjg_sGbY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDEwOSBTYWx0ZWRfX9OdS2LoMXOge
 f0gfGHarUwfp30agY3E8tvh7P4fO5iXyLKbZArNpBPnEtAt5wOOaGuJsMBENaWUnlvwMmOfYqsD
 r3cNcfhqRWa9yJYht+GSwnpS6cguza7rMaMovzZW5O4rTLycM10cWBhy1F2h2hIdE5L5vt4QCO+
 HGFyy1r3vKzspFA8tOc1tMYJaoF0wY2G6g/Zv7uOqyQzf+VNz5VadAULh4tKSX1SsVh6ezGK0mM
 5nBg6vP5Wstb6qBwRF+XpkDdrKiI9lwOC04K3+FtTFnx3jUsLKHfEH1yY0PEMvXr3aX5KJC4tBl
 4tyKHzflg0OSnlrbp3fBj/giBqJbSavrwkdmiQbSwraaJcrK4gobEB5LaNSo71AF5ChgFwcLFeV
 Ky1d5kZujHjVW2DO1Tb34qZWIraGLA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512080109

On 12/6/25 5:12 PM, Krishna Kurapati wrote:
> 
> 
> On 12/5/2025 7:01 PM, Konrad Dybcio wrote:
>> On 12/4/25 5:46 AM, Krishna Kurapati wrote:
>>> Add support for overriding Squelch Detect parameter.
>>>
>>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>>> ---
>>>   .../phy/qualcomm/phy-qcom-eusb2-repeater.c    | 22 +++++++++++++++++++
>>>   1 file changed, 22 insertions(+)
>>>
>>> diff --git a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> index 651a12b59bc8..a75b37d4e16d 100644
>>> --- a/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> +++ b/drivers/phy/qualcomm/phy-qcom-eusb2-repeater.c
>>> @@ -37,6 +37,17 @@
>>>   #define EUSB2_TUNE_EUSB_EQU        0x5A
>>>   #define EUSB2_TUNE_EUSB_HS_COMP_CUR    0x5B
>>>   +static const int squelch_detector[] = {
>>> +    [0] = -6000,
>>> +    [1] = -5000,
>>> +    [2] = -4000,
>>> +    [3] = -3000,
>>> +    [4] = -2000,
>>> +    [5] = -1000,
>>> +    [6] = 0,
>>> +    [7] = 1000,
>>> +};
>>
>> I forgot to ask, do these values apply to all of the supported repeaters?
>>
> 
> I checked smb2360/pmih010x_eusb2_repeater and pm8550b repeaters (SM8{5/6/7}50/ Kaanapali/ Hamoa). For all of them, the above table is same.

Thanks

Konrad

