Return-Path: <devicetree+bounces-172259-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BA9AA4448
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 09:46:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C294F7B595D
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 07:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 447381EDA0E;
	Wed, 30 Apr 2025 07:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EPnBdTbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EBA6204583
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:46:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745999197; cv=none; b=orrJ5p+wjerz0+eA7LoMzGPgy0eOYoJ36RYiW9kpbuk60koM73tqkKQ+xqC9tHmxjyYh2uSZCyM2K3vLSieRiCiLBXuZNOagCjj6SJurAjVosLVXBRXJ+GgzMbQB0OsFI9TiUotgPfgxLXvtASbfdRn7lrmJf4txGdMrBBBbgos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745999197; c=relaxed/simple;
	bh=CTEjPujSZAqf3P+j1NI3hRXUfVHwxDengmLbAq8TEXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VLvLj+twh/ra1oy0N8hkhB+FfhlrhjeyCFoLrvBJ1ud1S9t6qgTK2qDdKbjEFQWVjwzt9KoccFBAl0qygO23WzNN8/i3uHd25bwbnHt4fIEsNX6EBSy29UZn0L2L3oVDh4E5LTlfptkOVxtx52Dj66nY/NA7U7K0W4gxCwMxFhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EPnBdTbt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TLagLL021490
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:46:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XcCLzzMlB7ZxM/ezJ4VGPTAmUkXjhMccCtENn84um/A=; b=EPnBdTbt9S8eSEoU
	1mt/l+svodQUGTAy7ITtLDuvP7/1rRy/i1nBHU5AhHgtkqN2kLfCKzPj00AQKv40
	ZM3FjwGOOsb9IrnzETKnLLrOIFjW+y12Uq2liUme9nl1Y8isI7r1Y6m2lJNnlh+I
	iKSLfShghwg4zSG1ks6oeP/mgH9GyG4tLSRsmTJyvmApfWksQS/urUk6gIqQIwUE
	IUbABca6OocyBGPh0AEesl5vwm4lfTpcQ5nnId42e+YmrNt6n9WXRf+mB/AQeV5V
	BcqRTQvcw3Y3njk7Dr6VbbY4V4He0nP7JNQpVIlUOtY65yw2x99pgWivxbZ8LzID
	26NLjw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u718gm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 07:46:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47aeab7b918so14541261cf.0
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 00:46:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745999188; x=1746603988;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XcCLzzMlB7ZxM/ezJ4VGPTAmUkXjhMccCtENn84um/A=;
        b=nLyvb3hrJxKuQGOoRdWVXH0SDg8NMZdnEPGeDGCKpSUrt99++aMzJGpsnqMaK5VTEl
         7ZYnit7PDUQsTGmo/z4KP1Y3XuMbSCwjz29fXCU0g/I6FlZd2OmRwwTs3mf73q0M/Miv
         +PEabTM3fSuBfE3Duza8g2RN8VDtoNFUkycQzbRuYpW+EFCGjLMeCJ7CZvye9fQsSaWf
         9r0YbZfDQS6qSyn9g4RrKqzg37pC0LoEZXjNyVBRRAXsCccPZmDh5YWzYWLOe9uvrRtf
         N3SvdD3hPZXGU9IS6Ab/orAopzG9yW+Wn/D2z+jYsh1Df7YBs8x/CUuF/s1W2LGw0O1a
         MU6g==
X-Forwarded-Encrypted: i=1; AJvYcCUWzeoCsvPfWpWHlSxs1znH1UJTphhVDI41Itls8roQV3OU5/3UPNUpgZtHSr1U8duBnIkMqy8X5nN4@vger.kernel.org
X-Gm-Message-State: AOJu0YzlAMkF0IdiJ0AYVDkjMaoxnukiUzZim4eN4UG5wSnCYsOvpkD6
	2tQqyCBfwtDpSkl/1qiJsvEZO4f3w/iF0aO/q4Ugc8ENgO6CMDSz4qmQMsnF6599LdbNT+w5juw
	gUOy6Jmp0i2pa96KV5V8J2+Kr33/YSQjWQn57sTiev5m/Qf587XJ9zHeLB7KU
X-Gm-Gg: ASbGncutEY+qiCtdnh4tbiPoBivEGDgN/GJtORTVsThtbuzMeK9sj5kvZ3yZjPZs1IP
	FISduNYJddGhV2EN6daC+LqKCbp9YP4dekBHNsruO7dPLRi3QNKeL4is1YcUwIGzyT+OLHhQCoo
	Pa414q87eoG16kZcKrStghKdOpBJPXqW6KfmpOH9SOTQrg+jHXHOOsILKOjP4HjzIXn310PAswQ
	Vs0GDGzD6thRSo7U85ZMS+qlymGQu/lgmpedyrL9Tgzx0CWtYgjT0U763492pGFiXzfak/wgTKK
	/a0ewim1oiH1Sf9eB5/SJZAu4rQnLx2iYJeQk+w2MTreMu26NM26Dx5YEQtahsxuSNo=
X-Received: by 2002:ac8:7e89:0:b0:474:e213:7480 with SMTP id d75a77b69052e-489e64ceed0mr9350721cf.15.1745999188031;
        Wed, 30 Apr 2025 00:46:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmeOMwpptckVk+jetsDOiR+1e4jS5dFJwxeM7DhbyeRAzyOqqNSOpz4xjt7gtRJg3L8eOXmQ==
