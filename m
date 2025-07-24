Return-Path: <devicetree+bounces-199465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A65B10D43
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 16:21:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C89BEB03C43
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 125DB2DCF4D;
	Thu, 24 Jul 2025 14:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DRZcdVsx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79E232C2ACE
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753366671; cv=none; b=ZgrfL79DfvFGzZRSgHR/i7QyX+uAPSK1tnqvUpUEPNq1zaxYGZll0EVWeUZUBffI9NiWYg++nNFk9NLcMcy0fgX4zt+NP79zEheCqS4am9FbKtAdaBcEe6a2HFxAyGr7qJHZ2EpY4L2rcWq+dwBzSGe8r0zHx3Q3JHXDpcWanrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753366671; c=relaxed/simple;
	bh=M9qIGBMwsRvsee/Aa2Kvz9A+15R7AKW1pzGk8f83Gkk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OW8J4KJaaVveSHrakcyXOiDjvm9rvbqNeoGj2V6s/tcwpERW0wFFhhyFKcVCry8dyW8dYA27J/B0IWziDMtx+IYorKh9rJdPs1f+79qggoerDX82xjgaB/spb+yijOOExBouzNQmBV1mmpvxX88SrgARZrQqRd2QaPWaJa0W3Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DRZcdVsx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56O9XFsA012641
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:17:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	M9qIGBMwsRvsee/Aa2Kvz9A+15R7AKW1pzGk8f83Gkk=; b=DRZcdVsxwlDA5ZnZ
	VOXeELOmCkMFzq9wj3KtErgPnXhdH9tpZYpwv9nKdjfctExQZkJHIaW5WWgMtPya
	v1mGx4LFXJV/GNtAbzRvLQ0gvZ+N0wi37POn7cTZt8d2zHAINzYm+wLIKL/huLA+
	0cU0k8fDxSBKrn5rCLkWpqqhADyLSghK8V4Bcfh3Gp3FbuDlKjMY62OXPEh4HPpL
	5RhdYZhCHboBOs6VAKGgUyspgptdsqgOyBF6AojJeDsj3BLjUWsUsppYMTmdmf9b
	Fvsr/Ppe9R/BU/Dg8KGAknnlWvCfGSxXUF5Bvpuc8Tbxj5WDwZfyRNVYWWt2dboU
	R/PeJA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3hy0t0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 14:17:47 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b3ba7659210so772992a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 07:17:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753366661; x=1753971461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M9qIGBMwsRvsee/Aa2Kvz9A+15R7AKW1pzGk8f83Gkk=;
        b=PtEe45K2dXekzemf7QLIpzdl/3F2qmy9V9/bI25Iz8YZ5T4CQ4lopP8Od4XPUiHIJb
         Ny1O6eAydDo6KNH7KjLbx7WGN4NSLDmRGEwxUQAtpXsqzi5dyBq+BLZq59yBqGes7Iqu
         XxeBW7mmK97N0mcwutcaIEVv+M597RWKSQnXgE3DJ/hA0hLpQc7ZCwBRpSuJ4lsUuXi3
         J7CKEooJGE/NGy7Oszh9+XaIJEkAEbLDSDezNXotZlm0SWxS7/uco1hJsjkHJ9chw1nC
         VejO5QALF+9jJJuIeek5adJkUE3nrhLSk6NVo3C8Uf53dZc3MspmGEsN2+GYf/ri01dU
         PgPw==
X-Forwarded-Encrypted: i=1; AJvYcCVSkuB2Mqh06jGqrtno0J8XQS3YXtCoiNDgpiz8FIsFgqO5rY5TE88ly+g5eSq575XwI/9qNSwXrSJv@vger.kernel.org
X-Gm-Message-State: AOJu0YzsYOXxTRXGyXjtbc/1Gxr9fozgx8qtTL4k2KfTmQvKh8DrktXT
	WLUfcrcr8pnx4VKIK1SLVxAPFGhEqWHo4rUTRXcYulvzLaGRxtfeoKz4iJKG9Z8ZhI7q65QiCSK
	UDOdKzBhb/XYukFRq5/r6KR985/f5XB1tAyoCPU/EfZ9YTcbpS1HvS71XU1bu49+P
