Return-Path: <devicetree+bounces-244690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E4CCA7DDE
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 15:00:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 69E393036A3A
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 13:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D118A3271F8;
	Fri,  5 Dec 2025 13:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mYrBWUow";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="R6zTz3bl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF84F29AB15
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 13:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764943147; cv=none; b=lBjRQIlqYfmkZsdTE04ULo3tDrTEEYxlCPDNJlT34rStU7xBmHnRc9KKbbielqqRPx+BZwMKX/09Ea4NhRwfLowFq85MGCnwnc3CiQPww4WQwc4q6qZTBI67Dd8s8bqd6Gm26WWTtvvTCc5ZXoJ0BNWnZmrrgh/6ZhzIxa8SeNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764943147; c=relaxed/simple;
	bh=AT91pSVJuq3JhEAxKNtxBq2JBa85Ro5ug8H81fE1bFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qUp7v61lLjSGvBQnguzyL1Fl3qRGnYRzHjcSX1c/sX3ynIUKiZzNJonJoR4/+Y+DA+YC7sosMFfLOeDuEi65gL1B8feRdQvxIu4ocr5qA6rAk/6sgLSbO3F+b6BBj1A/sMwRrdabMNe9DSHtYWzlnwEsA5NHf3X38M3520Q/J2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mYrBWUow; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=R6zTz3bl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5DqcfY911220
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 13:59:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AwOFGn23N+84vw0QT3trM5DNBw8Zal6xqShrR3uLN78=; b=mYrBWUowCghcJ3GL
	Ky79nPpkT+wzspmjazyv9ts0CwRO5STry8At4o1B1R3qq3OnqaRlMsZMOKrmPxAO
	2YLSRonQlMnr4Lf4g8DkzZdbEe+uVrmxI+1nDj0jmIHeHPO9qNLd1IcEyOF6o8f/
	yJmFv4H39uHe5kqMOWq0ycFruwrtoOWtcul1Ia/E/vEAYwtbKBvzT6xY9SDY+f1t
	roRJvlSqgDQlfJiKUUtZC8UvXJYal1MV16G5ThBN+g9VK/88cSJKMnXoZwJovvph
	Ih3SXjHoX9TNzAvso/Q9YdFoZF8Ila9lH/IrFIRXOvlFxpYfpqkygXyQ82MrDPlJ
	rYs1XQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av0ngr077-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 13:59:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7bf5cdef41dso3970502b3a.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 05:59:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764943142; x=1765547942; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AwOFGn23N+84vw0QT3trM5DNBw8Zal6xqShrR3uLN78=;
        b=R6zTz3blA0NUYgy1iuNwdRIaDGZtXzj5iJc6CnmUnD1Z37o3hEDnK08FqIS29q6twZ
         ldzxULBLet5cp2x/9RIhKw96dMI/3qb8lI8E3pYDB85c3tQWvEwlu5eei4j1+VKNZLCV
         g18Cs/LTQTKuDncHaOPXBej4YEqMzGWwngWP43mZ3e4io15DhuKbY0t1Lt4ESOS/f/zQ
         OFfoxAKF+SRDQtUgWUMPx1WPZyM980aFZaZscdui1gRUQHYSd05EoFgoMuR9R7q9sHSF
         yTNzYDOzv4ry0gUNQu9FTaIAYo3YrGLMjw2Tmuq1UV1eGbZ14aQoYpLsueFzUP9mk5SE
         WygA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764943142; x=1765547942;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AwOFGn23N+84vw0QT3trM5DNBw8Zal6xqShrR3uLN78=;
        b=Ou9y7iouLHO1QwX6hdKQ8uuicNLbaID5+O5HmX20jPobOtgzkYZxbZDWR3v6By6tvW
         OLH8lrUfW9zX7gbEtl3uxCH/bKIrQpqzGiYqh+tBY7DFzwCeBwf8dH0y9HGRBw+2CQ9x
         +t1tEzv9xe9QGjZgEV8ZIcJU3sGB6KZLYUYcAtFjawaIV/vXrRz8o4KUBy0Z4Vl30JzC
         +PiryRh65Ue/fpuvUkHTtEAmcKM7QXJt2HeXt2El6QsvmAcEYmoqpyGjU8b1FMsMMcHO
         beR30ZAZMxG/YV+A1ITvrSU3HNCG/fr7HA0ua1wXgNNvUIPCBGUJ0Cjbf+y87uvVs930
         of+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVmZjKu45FXGhXaULhuwOJsuB0c3iaBdPl8y0x3kxN98YFutzltxuS86uIS2OvCrN7vBdayAE2jagCm@vger.kernel.org
X-Gm-Message-State: AOJu0YwUSu0MlfYt6LU8uSR+f2u73crOrIg3Zi05J+FOC+oTvjI7LbI6
	wKcNSQCNlrIQZdo+qcJhrO7efgxOyw376dpVn7Uk56LVjoLpblwsl3PqJBTeeeSe1vqI2hDPy+5
	Eb4l8b3IYcB2c60yHC73LQqr3mCO2YxEO6QtvSPhwsllk8QtoZoJ9q+hQzTaxklyPMow/lYb1
