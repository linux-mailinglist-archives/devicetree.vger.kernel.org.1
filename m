Return-Path: <devicetree+bounces-232606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB30C19565
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D21094EA499
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E7D930CD8D;
	Wed, 29 Oct 2025 09:06:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GiY0piTp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AYlvD/V8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 558FB2E0939
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761728817; cv=none; b=NnddhkA+Xm3tHnwiMa2Qd42hgQ+wE1jxotKBuM78S/DDuZhmeST03FLHKmcf7V0s/kAOhkWzYCM05dcJO4L82hsPq7eqxI4ohVJo7NtixjJvVx75ktX2W7ZS9AfWgjCjII7HDxt86/m1nCTCEfnZHQTbxJhFePke5169bMJMUWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761728817; c=relaxed/simple;
	bh=/aOcHy2cGKnKF0qFCj1+5HOdnIw5VqiLSzrAYeaYa2g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=usXHTIkNHBdYas7T27v5uaZZ0TdpsYLG7nBXzJfqVK38dftX9K5gGp3nr1o7DuBfjjVi4IrdxdzkMaY2V1p41O9W82SSabUb8jBzaPZxEyiEanqUrsdCye1hCVn4TnUlMy7eJ6pzxXVRKZQ9vPBBkNnyGrlandnFUSmYAgE8b7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GiY0piTp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AYlvD/V8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T9332W4155211
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:06:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ej0L6LKhytRGlWJ7FZb9k2KB7kgXNOZxH5vlNiTRSCw=; b=GiY0piTpqDsnY58A
	/KxblI9qLdx5MjhzLMYbTxvASq1uH5/oOG5H4jAX7VFBl0UkD/GdyUwtg0NfDYmv
	0CQEm8hrfYCX762DYg/0WPbGDKZF+z2rvwIXQ5zZPmcWwyQOhWiJd5fFRaFHvAWG
	PGutwSt4OBQmFXipMiHsSaCtePW3dY3HD2QEeP9Lauijyw8HswD055767l71dJRF
	qG3tQesJISb8dSup3KHshn+OjGIc/WCx7oohXiXWhd6VvyCQa+l+363MufggwpXP
	J034m+SD6YbwxmZMPndCSHpXMy+gaJk7s6FbCbrQFEL6kGkEgIUotS946fYdayng
	CTX/WQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3fy0r0d4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:06:55 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8a4f7e885c9so106640085a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761728815; x=1762333615; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ej0L6LKhytRGlWJ7FZb9k2KB7kgXNOZxH5vlNiTRSCw=;
        b=AYlvD/V82FVLJQ9BToy16UnUg6E8Jdotf73V+ZH3eWKyOeySYz5dXpCq1AuVwAABW3
         NuY7ybEixiC/kbR5L10IhjJ/1CYOEMA/WKP4TwubmPCI8R5ztpRRAiBWIJgC6jt1iY2+
         tAu06UofjCAcVerJLZO5DdhA2Pvm8JKk12eyU9NwvGpusshQXDPQ8JAQakCyRd7JdTJJ
         Gk3ge8tN87F0bSjzTpSVc+UKukmykIuM4nPsHdLMwaDV6AFK55JoDizkgLV4jEFIXR/X
         lqmDJqEr5l2p24lN7A9itw58Q4nQtWc516/2BuulCK5yl4c9utBtzhtA8VN7mY1eMAVv
         bj7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761728815; x=1762333615;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ej0L6LKhytRGlWJ7FZb9k2KB7kgXNOZxH5vlNiTRSCw=;
        b=uFMVvLECxqVV7mErZzG3Pt1kWJtvdmK82jJuD9hNhIA7Dt8kSOFqgjUItH3TDtCQSM
         HgMOnPBlcdgEFd+6K8kyLwgNky5omsrm/Ub/8CN66a3J4YNuqUwKf0qiqLE7QcQuSZ56
         CoCoFi1Cvwong0KfEE4NPvu1qd5i/S7cfOduo0azG0hI6Bfjo+Rwu7OEgVeXOwZmTFMb
         Bw4Irh9jMvU19N+leuQjnvnYX4s7dDSyoiHHbR9okRPBvALEfFd/aJF+1DDHRXzX0DYR
         HdgY6wudcEGWG71F+OYWcNPjiyYhOAM//kfRs/KfwxTJxmgKxd/PCWXOyjyaDAEfZQhG
         MVXQ==
X-Gm-Message-State: AOJu0Yx5HU1iBog5Sb9/fK3UxLXoj34ZU56EBfz+9B8Z5ETmFf3h3KxT
	Neys4eGHQofLuNJG96MRTpow1HBNkhnvGg6GWh3kJ8szcnpr/RHEx9PfhYdiHDZNiPKIF0PXHYf
	k5EjQy37kaIyRXe5R2SE9P3YO27rErlSBjwa3tsk4kqcrYnIvFb8TAba2d/uNhuV/
