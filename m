Return-Path: <devicetree+bounces-201647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B8DB1A17F
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 14:35:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 15B4B188E878
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 12:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B89B253931;
	Mon,  4 Aug 2025 12:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZtNs9VJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07CC224291E
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 12:35:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754310903; cv=none; b=srCvh9sw995k8XRCvvH0VPEPWo2J1xhsqM+2/5WsOuJLC0omjlPR24uE9n0GhZfghNwr9GMtenjxr1DkCN0qg0+z8nO0XChCti0WnMeXzy3vZptt51W0OV8SB3vl4KQBAwlyC7tKsIo8XhmNf7SkYt88Dda3qDXhkjWLoyR/TM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754310903; c=relaxed/simple;
	bh=YRYDKVDauPkLOuXYEKpWqHsQ3HBWS9IDem29DLnVCIs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Tbxe6nrsgr/NLTbwrrE1dv4U9yga2+11FaLWC4ze2YYh+adbbO+3INlf6WTAe1acTNqIb7A8nujaazhMIKu8X3cXUnfACScvcLZwwejKW9FpZIg3td6bZqq/6c4QnA3qq79/FeEBfX0RqG7f5fsRub7V8aNaLbzucCnFcm77VKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZtNs9VJy; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57493m2K032723
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 12:35:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6xG/kD+yzbRXWYpyoX5xhzwNnfOfzUQ+Z6gXVyD0j0Q=; b=ZtNs9VJyXPLi68V3
	Mm8edUQkOF1boQ5xxD+b33DR4ZlHjZJcSmL7GhY0kJoRRgrKsmK8TJbqkjpFqoH+
	4r8O4UtsL1kxNCo6UMVptmql4tWR0baNWKLZJWeBonsNhimtpbsFyMjvN+NftU5A
	VSJGexGjCrIa+NIwEfs1YpEhCw6TFumKn2sBzS2WFSHmZzD7D726/Fymjxn64MVr
	T+9mtCZUilop9m+pp+7ZQqxLee3fohZ2Vh/TymNECOFG/2PKHbWYgyEz/2TMIvNE
	vmVmdZUuQXEWKmg2Vel6bpQXd4+OUaLg3mm6Yh58Kn/FHhXKQmEebQh9h+s2qfBI
	nulsiQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rn7av-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 12:35:00 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7092a001573so11032746d6.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 05:35:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754310900; x=1754915700;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6xG/kD+yzbRXWYpyoX5xhzwNnfOfzUQ+Z6gXVyD0j0Q=;
        b=f+JRivdW3rjx0h/yHblNJO5uF3yILksMB0qMgL9+Lx3tSWQSkC7Ps3SSs7gMfDOsu3
         gGWMgRp54F0lVcam67lXJtNHq2RVEa/7C0ZMCssrudsOAIIBp7kOPuwMVEQt8F213Kvr
         XkSF3qF00ISjB9hIHirFoNuoUI5y22fWjhRBSQsDeRbZd92OLmYFncy2YU6rzr/VABt3
         J5x7BhN222nV+GE/tKqi71DKYR4i9cGUyEpdEni4L386WDj/eWxu173Z6qEWLV4MdWQq
         hPJxmEO2KSPnjFpuo66WDCAu1CCJQs3uiD0W4BQX4zKBoXOByan8FZ4s2c7ohkOdJ5DL
         0Tug==
X-Forwarded-Encrypted: i=1; AJvYcCVKLsL38jKs0U/8egTaJqjF+b8Kwj381ZPOzc5USyXd1MEWSqWsQsWCJZVS06TeE0FiIsp4IddO0y+C@vger.kernel.org
X-Gm-Message-State: AOJu0Yyuk9orIYAgmiJWEfGRskNDsi3QG8FA2+U25l/WAI90GLhmHNAj
	T9sMS/W3hAMRkL/j44txVfvfPfO7S061GhNZgJX5VX/b1UrYyP4tsbJ2sYbm8ve2U46O73H6Yjz
	PdDy9WXjllokpKfSSqB4wgtnXAFW73iWeAjMicdi0UJgpZ96j/P282+AHGWXa4AVj
