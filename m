Return-Path: <devicetree+bounces-254345-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C2894D176FF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:00:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C25D530057E8
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 09:00:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E0B43806D8;
	Tue, 13 Jan 2026 09:00:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hX+iY9Z3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UVL0yP6B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AC6C3806C3
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768294806; cv=none; b=G/fgtEP/QbHclVmRme7QVmCZaGjrodFbv2ixUKE3remcWw6d75JgdTJkS/f8Hgq7NVR2mn/hOfrEGPgNfl+kLficfkCdyv7izTJ+z9u4qgL/qHYC8R1iIhra9Csn1slqbDlMkoOcHKPM5Ui1aWsZt08uOnAiWPSzP2/HXqsXREE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768294806; c=relaxed/simple;
	bh=FCF4q9qOJWS9NHXKZoBM8Iw1gaRRvlvQn90wrWegmwY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Cj+qz/W04FDK9cKBhlivhQgNozq0Yy/OqKUCISDWy14Vb8LkqGnpd4cTdho4JZAn1gmQTUGLG5jt23pJsGP7FAzdbxfJeob/v6d8jGbhc5ZNM2cA2tUoRi2hETaYoSVAnRHbnfDcf9K3zVwuohw79NLGA1dPP5Jd5Swq+a0N1qM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hX+iY9Z3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UVL0yP6B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D53F212865993
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:00:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	815T0lxMWytul4mq7PTn7K3i/c3uKyORiv0nGB/LA3c=; b=hX+iY9Z3grFRMtgm
	amM2cTlj6Jn2G+wam16kjJXHFUJG/HqBRLt1OLGH1sKpsbKINAfg0wkLh/DyJ4D8
	y8uTTZdoNUA1NVCLmA3EeApUPLsKYP3myGhQxRztBaxmidpvsm8JkpqCLF5wnfKL
	slcUcI7WDNemjQ6bO6k7svLcphB0y99GuJVGPr42GJa089rEYZZABEhs1UjMu3lh
	1N3iHcbP8yR1hnJLwnu/GZLLQkPn56XFVItGMA/HkYjCn2IVCoP4pKrXjbdkD87o
	QYlptcM+U1JC2IDwW1qkov3xbyctPt7tDYJKLPl2Y28i2s2tjV+3C690FgQ4m9lG
	1zUMYg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnfjh8p8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 09:00:04 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1e17aa706so38668991cf.2
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:00:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768294803; x=1768899603; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=815T0lxMWytul4mq7PTn7K3i/c3uKyORiv0nGB/LA3c=;
        b=UVL0yP6BvyK/czYpTwEOJGnV0RotpTHLaQqRXm3HJGgPnNvNLbhnS8/x5UQeKO7YoA
         jaAWyPvdIOy8aAQk75PS52lhexnN4QUl/DDUtnUOVR4La5GypHtEupC/Hdyv3snRMtQz
         PqrhCUo91pop1qsCZqO1xE7KR1S4biXeSSJyk+6QTNR3zYXwJzOKN7A2Uh3SPjnjAiUg
         8EymotSkDB0+jAVnzW0nC1H3mwLPOyrfdmiqs0K1qRgJ9fSxwG1B8v+mqafw5cXEE8uy
         ZsawxmkiaipIYl6UixyVfHqqMKVLbodB5L7KXphN9pO5GWZh88stNM6ByGchjuaVSy/4
         3U3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768294803; x=1768899603;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=815T0lxMWytul4mq7PTn7K3i/c3uKyORiv0nGB/LA3c=;
        b=hyDguvRMlcHobiF6BukJE8zA3cR+hwuLS1IpCY+blENA7dFEx76aF1XQX+eG1sz26Z
         n2dPcAMQU/xX7g1s3ROAk0UPx2BMduigppY7efv5vTpvW3kJBCoPe7TfhZFiCpl3DYhJ
         pRiSEDt5aXp4R3ml4q01NHAfcWO2NLnXzqv90fGHbOtvRQ6So47JePcF0TnN74vDv0HS
         ec1u4w+k07twoGU9C+9ui/C7uYFsj8LKNHt1SiLe7jhaikL5iUi4ePrUMOoRPX30ypnD
         Gx8OgzkLU4jmHTxdEn8Y6lc0C7bM1wv6O08SzdoG6KEB4Uu6iVKoLmYyCnIfq5pK/2ds
         77oA==
X-Forwarded-Encrypted: i=1; AJvYcCUIKEF2tMo3r+1LziRBED6E3rYPzu9JxM9qEd7um5Gd7auF5FO0qfSK8ZBlWJelyf6GVnMEdysecHbP@vger.kernel.org
X-Gm-Message-State: AOJu0YySGGw2LnRs9cFvgeWak14Kc2lg+JwQjD9MNjMXM2Q0j3/zqMKQ
	DabAgkZFrIbJ5YoRsT2j+QW+R/LzLxnf8s0b2/3qCxgUgbEkDFgi6uLJyG80AwyYSNh9K+Cynsf
	3U0edb/pk1twxEffBKy34ftFYfk+RC4h8Yu925iZq2kp/coU63vqXCsgdVB0GMcui+Y4ZYE0r
