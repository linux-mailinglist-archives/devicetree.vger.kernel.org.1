Return-Path: <devicetree+bounces-244272-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FA3ACA2F59
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 10:23:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id AB4BB300807A
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 09:23:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B52533439D;
	Thu,  4 Dec 2025 09:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rt2nfq/A";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gNCYbwdz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEFDF326921
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 09:23:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764840184; cv=none; b=oump9qKpO8dVNGfA4Z3NthxelT460XvLQWs4TP07evfcJWcNsxSLkcHkI9mc2SSLGbtMPeQ3dUxpPWADCRQtoJUGV58qP0AXRRNHozyPWnrwatftzuhMtveb61llll8fZYX7+v5udl4RJcI1W7iwXrOtdiA15OCKfLGcHGDs/bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764840184; c=relaxed/simple;
	bh=VZP/EdnogDgQSuo/KxEFLumMit2pZlS0799GKaySjb0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kgwx+eu+zzRy62qwMfAeJA49n7VuueZD/zVhjnQ5nRpzPDaC7sYxOeFg8hWIuPqSe9QCzH2qHoNzO1fGgXPeYltQSr+SmvXc7y9TKKwRtQ2G3IRXBoLpv5I8+f4YW7x5YLa2OUP6SO97i2079bDeYgDQ1Nf6BDUdFt0x8Qni01s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rt2nfq/A; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gNCYbwdz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B48Vuak953874
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 09:23:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PbJuffjjECzEQUtSUUJ2livpSj+kS9JttgPgzKgWsCI=; b=Rt2nfq/ArclKvYYf
	uOX2Wp42x2cBx9hWm+GdIqZN2koFRNPshuK2g5U8apjnzwBcyE7wqTlVTvtDshXs
	Hu5ZxCKips6iKv68VqMWB6smsGY9NsWYqHqGu36qE8JfBG7cenmPgPO4deH1rIeL
	Qce7O7O5aoQrMXNJ1F/CxGoX8a4hLtiRTxtz2KFN680uG0Zkb2t9QgVqm63f8v8f
	KDeuaH4kfn0wZG2fIQYCrmJSPhgeHSDNo2zgrO0v7IA6XUVmyX3d4QGGsq6H9mgz
	mJqMGlTOBQFVXAoG/0zjh0lPTSCIw7hGAM2C5C823Q231utMnRR4qQv4BcLS0vEa
	up9JLQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au6v1g5g8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 09:23:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f0252a852dso1300581cf.3
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 01:23:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764840181; x=1765444981; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PbJuffjjECzEQUtSUUJ2livpSj+kS9JttgPgzKgWsCI=;
        b=gNCYbwdz/YVOjfHJ02Lkp4wwHSu+IxjhBLn2e0OOaeiE2YxRtmRg+H8zJDK8yIPnq/
         qtFRSBraexhJsFvnMQH8PVutn8RSjk9Xf75lbW+17FjAlOtCLQ7zfk0CIJcWlWZHf9kk
         bVRjH1pbVSxKcQchqnEuOd3Q49r/jjmBoJx94g080/kQHp8ibofKhxvkBPmvBTColcOB
         9RT9UFjC8feF56qsNVjN2AohdbFuCNF7YT41OaAEQgts0itGp9lWFRY4HYITV9nFnE76
         Mdyo2CHNkJpTJil6ap/sEa3hVngOiR1KB5ae79yhprRZUc0NB/qSqYwEsgnME1EEQ/ZC
         a/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764840181; x=1765444981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PbJuffjjECzEQUtSUUJ2livpSj+kS9JttgPgzKgWsCI=;
        b=NeIjg7tmEFiLqDG84IspXPgjBd1B5gSyhtD3osSRkGlj/Q504lwwJqGLqWJi2U0QpF
         YpAGVLt6OBR+uxuHgDYAKwooW0JbpLelNbMPTMy0kUAJBv5NlkSlxPOX688LJNj2QpRC
         vcJ/xYNxdY7Wgf7MUQY6iwbd9w9dcrFr7eZ9Z6hNaB6IixOBwJG7jaSeC/DfsY5Adlq3
         M/ckugXrAM8JStCzNJKxyJI3SXGviEfqs+njuS5biyp2XJ7pxmaLzdMgpSv3yNYzch/K
         kNZUvIwSJRqvYCCmey7aNsiUO1+x4tUsDS6IMx52W/B9V0njGCpYWAWB6+TzbXBLOK/6
         Z08w==