X-Gm-Gg: ASbGncswk/NnYf4A9vSC499Pr3pH3h1YVK1rQKmZZGlyB30rTCzuNYTtXlohHcgbPBY
	n7+7d9GnEM/Ok9M/DFUvw9aOjH+LN1QukLcW6QMnEXJe6y1hv+sYW6og01kq5E4P5O3rmrdns3N
	9bqT4P6mm26kRfqQx1oz7PINvMp3os5bbGlzWKlQMP9/myJToJSxe3SdRXiaY04hH4cTS8wN3DM
	tt6fLQZ3v4Q7MpopEeCtWOuIyGdatP7P0ytpmST1EN95gl9ApSBauu3obIz7dTHkIHtLvBU2cQR
	ffSk1dFXlUu5rRtOkY1CbhmY+ebclLqNkpKgQDmg3Pvjm+yChz/jodawOm/XZrykcp54GJe/U+t
	UziU/qb7SHFb+ipvY5/Drizbp5IfpMO4Haw==
X-Received: by 2002:a05:6a21:6d9b:b0:366:14ac:8c6a with SMTP id adf61e73a8af0-36614ac8db5mr264906637.64.1764943141618;
        Fri, 05 Dec 2025 05:59:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIN17bdoUP6uMMUJ7SDlvyxo7Bng7d1r0V3Z/Gg3ZRXNxJiMHZaodSHJ8uBr3BUf6qxSgK7g==
X-Received: by 2002:a05:6a21:6d9b:b0:366:14ac:8c6a with SMTP id adf61e73a8af0-36614ac8db5mr264873637.64.1764943141147;
        Fri, 05 Dec 2025 05:59:01 -0800 (PST)
Received: from [192.168.1.4] ([106.222.235.197])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-bf6a2745c43sm4855199a12.29.2025.12.05.05.58.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 05:59:00 -0800 (PST)
Message-ID: <aaae2ab1-04ec-4d42-afe4-7a2ed00ce903@oss.qualcomm.com>
Date: Fri, 5 Dec 2025 19:28:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/8] dt-bindings: display/msm: gpu: Document A612 GPU
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Dan Carpenter <dan.carpenter@linaro.org>,
        linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <jie.zhang@oss.qualcomm.com>
References: <20251204-qcs615-spin-2-v4-0-f5a00c5b663f@oss.qualcomm.com>
 <20251204-qcs615-spin-2-v4-3-f5a00c5b663f@oss.qualcomm.com>
 <e8243a84-a7bd-4087-87d7-2795d6bc7595@kernel.org>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <e8243a84-a7bd-4087-87d7-2795d6bc7595@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: hH4Oo2CfMMusHRKJxlRzJ9uCLy6T8RK9
X-Proofpoint-GUID: hH4Oo2CfMMusHRKJxlRzJ9uCLy6T8RK9
X-Authority-Analysis: v=2.4 cv=DrNbOW/+ c=1 sm=1 tr=0 ts=6932e526 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=jBSxni06C9HboLYAjQ55wg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=fzXiC-7nnnm7XjcqKBIA:9 a=QEXdDO2ut3YA:10
 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDA5OSBTYWx0ZWRfX9gv+L7KuvBbr
 mQR8t/HzB/lYeKIIn5E+CK7zDtmC98YteKx8ofHJOe6JGvMpodnerv5JxKFPCo/CZNbWhPgNmxZ
 5W6tfENvbPxeldxwcUvy/B3pdXyBVbb+OeuaIhr4voU7FsHcRMGFBH+3bN4wP+lbNPGoSRfyYwA
 WWDdiKJoxy5WcMvPprO8OLWF9GnZWYZIHnl+5QW86Vkmsegh01yv9+cScC8rye1KaLwABVqvQj0
 32+MZBkuEcuOiyMxvabHGWsNdSAqgHHaUUb7UCBbWkdHU0K7/jv56GaAnaCApB+Cj/lvIZchzM9
 sf8Ka+qNNdgnbn2uJFN3ZtKugsVQdX8nfapOEICX31GHp3+CnGU6QiTs5De04gFZP57A9LP4+Oz
 0s6QisS54XwAaWlMsysQiFP7NhsEoQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_05,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0 spamscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512050099

On 12/4/2025 9:04 PM, Krzysztof Kozlowski wrote:
> On 04/12/2025 14:21, Akhil P Oommen wrote:
>>  
>>    clocks:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    clock-names:
>> -    minItems: 2
>> +    minItems: 1
>>      maxItems: 7
>>  
>>    reg:
>> @@ -388,6 +388,32 @@ allOf:
>>          - clocks
>>          - clock-names
>>  
>> +  - if:
>> +      properties:
>> +        compatible:
>> +          contains:
>> +            const: qcom,adreno-612.0
>> +    then:
>> +      properties:
>> +        clocks:
>> +          items:
>> +            - description: GPU Core clock
>> +
>> +        clock-names:
>> +          items:
>> +            - const: core
>> +
>> +        reg-names:
>> +          minItems: 1
>> +          items:
>> +            - const: kgsl_3d0_reg_memory
>> +            - const: cx_mem
>> +            - const: cx_dbgc
> 
> The patch overall gets better, thanks, but I think I asked about this
> already - why you don't have the list strict? I don't see reason for
> making list flexible and I don't see the explanation in the commit msg.
> Either this should be fixed-size (so minItems: 3 and same for reg:) or
> you should document reasons WHY in the commit msg. Otherwise next time I
> will ask the same. :(

TBH, I was just following the convention I saw for the other entries
here. We can make it more strict. But I am curious, in which case are
num reg ranges flexible usually?

Just to confirm, we should add this here for adreno-612.0:

reg:
  minItems: 3
  maxItems: 3

reg-names:
  minItems: 3
  items:
    - const: kgsl_3d0_reg_memory
    - const: cx_mem
    - const: cx_dbgc

-Akhil>
> 
> Best regards,
> Krzysztof


