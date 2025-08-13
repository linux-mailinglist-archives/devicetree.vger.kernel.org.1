Return-Path: <devicetree+bounces-204421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F4216B2574C
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 01:09:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3015E1C83FAF
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 23:09:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2022FB97C;
	Wed, 13 Aug 2025 23:09:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JukDwkr0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9CF2F0C73
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:09:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755126557; cv=none; b=Rh3Evc5+uadbFCow6S5PThc9ozA0AYD7IKLfVKsPqTp7hJbVKQqaj37NTuaYZ7MJexomsKTuGdF01yvtmyOby2tIHIvgKmzp3yKSDV2FcgqIbI1v+lNxBE9GA5pfWYOqyn0OFoVxuClurWZEjiRppEhs3NmoxFJ2ccicPymgxcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755126557; c=relaxed/simple;
	bh=T82FpN5osHxI2y1iccKhkwVh6JluhHia2thiRO8gHWs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wyc//WdGmJeF75xgQe/ODZZD73urlo0LKVF1nmvB2S1EY4OikXUYu20WycytKdSAc/waaqbPfZ547TyC7GsBnOjGd1FE8xrcDfAv6PuXyL7RxzFbCSD9cIYgNv+fu5gEYAfOslK9x46T1tB7u80deXu+dIyeSnOrkw8Y84tD7zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JukDwkr0; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLrdS021036
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:09:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FW0Xg35JatzTxpNZ0mth0/VPTJXslvs1Vzzt18fSrD4=; b=JukDwkr0hdcUloBE
	0Pwz3thW+Aamrdc92pJ54L+QVhN1XdYWu/ebx7UYEc8fMsL19o3UwgkZLrJn+/TB
	zZPCxGmFWFarR6cXMeViL3ubA4LgNbsXFMATUqk3UiV43tTh0p78FGQXDmWSJWN+
	JfIRg45FLC+Jl+5sEC19nEot2JC6IHtvzjgOVAqZc3C7R3SGO1WBQ/CaHcHUmY7j
	vcbTgDyETQfzv+FCKAt6vn9I/4D7z3R54Ori80S+5hkbxgqbQ9hUbrWBU5FMw3iQ
	Ybtxn+YMo+nMdtwxYwqlMJNW9C5PtTmOjzf/B/tuUzb5vBXPPjwZJY4eFZVtCcLc
	hh3oiQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmdfbx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 23:09:14 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b1099194ffso1477761cf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 16:09:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755126553; x=1755731353;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FW0Xg35JatzTxpNZ0mth0/VPTJXslvs1Vzzt18fSrD4=;
        b=EpGnhoz0wwcrFNyRP408rpha1EhuAye88vt1kJIf70WBSO6m41v4EfXNrPdA2QKh83
         jTYanj+nM/nXDla8HqFN5hE7pSMYvkJjq43Em2tFvyz+9eRbwCj5u8LWt3dasw2TnZps
         FpjAWDEKOyhrZphZtHxaY9TP3EIHK6k/gNxC5r2rWtsWoEld11kB9Nc4frje8GxQdUIH
         zwUskGOFulup6Hf0ZfHUQKRyT5M48M/fxFzYy2rzBjZZ/sb86WeHVCZ0H+ZbEhqBeXV4
         22s+mfKxs1Ib2/BTHVqvwBVqci5LG6l3qEuONsrs5MWJGyA0F5P6gY5L52bUvz6y5nBf
         iEgA==
X-Forwarded-Encrypted: i=1; AJvYcCXBdZvjLCaqaHJDZdRDe+hpnqJxVcbTWOpcJzHd1luz8Yk1SzZsbF/uvfx8yBKOyA4L+nQaguAwybtq@vger.kernel.org
X-Gm-Message-State: AOJu0YwBLgs9T/oBfPUFbrqTqj96YBC9z35cAFWaCPVrJnQCgbCep6Yn
	wnpn6fZGvj/p9Oaw9PGW8nEtpEZx8knuNiFzo0Y83UYSWXoQlsyFPeBfgJIIMiF1Z8Qu0zH8qhO
	9k9OQrSenCMk/j9tSBR+AAv9OwTmkosUK1+UK9pUFN9576qyWlZQQy4oFQMnRTdEf
X-Gm-Gg: ASbGnctiw+xOM+659fJQYeGyN+Umn1NIKUf0/NJgxZkx3p8ap2Scd6RjVWZSo53ZOpk
	yqXLEqxVuGkUusfZDa/Azf7Sft1zjb0EO1LrAr4FvWLaYts7uUeqSZMhGEXTY3uoNe3aX9UvExW
	wT0cQQffaiuCVgsZdoSE9GFS0DpBGt1r2O4uBFp+ToAVgQLdHjIZTCJw0vfCYBpoGf6W13xwe9W
	VJB6tImV6Vuux5bu6dFgpaz/q/bj9Hb+MPYxHoteSuwnTQkCWpnmEbpu+Th3O/h++vHbvuw9Xx+
	Thn1em0ypwJmTmuQE9gcWXhNGcLoB+Mo2rfANQW6PGFneaOWDN5WXfqm0Z5LE1aHQpSChy5pW55
	stgR7sUHoIvF1HGI9Cw==
