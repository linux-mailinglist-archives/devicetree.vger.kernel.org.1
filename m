Return-Path: <devicetree+bounces-247328-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 309ABCC6F0D
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 11:00:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C1DAC3002505
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 10:00:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 586C630BF5C;
	Wed, 17 Dec 2025 10:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PE/g4CNh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X6wIfyRO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC1B72D6409
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:00:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765965621; cv=none; b=LoS/+DdfufjzWi7jNDBT8creutPL0LvgcavkbHg2Z5/jC3KcS0Zk5vDZQwItMja7PxCGtO0oVC68fvHr1Tc7CC3IKP7PDKBwknqw0GPHY5XOBZmeN0gCxuA74cXshbilRQXwYoUUUqIsu2T/5ihmQcUWKuvCz4ZmKj+ObLoHzWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765965621; c=relaxed/simple;
	bh=J+gaD7pb5SfxzaG8FQbr97ESOPqysZ33V3fyNbEkYOo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Qy4YflCBpL0X+ULzmD2xxJzXbzawjE97Gj9gOhUpOmo5TjxuwVvImnIhtd6yBL+Rmj0AvNlA6vGf7DyZTvA6SKfa9VQpg8jcu+lqLo/A1JBaGLFv7ZHtAd4Is7iLmfLOIfh/tdtInr6AxrS/ofA0NuaY7l+ULV7j8a/ZZkBBQ4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PE/g4CNh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X6wIfyRO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BH86TUo1946784
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:00:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	w1tSSHoAveB5RbtZjtvi7dGmKmeXw0cJbrfnkezGAvU=; b=PE/g4CNhDwu0r3QD
	b0+uE66NEBPQQ/rD/YMT7LvPPvhbaiAcTWe/bBopfbSlzu70N+I0iSHF+12TFuVD
	c19OMRv5TRvswg+7A7mP91QMzMeaOKH3GGyMuySTYg1XXQajEkZOf+MhXRL1/n8r
	UVBwziuytfJ7W1A4A8M4vXksn5DDNW5gcEVgR41iPtNxBqec4XxsFYV8oTtFGfkg
	QrJkiDL15u8RSHQvZaBkA1L2qZmFBNraMU9TWkNNkUBdZcFmiyXRjR5AWP1XqpFc
	uT2X2TiQopyMuJy4xdmdRucQ+RRMuJHVGfe4PFbEhYtkzXYVe5Z48kagIkllHSzW
	rq1N+w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3rqa8db1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 10:00:18 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29e6b269686so130379155ad.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 02:00:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765965618; x=1766570418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=w1tSSHoAveB5RbtZjtvi7dGmKmeXw0cJbrfnkezGAvU=;
        b=X6wIfyROZwP0TB3ZMX1UDbO8fwnTXka66hagxTOKhX2oyLb1EfPRoXo7wD6lr4C/ul
         ADBrCCfSNE4/eA6FskG8Ci8VTw4t9GED5J2K9CcLNZ2CKjVibds9e5/m/fjVJXkr/3Hx
         6s/yOw83bNGOa+e+y9L6/FX3fRfZ6lIeD+iVjNzIZNs4IcEQmCK2nVEKDQa2VFd8mFoX
         e/M/CiEJbKL1L2H48UL6uC6TKyaorYnTqBnw340IjyWVaOkioqMaVTvdnC1pQQDVORTr
         xV/DXyl1N+d0C86TA1bichmhedAJaI7r3bI4tP5bnQT/KajWU4GAQjm/3x88OQVVL9nW
         i1iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765965618; x=1766570418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w1tSSHoAveB5RbtZjtvi7dGmKmeXw0cJbrfnkezGAvU=;
        b=tSZXz46ecrB74aFNaaqfRMKA9r26jW+UPObAzqrd5wp+J5oVrkYTRPjoOxqDxvLrjp
         goDuymh68+p9p3rqMLluMu9Xxvrd9XQqcgEbGKx3BOHP+Vsg7NY4saSPLPao/VasVPRv
         IRTX7re5DXULNqJTvrX+7HZ47vv0vCfpMA29x8PIYNdyLd7qrDQiat3LgNRrbv59f3+A
         WKCHl/EkexHxbVzF04aYFtWQaUm6lzJOVFoXPOM/rMJQhvgRj7D8yraXp88w+3fyHbxe
         R/TWDlsKRMIOO5OpE7+DaphqEmoK2vcMOn0qUSNn6JDKJgwMQcK6U9N2Y63pUCBBsqUH
         z8pA==
