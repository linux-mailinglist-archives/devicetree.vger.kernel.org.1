Return-Path: <devicetree+bounces-200489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BE204B14E7E
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 15:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE4C618A00F7
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 13:38:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5177C19CD17;
	Tue, 29 Jul 2025 13:38:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b4vPjypW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E95E582899
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:38:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753796308; cv=none; b=XK+IlJC7mUAVzIS0P9XrM9McdR4b2IlEp6xh8CFC9zdPcRt/yPAkKj3F8HcQCRgzbbpQMH/5ULZx8oCRzLLpf6QE3OsLCiX3U8WWndiUM/DecLQQs8pJQblEkUgZ9Km+XqwG2zcUc09YbLWlg2HJUgH+rCqfzdBFS/k3nCE2iqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753796308; c=relaxed/simple;
	bh=XRcQl2sDslI5kS3lvxmQW7gE08M2ZCXO65pFU+AsBIU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LinpjBGRuH2hU+E0qSouzxRex1pJGdNyYXAGvtiV6jV8fOkUrBFqVa4BN9Y6JDk6dmExqnghBrkqR70za42Soz1A1kmjMntpR+bBahVtXtnw7NSiOvAb6mleTSu3tCQc0HRVYILpoigWkgxgLTRocqr5hUod+fKWs6+eweUwYww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b4vPjypW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56T9o481001728
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:38:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bYu4VBFFbTuFCWo4dZT/gRUtAZuQsCf/xjeyDn34aco=; b=b4vPjypWqJTqgH4P
	UkAzdJxmq309RE35JcxUN4f7z9UKS5AZymG4QCKK95wkKLAajLGpA4eNAkruhywF
	M5xoDhG/RPnKQLYAfRXbFfPBaFG4wpnQVunX75ymzt9nTYjSgBgE9h7YnLfaWtX+
	Uni3pALhrJLPgF+YdvmBXtDt6p0x4WBE4GsJwc2C4+B0QbZ0oZDReHI8SY5Azzgw
	QjkzVuhGImbccFiB3NYcqEI/UfdCH5u04h/IxnglSBSoDykOpCFCnx4yjG1VtBki
	KgQJJtxuZVogsI7O1YFoml87kWEOY9SkIExrR7tPlTzjbtTpMJI+ygePY+NFzAxc
	E6aCnw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1ag7bc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 13:38:24 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dfd0470485so49668185a.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 06:38:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753796304; x=1754401104;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bYu4VBFFbTuFCWo4dZT/gRUtAZuQsCf/xjeyDn34aco=;
        b=qsOeswGCjwE+kBceoosxKLtGMvZUCSTRZJl37n20l57pUWeM8rpeViLZgN95HF8Y/f
         9LvcPCrn3TtkAUECeXe1qp5Pe0p8sjTpilx4bwfq31jN0ssi0ru6IIQnu4byh027oRRT
         5XKu12qlg9g4yiMW4Bzpz03ybC5XhDUBOhO8Nbm47S3Y+sp/sAwPAUXadmfD0sVWunLF
         UFnxO5TBkd1Kj7xWqkiD3MioCiSvo/ZY2cohZNwOSELAJnstYf4VGRoxk8js6V3vzi1E
         awVoeER/WyUWBR+G7tmzYMJ0KuO4RxVe18myTfifgBOCY9UG2rP+cI5PtgJDPCHIkWwm
         477Q==
X-Forwarded-Encrypted: i=1; AJvYcCXIlar3faAoGyypDUTrCM56u2I5waIJUOKApn4YqQha0X5iMEILHhodydhkY93TJsebKa/AFiyINADd@vger.kernel.org
X-Gm-Message-State: AOJu0Yxdhp8PtdmHCby0GbApMcjSwIA7tlHzKWKzcanIBPI8mPvy4pX0
	Cxj/Iy/Ya+Bwv7Wx9UorwgxIZfQF3FUjZH72mjDuo3YtlbYhQvUsoe5bPqsc/A3C+/DDN+tPC75
	FHcjjzxOTeumc6lz9C9Y4dL1JeiTFpNvTv34k6ChEejB669VrDKQb8Th+qfXh+OJv
X-Gm-Gg: ASbGncsTIDhwSMl4JHBHkc/vCA/hsOLM5czzCYWNKgUBung4dNT0c+kSgBS6S8u8bww
	Y6oNXaAx7AeChaAofF3xOpCitNNXxvWESuuVLhKE1xNWsE4jHEcizfYq974wNotjPDOepBSQY9n
	lPw/YOu7qZ1l/k5PKdpY8f2VJATzMQq/tWOwlT+Q6GWJavIT+nnLUx5ZzUrIlEDcv9ZOc0US5uh
	b3Ai+w2vhX4UV5cfEz4kAITn9vdfjdZtcgGZ0EyHribg5/4gRmlDMEMbZLolABoDkuRwggDVgYx
	0kVM7W0fGypitrt6ttnZWfcRwjhpjb1CYzANcZboTU4iUUjbNxZLOitjT9AnwcLav3WdOFfm/VE
	sbI5sFi1jS576LI3FCw==
