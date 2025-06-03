Return-Path: <devicetree+bounces-182383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E9CD0ACC091
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 08:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B379C16E9A1
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 06:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBE5D26868A;
	Tue,  3 Jun 2025 06:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G1b6teRp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BC220E32D
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 06:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748933959; cv=none; b=T8cwxRqraf1Z1iR6ffa/QF63MXJdgKHGxtwBGhZkJNNQBRfarHww7ersdLRQi4t6S0+wJAs/jFY2QJo8UxiIaGwGYqPIRgwZzKQr5/A599gYlcPpg0m09AULGLL15PmdhTuFEPUWGelXUWevE43g1dPvgKodi795d0gQLrozgCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748933959; c=relaxed/simple;
	bh=yIl91cIODbcq6rOSVNz4VGeqdOw6XOvYiMSRWZsk0uY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U4opbqG7xT50JAV0c1dYk+QFRJmKfbvgnc9wmyAjlVe5CyqJ4PQ35XHjZvKHkseGxdqtdApHwQc7UZ1tCm0cQAB4bDaGOjr1rc3+USK2O51cfnjcKfGrrvhO/KxI36Rt+nVbEkcy/TrOxZA2vyUx5bAO0/8Cja/+jCj9mvTr/Qs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G1b6teRp; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5530xLKl023257
	for <devicetree@vger.kernel.org>; Tue, 3 Jun 2025 06:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O88Sfa6gWtkGp5uiGxYhsgS/QzkSjFVA7I558x1JjIE=; b=G1b6teRpu84OEJhK
	W/VaIX6157DxmGKESVyCRWKNHxBN2l/F1tUpMIteOjmR4oLIH7nNjiwew6psKOzN
	bBcFcUDulVJbXpNzCw4A5YVPrArTD/ddqE6aDLl08PXG8gK0yyUzptN7CFGwtzeO
	foWkmS8EPPejJ0p0bHmYImfCj1OaZ4skpZ+LLlq32fGZhOFftHBgRM2/rINFMk0q
	I1Fm1EF0SZ3FOMx9eRU5aT1zpYNGMNCLLGLER2K5OyQS7EfybDqSdLyegWraSWfW
	DKsZ1QuydLSMQQCFdqJ/iFKOHWf6niZCLP1Qj6AWPq0w+EeCHSSYLqzTGZITo0LK
	GQnFHQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8nhmw8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 06:59:17 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-311f4f2e6baso5092327a91.0
        for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 23:59:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748933956; x=1749538756;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O88Sfa6gWtkGp5uiGxYhsgS/QzkSjFVA7I558x1JjIE=;
        b=sYNmfi9wl/XKWx36CFuNI3UnRJ8KyHBFYZEKuURnX39FTi5kRP1Za1N9Am/R1mHtQ+
         tlkAU41+GCULy5h1vC9f3iPxSstuaphNADhU3xHhDbYu++P5+exGRH6Q9JsqmBUak/5R
         dAELSa8pCQYo8JbBdT5i9jfgufZGWHk1S/Pe/rtutExWzPnwPfXdfGo32ti/oYoFXE4F
         PC/QT1PRunavRES/Mzk1bADyX8k/xG8K9HYqx9H8H203oIOykhDO9ke2wD1USXZoAZmM
         oaB2IBGlmff/aJX+4CAu3imM5Mgf1L1hmW0HT5LSSSK0dyljZUNRDcOzvZErz1C5E1QR
         efhw==
X-Forwarded-Encrypted: i=1; AJvYcCV3MQanhoKtWjpE68xrgZAkqxzk9qNbw96l1/XVM3Z7jUU5m12UFpQXHD0GG8kFdK14wFpbVxnJazE0@vger.kernel.org
X-Gm-Message-State: AOJu0YwmTq4HRUYgFqg6s+nTvCKNZG7u+nBTuNM9BpMcxA/WMkwNLUTb
	B9nBp1Ku/FrLR6dG6LGMB3GN9yi89LW5jN04Z2LEVyYY04AErEUY2bxxL2FQRv0bKQ13UK1Yw8m
	RAAfELoMr1NKZ0AWtGAb4c+rBm55TlJM8vtAhD8MwCYk1ZcS75dBfIgv+mPZQTcyG
X-Gm-Gg: ASbGncvJTTIlGwr2K5iKOjXXHAdJHU9MUKGG/P5a+JcfG2/ZTZDlhFfcgZisb2MiNLv
	g2DQengfPpiniuf6i9p8grpwGNQFxaExWOSvjw+2K7T0MbpYlj91a24lysRKoxIwtDxXEpvkjWP
	J38DfeUECGfIpZmYi6OGDVDRfH2QopvUTbeSId+vvNU/PuSqt197BlpidHmQHhsdFb9wHUH/QUX
	xEP2KJDnAZELxa3deK6ibmI9ejw0gwg7vQNYBeiJBgiDZCo+t4cJWSNG9yfgLqdwKXAlMz/rRmd
	61FPVC4Moxg+Ewo5HIlXlxBUfdobZyd5yBW/JfDknYiUu0nqYPwvKVFX/1NpAfPHhSzaanJiOfS
	y
