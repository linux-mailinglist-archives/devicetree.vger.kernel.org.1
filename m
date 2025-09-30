Return-Path: <devicetree+bounces-222776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DD4BACC63
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:06:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1C02F3BC121
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 12:06:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94AA12F8BC9;
	Tue, 30 Sep 2025 12:06:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iaoRTpuk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEF2B2F39CB
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:06:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759234007; cv=none; b=f+O3CoKg9XBzZfPfGpg2YD7H7STATCLYbURmV+hCmgK69Bh+CcJUG+lAfS63BJX7YD7K5QHAET5716XEhmGxCXx8nkhLD6HEL0xC5n59n5VhHF+QCKMjVyxSu4GBJ1WO3TCmdHaWb+Mk7hTSIhhfCGpLq2x5yu3o5oOKkCrXIeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759234007; c=relaxed/simple;
	bh=kTN82QZE1YVf3HwRi95Em/EAWrMW/V8K6a1OaEPGfc4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nuZ/7EzKTXUz3bBYCwZ5ZSXaO/8wfgxNF7JZcJ891+A3Z//hLuwtSKYUrbdCR4vnGOrBfVDAIVizA391HEZGwzkWGLr90MJ2YoHXzv7ROs9ngY8eD0xZXT5erNAsf4rMpbsFhIV9xU/8bwfxyK6DGCVqV6VWjCrh8OKZqO4NmIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iaoRTpuk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HWJo001000
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:06:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EkaBsegfjzyeBh8oOxCHkshGj1/Y5QRA9G6enyBN7ZI=; b=iaoRTpukXHuTeq3S
	WLKzIuWPnKgcExCUnR1/FE/rtI4GSCTocagt+tSpSP5xWZuIJ89ohsASpQbu0Po4
	wh9QAIzmHjyDDYOI5YmDH8XbeEwcGKO9RaZFHMgW2Ce4B0Y90UdRX4L6ipdcH5v/
	IOoPXA7Ju/MEWkKFMP2ANKt9OWGNADLETSx1k3wCFGwODocFPE+GYb2WRHT14z21
	nuCg6nxnlHJavri9aAhtp7BNjwFUwNd3fNtRznewsRtqWMXpE8onEQ1M3wC6M0E6
	XVPmX8UD5C2SkX+df4Q80a5ZnEt8QoKyVlfy+efBSDMWJmUQaszLZXDXOfWMiwmT
	mT5P4Q==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr4avm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 12:06:44 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7821487d16bso5747434b3a.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 05:06:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759234003; x=1759838803;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EkaBsegfjzyeBh8oOxCHkshGj1/Y5QRA9G6enyBN7ZI=;
        b=kZteGM41TFQ9zxB2JceXN1vaNPnASKoXmVt2JqDea7YjtACF6Dxdcuh8dBcWlWmcrr
         Dj95QUoHHKcuxeTI84BK4Sgkl2ROTt5l75/J3jqdNiD4sXakYDbzxLCu95EzYsEOamFV
         +WqxTfbrgHBrAamX2p+cf5QYxOTEShrBKS40lxyenLp9onQspmaVbXJRsjq1OZmfGaCV
         WuWoNS8ekL9Euver/y2fTyJqruChl97uN782h/BtG7OYJhgn7PuLDysNZkTae7U7x1qj
         2roTVuB8G8KF7R42gmhy1NHg4cs7+Sz8Rimqmw0PRCoHU3zEPFB0WPT5UW9DILOJrOan
         OH8A==
X-Forwarded-Encrypted: i=1; AJvYcCXkQwlto43lclrxKTMB9CRim2lGQ/upsXjO/gzKPBJXJc/kq29Esdo96TG/L1u7S2cDTKkHbhhC+e3q@vger.kernel.org
X-Gm-Message-State: AOJu0YztWak0nPAVt+Uhuq5yef62Gbfa4LVhrLJGlL4lqgr1iuPj9eSC
	HXcTcUOt3DN//E1Cwa6cquIhgHisnu3wrEQ7k28j5sF1+wnc+LQYCPJz95LR3UKyP+6anbSJY9N
	7oxL7TUXgoUrShowKdhpJ/xptsR+xW3hc497lyqAbRswdZW1UunMOT1cb6urtVE2A
X-Gm-Gg: ASbGncsHzduxXdW09re78l2kMqWFPp3awZIVBvwrZvzZwQBJHNhdkl8GM4nZCBNjazK
	Igk7XZ1VUrlkjDzTIcQzpECDMQqUkLcT/mKSvrmQiONOPe3nyaYv4VyF2bIBADHR+Own+Nmj3eA
	e1go/U4pvQHuDMblKw5Vy+pHsFQ77YZCNUurNz9NRaEEqHT9jJ0Xg5qFXmLu/Ptt3XUbuStyCTN
	BqTV7NkTyx9mQwhCw/pkUu4hbrKXsMLatMMm96ac+HAdV4MKuKJyIe3PGU2wNwcoGduiyZvWqZw
	LzLivga6b5p04wyytWmNv8Soj25ou76z/eMflF2txaQL3l2BS/TeqX2g94OCyXlM9xtCmsLJHs/
	Yt2w=
