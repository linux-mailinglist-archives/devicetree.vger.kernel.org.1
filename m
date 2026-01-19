Return-Path: <devicetree+bounces-256639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F21D39D85
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:51:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 40B7D3006A65
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:51:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4235325783A;
	Mon, 19 Jan 2026 04:51:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WEH8pBmE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z1ni0C7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBD61B81D3
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768798308; cv=none; b=LQ6rXZ3+A0oCTT0ZxIbb1exPbHZjCrq/5Jye9hHXh67RKnQUp9fBVKkqszjxd6F+wLDpn5GnraTrTyKT/07WYOra3iYOlk3lLE3P/0GofITKIHfiqWAgXUxi3ONMRmoxuFvFsu3bt/zbsBNYKbP1JqFaO+x7e+HDCiWbQ03kCgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768798308; c=relaxed/simple;
	bh=D9Vaj7OQrZmk2pDElqiYd3JWff9QOz69KFSU7Ygjlp0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VcYZi6CYYUrGyQlDH1ozcBOu6GmzCpItFOj60i5MnhUBDm1uVdYfQepGOU8Jr4h+tvB0rqPbib2ePXBKrxcAIoCmwxLYrd5dIKz/seDR8T2xfnPA729c0iKRL3oxLKjc6EoDVP1itJmKeWG4Uy86fi+AhkCkGcR7pMoj7pExJug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WEH8pBmE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z1ni0C7x; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J1dj4Z4134409
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:51:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pe0ppVmVWykTbR56gl2RExAsGWnQBkCtnrcpym1xn84=; b=WEH8pBmELQ0w82pd
	mqDBlC45btg3vdqzZ064cdjHJfZxXD7nRGzb0luu3rYmU/GcIGqJQDBrmbOtvdA4
	LbmNfaFQWzIDVYIU19XpJuDEGYOa+/XzMWfOQRo80llf4tEXLKcm3wrmuk50jVQb
	CS/nve8+NwpPSs+aJZiaSTtGzIRRmTJM/zZW9RAyxx/pHj9k3dKj5b+wwVC8R76P
	LIxJsn39Owokbft+hoXUe/cgYaZT3mkdp2ojS2XDmjr40e7i14UfSvkXWDMd7li6
	1WEq1vx9y7qmtsw/jzLEdM+Jy38Kt1abemT2W61790Fp6tJwDaM4vQcGaM12XBMG
	VDQPtQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsb4yrcqs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:51:45 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c6e05af3bso3752561a91.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:51:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768798305; x=1769403105; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pe0ppVmVWykTbR56gl2RExAsGWnQBkCtnrcpym1xn84=;
        b=Z1ni0C7xYmHQMXAeWahHRTnLXRl3EZxOlI5JKwezxspeMNIJFUVT+lw3yzqZmqFX3r
         rg+SMCpcrWMqDmYSPmVeIYa+SEJkh0aMr/z90CwXB1fR01LtkP4LKxbFmJmIjX5s+sov
         AHjlAdvKnkjsJ3j00kmz0hX47G2jXNsm3CPg4ln235e7rlJCFQOjuPS5SaQTb85Ryn4X
         Mvbjb7Vov1tWj0BB31wGfdVLf4FfQrmzsxp+DAPxegftNp9ojygjTD6jA7sK8FNSEtcK
         Gwc6aHgYocoPKD+U6MA+PuqvlC5AiRj1fq3D6ONu9kx5Tj4g/WBeU/d1KCFkqoQPwkGt
         3HLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768798305; x=1769403105;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pe0ppVmVWykTbR56gl2RExAsGWnQBkCtnrcpym1xn84=;
        b=nlG2Vc8pOMqDEQaDHs1+Ku9lCicxI3GPGczHAOFYXqEqrq/JZ0M2Twz0QGW/hbKtRq
         WNzeD6NKPXdH56E3Y/qGXB3iF1Snss0Tcf5dftwCMCy1MBKQbnBlzzIPW+gT6KJP8ms8
         Uq5mZ15IM+3YOGG0vhnKV+2eBrhCCyb4JXGSEpd0msZsAvAZyY0s8pwCg29Gz2fk2Jc9
         Yc4MSNWQ9u/KAicKNqIYrzmuJvoOZG4mXjwzR3w8ORRa91tipTg7JqZimssOrIVENGjy
         Z6/J7FOPzOpKWGco7MMDrQXZYrBDxsViQ7P6IPSi2OOOk63X1c8VLMcjQQKWjE2nRq9/
         hTQA==
