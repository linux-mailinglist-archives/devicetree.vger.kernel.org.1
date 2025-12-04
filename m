Return-Path: <devicetree+bounces-244241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDC7CA2AD7
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 08:46:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 446B03020CF4
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 07:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B282FFFAB;
	Thu,  4 Dec 2025 07:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hOkRpIlr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Gno2PiyE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33B91398F8B
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 07:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764834385; cv=none; b=s0iK02NfUVd85VDSAEray8gABkHWY9gdBIv7pb9skKsVJ9RGwqh9h7n8Wt1TOLDyIfVQWiPd+d0gZ0yqb+70jD1aNifcpeMriYybuPVUdSuFeIQ4E3WLmvvHXK5vhRycZnE071KTXlgG5KxwzRsJo8wzuYyRGXdjqf7mFSKlKIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764834385; c=relaxed/simple;
	bh=Qer+gIPSs6FQC1KhKRvzjuBr8hRWeSbpjtBpHeduses=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=L5Ah4uHnCevfhHW2AuZf3Ki9zG7N+C+0UvCkS03gFvmuv5hRembkp1kbvNWy2mYmRYTEp/PRhhs6H2n9NFONbNfgf6+XXFm261zz5sb+99CFz0C8lNKqHFf+uyeSh0LGORwmUzq/sm5rJZEEF4hdrlz3N9NBVkYOL51/UL7rc7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hOkRpIlr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Gno2PiyE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B468Y2n624834
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 07:46:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a7F09mTWoxvR+9Fl+ErNNQ2nWjH6IqylwKSw9guSy7U=; b=hOkRpIlr17nrpW2d
	K19RuZNiYMbVvUM1T34hTWhUoANxwyEZov3RmfGa5keRuksLx4HcHuQDVcrod0Xd
	OJEAO9jGCClJIPKSqylxnkDay8WVEVxBRkEiYwKT7zEYoW8wSAWdP6FWeyC1/OvU
	UY4fu0ZlR65c7OhGjJh6hluWwiSSLoIYwOiufdalm0nTQJDV97ILxYxkk2BzTsWi
	ik5Dy1UmUsNQgHEKkcXqkR2ENzFxdLtLhq71haVa/ka8/lFf1HLB7H1XjkKBAI8N
	WHGg8jsL3GgQhABhsCrhAhlqbvTHiGYAPsZW8b8+waBUA3veBTRN4oMW6yN5EKni
	Wavhxg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4atu3h1vfw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 07:46:23 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-bcecfea0e8aso1026663a12.0
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 23:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764834383; x=1765439183; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=a7F09mTWoxvR+9Fl+ErNNQ2nWjH6IqylwKSw9guSy7U=;
        b=Gno2PiyEFzV8Dexk4gJwa+gs2KrQXOTYCJk4XBg9B7pKZTKd6ObF0woCdjszVWzY8+
         g40lB363AN500Rgtl6iUPiVcdCFflC8Kj6jaGFkzxZ921s9LpDA09gQBD2BBsvcBVSGK
         CNmnVLcouUucBIXibIn8DKEvFpP5UM/t14k5TteOoPyENEHvA0bCh6ZHu3HZ1ctWsePN
         tcQDfTyHFH6v50dOFOEKsHoCzoBh1W4AwsAij3qVRdFdAMXUeHYH39096KZop/uIXcN+
         MpzdbwJWmNK/UhQXrhupkbfWsZYzgsrUg9TUNdvyxxMPtvQbC8dcuzIu3LmocwWfbhBR
         4tOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764834383; x=1765439183;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a7F09mTWoxvR+9Fl+ErNNQ2nWjH6IqylwKSw9guSy7U=;
        b=n+tC6o5YI1TVsFMGw5vxjj3V3g8KvrTAS0rAaVrXBTVb9dbSGucHSaOPXnTYDGIoK7
         foW5pAL8Ps8PHOPuX2N5h48Rqm2AenP/29FA3VWkxAYRFN9o9z2Df4zecoRx8fG9TMBV
         BHfA6+fy9E7jdzud95B65bzRSmpofe5BYa7S+YmdW4GhGidYDDI5RygWMNdU1Kj6GPHP
         EANfSsgN3NoV7hntNWTmzR3g9AN5HCG3DM2ujtF0RFS2THq0+kVxLRQR8gw/JxzFmSqv
         jiCa3Q/PF7FVoBT4BO/PYFeWqkS7pGJ4tPfepWqIT60IoaXGOFDTSnGk9dFrdhfRq4ML
         WD1w==
X-Forwarded-Encrypted: i=1; AJvYcCXDPBKSN59El/0Zfe7FnL7Zd6/qpUp2ezWCRV70wbnPYJP58kMsCpN7XmgkeR9dKRku/a1uQuGjJvK3@vger.kernel.org
X-Gm-Message-State: AOJu0YwK6WUYL/FbZis76eTvXp6afEvwD1fAaPBLGGcKb2SteSUoMRWL
	hYgXwyDyA0YkFDK52dU/vYCXaGn+aiOGFmvxD7U9Rn1qTedf7AhMFVoajeQtdW9ooFKL+8bPpNe
	fRpieqYjs67OGdfmZFsjinTkUuL57f9S7GyNaBuOgzDtDJe4aU+BnRPWRs2B65SdJ