X-Received: by 2002:a05:6a00:3e27:b0:781:2538:bf95 with SMTP id d2e1a72fcca58-7812538c1afmr13271686b3a.10.1759234003398;
        Tue, 30 Sep 2025 05:06:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGAWC6qZJiFW1T+hfkMFajhkKgE2qQSFj6mEYH92+MF2n+0pztInszFB0KjM2zlM/1ETInsQA==
X-Received: by 2002:a05:6a00:3e27:b0:781:2538:bf95 with SMTP id d2e1a72fcca58-7812538c1afmr13271630b3a.10.1759234002835;
        Tue, 30 Sep 2025 05:06:42 -0700 (PDT)
Received: from [10.219.49.214] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c07696sm13638107b3a.74.2025.09.30.05.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 05:06:42 -0700 (PDT)
Message-ID: <51637d37-aa5e-492a-851c-e5d6bfbe421e@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 17:36:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] arm64: dts: qcom: kaanapali-mtp: Add audio support
 (WSA8845, WCD9395, DMIC)
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-18-3fdbc4b9e1b1@oss.qualcomm.com>
 <CAJKOXPfY-CpE_aKd910PQ2+u9ux2EvuVEt9ArzhdVCJcTQJUQQ@mail.gmail.com>
Content-Language: en-US
From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
In-Reply-To: <CAJKOXPfY-CpE_aKd910PQ2+u9ux2EvuVEt9ArzhdVCJcTQJUQQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX+bn9Gd1fUTv0
 sK5qYEhdrowoMbHGlgVl+ZbV1vplXt+64LAmcxm6wsZUFKDo/5BQRAjI70DOboH6Z82ajeUYbCC
 2b/B/KmXuv0gx1vx4LIxWAIePpfJ3lBBnCxy7/D7UN9jLQwu6kYf2cm6fghe9dR6RwAlRd1gT0P
 44JLegKZVRs93Qg/RdE9hqO6odzej06+xzHFnKI5JU6+DBvTRsJWRrWNAxrl3ywrud7luGtQfTg
 u8d2Of02/GYx0ipB4/eLsrNRRsjtGSQZkarieWy4O/+n6Vsoiam3eGwvpmNT237zPzT2PMPzCRW
 yUODw+j7/jC8E6DutOezaFS5BXDW1HO+3AhiAOPCQXQ5s8iLFBP/3a4vJWEI0COd4j3VP7zQrkt
 09qMIAaskm9HczgURE/SmWThHjyDIw==
X-Proofpoint-ORIG-GUID: mocSPRxmO2OWUq5zEg5yJL-dozT5XJFS
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68dbc7d4 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=LNC-FtsJvgg718asVBsA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: mocSPRxmO2OWUq5zEg5yJL-dozT5XJFS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_02,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082


On 9/25/2025 6:56 PM, Krzysztof Kozlowski wrote:
> On Thu, 25 Sept 2025 at 09:18, Jingyi Wang <jingyi.wang@oss.qualcomm.com> wrote:
>> From: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>>
>> Add support for audio on the Kaanapali MTP platform by introducing device
>> tree nodes for WSA8845 smart speaker amplifier for playback, DMIC
>> microphone for capture, and sound card routing. The WCD9395 codec is add
>> to supply MIC-BIAS, for enabling onboard microphone capture.
>>
>> Signed-off-by: Prasad Kumpatla <prasad.kumpatla@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 226 +++++++++++++++++++++++++++++
>>   1 file changed, 226 insertions(+)
>>
> Audio is not a separate feature from USB.

I didn't understand this, Could you please help me to provide more 
context on it?
Is this regarding Audio over Type-c?

> It's simply incomplete
> picture which is wrong for case of submitting everything at once.
> Either you release early, release often (which I asked you many
> times), or you submit complete work.

These patches enable usecase for Speaker playback and On-board-Mic
Capture. Do you consider is there is anything need to do to make it 
complete ?

>
> You don't understand how your own SoC is organized and create fake
> split and inflated patch count just, as someone admitted, to have LWN
> stats.
>
> This work is incomplete, so please start organizing patches per
> logical features, not per your patch count and company KPI
> .
> NAK, incomplete patch and previously communicated as non working

Earlier there is an issue with SWR-TX interrupt configuration so did not 
work. As i fixed/configured
interrupt, it worked and validated on Kaanapali-MTP.

Thanks,
Prasad