X-Received: by 2002:a05:620a:c55:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e66d755f00mr46185a.12.1753796303758;
        Tue, 29 Jul 2025 06:38:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGKI4hIaiKAmbCU3iCvheBP2tvLlX/4n/EHL9QP1TiceX3J3baQPxmSmT4BEC5BFoqWNGF/sA==
X-Received: by 2002:a05:620a:c55:b0:7e6:2435:b6a4 with SMTP id af79cd13be357-7e66d755f00mr44585a.12.1753796303257;
        Tue, 29 Jul 2025 06:38:23 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af63586008dsm591768266b.16.2025.07.29.06.38.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Jul 2025 06:38:22 -0700 (PDT)
Message-ID: <3802c3a3-9774-4bcd-8819-41e5395df18e@oss.qualcomm.com>
Date: Tue, 29 Jul 2025 15:38:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: qcom: Add Glymur pinctrl
 bindings
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250723103644.4058213-1-pankaj.patil@oss.qualcomm.com>
 <20250723103644.4058213-2-pankaj.patil@oss.qualcomm.com>
 <70277682-94e7-4905-823d-25ae76f72ee2@oss.qualcomm.com>
 <790fd85b-fb24-4d44-bdb1-706c534d1da5@oss.qualcomm.com>
 <d37879af-a1fc-41d4-8e31-2abba6fd6d57@oss.qualcomm.com>
 <d31c5e0f-dc50-4e7b-bd81-256269c82ec3@oss.qualcomm.com>
 <0aa2b07d-8c66-456d-aacd-c554bfa7664f@oss.qualcomm.com>
 <e3d04cf8-6d9c-4514-9d8f-782e2d1505a7@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e3d04cf8-6d9c-4514-9d8f-782e2d1505a7@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zcg-75nS4qCxk8gSrjib4dej7FFNuDaL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDEwMyBTYWx0ZWRfX9cWr1jBF03U7
 QxaX3Tr0RhKXzcd+mPwaBuetBCT64UlnMp9F+GQsu5ahoJ0mjsv5/UO2npnjrgGbWRibVQDX8N1
 KW0Yeluxmx8O2C3dy+C/gAZMgU5e8kfqXmNq4Ou5C8nyWo3F3nOMhxCD6PdQboyFnlcCQvhhkyH
 ey7f2Xg4vlv4+iuyPoRAlBY0sXXT/5CFO6N9ZJxeSPw1igK2Uwx2jr5DcwCHTzwLttvlOr68anf
 Sln4AvBbJdRE7t6f4JjoS7G0uDRtSZTbllEUBjDIpPWTaRkNcLix4XKzohHSgNIsVxW9CODDXxJ
 6XdUf9rUH8j0McA9eYvSsn1ohGhWaBNG+QE67iLPTZp/CB8iSbqJsi0nDXJsBvqXHl895CKXlpY
 VWTxUnHKoFY1eE2UKechIrv363FZRSSlEVIUxSVFzcsTAvLx5LfATVNByU5lrpfhkrvszP3s
X-Proofpoint-GUID: zcg-75nS4qCxk8gSrjib4dej7FFNuDaL
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=6888ced0 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=_xSS5P9aWiV-_plMCQ4A:9
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_03,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=890 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290103

On 7/23/25 3:06 PM, Pankaj Patil wrote:
> On 7/23/2025 6:23 PM, Konrad Dybcio wrote:
>> On 7/23/25 2:07 PM, Pankaj Patil wrote:
>>> On 7/23/2025 5:25 PM, Konrad Dybcio wrote:
>>>> On 7/23/25 1:48 PM, Pankaj Patil wrote:
>>>>> On 7/23/2025 5:10 PM, Konrad Dybcio wrote:
>>>>>> On 7/23/25 12:36 PM, Pankaj Patil wrote:
>>>>>>> Add DeviceTree binding for Glymur SoC TLMM block
>>>>>>>
>>>>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>>>>> ---
>>>>>> [...]
>>>>>>
>>>>>>> +      function:
>>>>>>> +        description:
>>>>>>> +          Specify the alternative function to be configured for the specified
>>>>>>> +          pins.
>>>>>>> +        enum: [ gpio, RESOUT_GPIO_N, aoss_cti, asc_cci, atest_char, atest_usb,
>>>>>> Any reason for           /\ to be uppercase?
>>>>>>
>>>>>> Konrad
>>>>>>
>>>>> glymur_functions enum members fetched from ipcat,
>>>>> this does not exist for sm8750.
>>>> I'll repeat my question
>>>>
>>>> Konrad
>>> It's in uppercase because of the way it's in the driver,
>>> I'll update only the bindings to lowercase and repost.
>> No, the driver must obey to bindings. That's what they're for.
>>
>> This value is only used between the OS and DT, so it doesn't matter if
>> the docs refer to it in uppercase, so long as you keep both in sync.
>>
>> Konrad
> Okay,
> Yes both driver and bindings are in sync.

Please make then synchronously lowercase then :)

Konrad

