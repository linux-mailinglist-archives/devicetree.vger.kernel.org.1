Return-Path: <devicetree+bounces-156598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89D1AA5CC17
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 18:27:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BCF4C1775BF
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 17:27:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E3012620F3;
	Tue, 11 Mar 2025 17:27:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VFGv5oWf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E51E261576
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741714023; cv=none; b=U8va8s+jVOB+Tf9XJJxYTk1dRD7eyMy0nnWnD0eZb3Qzhcq6CyMeUneGR2fECPkDFqEeX2PZ/8unaM32YLkC9VO1Ek06BOQaU4LnFdY+ALcosIAUwge81sEtsn+NC/m4NFNFvPVWJRqdyS7QEspHgtSpyXhaOs8j6cnIfx2pn/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741714023; c=relaxed/simple;
	bh=XTIRAgPmD28skDvfDwDGIOCVy8D0GYqUCBr9UNVDX0Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sZdVB9tOjyPQ6062qXS8TRQDMkOA7fP4QEtWA4+5lgrDr1xyJwp9+/S0VOIDF0yG1xAZ0z4C9X6pEuxf1rLwbDRDeKtYTKpGqNFZ6IeOtXW1Kwtq5iFehAMMY0ccHlp2Kp27Qh06YPebhcXK2WDqJ3wrEE+smRv3UDXe5F+QVx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VFGv5oWf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52BGYRCi010520
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:26:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	modCKFlPbohmYS2UCFV6htda6LZj2dmGCzj/GUvT+OE=; b=VFGv5oWfJIvhnUAl
	4zvjCI66xOiOuk/ivNSRQm07MmqeMg0RKuuir9Gfx20xH7YnLHvEXwKdjB7l+EQy
	5NsrJ/bm1qYO8xpq+JUoMQ8NkLBCazzhYSuqr/PBP9Qh+a0mEujKayl+YCQ8fObq
	eUcFtM4ScROXfzvsfotudNdFUz2xfGpda84fKGCdaxqVqBjXCvtJDXV4Z7ouliIf
	0OFAuTyQeRoICh8vVWd5jx9kOv/CiR23vvcM+1NUMJZ7Hh7QQj4c0rRZWVeZkyT0
	OeSROwoWmQ15OiU8VAfgksx8oeVbpLxsBRdzIYQyu4lC/Z7HEpH6AQ1l7kLDYorH
	lfd0gw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f0q1d6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 17:26:58 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c545ac340aso29791585a.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:26:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741714018; x=1742318818;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=modCKFlPbohmYS2UCFV6htda6LZj2dmGCzj/GUvT+OE=;
        b=BK5CxiTv3y5MxKOK+Q2PGxhLevuXsdukCabZzEL07FyLd4bx8HSxWJu+95CKvZvDYV
         +yNTBVNIzkR9TWn2WP09T1GavNjarLX1O0DqDWasKDqVCTvNYIRpqGpLjyUn+AaoUsev
         tdSfa4SYvGhVL6KCBsYZwYtj6fOEJdrr0bX/lGBmzKPruXBvzsG0dbde9nxNK6CXq/74
         wEAk7R+OgkQiOj7MTsaKyAmdwJEnu5KWhCuZz6M3C2KnyEFcARH16dHLSlN3I1UqPZ8u
         G/oBD/rmgq4lVn5urdey0JJ0f9SEDCeV12fWEZpK/48vL/HVCgDhsvu3Wbnxv7FbuHOT
         kwDw==
X-Forwarded-Encrypted: i=1; AJvYcCW4TwrKuwZJ7ESC59OTUoN96fXJy79w+UD7Yfdk5HxWi9ZDw/RyBW30szOyGRzpRpzkJtwKqNcVAcJS@vger.kernel.org
X-Gm-Message-State: AOJu0YyaEyfEGJPWw7tmQ95zViFlYXwqw4YDtqn9BOswLxdXnPsbEImJ
	snYANiZgJtOVUUtl6oZLxi1FwK6tVkWUNgFG80/3v775jpxqz/K3lMsobS94iyNzy+OBFuJqHbS
	GI4ctZqq4WPsPPErgektpGPjdNHjDnM86IWEYtWEpVntYNSWZZDQVWcYPv56R
