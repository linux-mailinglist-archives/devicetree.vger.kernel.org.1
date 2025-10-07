Return-Path: <devicetree+bounces-224135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36EC9BC0F41
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 12:03:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E56A93A39FA
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 10:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C668D2D7806;
	Tue,  7 Oct 2025 10:03:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q5NCVgyw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9F286337
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 10:03:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759831430; cv=none; b=azDVqW7DPgEVR4A1p9ubm3wXvhUXweKlYFVTQ8D0buCeWQlHvmebS7pJ1gIPatQvU0U39XjC2tYU7ruzVpEGF5MHZfHuxNJppmBRgnmuCrDO2MUcLBQIp6XoKtvD5b76SxmVZBwMvCNdC13zm5Oc61DsDLSNyypq28Z+pnF9itg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759831430; c=relaxed/simple;
	bh=deCSUNbIDe5KUDM9hMfp0pEEzG+kiG+b21ccg2slSwg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lqjWwmEkN2uiPcPXjREbdPHVJf4h5FGcjYH5TpAv/6vYewweDgcXeLPY4QsUDJY+NhfFZsvKZ32KBf/1avPUkHYX1cP+UWbRgbCYituDuqzFZVbxFCMex1g4SvhsHEI4u5vnM+rXm1SWZfeidbkEQQ5liQMGd7NJTp16+Pbxxb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q5NCVgyw; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5973JXSN026536
	for <devicetree@vger.kernel.org>; Tue, 7 Oct 2025 10:03:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f/lg14/r475DGELb27M6yUVRo8Ql/TshF6yOFwLnhUg=; b=Q5NCVgywT30LklDy
	PsufD/x4ImyMgiRyRIF4Kje/tRkngmJcULOZWAUlRyqbVaB4EHwo7LuYha0cs6kb
	4WGJE2YBaIINdE9BC//R+CfAGNG0qPt9BQZPpriiYMKzpbWmIfGDroF5xXgo3q9F
	OQoVxmu9wT6N1f4PEodHIa/4ZL5rJykwzRHjIiZpG7QaCf+PKMX88UK8T/2sTj5u
	D2EIj21q9COYRf1sfT2ulpGin4SFh30KUJSWlzc+QtLouop3IggUNOJsqjiBPYcW
	JNfFU8bpPJrFTmQZh4T99TN02x39FvQx/k6SdgAoHioKEsKDp6dARtpai9j1WkH6
	hnSn8w==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49jtwgpwc3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 10:03:48 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d8c35f814eso13718521cf.0
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 03:03:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759831427; x=1760436227;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f/lg14/r475DGELb27M6yUVRo8Ql/TshF6yOFwLnhUg=;
        b=ksCYP1UsMpgZyPmoCAAHCYMlps38pRvcC/N5bEpDK0tEAEIBZ17LsclhwPbZu2RQsk
         HnABRJoNsWxnjPPvlt19tg9O68zFQchp7iLjVDfHpkXF0XyE+ajwZAO7qMLl4M8dIv4K
         APd6NTzJnW9PM8v7iZp5XU1jW11u7tPnR43PodaSiw22eKAkU2qiWMuAL2iV36JaFYvM
         ytmfO4FAmbjsVW9nXmvhdCtOEVMa/pKb0AYZFgzKac+figYh86cIKyLrSqSXK30XT5kx
         kNsg/nJUwwkPblEbhjIU9nMdNm96Kb7eS1lJ6iqfmN7doSoWp+acpU4uMrEtEbomW+rP
         YyjA==
X-Forwarded-Encrypted: i=1; AJvYcCXtuQlM15NNpyE+P8/hHajg/xgYfsa1s2VO1Z+qEsB+cpWJ681/RIdktpJPKE5MLO7TbAlYi/ZYyukO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7r968AlKXu2K9DAfJZr9scGMYn/qisyn7PCAdFDuEVVutbLMF
	i74kCrvosKvXkcBOl079gU0Fs7Sgb+NnfIJKn/PndtNCl5ndLm6m0xDd1GPiwQEpk7+rJ48GiAL
	6t+oF0Pfp9zkCmzIE13kQ0KjTvk5C2lgZPVhPftcNtvF+O+K6JKbFUA/Px0UwZBx5