X-Forwarded-Encrypted: i=1; AJvYcCVftUY/JLI2Rg4I6EK1Ky9usxuARcZ9kA9ODnc98pxBp5o9FsgTMBYEVJ4pv6BUTwWN3d57GpTyIKbe@vger.kernel.org
X-Gm-Message-State: AOJu0YwuTeHV3Ey33OzVkBBWp05ST/k4Y+pr/CkAQx3d1Q3AzsbGeOGz
	kP1rqp8+crUW1JODGsJlrKuDKVP4SJNKRngIV1ZkaXETfB+MPb6Pl8tCmIuzfHcInjDY74XYwka
	0P9dPWxxM899DaEd2d/0cLwcN5oAr44DPlzfEaa1q70M6RCM9UyVMVrBCjTvOA4Rn
X-Gm-Gg: AY/fxX7hqwIc1t22ghOBi8pDJUJ9rzi0iw9JNE4f7WGrIu3j3Iy7TX2iVF85OEVndza
	X4Lknn8a+je/iFmK+RaV0AYw7e0JUTXnl1Mm7QlfcD9XgqkSjPCKW9WLN0arfKi1P3QagtSAQUg
	g5rHUDjDnhhL2Yu64KtRh1jd/GT+6jzwehmLTHvuhY0++nJnWTdiXVHu5kfS4TPfGaEV1hXE0af
	OGRCjcGIIsCsefBaRSLZHbPITZE9NGpZZI+R4vi5GzcBaR+T9gWf33M3nT7MMmjTk3UO91tLoDW
	mHsslTAaEcWHeOFvjDJrg/tyYjQOMBQvtoBPX2Mymq6Y5Moz3ckME7jVERNV8RJbGc3pfNPDC7e
	n373lYBjXBD7W6Z3zC4N/n26B9YZUUQ01dfFSSv5e4A==
X-Received: by 2002:a17:90b:58cf:b0:349:162d:ae1e with SMTP id 98e67ed59e1d1-3527327df4fmr8987884a91.33.1768798304539;
        Sun, 18 Jan 2026 20:51:44 -0800 (PST)
X-Received: by 2002:a17:90b:58cf:b0:349:162d:ae1e with SMTP id 98e67ed59e1d1-3527327df4fmr8987850a91.33.1768798304047;
        Sun, 18 Jan 2026 20:51:44 -0800 (PST)
Received: from [10.218.4.221] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3527305490fsm7835596a91.1.2026.01.18.20.51.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Jan 2026 20:51:43 -0800 (PST)
Message-ID: <316fa702-6cd8-4842-aecf-c176a5a53e2e@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 10:21:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com,
        mailhol@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        linux-can@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com
References: <20260108125200.2803112-1-viken.dadhaniya@oss.qualcomm.com>
 <20260108125200.2803112-3-viken.dadhaniya@oss.qualcomm.com>
 <n6affntgff5wy4xmm255v5h2ejpepicpz2cybcuvsxmry5td6u@jucskv7zrzvv>
 <5cdfe5a5-3c78-45a2-886c-768b224ad776@oss.qualcomm.com>
 <wbx2qrkhpsntggzqkzkpi4sa6qv3buhkjbwmjoa7zgw2oc4b7u@qugyhcxb6qrh>