X-Received: by 2002:ac8:5f8b:0:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4b10ab1409cmr7447211cf.10.1755126553442;
        Wed, 13 Aug 2025 16:09:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFksB5csn2J3qmtm/tHxIR/kI2a4tn8gLl4tYqT+oofHMStplfH8BbgDxQxUxAzjW7zZrDbTQ==
X-Received: by 2002:ac8:5f8b:0:b0:47a:e81b:cca6 with SMTP id d75a77b69052e-4b10ab1409cmr7446991cf.10.1755126552867;
        Wed, 13 Aug 2025 16:09:12 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a0a1bf9sm2482327766b.31.2025.08.13.16.09.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 16:09:12 -0700 (PDT)
Message-ID: <5de00c2e-2b81-42f4-ab17-6db0f1daf7ff@oss.qualcomm.com>
Date: Thu, 14 Aug 2025 01:09:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/9] arm64: dts: qcom: x1: Disable audio codecs by default
To: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan@kernel.org>
References: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250813-x1e80100-disable-audio-codecs-v1-0-af82d9576f80@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX2a3TegV/lsjy
 WdVkZmS3VqFqk2SXyPrWZyhSH3phNp3V/x8TRCG84SOlnzaYvPjc18b9Z8AGYeA2/w1KF8p3v9Q
 u8T+2/yYRFBK7c3AP2muay0DHsyWNpNj7Pfu4TEKKwYswFozxvxTVUENpIUeROYULtsn8lWOp/B
 BeBuZhFmdroVCIEvpTmcY/lsTwtQuuDe0hQNqZtmO2X9kQp9rd9mRMvBuy0HBxNKiyhc/tiKsa6
 C4WAdXFD+yTqLdazAUJsMSQDBp4VI7s0TGXAmVueR6ylDcephezpe3qOwUlTLaRKcnBCdwihRpp
 mpcffsVzQnQIwBnqfURWMv9RFcCzWPPrkpgFJ7kTbHvfCMAKsePe41OICVbXqFvv0A6KJ4jWZpj
 2jr7+LgM
X-Proofpoint-GUID: bc9oczJom5ex2o6qemQjDxTu4o2vCENO
X-Proofpoint-ORIG-GUID: bc9oczJom5ex2o6qemQjDxTu4o2vCENO
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689d1b1a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=fBsYT2r0rtnNRkE0zdoA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_02,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

On 8/13/25 5:58 PM, Stephan Gerhold wrote:
> Currently, the macro audio codecs are enabled by default in x1e80100.dtsi.
> However, they do not probe without the ADSP remoteproc, which is disabled
> by default.

FWIW if the ADSP doesn't start, you can't really consider the platform
working.. It just does oversees too much of the SoC to even seriously
consider using the device without it

I would maybe perhaps even skew towards removing the status=disable from
under remoteprocs instead.. that the user may not supply firmware doesn't
have any negative effects as compared to keeping it disabled (other than
a line or two of fwloader complaining)

Konrad

> Also, not all boards make use of all the audio codecs, e.g.
> there are several boards with just two speakers. In this case, the
> &lpass_wsa2macro is not used.
> 
> Disable the audio codecs by default in x1e80100.dtsi and enable only the
> used macros for each device.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
> Stephan Gerhold (9):
>       arm64: dts: qcom: x1-asus-zenbook-a14: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1-crd: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e001de-devkit: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e78100-lenovo-thinkpad-t14s: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e80100-hp-omnibook-x14: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e80100-microsoft-romulus: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e80100-qcp: Explicitly enable used audio codecs
>       arm64: dts: qcom: x1e80100: Disable audio codecs by default
> 
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi    | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/x1-crd.dtsi                 | 20 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts         | 13 +++++++++++++
>  .../boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 16 ++++++++++++++++
>  .../arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 16 ++++++++++++++++
>  .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 12 ++++++++++++
>  .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi    | 16 ++++++++++++++++
>  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts            | 19 +++++++++++++++++++
>  arch/arm64/boot/dts/qcom/x1e80100.dtsi               | 12 ++++++++++++
>  9 files changed, 140 insertions(+)
> ---
> base-commit: 33a21dab19b31540dfeb06dde02e55129a10aec4
> change-id: 20250813-x1e80100-disable-audio-codecs-ef258fcea345
> 
> Best regards,