X-Forwarded-Encrypted: i=1; AJvYcCXJdjUYkjFLwQUF0HK9/9A66uWOZp4HyGr2jPo5Ii8ZMIT0qBoGHYNTvgRr7MhiymAV9T1ArCn3AdJb@vger.kernel.org
X-Gm-Message-State: AOJu0YxNoQvE5LDtSybqPbETZZ3P9cLGEGt0RBwh8vFcd1FKtz4Q4swB
	cMZKZGvc57pn9snzU/2y7vuCd5aP4+P6/lEn19yl2Xy+VIIEcqCXM62QHk+7vXD4eZJ0qwU7CKo
	gMzaqkgQbYndc4TvuP1N+mmkFiFodTAov8pj0NQl7HH8zUHg7BqzMjpS8I6m0pSwB
X-Gm-Gg: AY/fxX6gNwlc95Vixcm10FzaSaRkJpvW7PZvp/MQXelGcxe9yPi2WpcuLbo0RW+qqtz
	e14z6hefetB1BDThkIw2p8X1GLv4rktg0chOeCpJqXpDTg1MPOyNiSIhdEjIZANMNTFrv2iFw1v
	7cKvxN2XJEOESulFHKupNPKBASfc9ThT1FGaV04MwS96ZzEpNxeuGfYhZcIMXBDUtKZVuz1TVpl
	bJjklCVUhmrIZEeqmcEI3QzBkZwWGOU5o5e84n9eNwqmk+Br1uFWF6eM1pT52ivkg3RYzfA/w1H
	K0CxXpAob/X8SFxkvKCvqxE1XYk3OqcVq+uEyIPxmNZ2k/RHmXYThn/BywvSFqAKNF/oo+LYm6t
	8JlmLZj/GMj7XEesP77XqmpDZDsJGlakD9Jup
X-Received: by 2002:a17:903:19e4:b0:2a0:ccb9:2f0a with SMTP id d9443c01a7336-2a0ccb93179mr116769875ad.8.1765965617709;
        Wed, 17 Dec 2025 02:00:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEV7ZapyMML5t0Xq4q7vbALOFcMTu5uv5m41cy8s8nzbS4pxCsGLqHlPfoAKUE8LaKzN6OkJQ==
X-Received: by 2002:a17:903:19e4:b0:2a0:ccb9:2f0a with SMTP id d9443c01a7336-2a0ccb93179mr116769415ad.8.1765965617202;
        Wed, 17 Dec 2025 02:00:17 -0800 (PST)
Received: from [10.218.35.249] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29eea016c6esm194247995ad.59.2025.12.17.02.00.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 02:00:16 -0800 (PST)
Message-ID: <008a9d80-9427-45bf-86bd-58e05fad694a@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 15:30:09 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add camera clock controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
 <eef2f002-22b5-4582-9fc5-df1c8b8bb0ce@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <eef2f002-22b5-4582-9fc5-df1c8b8bb0ce@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 9b6eAsyxpLO6amVRH8XO7XwdjGOBzQFc
X-Authority-Analysis: v=2.4 cv=ALq93nRn c=1 sm=1 tr=0 ts=69427f32 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=c9pHKBabw8uT7j5izdkA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA3OSBTYWx0ZWRfX01R/DSd9/vmH
 nePtko+CXWSCW/aOpY2pO4/rZkv0FgtPWxvIZX5oOTL98roRQ6sf2Ubt9Vq7Mex5s47XEaXhAGg
 kKTcj1QOSx9smOho1hc4nvdQK0i6551ZWBx+2RCgeTS0Klpen16hPlTfanwhTrV2kRake64x9Ni
 iofjsCKqVpIJEMYGj0dfD9WLinxIv57Pv2m42wUCyusAhYvfe6YfCRQ4zsf8MUgsQyd4aLBd2W5
 sBNC3q4Ew3Rnj2nzfecClUmRC9H93iRAJKk7D40SdtZ1riKUeKV772v0si5ZK7refhGF0lb6c75
 NQrTwtQk/eGCmyz+cuOCKU88uxL/jv0KLpGEVu1yrolGlBjTVKQTS4QeG3F9TmSqpIM37uVdZiW
 T4/MA5Ci+kOVt3wzFRXgmK67Ik9NUw==
X-Proofpoint-GUID: 9b6eAsyxpLO6amVRH8XO7XwdjGOBzQFc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 impostorscore=0 spamscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512170079



On 12/3/2025 6:39 PM, Konrad Dybcio wrote:
> On 12/3/25 11:32 AM, Taniya Das wrote:
>> Add the camcc clock controller device node for SM8750 SoC.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		camcc: clock-controller@ade0000 {
>> +			compatible = "qcom,sm8750-camcc";
>> +			reg = <0x0 0xade0000 0x0 0x20000>;
>> +			clocks = <&gcc GCC_CAMERA_AHB_CLK>,
>> +				 <&bi_tcxo_div2>,
>> +				 <&bi_tcxo_ao_div2>,
>> +				 <&sleep_clk>;
>> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
>> +					<&rpmhpd RPMHPD_MXC>;
> 
> I see that a small subset of clocks here also needs MXA
> 

Sure, will update the phandle.

-- 
Thanks,
Taniya Das


