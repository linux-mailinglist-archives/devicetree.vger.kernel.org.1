Return-Path: <devicetree+bounces-172386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2A9AA49A3
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 13:17:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BFCF7A482E
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 11:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D03C246795;
	Wed, 30 Apr 2025 11:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MdEesT+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF62221B9E0
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:17:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746011835; cv=none; b=VtF0tYiDAGPoYvpjGAKFneiWoIDXk0ITwBj6KV+DMz5RvfTftXfsuP57P1Vdo3sEYG0ulKCQl2nzqjhcMzp2MTGUWVb0rc/9las4/GtPUxBTXuxmms3PZVdeJf51WrBLzNFZxGJiNGiXxNdOD9/zZ+EBFReXVw4qvVcv7NpVvJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746011835; c=relaxed/simple;
	bh=2tfN7xrBBFWbaWiIjGyIFoCUMEcAvo34WN5Q+ckQ5/4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L2UUuKH7cXyWslR4HJUzr669QyPskx2A1cs2KV0dQjDQKmEGz3LHwTv0irMXEQJaunl3HUfNutnvtCoCxTo7hQYiQKpzq4lyoqbkrNTxit9bF7IHDTOuEicDExvB2KbpfU9pVmUUTLFm5RsdBwdgVfAeqxCgV5iO2fryRbPrWnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MdEesT+n; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53U94gDg020963
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:17:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cmjRQoG6t9rBHBhWEPTfA2RNSRtJM0kj2uAxPB0eOY8=; b=MdEesT+nbyQbXcOl
	u9mCCa8KBjsWZVT5o9zaiHFExDxSBDE8kQn4hroLt40hxkC27beT/sIf+EglTN9S
	vQ1Do3uKBS3M2Z56BjzP3ZTJJglKZUXS0kPyCIZftPBKvW7FgOh6JD/XSOkavcYQ
	SilEs8zBOJyQU+b8H/Q9WHLgmKOuUFP0xzGkQb4OiVi9AdQcH4h9U70hk1w1Q43W
	UivH0nH7xCTa8s0FbnDiYeI7lKeQVNS4B/5q/PA2E0eWcY/rDpV4o3MQpNkFknJd
	Z3IAfx8nEaFUw/JorKWRX0+YjjCnQotAl0S/dxLySxNATUhvV1DpmJAyElmMipKr
	W+BRfQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46b6u1sxbr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:17:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47983a580dbso14995511cf.3
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 04:17:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746011830; x=1746616630;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cmjRQoG6t9rBHBhWEPTfA2RNSRtJM0kj2uAxPB0eOY8=;
        b=aRmIZ/zCyjQiMKZb+FCA1JzyC4bTYeXETmuTNznn/IAMwdjdZp16Zv+Op3SFNomri5
         BdyvwogWLXYNDX3V33/GvhbWJBM1Vzf74T0OAsXBYr4/EUQ/PpQZxmC3076VR4Nuvlnw
         N1O3Y1yvVCskbfPBNDhlCxML+LcQTWetnD96PwrZ4WWEQZuc0pAOMSd6zQcMso8WqC7y
         s4UyrFFyLCZqaE+wc4HTB9EspCuedVn4q4DWGxQm0wTRLATFA4TqOzuwa8V4jrP7B3+G
         p4CY7OKFQ8MSXstxteh9UnFFAeSONo0k+sTK4v/4TXdxQBvsqW1aEnd1iosTLCJZut9J
         iAIw==
X-Forwarded-Encrypted: i=1; AJvYcCXlTmYN4MGaT2+eJQC0G+yn8EA8XHn7A3AOtzZEjKkTSB+twqsMfMQVRhZDaWY44Bd43BzQRq04cUFo@vger.kernel.org
X-Gm-Message-State: AOJu0YwIYWc6+yZ3qhmKhWhiCPlVzb/BvWjCNyMrY0kUrMmrng4PtrGv
	DFBGRZ4DW/zHM4uWlNKqrcKVabDjCsoY5dBp6a2JdBt6b8iRpZMQdJ6XjPnYf6tEAxAnBrRTkJB
	4p28S8nEwe36v+WcqIls/AXg5akbebKAPHI67XoKzF5hnPsBZIll9xHuZwbcM1xxriOi6
