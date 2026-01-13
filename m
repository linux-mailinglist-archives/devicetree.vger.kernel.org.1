Return-Path: <devicetree+bounces-254591-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BCBD19A14
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E61C305CAB6
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:51:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A22272C159E;
	Tue, 13 Jan 2026 14:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jk9+WCRW";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BMgOL6F2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AE92D3220
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315869; cv=none; b=BH+pFGuFyEu9NtedLuIdWxX4Vt//mKltGGQLyTnLdvjx2Bs33MwHsaVMe30EL52JHwm6DdeV90Z4yAGArWkZME4dM3BY+qyCCUZa6GojFk0+St3s9ZI4ug3KsSV4Gh1zTu6FdsUkSjDJMjTfxjVBiqvzbznxUUWsx/8cXDXj6Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315869; c=relaxed/simple;
	bh=2nUj0YvcLFuPq/h4uiDiJYV9JPHbujqeRFJqXOynDEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BoNHuj3hUiCBXE5/iV3lvvYLlnUCvAltL3sdN4FsoBJQ+URmlN8UHQBfQa7I+8pfNJhqhioQoUa/WbxPiUZSnTvxz9t9ypc5pdLOM7ru0J0HGduy1xxhjjKuEfzMjfo0fWYa+Cjx3h7yp1FqCIfNm1duHuazMFIZ7EqGdLSogvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jk9+WCRW; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BMgOL6F2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D8YvjO3727092
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:51:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jtSdc8DZrSmGyslV6uF/9RQzrVXkskQKPFX+tg7xvZU=; b=Jk9+WCRWb1fMEAze
	kOWfggqsomC9/9gF3bIVWXPdPjmYFAo8dQn1dOyiaIrBPgO9CI7Wp7ipl0z0cc8v
	E3CNtv9Td6R1rDsk+ZHPs0Qyy8mwjuQz1cT9qe6Q54MklQB3a0TI/xFZai/ePfM/
	yKKDDdw+ADiifd25HP/QpBHDNKjSrGOwKuN6ABOcs+yFTLHJ1juHvhiCz9Sfhgmj
	yktNlhu9YUkMBPFWo2KCbSGcwuGuy/w0En5EGCfZ/3zGxO52iTkpt6tR6vYEetxc
	+axuNKKjU9A+CBd3p7PN9myUD5aefv58DW0bfyc4aeNdmwgcoq0OOjoviE65lXgz
	e3cw9A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnjnu16wb-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 14:51:06 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b222111167so137707085a.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 06:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768315865; x=1768920665; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jtSdc8DZrSmGyslV6uF/9RQzrVXkskQKPFX+tg7xvZU=;
        b=BMgOL6F2cb8UB8QVasVcxPnpTc/nAW6h/mhmt+Y0/FUsYCBsR9NuHKaFufViVhwpQN
         xzjAejlDSQ41LHRQiMeGLIhVHHoevPWwoD+PYh3SL57A1f8MwMNSeAlhSiK3uUxHUMRm
         MkfbpdVFfcKBWQV9QlVIS9FLELFQNiqioNkNSUbpfRHJOblR/TRxW84Sv7Cajr4djY8Q
         nD/QIjiceBuRfN1qAVm6wAx8eGPYZ27C1qhk7qbNQ2cQGF+Z9UohopUPAZzhMGdtlGu5
         sjT8bNjtCTzaRDKIoDSFwqMsprM1cJ/iNM/gMt2tDbo1JPxOXVd2yfvxXc3ArbndbFxz
         3Qtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768315865; x=1768920665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jtSdc8DZrSmGyslV6uF/9RQzrVXkskQKPFX+tg7xvZU=;
        b=EedJijlQJ3IyzTNIk+SQPRI83nN5opKgnb1cmniW7BzZCw2Ezqsjgb9oAFoqkqBvhB
         Dz3sYf5ZNhIfb5wWjzENNYbABfOMcgDRwOAhL+qvOc76dqgiApPQNR5fjnxZ2WT4ouYL
         dFzxjtfIpKyrJct4MvX0r+0ck8/a6NPPdd20Aq3SrI/ao4mIBIJvZCHysawh/GgdYrUW
         Xxo8NFM8NSwbQqOCT1Fa+DF8Kge1YLHwi+OTm16kqlT1i6WbvLK8bAMBd2h7ap2AFirV
         38mWvozjNdj72WGm8q4QZe/6BEyhrhioUeeoFN2RmfzsECMjgc06x3O/ShIrpmPq/w1k
         JWkA==