X-Forwarded-Encrypted: i=1; AJvYcCW14nTEnMrqNhkgTQgIudCyi70A96TuuMbqsCCiLsTD+bl9mMUOst9rNtukjAooAu8ifU0fYSqoo7KG@vger.kernel.org
X-Gm-Message-State: AOJu0YzkT4QDiI3VNneYS8hspv5nmJ089mTwMgztmx+wltIXbg7dQayd
	CfwSG9skGNibxktjXu2e8R4fSFr2I1p6OirMxZXbCChhjfFkvByanGNS6zL03MRsu5oeOtQPbiI
	ppVNfNnsLWPcQkzhVHSLMNygAL8goffSOAGahDCSGKGHK9ANOWFuGoiwC7laa7dRi
X-Gm-Gg: ASbGncsWYXEvl4GrZH1K+Wvv3kuD6ZV4SuIPSFCLQcZo0ne1y6y+2B6oEb44iLv0Muj
	v9MDm2th8lZs0VM1m3eHEVMzBJqxOqwTPezgP9Cjdki+IFzUeSYJwcBlnXMP9CxUQhdpHsWSXuX
	ES4U6X0ateEtPKKP5Pzgsl1qRV+clQamEmZBDrDjcqp3+7oi+omVRwgBbZpjkmizN1+X2SfRz3K
	uVo1nXt+iRKZVXLvq4T81jm8qdGxFKPbmTeY7dNi8kq6wOWBXlVItW2GXxwBWnbrU7Lni4thoaN
	rRAuUAMQsHujP9spdFT0ygRXqf0GwY8rhuoxwOiuGomOMzOiXu+e1o92kbXlf+xK2ClJvxmXUbE
	+5lW+8FXJT6mWsK3Y1JPbBF1NHAGBBkJPeCNN8VV/3yGO6O/bWvbjofG7IHePpR2wtg==
X-Received: by 2002:a05:622a:4f:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4f017610a9fmr59876411cf.8.1764840181002;
        Thu, 04 Dec 2025 01:23:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHIlr+rjoR9RCyBnaNgLjnEL59Zitz7P2P28pzu0H335alGScS11NKS/dVqLgaVEpKVynLy7g==
X-Received: by 2002:a05:622a:4f:b0:4ed:6e12:f576 with SMTP id d75a77b69052e-4f017610a9fmr59876241cf.8.1764840180496;
        Thu, 04 Dec 2025 01:23:00 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b79f4a2f19dsm79869166b.64.2025.12.04.01.22.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Dec 2025 01:22:59 -0800 (PST)
Message-ID: <7c4c591e-a3fb-4a3f-8a5f-901fec65c548@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:22:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 11/12] arm64: dts: qcom: sdm845-lg-common: Change ipa
 gsi-loader to 'self'
To: Paul Sajna <sajattack@postmarketos.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Amir Dahan <system64fumo@tuta.io>,
        Christopher Brown <crispybrown@gmail.com>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
 <20251203-judyln-dts-v5-11-80c1ffca8487@postmarketos.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251203-judyln-dts-v5-11-80c1ffca8487@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDA3NiBTYWx0ZWRfXzDXjfh1faLRg
 cs6IHq3QkB51Q2l1pX/dtHwhZoFhrpZutfNjRPETNfhK1mmjHU4CQoMfGIG323/3OZw/0nGuVi9
 AdCqwRDH/a8UitC/dekJ3Rszt1FeRuKjnwEfB7y2T0HGTgo70Lo14dV/YnzubLBpuOcSmoJPc1e
 fbpC5BGpUknNmk8l58YeWTXnHZziQVnQX8yJzMRbm4N5q/AazctTuZtpXNluul82MSsicuSbIkR
 2MNQ85MEoHwLmjhWszNaTFGxeO24fibhCVDq4nDSnEVDb+8owfBeIsVyIfYQUYmXQa4WQiMphbF
 htBp0lJgAd2oG8sgueQ2jVkXUhKo5NO2IzsL5PRZ/yJoeDvP8vrRImAEu+QL9Od7MlR6qyp/GRC
 yHP9pJCD3Ly/yFcut3bRuOVHBXkBJw==
X-Proofpoint-GUID: GxvKKXpyLIJDGJCaL1vd4oEW9nlmS2y_
X-Proofpoint-ORIG-GUID: GxvKKXpyLIJDGJCaL1vd4oEW9nlmS2y_
X-Authority-Analysis: v=2.4 cv=KY7fcAYD c=1 sm=1 tr=0 ts=693152f6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=r0gwGleY-OzFdj7W7YcA:9 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_02,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0
 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040076

On 12/3/25 10:41 AM, Paul Sajna wrote:
> This lets modem get a bit closer to working
> 
> ipa 1e40000.ipa: channel 4 limited to 256 TREs
> ipa 1e40000.ipa: IPA driver initialized
> ipa 1e40000.ipa: received modem starting event
> ipa 1e40000.ipa: received modem running event
> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---

"The modem firmware for this device doesn't preload the IPA firmware
and requires the OS handles that instead. Set qcom,gsi-loader = "self"
to reflect that."

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