X-Gm-Gg: ASbGncsTFxqxKcGuodTOYJTDYXqBm0qQ802akCWylIwiquNcnFTQSAhHgWKCIfGT0b+
	tnfhFfn/+h3Y0R8d7VvlDuKYBf25O6495QWRNPcIOp0yGQS5+QmtxhbFoMER4tn8rMjxai6zBix
	apQA/C7GjJkcM4Y7zUrpgRF8YvTQNhGpcjMzOgchbaOjSOWawIB9eAEiu/Awu8JrX3IKCzZ4rk4
	6QZqIc+pZlcDhYz6rZibsEszJpR/DtMsxJdV6umJeErwda0pvaqos3oAIEONIZzIvN8lw3tT3JD
	XSx20RZFTc+1KA9tbvyjYbI5iYREadf1DVJHNCCJ86ZZEzt0QlbKTTRKOGTTiwCrovS/gmmnjXw
	ku0J8PLYec7Vm+Hwb6vgtJYZ59Fwt5y/gx6KVVhD2r4LzUoNioGP98iqDVJwL1mkuzdzYzV9wcn
	8=
X-Received: by 2002:a05:6a21:3292:b0:334:91ab:f189 with SMTP id adf61e73a8af0-3640331d03fmr2440170637.22.1764834382747;
        Wed, 03 Dec 2025 23:46:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLXw3U7N5fRCVdaSxUE8GIZXmjfVkoiPFbWI4GM/4q8x/U2tPcFEDwyiRC//+d0LCEEgKRUQ==
X-Received: by 2002:a05:6a21:3292:b0:334:91ab:f189 with SMTP id adf61e73a8af0-3640331d03fmr2440128637.22.1764834382239;
        Wed, 03 Dec 2025 23:46:22 -0800 (PST)
Received: from [10.133.33.164] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e2ae6fa818sm1198938b3a.48.2025.12.03.23.46.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 23:46:21 -0800 (PST)
Message-ID: <5095de61-69e8-4ef9-9604-702db46caee5@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 15:46:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: ipq5332: Add CMN PLL node for networking
 hardware
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-4-55127ba85613@oss.qualcomm.com>
 <11056c3c-452c-444e-84f2-318f9dec6831@oss.qualcomm.com>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <11056c3c-452c-444e-84f2-318f9dec6831@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA2MiBTYWx0ZWRfX1BvFWnC0dB/t
 +Lk2ZI5BHe+AXNISiMff+j9DiBqsVh7ho42QIACBjnxBzXRCsFZqiIZXb+dWuZUiYJQwjxvuTRh
 PSV2TpASoeEpZUEwKaSmEgT8mN4qfhmTy2E0vdCMG1T5RaIE1sfi9SxxdLVI1zRlzhRdDR83Z2J
 2L4MbjSFN3464vZ1a/Ff2nLbJeV3rTISiuQUTPi3OflxW+fJENFcsjK9JV20ORjIxiU+yNC32jt
 LsVfm8EUu6wARu/0fXTVN5MBmCw7HP1AquHkeDDXZPL2iDspTj0znrmz+o6S32cTAtJ86h5+xnA
 XSCAaPtCph4PKLGJPo5DB449GZbO9c3onzE8Eg4kzzLPD9uyupMmEUUUDNdh9nvRoLa6oBEF4tY
 9I7JWoxihvCrPcrVJJHFxe4J8WUjVg==
X-Proofpoint-GUID: gjGjKQuWtMWMteO03mg1HvfjpNh9TOYv
X-Authority-Analysis: v=2.4 cv=KJxXzVFo c=1 sm=1 tr=0 ts=69313c4f cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LfW1Yye3B56vg2I2hCUA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: gjGjKQuWtMWMteO03mg1HvfjpNh9TOYv
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040062



On 12/1/2025 9:52 PM, Konrad Dybcio wrote:
> On 11/28/25 9:40 AM, Luo Jie wrote:
>> Add the CMN PLL node required for networking hardware operation on IPQ5332.
>> The CMN PLL core runs at 6 GHz on this platform, differing from others like
>> IPQ9574.
>>
>> Configure the reference clock path where XO (48 MHz or 96 MHz) routes
>> through the WiFi block's multiplier/divider to provide a stable 48 MHz
>> reference to the CMN PLL.
>> .XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)--> 48 MHZ to CMN PLL.
>>
>> Signed-off-by: Luo Jie <jie.luo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +		cmn_pll: clock-controller@9b000 {
>> +			compatible = "qcom,ipq5332-cmn-pll";
>> +			reg = <0x0009b000 0x800>;
>> +			clocks = <&ref_48mhz_clk>,
>> +				 <&gcc GCC_CMN_12GPLL_AHB_CLK>,
>> +				 <&gcc GCC_CMN_12GPLL_SYS_CLK>;
>> +			clock-names = "ref", "ahb", "sys";
> 
> 1 a line, please

OK, Will update, thanks.>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Konrad


