Return-Path: <devicetree+bounces-221740-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FBD4BA28F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 08:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 27D295602AA
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 06:44:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64D0B27B354;
	Fri, 26 Sep 2025 06:44:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gv7kMLG7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8F3118DF8D
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758869044; cv=none; b=Psn+RhxyOQlYoF8phd/04l9yB9l6qQZ19lSfDSF+MPiiOxK2EZm4KTzdb8MQlOOPiyFCZzO4uGiTgNe/zzqkjc50rWLnszLe+XsdGQ/RoPb0wgPDyIQBBK/dqdx5tfV6SbslKMweeGSwGvAnYzIwtxyI7Ln6dah2JpzPVHS68vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758869044; c=relaxed/simple;
	bh=FOe/NOS0bVJ6sIXlzze34one+JrpzOiKRfBtIMT7KL8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cG1a2IMRoQZX8gQ9gTg4jVOyg9Xwb+mWFvdPoPoqEv2XWuFlxIVYEjsvdQ1VPwM/19JF46YZVm0dntjT4fdxJKKJ6JJMlK+Qw5BuuHcDK0GzxfcqGiYxBc6bwVxFb2MA2wKTNNPUIDqbKSgS3xGZvYy7iy5Qoa+X/nvUzUlNdvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gv7kMLG7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQFVr001061
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:44:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6Ah7Hu/NIQtxfI1ZNYkMT85MCSf1K+iZhD9pTHSkz8c=; b=gv7kMLG753nHJm6h
	IifTCB5W3TxX+9cE4sIMjk52wWV4CjJHaepVXxtW0aKS9F4JDgYLEWOkQ75riPFn
	f9Eje/zx4s/YNE3fM03th/9Vzanymgwh0dOG8oqbsryJvu5JwZvwjKC+39GsD0W2
	yIIbfEvroJ95//NwQGhiTlHc0I962LLFnU3HuhT4Qv9CXErlmmaMjwBH9UJW1542
	hOTvatanXnz2pU3OuFKA7BmiwlCChusODnKvsFua/qQkvlzeUpK2hgtZVuWVHpDi
	BSdvpIm33GomGO2JzUxh+RV1VHS57NzY10gVcRggOic9QI8BTsM2ny6VU7qua3tM
	n/hfrQ==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0tsqb2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 06:44:01 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-77b73bddbdcso1658833b3a.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 23:44:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758869040; x=1759473840;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6Ah7Hu/NIQtxfI1ZNYkMT85MCSf1K+iZhD9pTHSkz8c=;
        b=YQeOaUgfjn21UDCf1W0b3CwR+9Rh/ttU6G2ry4AAhJFcVrsF3y2wuRS5i0xLxx0tlM
         p7xzT5xJOk0IJ41cQCJOpUFUz/bMVSgH5BOzyn4VK2RhFrPehYKzDSSAOfSEi3ozYhlj
         ircrDQx27cWSWu3qE2+U9OWs971UQuMbKIZC8z6Xc2Y+rtpKRiW7dOWM22yvlyoFMSvB
         rH0AvKLc77zBwHr05SHiKgJgo4/yWriTX0HjDMe5lhObmIq/F2JK6I79a2XKHbkhGgYK
         TFbcHYX/IdDnveL+dkew/bgp+j9r0LD6mrzMJUy2p7aP1MZwEC6tte5f1sGMDEhPbI2c
         pqBA==
X-Forwarded-Encrypted: i=1; AJvYcCU9z9FSGezOUva7ZIH8pW5GFhlw9suoARH2NF+XfNXKe32pJL4+L6RHOAhrzrcTFCCDuLXbseAc8Rg9@vger.kernel.org
X-Gm-Message-State: AOJu0YyvvqTJNsgtZXth1pYfyUi3SvHsdct47VfMMdZvuwO99G6THOqc
	AyfQPwcFwNXOQrF5pNy+JsQti7x3y30Q15LjzdUXn20Jd3QI796WcfTTjR0FTNkyDEYn0KX5Zo4
	FOb8pg1Ds0z1kOuoHmggz6/hXwA4dOmupZDxn1o3HlpDkafy/qk3J/mbdY1dVrMkX
X-Gm-Gg: ASbGncuUbb65GNiHHvWhWX/JuMEQGJ6kwIz9rq/hLFC8jLbA+a7AjxnvfFO8dcWbE5B
	nRUHDaL4+K0VUHXhRFKaPjBrB+aIobYtsrQiKGkbn6oWKf4av6VKXb1XYwIzVzY+CD8t2nSG06T
	QJ0OdeO48kE97kbigtZ3gLo7P1HjmrG+OBWX1OKK9zyjkmlqsyHSvNrjgtHgGJxJDoQQrQ7tYjr
	H/JQMm80VxJROJWwBwlwM/2MBOwdKrn2EvijL9lkq6CledpQTkIerQ4ihlGhZnb9zPtG/g4Qc7c
	ZqEHUw6esIYHYjgt2mjfIOWqy6e83IQ48W0U22mj/JuRIdrhIXCGLDEUWFq5VKYbkQNsy5lIst7
	u