X-Gm-Gg: ASbGnctXI96Fpv2/Wv0ClIFTOnywWOLvX0AR2Wxoev333CwqaQXSupyx1aLCPOafHTD
	1G+yLu+8EITqxZewi7SEhkQD2u4/plf2tSqQQxIPLy7XSrEm3ZoL8IBm9lAjGCgP8cziFi1gPh5
	Kdi1dpEXTw/E4bGN5bQEkv1QlX8scvnhOfMpzhhmWFpXVZ9/P+VEuo7pw692DTDT6XrMjfvCJ2o
	qpjGQUooI73yUTm3bHQPf4c8Funp+O+rEU5rXFuhn8uj0OkFutazbH10N8HPGe3h9OZ5oi4s8u3
	a5dBxVUpoL/H/xlH3HiBAksgwhdGN/Ecs0P++8Bj50njwzDacGS3t/QGEHXcXjY+ANl0OlmfbLH
	XjrgukJEh3RSoXgssZJz2Pc8AJyo=
X-Received: by 2002:ac8:5aca:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e576a98c02mr133841661cf.7.1759831427323;
        Tue, 07 Oct 2025 03:03:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFhzCL5QidiG6adlmbwtbxC1CmvVbnE5VzUbfzHUGrlHgHy+0vWMRsnW7JAlRR88W32mvagWA==
X-Received: by 2002:ac8:5aca:0:b0:4d0:3985:e425 with SMTP id d75a77b69052e-4e576a98c02mr133841321cf.7.1759831426898;
        Tue, 07 Oct 2025 03:03:46 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869c4f314sm1340878266b.69.2025.10.07.03.03.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Oct 2025 03:03:46 -0700 (PDT)
Message-ID: <99bfa340-2164-4df8-9953-e65f9cee7709@oss.qualcomm.com>
Date: Tue, 7 Oct 2025 12:03:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] ARM: dts: qcom: msm8974pro-htc-m8: add NFC support
To: alex@me.ssier.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-2-53d7ab3594e7@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251007-m8-dts-additions-v1-2-53d7ab3594e7@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAxOSBTYWx0ZWRfXxXPJSkMLkYxY
 j7hnbYfbO7O2K6Wge5SCa7XsoT8fVhALHsik34mWycGpDl1S9AR0qaWri/QV5pS0uQ0Y56pj5Zh
 gz/mOBaTiLRJsj8NMpdQ0CKyAKiVr3CgMP8bBAIf29Fi47VaM1fdpsIlvWLySQEY0zj/EfxQ9Lm
 xj4u2WxOF1NDwOQRTRZETAN+le7Y7QkzUZF3mYzMWcB9R/v+Rze7NAdTjO1S/ZmSX7op+hVKEZ3
 PUpbQJFByJvz9kCBpVjxNv93+KarOmEgbhWjVXvyaiS/9zDtL2E+2mbGStcXq0fStwFqCNwVGZh
 5yo3hx2eGQuu2a0nE81DNIdZGlPlu3CAuT24ynxH6UHpm6krSR6366iK/SBo/Ny2O5mUrWPJiPZ
 tfx/4Nali/sgy/c5BY5j5jt7V7F7mw==
X-Authority-Analysis: v=2.4 cv=B6O0EetM c=1 sm=1 tr=0 ts=68e4e584 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=8poMKPHdAAAA:8 a=2dNuJvzwNQBdB-WvFZIA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-GUID: YnUSKh5TqxZZNGVVGuyY88tMgTiskLdu
X-Proofpoint-ORIG-GUID: YnUSKh5TqxZZNGVVGuyY88tMgTiskLdu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_07,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 spamscore=0 bulkscore=0 phishscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040019

On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
> From: Alexandre Messier <alex@me.ssier.org>
> 
> Add the NFC chip used in the HTC One M8 to its device tree.
> 
> Signed-off-by: Alexandre Messier <alex@me.ssier.org>
> ---
>  arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> index 9c3859069aba..4026d6fedfbe 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
> @@ -65,6 +65,22 @@ vreg_vph_pwr: vreg-vph-pwr {
>  	};
>  };
>  
> +&blsp1_i2c3 {
> +	clock-frequency = <384000>;

This is not a valid I2C frequency

Konrad