Content-Language: en-US
From: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <wbx2qrkhpsntggzqkzkpi4sa6qv3buhkjbwmjoa7zgw2oc4b7u@qugyhcxb6qrh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=SNhPlevH c=1 sm=1 tr=0 ts=696db861 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=4ibTxloRqUhnMlsHXSUA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDAzNyBTYWx0ZWRfXwr3z8xvOWQHR
 8Lkb2eSo6ySusoI66atJis12E021FNr7WXsoazDwQUR63sK2qaN2km7GnDaRd5CKqSkmBC5cVYm
 ugMHP92RXPH4EYWOab9NtL15evNGlFJQhBD+5BDxabiFIX8Tt4Z/7xOlRycg1TsPMxv6ot5yjHj
 aZLs+znB+KGBCpjaZK+hz9oyxAoCGItvNduvcWeLD6MiHPC6YWymUu4yn6elc2Pc0/Z92r2kg18
 1Qmjhb8QIf2PuqIjX8gAhkf7doYF9+fRok6VkK2x8hVDuV3iMic+kUU+rUby83lPGYxTHk8iPdU
 GvIxUyTCLP4Bh9xBYPXaHkHqj2yUMr5oAp1WzXe0c7aQMfNv1Y4syFP03y2fRD+xJblzT/9ifMa
 eruf0P122cD++1ncTMzKnQMeByVSYioNpch7ZrXBcD0BT+5ZZWR/YkU6Qy2UFyp5EzXFoDV6Kz2
 m90VMcmmjpDKT1ijzEg==
X-Proofpoint-ORIG-GUID: QdIJtOkgiyGnYPKTBDaR19_jV6PEqG5i
X-Proofpoint-GUID: QdIJtOkgiyGnYPKTBDaR19_jV6PEqG5i
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 bulkscore=0 spamscore=0 adultscore=0
 suspectscore=0 lowpriorityscore=0 phishscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601190037



On 1/9/2026 7:35 PM, Dmitry Baryshkov wrote:
> On Fri, Jan 09, 2026 at 06:23:39PM +0530, Viken Dadhaniya wrote:
>>
>>
>> On 1/8/2026 7:33 PM, Dmitry Baryshkov wrote:
>>> On Thu, Jan 08, 2026 at 06:22:00PM +0530, Viken Dadhaniya wrote:
>>>> Enable the MCP2518FD CAN controller on the QCS6490 RB3 Gen2 platform.
>>>> The controller is connected via SPI3 and uses a 40 MHz oscillator.
>>>> A GPIO hog for GPIO0 is included to configure the CAN transceiver in
>>>> Normal mode during boot.
>>>
>>> The main question is: what is so different between RB3 Gen2 and previous
>>> RB boards which also incorporated this CAN controller? Are there any
>>> board differences or is it that nobody tested the CAN beforehand?
>>>
>>
>> The behavior is consistent across platforms, but I do not have details on
>> how other platforms were tested.
>>
>> On the RB3Gen2 board, communication with the PCAN interface requires the
>> CAN transceiver to be in normal mode. Since the GPIO-controller support
>> was recently integrated into the driver, I configured the transceiver using a
>> GPIO hog property. Without this configuration, the transceiver is not set
>> to normal mode, and CAN communication does not work.
> 
> How do we verify the mode on a running system? I have the boards, but I
> don't have anything connected to them over the CAN bus.
> 
> BTW: can you recommend any simple setup to actually test the CAN bus on
> those devices?
> 

I tested the CAN controller using the following commands:

1. Loopback Mode Testing (GPIO hog not required)

ip link set can0 down
ip link set can0 type can bitrate 500000 loopback on
ip link set can0 up
cansend can0 12345678#1122334455667788_B
candump can0

2. Testing with External CAN FD Adapter (PCAN-USB FD)
A GPIO hog was required to configure the transceiver in normal mode.

1. Probed and verified CAN transceiver pins and connected them to the
   PCAN-USB FD hardware.
2. Configured the CAN interface:
	
	ip link set can0 down
	ip link set can0 type can bitrate 500000
	ip link set can0 up

3. Configured the PCAN-USB FD software for 500 kbps arbitration bitrate.

4.Sent a CAN FD frame from Linux
	cansend can0 12345678#1122334455667788_B
	
5. Verified reception in the PCAN software.

6. Transmitted frames from the PCAN software and validated them on Linux
	candump can0