X-Gm-Gg: ASbGnctKBfua93h242dCUJxPB/Os55cl1adXaq6z8IxJ+7r4NOV4mb7tgCBwL4RUajD
	CZ1HohPkmOg5TZnBL0UsUamaWcRZ6i3GH4jtLB1iN7SPMrJT3+fnOd4Seu3yz5ACB+YTCFMpHt+
	LYUWfdVgA5nIvybDpxwPzOgouS5yFbEmWdl7fhX8kFIUn/2rmxFJNntOege9t5natv7CHem6wp8
	haGxgmGAHi6hp/PDwxCCVv7At3LxJAgJ6ImuWB5cXIN9GcfjKLNyXYYv0CfypaFcc9l3ZXKOaVo
	6hjgBOmPi7i8EolLB3P252UsHdZRiMfjjg9exfunsii+/pwKAmvgC9Wh1n99UpDhiFeSrVK7wd0
	CqkRGD/razgmATwohRw==
X-Received: by 2002:a05:620a:448d:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e695e99fdfmr682779585a.0.1754310899763;
        Mon, 04 Aug 2025 05:34:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFD0/Y8gL2eHUJARk2TXvcmFivLsz63gHWgP39CLMNDuC7ltMBN1eSmehR27G12/9zxrhOWig==
X-Received: by 2002:a05:620a:448d:b0:7e6:3c48:408e with SMTP id af79cd13be357-7e695e99fdfmr682775985a.0.1754310899213;
        Mon, 04 Aug 2025 05:34:59 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a1251sm732151066b.30.2025.08.04.05.34.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 05:34:58 -0700 (PDT)
Message-ID: <a4b2a06c-31c5-427c-a618-1f1c3704781f@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 14:34:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250730-dts_qcs8300-v4-0-5e2dd12ddf6d@quicinc.com>
 <20250730-dts_qcs8300-v4-1-5e2dd12ddf6d@quicinc.com>
 <f3aeacf5-f178-4e61-b34a-60353f89daae@oss.qualcomm.com>
 <d6559256-81e7-475f-b91f-04ae237a92f1@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d6559256-81e7-475f-b91f-04ae237a92f1@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Q0Wcu7LZRR_lpKW8fhaNl7xYkYsEwRcp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDA2OCBTYWx0ZWRfX00JhIyrGd7PW
 X9yjh7idd27qE+s2gWSvEVx2jE5tfheqD6a8Jbf1wtz0wulk/6Xdtv0ciJ8Xl2LX9U3pA7B+4S8
 aNOmWokf6DsR/bzVxfFcMP8ll5IDQd1QaIZKKNkFPBdZ+WtzBhc6SzOuUyFYdN0cGNDif69L8bj
 TP4S7l+mQuC3fr5JZwfeqzp5yzaYXohSvvRQOEdgOePmATmahbqKlqaKakj2Lom7YQSsfhplNVW
 gv+ZFQDE3TkNHhzYxkSU4fHh188wBdquELVLCuu1dD2XS0KcMr4bsw71bBZY1qlmoDaa/QzLDj+
 aiDXwMBy7i1crjnogLqeW/QL9++p30n93F2et9ycHnvJxRPR4QHGl/36sx209gAQu6fCd0XJAEx
 FB3p8mTI8Pqc7GNp88dyYneQ0462mALCB1g8zxDuja62dvBRh/uUrU5Kyh1j92d4M2nByqtm
X-Proofpoint-GUID: Q0Wcu7LZRR_lpKW8fhaNl7xYkYsEwRcp
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=6890a8f4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=WACavYXBwHx1I8TtHWAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=862 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040068

On 8/4/25 6:39 AM, Yongxing Mou wrote:
> 
> 
> On 2025/7/30 18:25, Konrad Dybcio wrote:
>> On 7/30/25 11:49 AM, Yongxing Mou wrote:
>>> Add devicetree changes to enable MDSS display-subsystem,
>>> display-controller(DPU), DisplayPort controller and eDP PHY for
>>> Qualcomm QCS8300 platform.
>>>
>>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
>>> ---
>>
>> [...]
>>
>>> +
>>> +                assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_VSYNC_CLK>;
>>> +                assigned-clock-rates = <19200000>;
>>
>> is this necessary?
>>
> Emm, i try to remove assigned-clocks and assigned-clock-rates here, device can still work.. here we just want to keep consistent with sa8775p.

Dmitry, do you remember whether this is some relic of the past that
was required at one point?

The driver lists 19.2 as the only possible frequency for the source
of this branch

Konrad