X-Gm-Gg: ASbGncugNCye6l6d0NGFqeE0YycTU2oha//0LVI8UQZgTPY5Bzu1nLecxmYaZbBLTLP
	oN5yC0INeVLnQSPKN+5sQoruQnt9rgd+zUTEAkyMiRze8wPB9cKicJLIoSO51n1Y+ZJWwYABeTw
	AyNZSgFJqXV55R6Uq/dqNIHndnkogpqndVmyohNWTiKxSJXxULglAwwkBpQjdpJQ82SSceqV6/8
	G8yjYuWh7KTX6wEm9fLB2nR90kNKxdKrV3trcZNtJZNYbd8YZ5T09OYpjjv6foVg+OS0Buh9Zv/
	ILLZfeURgf2YJ42nxoZfIsxZVA1Exox9IxL4McZFBKvP8LpKAMnEFj7hXmNXAdghzPxMGQ/FLq7
	qvrGazPw9cqWX8nRnoNF+dzcbbCoP7KJKiqsFxma9od/HdD5eHI2EKRUC
X-Received: by 2002:ac8:70d4:0:b0:4ec:fc4d:372f with SMTP id d75a77b69052e-4ed175111dcmr8545191cf.10.1761728814722;
        Wed, 29 Oct 2025 02:06:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElbt4qWPPUXpf4p9NUocwcarMsftG2aY1qck6zgu/XgkjJgWeUk2ELHyKmZMN1dhAIjOB7Sg==
X-Received: by 2002:ac8:70d4:0:b0:4ec:fc4d:372f with SMTP id d75a77b69052e-4ed175111dcmr8544951cf.10.1761728814248;
        Wed, 29 Oct 2025 02:06:54 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853fb3bdsm1348086466b.52.2025.10.29.02.06.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:06:53 -0700 (PDT)
Message-ID: <d99b03f4-ae44-4b7d-b4d0-45e2c3058db0@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 10:06:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8150: Add support for Xiaomi
 Redmi K20 Pro
To: Piyush Raj Chouhan <pc1598@mainlining.org>, linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, tony.luck@intel.com, gpiccoli@igalia.com
References: <20251022054026.22816-1-pc1598@mainlining.org>
 <20251022054026.22816-2-pc1598@mainlining.org>
 <ccdd5d44-2382-44e9-a56d-cbc5da23b13f@oss.qualcomm.com>
 <5C7DC3D9-8DBB-409C-8672-6388EE01C320@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5C7DC3D9-8DBB-409C-8672-6388EE01C320@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=VJLQXtPX c=1 sm=1 tr=0 ts=6901d92f cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=OuZLqq7tAAAA:8
 a=_p6pwalp-NRVsU-s1EEA:9 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: PAOJDoxlWVHEBmb1NVzqaU3IBfljwwq7
X-Proofpoint-ORIG-GUID: PAOJDoxlWVHEBmb1NVzqaU3IBfljwwq7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA2NyBTYWx0ZWRfX72wuUrK/ssFG
 DNZeZmKd0bn+a3yNp2zjsPbB7f8v6+AIFLtPUlBGTL5h3PaEPlVcta6mhCMvwqI4KX+8XLTbNOH
 gByAk9vg/fnjLv/J7ZCKIKYAyXiCf/El1W3NQm7E4/+gvbJ5JS9ae6KDpWW9KFs6sYZHAm1wLBH
 Xef5zzYmLr7sTZT/FW4zzYYGPUlw7qPvwFWjizJl0fmjmoECf0UezvIBnyq+dN4WYYeWFrPvkP7
 rA0p+CAxrUcUGC8nDguA11pxP8DDFnhMr2gG75eCW4R/ScFRRHI5B/HOOi8My2+rRzfmrtm22FE
 ik27+LQ66uJQ/z6Fu2Fkxac5cwpk7i+GUapsd3gcTKDKOmsVzWI8dcGHuDGFOAfSIjkfpyXMzGB
 l33EHhp6B9dj0n41BUYjW/j2XhsOxw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290067

On 10/28/25 5:13 PM, Piyush Raj Chouhan wrote:
> Hi, konrad 
> 
> 
>>> +
>>> +&i2c19 {
>>> +	/* goodix,gt9886 @5d  */
>>
>> I see there's driver support for the GT98*97* - is there a chance you can
>> reuse some of it?
>>
> 
> I am currently testing touch on gtx8 driver which currently is in lkml, once its merged we could add support for it.
> 
> https://lore.kernel.org/linux-input/20250918-gtx8-v1-0-cba879c84775@mainlining.org

That's great!

[...]

>>> +	led@2 {
>>> +		reg = <2>;
>>> +		color = <LED_COLOR_ID_RED>;
>>> +		function = LED_FUNCTION_STATUS;
>>> +		function-enumerator = <0>;
>>> +	};
>>> +
>>> +	led@3 {
>>> +		reg = <3>;
>>> +		color = <LED_COLOR_ID_RED>;
>>> +		function = LED_FUNCTION_STATUS;
>>> +		function-enumerator = <1>;
>>> +	};
>>
>> Are there really two separate red LEDs?
> 
> Yes, it has popup camera with an LED on both side, i have verified functionality of both LEDs. 

OK, would you mind adding a label= entry with perhaps "Pop-up camera
front/back"?

Konrad