X-Gm-Gg: ASbGncsR0XtdpALlnzRKdGPvYNpBMziq3XCtyXuqy3lKnKcc40So1H3FtizxTsoWYTa
	PWlU0igwPEhag+tStOn37L8TA5OlZdzdH0kE6atzhZeAlksJ84HD7O0+Y8YHGhKDmUFFAym1D1D
	rUxCDoRnH0VXo/qR/oXBGbBqNSWoRLjcphYOgeMQ5a7nQqc5eRZv8fF02rZfknMBkcRTkmn0O/5
	7I/R4PEjrNoHdC9MubhxwTTQyx01gBQBVp+M0hsKTrgxnESRrogc2eZpRmz+vV4NofO4uET1xoe
	b80HEA/AYDQAZ4APIy6X21/NMmKExXETjK5kpxOf+oPIkOOvmOQ4GwQBhzwhQIudqJkPKA==
X-Received: by 2002:a05:620a:2989:b0:7c0:b588:992 with SMTP id af79cd13be357-7c55e883133mr250949985a.9.1741714018106;
        Tue, 11 Mar 2025 10:26:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG4PwZSzygwJpbbK5qOQtPXbubl94YgeE3+YlE6YRMOV6fyG+MXaxjRZxgCRgDfKWP75HKduw==
X-Received: by 2002:a05:620a:2989:b0:7c0:b588:992 with SMTP id af79cd13be357-7c55e883133mr250948085a.9.1741714017691;
        Tue, 11 Mar 2025 10:26:57 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac291796eccsm453035566b.25.2025.03.11.10.26.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 10:26:56 -0700 (PDT)
Message-ID: <f93baac4-7415-4d31-8000-74f42340a933@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 18:26:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sc8280xp-crd: add support for volume-up
 key
To: Johan Hovold <johan@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250307171036.7276-1-johan+linaro@kernel.org>
 <2aac1aff-694f-41f6-8849-f1dfe802a1f4@oss.qualcomm.com>
 <Z87Yi6IQEIhqu27O@hovoldconsulting.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z87Yi6IQEIhqu27O@hovoldconsulting.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 3vs9KEUEPgjurlmAvCKg-FrSHxGU35NW
X-Authority-Analysis: v=2.4 cv=KK2gDEFo c=1 sm=1 tr=0 ts=67d07262 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=n2lFrQNbv3neQDgrPP4A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: 3vs9KEUEPgjurlmAvCKg-FrSHxGU35NW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_04,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxlogscore=999
 clxscore=1015 malwarescore=0 adultscore=0 impostorscore=0 mlxscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110111

On 3/10/25 1:18 PM, Johan Hovold wrote:
> On Sat, Mar 08, 2025 at 05:26:26PM +0100, Konrad Dybcio wrote:
>> On 7.03.2025 6:10 PM, Johan Hovold wrote:
>>> Add support for the keypad volume-up key on the debug extension board.
>>>
>>> This is useful to have when testing PMIC interrupt handling, and the key
>>> can also be used to wake up from deep suspend states (CX shutdown).
>>>
>>> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
>>
>> I'm lukewarm about this since there is no "actual" button for that.
> 
> There is certainly a physical button on the debug board. And the UEFI
> firmware also supports it (e.g. it can be used in GRUB).
> 
>> Does the power button not work here?
> 
> For wake up, yes, but not for testing PMIC GPIO interrupts.
> 
>> If systemd induces a shutdown, try setting
>>
>> HandlePowerKey=ignore
>>
>> in /etc/systemd/logind.conf
> 
> I'm aware of that, but the volume key can be used without updating user
> space (possibly also for CI testing if that signal can be controlled
> remotely like the power button).

Alright, I see

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