X-Received: by 2002:a17:90b:1dd1:b0:312:1147:7b16 with SMTP id 98e67ed59e1d1-3127c75a1f6mr16567638a91.35.1748933956178;
        Mon, 02 Jun 2025 23:59:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG/449gaCP9UeICVPOMl7ImevR8RyxYzaDJddV9j5cUxAmjFJ/jq43ySQCuFyd+RVw0vYtQrg==
X-Received: by 2002:a17:90b:1dd1:b0:312:1147:7b16 with SMTP id 98e67ed59e1d1-3127c75a1f6mr16567596a91.35.1748933955725;
        Mon, 02 Jun 2025 23:59:15 -0700 (PDT)
Received: from [10.133.33.127] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3124e2e5e77sm6640325a91.20.2025.06.02.23.59.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 23:59:15 -0700 (PDT)
Message-ID: <c4be4b97-6104-45e3-b555-6691e369c3a4@oss.qualcomm.com>
Date: Tue, 3 Jun 2025 14:59:11 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] dt-bindings: soc: qcom: pmic-glink: Move X1E80100
 out of fallbacks
To: Krzysztof Kozlowski <krzk@kernel.org>, Sebastian Reichel
 <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-6-9e377193a656@oss.qualcomm.com>
 <4e093835-af3b-4a84-b42f-fa7d3a6f60a1@kernel.org>
 <14cba9ae-e3bb-46e8-a800-be5d979b2e06@oss.qualcomm.com>
 <b07200a2-4e7b-480e-a683-d116e7da8de8@kernel.org>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <b07200a2-4e7b-480e-a683-d116e7da8de8@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: rR-Tx_VPakwFrf-dw9-SceqEnPnPyL0W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAzMDA1OSBTYWx0ZWRfX3msphjLkXsK8
 AcHnJF8Xy23dIl4f+cmWsw5KpccGZJcgO5JCAoOdPlqrV9rXqOcmDtMM6dx6DhF6s0xHCrQFfOW
 AR+AsEKDAOy1nLtcfm8RgEE8T4GtmwEQlQobs1zY68SLHby24R/zSoGd30j1MAerhwwkY8oj80i
 nedInEy0DZ5vpvgUerYgJz5hXcR5J1snti6U9iSu7R3HJ/mwB9j21/JbE6rv07kOOJC9FgnNG3c
 EGTMuJXKwR70wb84MUjzuEkuLEJoPcVIixCXjC02F/QAX6j/9QS8T+yY5Hdh1WFderNXsqBR1+N
 53ksOfHrMA0XpQ6WxR96P3PldZddqXkC6mmrWo10gdB2MyLzW683UhLS13onoxopiH2+euGRD/3
 kIj9iPKIDMmYhOonssj6+4UEAOlol9lALurPG8wFDQ7heRQ5mXIi1iIPZEVyVlSVWX1QNw7i
X-Proofpoint-ORIG-GUID: rR-Tx_VPakwFrf-dw9-SceqEnPnPyL0W
X-Authority-Analysis: v=2.4 cv=UphjN/wB c=1 sm=1 tr=0 ts=683e9d45 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=dyB-bXEIEhcmCqCGgV4A:9
 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-03_01,2025-06-02_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 phishscore=0 mlxlogscore=870 clxscore=1015 malwarescore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506030059


On 6/3/2025 2:47 PM, Krzysztof Kozlowski wrote:
> On 03/06/2025 08:42, Fenglin Wu wrote:
>> On 6/2/2025 3:40 PM, Krzysztof Kozlowski wrote:
>>> On 30/05/2025 09:35, Fenglin Wu via B4 Relay wrote:
>>>> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
>>>>
>>>> Move X1E80100 out of the fallbacks of SM8550 in pmic-glink support.
>>> Why?
>>>
>>> Do not describe what you do here, it's obvious. We see it from the diff.
>>>
>>>
>>> Best regards,
>>> Krzysztof
>> Previously, in qcom_battmgr driver, x1e80100 was specified with a match
>> data the same as sc8280xp, also sm8550 was treated a fallback of sm8350
>> without the need of a match data.
>>
>> In ucsi_glink driver, sm8550 had a match data and x1e80100 was treated
>> as a fallback of sm8550. There was no issues to make x1e80100 as a
>> fallback of sm8550 from both qcom_battmgr and ucsi_glink driver perspective.
>>
>> In patch [5/8] in this series, in qcom_battmgr driver, it added charge
>> control functionality for sm8550 and x1e80100 differently hence
>> different match data was specified for them, and it makes x1e80100 ad
>> sm8550 incompatible and they need to be treated differently.
> So you break ABI and that's your problem to fix. You cannot make devices
> incompatible without good justification.

I would say x1e80100 and sm8550 are different and incompatible from a 
battery management firmware support perspective. The x1e80100 follows 
the sc8280xp as a compute platform, whereas the sm8550 follows the 
sm8350 as a mobile platform.

The difference between them was initially ignored because the sm8550 
could use everything that the sm8350 has, and no match data needed to be 
specified for it. However, now the sm8550 has new features that the 
sm8350 doesn't have, requiring us to treat it differently, thus the 
incompatibility was acknowledged.

>
> Best regards,
> Krzysztof