X-Gm-Gg: ASbGncv+DaJzBuV98L6ZXpo+AFfCpMQHOqS/Iqa3RzdvblArTkqdfTpK0utU0W2l/nc
	107VlfxS7SPE0T5alJfrQ856cFjkZmXaQx+TST3UkZ1m4v6fmq/y4gT6XOVSyo0aIyw+lG05w/h
	RutrGwk+fX3JIk5gbXCyNORgbYx1OHHaSy+mJK1o1d/bHD1Szjg5bJ7d+IUytIZ/Z1gRhtdbdLQ
	Nj0rbTvRv5QXE6c8MHzRDvD1/PigY98l1MFTOCALIUjkZWLuy5MMJVA/HR8X6JgbFOqfyA9QhAR
	pIvPizCbBdHaFz345DAFqcG0g52Ebz31HU3hqTkq7d+t++GBieqK90rTxPgNeul626g=
X-Received: by 2002:a05:622a:553:b0:475:1395:e169 with SMTP id d75a77b69052e-489e4892ed6mr12998141cf.4.1746011830566;
        Wed, 30 Apr 2025 04:17:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXnCVEIjjfmTvap3RtCAJrcImjf5ni4sJ4bNp3yTPKVviZbLdg9/Hfnf5vIuuponRgeYxq5A==
X-Received: by 2002:a05:622a:553:b0:475:1395:e169 with SMTP id d75a77b69052e-489e4892ed6mr12998021cf.4.1746011830181;
        Wed, 30 Apr 2025 04:17:10 -0700 (PDT)
Received: from [192.168.65.132] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6ecf8f6fsm917948366b.106.2025.04.30.04.17.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 04:17:09 -0700 (PDT)
Message-ID: <b1ea3baf-7a7e-4db0-9a1b-ebc98fbb8db2@oss.qualcomm.com>
Date: Wed, 30 Apr 2025 13:17:07 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8750-mtp: Add sound (speakers,
 headset codec, dmics)
To: neil.armstrong@linaro.org, Konrad Dybcio
 <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250424-sm8750-audio-part-2-v1-0-50133a0ec35f@linaro.org>
 <20250424-sm8750-audio-part-2-v1-2-50133a0ec35f@linaro.org>
 <dd271e8c-e430-4e6d-88ca-95eabe61ce94@oss.qualcomm.com>
 <e61e17ca-fed7-4712-96fc-a9a2339de1fb@linaro.org>
 <9b6c5f67-0bbc-490f-9982-4e28218aa6eb@oss.qualcomm.com>
 <0e007f7f-d9ff-4b2d-914d-ad62b9983bba@linaro.org>
 <3a29e34c-d286-4673-adac-1fd8627c3eff@oss.qualcomm.com>
 <877daf2a-9aaa-4501-a630-77643d2393bb@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <877daf2a-9aaa-4501-a630-77643d2393bb@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=G5AcE8k5 c=1 sm=1 tr=0 ts=681206b7 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=KFtwY0GX08G7pjJXddAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDMwMDA4MCBTYWx0ZWRfX3sZUZWEEzLVV pCfWGa8QJKOIjv2HU2iiCVERNa/XBBXFdYBc4sLLL+DR36vFcipnu0rmB0opJ9yVf/P6VtSPTiG WB+XGD8EoQCV8NVdTwAorzEM2HWF09KVlMJ8hpTFZ3LNWCf3aoAxe28tAju2q4752j6gDe19iZi
 aHaSVALuK24HRdoScK9ozzAqxH+2WwCybDsf7w4IGS+NYHeFEoCDaWazJi9GErSWnpofuyqAg4b zKcy0DqTIV+KMe5lQ66plAstsqaFmyft7yR1idzuQ0CgHiSltXgB8fu48DmVuR0Gn1SVEwAptBo uTRZxkw7Khrjd9sLIFQHCtlKpE7iJGts3/juDCqMN2TrsopoK1gi0X7YVO7J7/J95z3nGxsyC6n
 N0I4DOFawK4FDTmbjwH4+KEiNJ6dDbECVwxEOmO5gDyrU38ZC9FS3TAlvum81pjdDdlSdXaJ