X-Received: by 2002:a05:6a00:8684:b0:77e:6a93:71b5 with SMTP id d2e1a72fcca58-78100d090c2mr3814176b3a.2.1758869040164;
        Thu, 25 Sep 2025 23:44:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH83U8CldMXHetQ3laSeCGOU3ou7saMPmIGLdNDqQLrgkOKrsymG7SBpJEFJGicltHH5ioJ2Q==
X-Received: by 2002:a05:6a00:8684:b0:77e:6a93:71b5 with SMTP id d2e1a72fcca58-78100d090c2mr3814153b3a.2.1758869039655;
        Thu, 25 Sep 2025 23:43:59 -0700 (PDT)
Received: from [192.168.0.104] ([49.205.253.122])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238c1e8sm3674908b3a.12.2025.09.25.23.43.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 23:43:59 -0700 (PDT)
Message-ID: <f016d47f-919c-2944-ab8f-68e450e5836a@oss.qualcomm.com>
Date: Fri, 26 Sep 2025 12:13:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v1] arm64: dts: qcom: monaco-evk: Add firmware-name to
 QUPv3 nodes
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20250925042605.1388951-1-viken.dadhaniya@oss.qualcomm.com>
 <9b887bc5-eaa4-4271-8770-3458efb528bf@oss.qualcomm.com>
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <9b887bc5-eaa4-4271-8770-3458efb528bf@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I9Vohdgg c=1 sm=1 tr=0 ts=68d63631 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=RtG+38I8ePlRmB+m5sTI6w==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=YuaoIEpex40H7-UsjHgA:9
 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-GUID: _A3yZz6NbNu5Kzcsu5saEv1WfxwEVNdb
X-Proofpoint-ORIG-GUID: _A3yZz6NbNu5Kzcsu5saEv1WfxwEVNdb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX7tz5LF7F5VJq
 iGvucgHAzn3ukClTh5oElElObwjrf2hdXE00ZBn8Na1Ab0IEVCsU0vUs6wzHtd6rL1DHFwHGUKc
 1CEpbhurnkkO7k+HiBnqSU+Z/SohHAHb3tbXwZRQMzlqnIy38P05MNZQ5zYeg5aLvUahMGX9PmG
 P8mOpQ7C4KT4fZjjKu90HW8W9d5ma4RozEXouUlU5OswNNKS9c8lfuPEduNUws3ca84CNqLEg59
 IbtBmnmdxsEBJjTkEwGwdHr+F5ZSQCQuQgc6iIK27WVanaPEWoLh+9Zo/R3t+lTfgYs5x7tu0wk
 vm5mbFuzFM4ItafmvaLEJ7qaqDpSgWUfpKFLMLZwuUouK/8o98vZ/zcUa0/VS97jdw9ML8OMDO2
 U7dJ2BnSW+6dVIDEK4W7qh1GkWR7Vw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0
 priorityscore=1501 malwarescore=0 impostorscore=0 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171



On 9/25/2025 2:22 PM, Konrad Dybcio wrote:
> On 9/25/25 6:26 AM, Viken Dadhaniya wrote:
>> Traditionally, firmware loading for Serial Engines (SE) in the QUP hardware
>> of Qualcomm SoCs has been managed by TrustZone (TZ). While this approach
>> ensures secure SE assignment and access control, it limits flexibility for
>> developers who need to enable various protocols on different SEs.
>>
>> Add the firmware-name property to QUPv3 nodes in the device tree to enable
>> firmware loading from the Linux environment. Handle SE assignments and
>> access control permissions directly within Linux, removing the dependency
>> on TrustZone.
>>
>> Signed-off-by: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
>> ---
> 
> Viken, you've posted a lot of patches like these lately for
> specific boards.
> 
> Should we instead push this to the SoC DTSI, to limit the boilerplate?

The firmware load from Linux feature is applicable only to devkit boards
(RB3 Gen2 and EVK), and therefore, it is being added exclusively to the
board-specific device tree files.

> 
> If I recall correctly, you said these ELFs are not vendor-signed, so
> it should be OK to have them be assigned globally
> 

This feature is intended solely for use with the development kit and is not
intended for commercialization. Therefore, vendor sign-off is currently not
applicable.

> Konrad

