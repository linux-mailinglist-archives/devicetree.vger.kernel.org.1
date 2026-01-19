Return-Path: <devicetree+bounces-256782-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A3BBD3A52A
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 11:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DFAB23002894
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 10:35:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 065072DC334;
	Mon, 19 Jan 2026 10:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="br9PmbAD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eb50bHdC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4BC82DB7A7
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:35:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768818915; cv=none; b=o/Tph2cSfbfsB1Xwdeov3MAx54h9hclHV07t+j3o1L+smm5bkMKR4z0o0xO4N+BPxtuMJwiIP33o+bBUc+eOuS/6SkKMTorzvD4lF4XEeSX7XQZuNrH0KzmiUkEtkkGEfI66SZ4CjtYj2PPzISPZG2t9rRcfCeCj1Vj6eAbJcI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768818915; c=relaxed/simple;
	bh=yFkqPxWakgJbInN0xaYmWVtAlThPqKhg4y/r53GyHc8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DrXM3Zn7lQIVM/JLlg0AXUxokfJGP3MPoqZmSaqWWyBob9eO1n+qhWzz6b7mtUzZNIiZ1bu/kkpTftGnwce7kXsMo8dLmso2zjjDNo/65p01MWmu7Gz9k6fEbn7mrse18V8N8OhUJ4EGCUu+F1g958pgbkzQbA5b2rAMTz9ujHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=br9PmbAD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eb50bHdC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J9kKvd774079
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:35:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vvNSwLDhS+/QqYkM1c8An4s/qziHLEGC7UI+ryiM8Y8=; b=br9PmbADxuvUHtIc
	3y8PUjGv/ppWMky4GeCT3MAqbPgPW+C7E6byun5BWHUfUPFfm1Wma7E667D2u2Ho
	B/vocCZ/GhUcFTJkx37JcYBWxT3VYRt8yAGf/ACZDYg0uv7syZFCYtooK7pSO6Nw
	/VXq110A5/X0HBHJ9AeKVkGeI3HmWdkTaTHf5PugnHHU3HhylgvOq3/xIVNpaduK
	8rg5FJoxIItRrAdFJ6bmfZiSJRQif6NRr8I058cCE86VIDFvxL8QqBE5OYPSykAw
	0MN36fI4qiOEOjuREpWuzS1u6MkAVgi7AHlZoUrUWWB+tloDyi4wo6cQ8OvDmR24
	y5SojA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bsj9a859b-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:35:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c5265d479dso151565585a.2
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 02:35:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768818913; x=1769423713; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vvNSwLDhS+/QqYkM1c8An4s/qziHLEGC7UI+ryiM8Y8=;
        b=eb50bHdCLh7G08yeXT02MpiaJd8/nKyVF6ZwPn3WGWHRdX0/Pg0VZFK35OHiw3ebS4
         OGT1tkGdMzrZf0Z0HP80sla9NhpQauSVbB14HthjuD55W2uZBG+okMpyAkviYBS0Lw+n
         dnemN/+dgHK1V4GLZ+JvoGn1ExRBadHTJqwViSuLDcW738Ee9mOrLRpAGFjfaNKj6+6L
         LlkqLoc8nm6vS33d2hNqdK619fgnuFkk4jo4KucLvINbxroezaGWQrC4YCMUxAAKmfwT
         EGBiGHidqnGwR55TWm173dCLzONwxmvLouCQtHWAEKRqG6D80kWyn6FAIg8E1PEMSO5g
         k5JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768818913; x=1769423713;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vvNSwLDhS+/QqYkM1c8An4s/qziHLEGC7UI+ryiM8Y8=;
        b=H5zkLHTzDwtZOQ5HV5hS4FmelMy4BgPcff5VBBx7ouZuyDNOYLER3ac9bbB5Q7PHXr
         EJXebQ/75I1xIje/lRMPvV9K6M6xx46KEtCh6n7JNaEPB20EsDeClZvNi7StCL3tuPTU
         g32LwmLhI3nYdg0JbXWl2wLLDJegzsTwukGatph2XWZSJWZmiVFRFXxZI7hn1FCfBMP8
         Gj+jWDFY44hufRBS4w88CPBPekFQHdV20DDrWiOZKHjJ4RhJvTfDHx2QNpGmsR4hY2bb
         DNQZRurNatxoHaB8bj8D+ltyC1Jp/zWjC5I7V1YSovwL3DTPaMgZRRbGDEPgqfGYtjzX
         1krg==
X-Forwarded-Encrypted: i=1; AJvYcCWfruzKbuJF+poa+g0HKoZxDCEMZjhpU5r2HVbRQCcZBP21+INwgHFpiaj52lDlfKo2KFh6OOCse36H@vger.kernel.org
X-Gm-Message-State: AOJu0YxHdApy7aJ4N7D0CVDwL5kVaAZnQxI20DEiyJzYs2K9nkjcSLpC
	KSb7SRGMBY7eb5JdBRCIKEUPow5GWKiMQ1hSXrB7teXkFB1GnFrLBY/NerKN3opx9+b6pvIxTkR
	PXWMolD5svN+pcqqm3EpNTJm+eI31S2ILZp/gSwyEtxJOGXYWXV8jhasWLluvPSX2