X-Proofpoint-GUID: L2xoLeB6EmTI74uCwjxri_WRF0Z65Ewi
X-Proofpoint-ORIG-GUID: L2xoLeB6EmTI74uCwjxri_WRF0Z65Ewi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-30_03,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 spamscore=0 impostorscore=0 phishscore=0 mlxlogscore=942
 lowpriorityscore=0 adultscore=0 mlxscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504300080

On 4/30/25 1:07 PM, neil.armstrong@linaro.org wrote:
> On 30/04/2025 12:48, Konrad Dybcio wrote:
>> On 4/30/25 8:19 AM, Krzysztof Kozlowski wrote:
>>> On 29/04/2025 21:11, Konrad Dybcio wrote:
>>>> On 4/28/25 4:41 PM, Krzysztof Kozlowski wrote:
>>>>> On 25/04/2025 11:30, Konrad Dybcio wrote:
>>>>>> On 4/24/25 11:40 AM, Krzysztof Kozlowski wrote:
>>>>>>> Add device nodes for most of the sound support - WSA883x smart speakers,
>>>>>>> WCD9395 audio codec (headset) and sound card - which allows sound
>>>>>>> playback via speakers and recording via DMIC microphones.  Changes bring
>>>>>>> necessary foundation for headset playback/recording via USB, but that
>>>>>>> part is not yet ready.
>>>>>>>
>>>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>>>>>>> ---

[...]

>>>>>>> +        /*
>>>>>>> +         * WCD9395 RX Port 1 (HPH_L/R)      <=> SWR1 Port 1 (HPH_L/R)
>>>>>>> +         * WCD9395 RX Port 2 (CLSH)         <=> SWR1 Port 2 (CLSH)
>>>>>>> +         * WCD9395 RX Port 3 (COMP_L/R)     <=> SWR1 Port 3 (COMP_L/R)
>>>>>>> +         * WCD9395 RX Port 4 (LO)           <=> SWR1 Port 4 (LO)
>>>>>>> +         * WCD9395 RX Port 5 (DSD_L/R)      <=> SWR1 Port 5 (DSD_L/R)
>>>>>>> +         * WCD9395 RX Port 6 (HIFI_PCM_L/R) <=> SWR1 Port 9 (HIFI_PCM_L/R)
>>>>>>> +         */
>>>>>>> +        qcom,rx-port-mapping = <1 2 3 4 5 9>;
>>>>>>
>>>>>> Does this deserve some dt-bindings constants?
>>>>>
>>>>> No, because these are hardware details/constants. Drivers do not use them.
>>>>
>>>> I'd argue it makes sense here - it makes more sense to pass meaningfully
>>>> named constants to the driver, rather than blobs with a comment
>>>
>>> Sense of what? You want to make it a binding then answer what does it
>>> bind, what part of ABI for driver is here a binding (answer none:
>>> because driver does not use it)?
>>
>> Sense of the magic numbers that otherwise require a comment.
> 
> There's no magic numbers, index of qcom,rx-port-mapping is the RX port,
> value is the SWR1 port index. As the property name says, it maps RX ports.
> 
> The comment is here to understand why we map as-is, and what the ports are
> used for, but for the soundwire perspective only the numbers matters.

OK so it's the indices on the WCD side that are hardwired, IIUC.

So perhaps that comment could be included in qcom,wcd939x-sdw.yaml
under items: for qcom,rx-port-mapping

Konrad