X-Gm-Gg: ASbGncv6atjniEhAZKz9vdozUPFbqllq+PFp/xfjg/XyOC6xT+vEcwgM1MN7evLcu3T
	NGuErreaqbhVGxkmyIzzz4afnYwOVwNjtE+/+FVTSdyv0Sna/KX4FwQJc3+DjRT+r/JlhlXGtV0
	FYA/NGR0XAHc5aeBoBMY/D2doO/OXW/Y2lew5V8Y5fh5ZBsgQqSzaBP/iea8coFyBTI6R0U7G2e
	xTA4NOT80K7vAxKYv9uUrGCc1mrcPLHnTvB8g+ycozuVQvHXStdip9+bzgZOuSPzZuO6AjoZjVB
	XG8zP9Lwbwn4QzM43Q7WrNUcTmPjFSLS4CvFZeNTfw4NmApa0j+nriqT3D8d0LQNMVcezIXjgDR
	33x+uA1Ub
X-Received: by 2002:a05:6a20:734a:b0:231:6ba:881c with SMTP id adf61e73a8af0-23d48fe3d5bmr10681874637.6.1753366660659;
        Thu, 24 Jul 2025 07:17:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGhvtFG0W6tRYiyGDcyMpsBo+LUbFikSwfNcVBQeALnG8xoshy53s7tiH9UcHqZ0iY3/+7/5w==
X-Received: by 2002:a05:6a20:734a:b0:231:6ba:881c with SMTP id adf61e73a8af0-23d48fe3d5bmr10681794637.6.1753366660018;
        Thu, 24 Jul 2025 07:17:40 -0700 (PDT)
Received: from [192.168.1.6] ([122.164.87.238])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-761adb7876dsm1830391b3a.6.2025.07.24.07.17.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Jul 2025 07:17:39 -0700 (PDT)
Message-ID: <807d50c4-5ee7-43d6-beab-7ce220911d41@oss.qualcomm.com>
Date: Thu, 24 Jul 2025 19:47:33 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com>
 <kad3hqxufsdescelmjhwy45ggnukh435wmo5wbbl6pfz2gq5ge@ycfsgtuwdkcl>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <kad3hqxufsdescelmjhwy45ggnukh435wmo5wbbl6pfz2gq5ge@ycfsgtuwdkcl>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6882408c cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=JWbiWFiXhu80OzE02/OSSw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=Xs_gmOcz2JqXoP2f-ooA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDEwOSBTYWx0ZWRfX5VnZGALmcNhn
 OkHgC2lA/F7YwzpHRhPsriYkcxfbPSMGeNhJaqixkfFiSd2VcQWLflGg3Cwtn8TfrlC9c8BABoB
 7LWc+Dc5mlSou6RTe83uAQV+MTp3W1N52MDNZH0lvTjONhwIDQCiqKvuK4+7yiqbudp166t2xGy
 RimNVA9YD/ORaJIBvr9/o3bgXtGr3Z7Arf/Dm2LiLwDR7YvpsC0gXJbI74hzkZ73eg/EvC+FXS/
 E9tqQc3IcRU9z7ibHvUjRTeyEnI/XYkbE43qP2Iv4EdkTMuW6Sowc2Aa3E6nCzDR6MIr0pGKmM8
 L0n19sWKCmik+5fWKL6UZAQ59K3ZB6XR7PBjW9agSEXjAB+hZbyiQ4nlvKw4FGE0KRb75y9FTvu
 nabEnc06ACh/pbhEppt7B265zi+FcwPSGwPC5Szjqdv8UqarkGJ2k6fTs2E0qEJhQRVUAZaZ
X-Proofpoint-GUID: 9mHUsxZoVnwpcA2fQhbBM_P0l39hMKOm
X-Proofpoint-ORIG-GUID: 9mHUsxZoVnwpcA2fQhbBM_P0l39hMKOm
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=554 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507240109


On 7/23/2025 5:00 PM, Dmitry Baryshkov wrote:
> On Mon, Jun 30, 2025 at 02:20:15PM +0530, Kathiravan Thirumoorthy wrote:
>> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
>> first SE, which supports a 4-wire UART configuration suitable for
>> applications such as HS-UART.
>>
>> Note that the required initialization for this SE is not handled by the
>> bootloader. Therefore, add the SE node in the device tree but keep it
>> disabled. Enable it once Linux gains support for configuring the SE,
>> allowing to use in relevant RDPs.
> What about documenting it as status = "reserved" + comment and then
> enabling it once QUP patches land?


Sure. Let me update it in the next spin.


