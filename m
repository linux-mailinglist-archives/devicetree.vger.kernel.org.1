Return-Path: <devicetree+bounces-247415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF99CC7A04
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 13:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9910F301ADDF
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 12:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D26833B97D;
	Wed, 17 Dec 2025 12:33:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="msdFwJtK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gqB7d9Jd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6D9033C186
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765974831; cv=none; b=Hthk8R2gld9gi+nzgDpYdk+frEHaY3WpRZgPB+5jKVuMcHuKFBrORo+0GI/45pQEZc4iCeew7E4FBkSKxYTCFlbwq47ZYV42YlQvNAIBBa3ulnRa/VF7f2VnKlgjLbz2uwlIwn0Wqt6jD2YXuBFW9kgIlFU7rSQ9AJvMUCL9Gtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765974831; c=relaxed/simple;
	bh=W5LbVrER/4MQ3huq1FPB87Z8nndxc7Q6T5WHeYstCRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F3bW+xsAjfVmVD3kzkdw6f17V3lw3CQirYeur7SEp1aDxLlm4s+qi8RLewACK0WOT48pHMXpY2C3L/uGl76PBgF7UK08OoaAq09H/V88tNFXVCKx4B5VLaweVjWg54kTiivTEi+1i0W0u0OipA0Ir89Sj8gLYVho32InKNckUis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=msdFwJtK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gqB7d9Jd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL6t93001915
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:33:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K+eepty2GEbZjWCqfIdDh4E9+TNhmUtMFi7Lb5wrJJ4=; b=msdFwJtK2eEI5rLU
	p/QN+Xwj09j/PXwoK95TMGnDl9lMf57eQd16DufsoHjyJ2nNSKbQchrfF57uefkS
	QaedLkJgc9VlBz2hnRT+YsF1VDthh6X1U15MmTrljs5Sk8q1uyK3Ki4jKHZYlJ5j
	ykx5fbXUjZdCSGVbW8y6qmPNRzNBhELVPiXpXwq4gohFGbg+DlLGq2BUzJYXv9Cb
	RX1TVPAl6p2xABROotk/gruVbajHQ5E2V75VCJgzfC+DGomZxSoPMLexOyoUlDCo
	athvM24WKYnBfYUpcRRQw2dCdj91LSUJG4JSxJhqVR8eZT4dQb+RbHTSoG5E+dGd
	Lpk2/w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331jcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 12:33:48 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bbb6031cfdso102003685a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 04:33:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765974828; x=1766579628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=K+eepty2GEbZjWCqfIdDh4E9+TNhmUtMFi7Lb5wrJJ4=;
        b=gqB7d9JdVz4Og0nx2Yeyd+wmy+Ia6+SumLiWANXMNWobCjuoVNHNorSQhEYB6mMYpT
         RieHCYmv6Cge32u1VIgseZWZ19hhM4ZLh49NFky35kArPOJDgzJPAiRbGtD1YF6OI3Iy
         H1qJrXT4c80K62UZQ0Odof56xKq8emgiYScLcVb7DpYrkKg3J/xmxNyDIeFpMDZu20fe
         PkuWAU7dGM9zftWqJe6qOhnM06L/OfUSfBg/Yst6VU7F8EGDmmVys29Jai3GUkQ8EDP1
         WMrEtzlnxJxTJ2LbaklZfvUt1lb1opd3cJknnljhTYSNYrnRKZwd2mTYIK/pccYnZrSc
         RaxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765974828; x=1766579628;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=K+eepty2GEbZjWCqfIdDh4E9+TNhmUtMFi7Lb5wrJJ4=;
        b=QViCNrXnUDnIo2MsBLm8oAfHEizJutIkV/UBLfdyI2mU6cW7Ao1c8DzlqecsEU6wuD
         ve3t9m/x75rOlpO+9EoORN2eBIM2K+ChmhomO0ieEdWp8eKm/88gIePgzAf03b+eGV6p
         iCkQiiGaFLw3y6sa9tQJ7obdvw5Vmojxbc8xbNgUc3Pz6zLCVWORCJVB/Ve0O6VD0Vk7
         CHp9WhgnTbL+f3d/kbJTjSrd59pzCQ9fuE0GTuJpJvil72fw/k7x2CJilai2bzCuWyBa
         DcWKT8R9vRIm5QPmPodYbHSTLTqMhBoxTrxXECGwpVOsI/gnWnxovzsnDMpnbDH27mLj
         smIQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8EV1ZJ4GxyTlN/fWu+FwoqIODZDkBtGI/Mdd3k9lID6ue5dRhXOotWGuablILVEbSJ4jcsLePtRoV@vger.kernel.org