X-Received: by 2002:ac8:7e89:0:b0:474:e213:7480 with SMTP id d75a77b69052e-489e64ceed0mr9350621cf.15.1745999187615;
        Wed, 30 Apr 2025 00:46:27 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8ca6sm881270266b.118.2025.04.30.00.46.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 00:46:27 -0700 (PDT)
Message-ID: <59e3e34d-83b6-4f83-be4c-eeaaba9a353e@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 09:46:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC/WIP 1/4] arm64: dts: qcom: sm8750: Add display (MDSS)
 with Display CC
To: Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Jessica Zhang <jesszhan@quicinc.com>,
        Abhinav Kumar
 <abhinavk@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250424-sm8750-display-dts-v1-0-6fb22ca95f38@linaro.org>
 <20250424-sm8750-display-dts-v1-1-6fb22ca95f38@linaro.org>
 <81205948-ae43-44ee-aa07-e490ea3bba23@oss.qualcomm.com>
 <97ae84c6-0807-4b19-a474-ba76cc049da9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <97ae84c6-0807-4b19-a474-ba76cc049da9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA1MyBTYWx0ZWRfX4USEb2W7hqjm 1nI3TruTQkMdqbmklcHAmsfbojb7BHtggWNCRtTdeMSC/pgUWjIe3az1FKJS1qtehMA/5f1qZZG MY14+E5Ww4dfS9qBTOhDKz3Z5psExEYBtKC5px8Q4KX7xa/2XxCmJ3+8sspP/nJO6QSdl4c1H5P
 4ndA709AxHav0oj1zDkdA4VT5tjo1EaYNua/aOgr6dEHikOlyKfOZP40GtY1RJ8C4Yv/W/M1ERC I429SjSNCESFRI+qmssBZtSBeRIuIn74BUyEFWYbGlHqH87CvqbEt5fOK6dZYvw1SXLgr39f0O7 YnEpo7dMS7RdGSnRFZm0KlC4uPf8rQJ2X1ToS2wkLA7XK81Rzmws/0GlmNo5VMgJrGosCOne5Vd
 QdATOnykGqlIGSgTJmsfWuYSOpwyiG140awEXoxmXEf+AuqgoZq+7zSWPzpcZUeUuZJswjg2
X-Proofpoint-GUID: SwdPzx31Z2P1BFPqffkjHYOndkHPU2C-
X-Proofpoint-ORIG-GUID: SwdPzx31Z2P1BFPqffkjHYOndkHPU2C-
X-Authority-Analysis: v=2.4 cv=b6Wy4sGx c=1 sm=1 tr=0 ts=6811d555 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=bmsyZSe9DYnGDotP4YEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_02,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 mlxlogscore=999 impostorscore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0 mlxscore=0
 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300053

On 4/30/25 1:07 AM, Abhinav Kumar wrote:
> 
> 
> On 4/28/2025 2:31 PM, Konrad Dybcio wrote:
>> On 4/24/25 3:04 PM, Krzysztof Kozlowski wrote:
>>> Add device nodes for entire display: MDSS, DPU, DSI, DSI PHYs,
>>> DisplayPort and Display Clock Controller.
>>>
>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>
>>> ---
>>
>> [...]
>>
>>> +                mdp_opp_table: opp-table {
>>> +                    compatible = "operating-points-v2";
>>> +
>>
>> The computer tells me there's also a 156 MHz rate @ SVS_D1
>>
>> Maybe Abhinav could chime in whether we should add it or not
>>
> 
> Yes I also see a 156Mhz for LOW_SVS_D1 but we had a similar entry even for sm8650 and did not publish it in the dt.
> 
> It was present till sm8450.dtsi but dropped in sm8550/sm8650 even though LOW_SVS_D1 is present even on those.
> 
> I think the reason could be that the displays being used on the reference boards will need a pixel clock of atleast >= low_svs and the MDP clock usually depends on the value of the DSI pixel clock (which has a fixed relationship to the byte clock) to maintain the data rate. So as a result perhaps even if we add it, for most displays this level will be unused.
> 
> If we end up using displays which are so small that the pixel clock requirement will be even lower than low_svs, we can add those.
> 
> OR as an alternative, we can leave this patch as it is and add the low_svs_d1 for all chipsets which support it together in another series that way it will have the full context of why we are adding it otherwise it will look odd again of why sm8550/sm8650 was left out but added in sm8750.

I would assume that with VRR even fancy panels at low refresh rate (in
the 1-5 Hz range) may make use of this, so I would be happy to go with
option 2

> 
>> [...]
>>
>>> +                mdss_dsi_opp_table: opp-table {
>>> +                    compatible = "operating-points-v2";
>>> +
>>
>> Similarly there's a 140.63 MHz rate at SVS_D1, but it seems odd
>> with the decimals
> 
> For this one, yes its true that LOW_SVS_D1 is 140.63Mhz for sm8750 but this voltage corner was somehow never used for DSI byte clock again I am thinking this is because for the display resolutions we use, we will always be >= low_svs so the low_svs_d1 will never hit even if we add it.

Alright

Konrad