X-Gm-Gg: AY/fxX6kphkOHPAOarOrZnJGtjeujiLF8AjOfFOpWD4KlAOr+u7SxVC2U70hc+aeyjp
	3sXTX0sqpjx393gKV7xCjziEvxWfPpnk4YAJTs7ZPvruWBxM9I5QUzyGKBL9VmhszMfcALumGvA
	ls7J23ggzCXsILUYqhpgEcHx0VUxwHyu1WbjP1S3jqpyuMu8XJT4Cjc/vuays2S7FVRB7aV4ZdC
	IdUkRpISMmRAUcQF3rl+e+6jzmWnTx7NBSZYsfVYPedBmaowMN5DeSY+zzWMOog0WuoiU4XOPw2
	fi1Nec+EGgp4ZvYRY7D6XQZDOpy2QTuNmwISadLxEZBDxkTawPrIngHyhqNIIePWVKTdUinIDic
	4x/yoJzgJlydg+PASkyKnpV21aPRtVvAdBAvUJ/k1a4qmjatWn72jDPM7PhgEKyauXK4=
X-Received: by 2002:a05:622a:5a8f:b0:4ff:b754:3a52 with SMTP id d75a77b69052e-4ffb7544295mr214248511cf.0.1768294803221;
        Tue, 13 Jan 2026 01:00:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZ8aGRfOzjpjUfk8j8SqmbSv/9Txkex+3v7i2/la0oLmXMS5y2aCzoIybMk3Mc0fUN+b1k6Q==
X-Received: by 2002:a05:622a:5a8f:b0:4ff:b754:3a52 with SMTP id d75a77b69052e-4ffb7544295mr214248291cf.0.1768294802712;
        Tue, 13 Jan 2026 01:00:02 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b86fee09153sm877245066b.29.2026.01.13.01.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 01:00:02 -0800 (PST)
Message-ID: <2853a139-8ee5-49ed-8c38-4951a8b03ed7@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 09:59:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/6] arm64: dts: qcom: sm6125-xiaomi-ginkgo: Remove extcon
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-3-8e4476897638@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-xiaomi-willow-v1-3-8e4476897638@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA3NCBTYWx0ZWRfX+RXKg55lj3XM
 Hy/7geR1KOvY7eFZYciWN/qhJVjNUVA2b7sm7kixVOd3QwHtGZIS/WUn8LEagB3bE9TC/tYsu1r
 WsZ9DdHW5YQzIiaHtsrQ1IAxGMY1p7Ci5fYVAduYSIXVvFs04dQqNFdl1fpPJFOqQzCW64h2KsO
 teI2DuDTHD3IyCn2USA/K/6elxEwdyfFL1YM9pew8pICCbU/GCFxIt8MCDHB4nJ78R9X6vBxaCJ
 buEqUPo1So99habP6i0rpAytmup9HDUc9A+AFK2lIWhDpRDAfy/vcIKs13xdwDZfYO2rn+//eJr
 CuwxAqgkyOwdWK9noI2fXRrFZGlfaTTuK6050nJ3GNcJPsS8CIpktxo8NrAEDvbhddhyEbVtBeh
 S2wRhJk7M2C6wNHRXsOuIPFolGAQ8UT7dTo8vdUeAU2PxUSqpI4jPLtAqPUC4bDa2MVHehnDDQE
 5d1hfSx6gRxe0ayQFPw==
X-Proofpoint-GUID: Tf4_dzgREGTHJArasb4SVPdy5bW8U2cd
X-Proofpoint-ORIG-GUID: Tf4_dzgREGTHJArasb4SVPdy5bW8U2cd
X-Authority-Analysis: v=2.4 cv=XJQ9iAhE c=1 sm=1 tr=0 ts=69660994 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=4INKmz3kzACxWPG1-2wA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 lowpriorityscore=0 malwarescore=0 spamscore=0 phishscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130074

On 1/12/26 9:13 PM, Barnabás Czémán wrote:
> GPIO pin 102 is related to DisplayPort what is not supported
> by this device and it is also disabled at downstream,
> remove the unnecessary extcon-usb node.
> 
> Fixes: 9b1a6c925c88 ("arm64: dts: qcom: sm6125: Initial support for xiaomi-ginkgo")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts | 9 ---------
>  1 file changed, 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> index 4c548cb5f253..666daf4a9fdd 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> @@ -80,11 +80,6 @@ ramoops@61600000 {
>  		};
>  	};
>  
> -	extcon_usb: extcon-usb {
> -		compatible = "linux,extcon-usb-gpio";
> -		id-gpios = <&tlmm 102 GPIO_ACTIVE_HIGH>;
> -	};

FWIW

trinket-sde.dtsi (downstream for this SoC):

	qcom,usbplug-cc-gpio = <&tlmm 102 0>;

trinket-pinctrl.dtsi:
	sde_dp_usbplug_cc_active: sde_dp_usbplug_cc_active {
                        mux {
                                pins = "gpio102";
                                function = "gpio"; <---
                        };

                        config {
                                pins = "gpio102";
                                bias-disable;
                                drive-strength = <16>;
                        };
                };
reading the blurb in downstream's gpu/drm/msm/dp/dp_parser.c this
seems to be the select pin of a GPIO Type-C mux?

Konrad