X-Gm-Gg: AY/fxX6kd83n4bARuGmOIYobbLEYDk8jU3yh1UMySWo0zQ2nq+JLQQ51PBGUmIc71lZ
	aGOYqP6ZpV2zKmCgVORf2qoWw6EntJlT+G4BnpdAXZ7FL41PJbnsuGslQxkkYWOqGMH0URWBnwo
	LwdbXZMzJ+luwXPcSzhONC2k5upr9jPGGabHSrkbTGc1ANK89W4v1R1DMhkHOu1khWSIVRe+Tdd
	EDbjMiIfkgbqR8QFzXSrftQiHFRWJpnHV7hJYLfJbFcnYpX61+P3k9LyQbsd17QzFV85kvZiFLv
	CLutsgl5QcSl5JLZENl7JIWIiveTtcvePwh0VnYhvexNC9Lq6P164BhEeANmGL/EUmALMncb+Di
	z6ivZnSFUPCiCNFTi1D5LPZrIPSwy9o5QN73wze6zX5OQMByLp33izoiIKOMERN3LywQ=
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr811682885a.9.1768818912816;
        Mon, 19 Jan 2026 02:35:12 -0800 (PST)
X-Received: by 2002:a05:620a:6c0c:b0:8c6:afd9:e422 with SMTP id af79cd13be357-8c6afd9e501mr811680785a.9.1768818912395;
        Mon, 19 Jan 2026 02:35:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-654535c52afsm9951787a12.33.2026.01.19.02.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 02:35:11 -0800 (PST)
Message-ID: <f0f03077-5961-4b76-8148-fbef31f56613@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 11:35:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: hamoa: Add 1443 MHz OPP to iris video
 codec
To: Alejandro Quintanar <alejandro@quihel.net>, linux-arm-msm@vger.kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
References: <20260116190225.25320-1-alejandro@quihel.net>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260116190225.25320-1-alejandro@quihel.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JzoBiHfXA_OJC8IBA8X3qSW-6YS555lM
X-Authority-Analysis: v=2.4 cv=N40k1m9B c=1 sm=1 tr=0 ts=696e08e1 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=CIKbnwSMAAAA:8 a=QjVBaI7zQlB2Y9sfAtgA:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=WAq3Gk0LTMTrdeoBeQ09:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDA4NiBTYWx0ZWRfX812dTZhGAW65
 23XqhsY0a0FWWMT/hBX39lYdNDG5j3tqMZHmiydBOUbaEGALr9PSAEZ1ltywue9+34reX1vk8f4
 ZU4gzNuKZ9Ui38q4f8ZGStKAi8Gfe0fAOKVoL0BeNpo8UElY6fbNdoampfF8z12fYvODUlWslOB
 CCF5mU58eYC6OLTapbRLtyLL2ZwzBS5pi5FPbiLl5mQz8pmS1OXaZggmCL/K9M+naD9MjsFCVtI
 6z9LjyVTr8vGYqQA5vhn/5GhFdhuyWfuIFBWVVeAKpvjFkcopGP8sYFrHuwIYzYg00dXiK/rmpH
 hjRsRAVua9cGEIf3QGBDWAb8mL/iSyp3UXx9kTf14FIVJxK1dUQVQt9JE0oTk0B+k5a3MvZBnw+
 sATijoilAOh09O5wbDInppT7CQH/zIytgUX27i1t2JiNuNxWP24FHCbdx3yIvasqxVoFbbOQzxd
 vBODETyfjErUkg8CDlQ==
X-Proofpoint-GUID: JzoBiHfXA_OJC8IBA8X3qSW-6YS555lM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0 adultscore=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190086

On 1/16/26 8:02 PM, Alejandro Quintanar wrote:
> Add the missing 1443 MHz operating point to the iris video codec OPP
> table. The qcom-iris driver requests this frequency but fails with:
> 
>   qcom-iris aa00000.video-codec: dev_pm_opp_set_rate: failed to find OPP for freq 1443000000 (-34)
>   qcom-iris aa00000.video-codec: power on failed
>   qcom-iris aa00000.video-codec: core init failed
> 
> The iris driver uses the sm8550 compatible fallback and expects higher
> frequencies for turbo modes. Without this OPP, hardware video encoding
> and decoding fails on x1e80100-based devices.
> 
> Signed-off-by: Alejandro Quintanar <alejandro@quihel.net>
> ---
>  arch/arm64/boot/dts/qcom/hamoa.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> index a17900eac..e737ec907 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
> @@ -5397,6 +5397,12 @@ opp-481000000 {
>  					required-opps = <&rpmhpd_opp_turbo>,
>  							<&rpmhpd_opp_turbo>;
>  				};

The above opp-481000000 is the 1443 MHz setting.. the clock is div3

Is the kernel you're running patched against upstream, wrt iris?

Konrad

> +
> +				opp-1443000000 {
> +					opp-hz = /bits/ 64 <1443000000>;
> +					required-opps = <&rpmhpd_opp_turbo_l1>,
> +							<&rpmhpd_opp_turbo_l1>;
> +				};
>  			};
>  		};
>  