X-Forwarded-Encrypted: i=1; AJvYcCUGHulqRdulQ++XJyO4b15i+vEsQWRAy9rCzGH03dovMbh7uJ3gZhdC5suGlW5CAshbbhT91uVxtDUP@vger.kernel.org
X-Gm-Message-State: AOJu0YyWQeHctafFtkxFvD92zgfsrFV++Yuz6vNSs6w466UiKSXs7Sj4
	ioRSxvIKQXzpYojNVydk4WBmO6poIbbmS5y78uKp0GkqBcFKGiScqhxcP9ECngXiV7p/qmvVQHJ
	XDyeRsjBdTp65OU9T2g+lWPpuMAddZl3mODLxxMOVPKOztGBoZJ4ipJ5P/UUNENo7
X-Gm-Gg: AY/fxX7az0WTAXOqRJgOwWZIMvY1Gbu1HkIiOiNJHoyYwIxDbmfvSV4vkm50zLX0Ylw
	1oeweLXNMCd+z+amRQnxBNTjkUFgQVXfeIoQoS/nRTnP+fUlWlkra5njh081UHpttOe+ygkTori
	jwHg41rVAfpJy9gnvsCCd5dxZ+v/RBiXMsMkAn6pnzMSz0fXF0pDQudFLUy2pJPsTn5au7FLrCG
	liiHCUWvsf4RLOnvl60R5tTrFlTyH3mKIJL3U79/mU7SAF61wPfdrh32mAcPWfgUcgncRH+jWMy
	fIPlD9zEpkCqczaU9ZEgFVtKDVv38T9rpalHIlksemvGVQ1vVtWlCwZ5AwT5Xofop1QDlgb9jmy
	USf9U5gM+P1e3FFCbhmpaWwvQM1t9LT5UjI2JHkRJGvYatZN8d+nsFY0f+Lqtrh2gkEE=
X-Received: by 2002:a05:620a:700d:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c389365c0amr2112729785a.2.1768315865223;
        Tue, 13 Jan 2026 06:51:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLf/yNnTDE13ciYzPMadWSpxOvbX2cTLvRSze2xcqIJ+7Ha0WubguCkyEWH65yQ0GG0Vm98g==
X-Received: by 2002:a05:620a:700d:b0:8b2:1f8d:f11d with SMTP id af79cd13be357-8c389365c0amr2112725085a.2.1768315864620;
        Tue, 13 Jan 2026 06:51:04 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b8c3f89sm20278699a12.5.2026.01.13.06.51.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 06:51:04 -0800 (PST)
Message-ID: <85c067c1-8a73-4bd5-8561-2cf80e2eab2b@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 15:51:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs6490-rb3gen2: Enable CAN bus
 controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
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
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <wbx2qrkhpsntggzqkzkpi4sa6qv3buhkjbwmjoa7zgw2oc4b7u@qugyhcxb6qrh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 8Itr7SHgZMkFduWrO655SWeWIufv2_gq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEyNSBTYWx0ZWRfXzBuxSjfz9QVb
 P4K4PbRaz8RjbkMRLczBY7TP36EcLmHumGL9OIzaIEa1+5UArQzl0svqb3dU+NnLPRShcTPLXgM
 TrOEBBLkOJJOX2XEbuQ6wYP4xbFsu29FGXBd/3k9LaZ8aarXdqKNzKEy2eQHRK4YQaiq44hJHA8
 nVuV2+YlPW7EjT8pzkxQlXSFvE/A+6Z79SZ0gdlll02H8GDPNuEZwHKtClfmh8qBrJD6xbOd+ga
 d7JSJmmwLMnhfa+y4GUf2uwBl7pFy1Co649kiVgNyjRi6RSXmblWXryfzMS99Wd/dO8tT3xkZ23
 n5OQ4eus3JOp9erJbRzz9eJBQlTIHwj+phyIPgdXcGesEGjsN0Eb2KtnsLhqXd1YVdDTtpcxpPB
 +v/NH+M1tbVqyn3UIw+eCQoLikJ3DyWmv+4/IAi4PHvsmmyDPGBNhZ7jCP6Ro/t9TnygLMhM9Vy
 wHxB+tDCYpv0Od7sM4w==
X-Authority-Analysis: v=2.4 cv=RMu+3oi+ c=1 sm=1 tr=0 ts=69665bda cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=IvRgekr50X0SvLIQHyAA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: 8Itr7SHgZMkFduWrO655SWeWIufv2_gq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 impostorscore=0 suspectscore=0 phishscore=0
 spamscore=0 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130125

On 1/9/26 3:05 PM, Dmitry Baryshkov wrote:
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

(please document the reply to this somewhere internally)

Konrad