X-Gm-Message-State: AOJu0YxpB12T29sLy4ZAeCnspr9jvODQh0cGF17UYaWgSaUcQ0E9PxVU
	QjuIxfMn0HtgdWCD8aS+BysswaQR2Lc7h+CqtxPdpt2MjrvDNaULD5Xui7fkM8xRLPoFS8m89Za
	km0ABChiVocTLVVesB6Cmd4CAey3vqAMdnXtSMOjr1HZXv04r86DR/m1QjVzHV5Bk
X-Gm-Gg: AY/fxX6zGWLkHahcVT3zsAskNR/D9Cyky4PkwTuAzSHQs2NECy5Eze99+tNDpqivgDH
	L1Jp81SrC7xWXrP7FEnVzdRjGZCh4O/lPY6pUoNkCVV3B9XIBjPu+orv6FS1d96EqZYj37l/vVv
	mwW9VvTzdPSH/1askSCcM6rtfODHeJo4vyX9B5n46R41fB0tnHAJaAnLAtZFMt/PvMz3pBDzIRF
	oRrTOaZAEWSRmVG804bFgZVOsuURV94uzOnNmuoGD1TjHnX7dZQVbPXJTQ3GE69w6iTpIWRuErd
	r2p9LdTcp33panLDzDkzyG665zgqpvCWNGUb/CX9Eh8fMmqmRbthxwl2GbTuLeoW4k6sxCoGDzx
	qojMfPg8hVi1K5lJRMA30pTOR9H/N1kl//RtB8WHT7nysvriPbgRqxBPiT1E7xXnm4Q==
X-Received: by 2002:a05:620a:468f:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8bb3a0b7e5amr1829641585a.3.1765974828189;
        Wed, 17 Dec 2025 04:33:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjZW8Wo0hAT5bXm597qkRAL1OB44PWghWfzFgRWiINyyUR7rC/ty7W9BM+oQO1rvQ2OHrkGQ==
X-Received: by 2002:a05:620a:468f:b0:8b1:fa2a:702f with SMTP id af79cd13be357-8bb3a0b7e5amr1829636885a.3.1765974827587;
        Wed, 17 Dec 2025 04:33:47 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f4ea67esm2365765a12.7.2025.12.17.04.33.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 04:33:47 -0800 (PST)
Message-ID: <2d4953c6-184d-423b-80e9-871c6e00da35@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 13:33:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: x1e78100-t14s: Add audio
 playback over DisplayPort
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Abel Vesa <abel.vesa@linaro.org>
References: <20251217120051.98198-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20251217120051.98198-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217120051.98198-4-krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDA5NyBTYWx0ZWRfXzleyIgA6hOUB
 1kDbz/bsgFTwpBoMkcyBL7y4NDct5x2bxVRj9yyzRd/UQyTzsMDOF/d3jmUa/HwAZFfVwQbCwat
 +FNenP2Ku4mTqvQFCA+hJwP60lkYL+9F6TUlBA6HbMLQDbWiSxfYHqmvY5c/RPgV3MtmwU1kg3F
 Pnl9FNifom8s1pgTg2lc4Seey9MVdSNQdXrmi7vnWNSP8JfrG4VheThR2EjkrJYZ7i/ThxBjBNJ
 h3j9IbrZy1Smy0yfy8+v/g4ly2Snoy7b4xULRqnaAKeqDNHoCO+ylwtHfhicRIx63PBEDnDYtqU
 3LcSqjOJ13NNTNQJ6r7QMjxyKFcoPoo9CKdsnQTfrSb8XXjVy7I21T1kmmjeFNxagwdvVDr+U12
 UKHxZTFMBnQJ93bjB6+DrN12akK9Yw==
X-Proofpoint-GUID: xFBrAW-tQ8NMoIuK3pd95sN0uy_DLSFg
X-Proofpoint-ORIG-GUID: xFBrAW-tQ8NMoIuK3pd95sN0uy_DLSFg
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=6942a32c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=PIn3yDVZNjJHwrb619wA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170097

On 12/17/25 1:00 PM, Krzysztof Kozlowski wrote:
> Add necessary DAI links and DAI name prefixes to enable audio playback
> over USB/DisplayPort and HDMI.  The HDMI port is not yet enabled, but it
> should carry respective DAI name prefix regardless.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---

(something's inserting a \n before --- in your latest patches but I
don't know if this is a problem)

[...]

> +		displayport-2-dai-link {
> +			link-name = "DisplayPort2 Playback";
> +
> +			codec {
> +				sound-dai = <&mdss_dp2>;

How does this work out with fw_devlink?

Konrad

