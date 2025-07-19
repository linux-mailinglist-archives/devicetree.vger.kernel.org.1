Return-Path: <devicetree+bounces-197825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BD8C1B0AED4
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 10:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 41F5A7A245B
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 08:37:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C92052367B9;
	Sat, 19 Jul 2025 08:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iYluWSHX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D3A235064
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752914332; cv=none; b=PMOTcs9SQ2Rq48m4zrgUgN0kfXvZz2Dh75Tub6CRzMvh32AhVYbU/FFcaRoYV1+D/mqoa0xolm+wDAMdAnpYnRDd2cV9MYwIUNBXhhC8RLQDENrEwGPN7iOzlj1jtK4ScDXWsx9ei0XVh6bh3KbxT6jvsQKPllQT4nFLOS8PCKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752914332; c=relaxed/simple;
	bh=Ur4VPWnq3uw4FdWmt/9pK+hBwvb6OqyunFEN7NVZwmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jGxsDxGsEXWZNMsOvWEkIPfA117yVCMfG3dsQp8KjyYqEa7FPmYY+uabY8tY7m2HeJiGrO5u+yPTMd+3w3iq9YoiuYFIJLbOTPpm7JhrblQ9610x9qt2KiyLd+SIvZnDHRWH28XeKmuYwuR4gVLEiAPugGJ3QHK8UE/tIZuEfDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iYluWSHX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4F2Ip024707
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:38:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=glsksHZF4qm47GLf5Dr0eBBk
	p9qudOP0OhFzI5tDeNg=; b=iYluWSHXdy60NCiKDZwACKpvFtNJB7W1ALMHW34Q
	KWZL1uZi2Xvln8LjANXoqFM14m4qzLWEtgZqHWl4mOiPL9B8PVnVEvV8J+QMHJoP
	sadZ44Zo8vACLx3zQt52G9RB3H+1VIa3/1n55zFrEoo4kWQuMGoeCNm72HD/RUKg
	Faod/Mi9FJcnp1VS3D2wTDtmmScXmZWwwbOwC8Ryk+3Z1tnJHcBE0BU3sCCpl9WS
	kCJMjeCa3CWM+H6bInMXhNGdCNualDhnbp/suXLC9OgdHTGFCDUXV0ysQP/KPIAj
	E3IQWdDFZU8E2hsOEDUyAVJaXAqte5NIgwn2248M8yIrow==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045vrbb5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 08:38:50 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb2910dd04so46646786d6.0
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 01:38:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752914329; x=1753519129;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=glsksHZF4qm47GLf5Dr0eBBkp9qudOP0OhFzI5tDeNg=;
        b=wIlUphRAeNTTiBTcnEmfe84iwnUkOTXig9l9nUwUZd6EmSrG51/2EWjyc4cEEsAhAN
         BMnK5IKf5SxUG+z411LkwYJ3NdUZxBJnBPmP7/mEMABoUAyuoliBYZlKdkg4RF2elgK0
         kK50JHeAkC12NbPEqOwv665THslcHcM8sdDZIkE7LSXk9v3hrGj0vkzEDbvCLv8LqMTM
         /kd2SCMrN47JPtvWB7c/sIM2xymktB6HNOUfEQdoKPBuYUK0um8k5aV/RCxrHmdqeBKK
         ze7H/Ohpm1fOFhruOmCPHhhOi6O/frvBecUhAubp8kTTo4o0Ix+II7F9DOVGntm0bqNt
         aK3A==
X-Forwarded-Encrypted: i=1; AJvYcCVYimiNwgyRUzFW43mkajSXAOJyIr+C/fCloclY8UF0wbFMmgJV0JTfS8xXm2qNaoSx6nKtkTe9YLC4@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ4tAOIqNxoOKXvGdSir5q8sIKtXABwwCi7pK+UfKJaKWDCEbr
	iOvGzlOi3HX94yNbJr7MXzyOQMsnkx5QgSMxQs0qTnCUGDfvqXlfR4ShrNpsRm+fPRiHnwaLasm
	rKnA8yoZUhktNlbio0A1awg20Fs0fh/aB/ZhWA6rMvuNVevWWZmVeNSRunSWjcz2d
X-Gm-Gg: ASbGncsfWkF3yBDLc4LbWcy7dedC1GWfOaNMmEDVZthKrV+8+hYoD0vPQsfHakfcN4d
	E7ikM1H4ccx+CN+fCkHZvSwN6B1+2JZlmLTKQCMsmINlrqDhJgzwOdHmAfE0E+zL1k4RUGPsJmI
	kjHYVkANKvtwb0/7lRGKxGf6RQ4bTNsKZ2pgMGizvUaJgiIyXWSGjhPnHCX2jvcW+He4ZfbYhfQ
	Q0SSXF24QU7/XnDxyVRuEIEOYV79BKT7lWk9rjc6ewZ1c+l4RKOaPLgygT3PduWDjYnK48wm9dK
	pfo71K4j5Kzj/W7/KMXbGZaElusPhG0C6BZThIg2iKN/efrInJb+BePmt9O1y78/pc9YgjAPatP
	AF1jMhOMAGiwcprT2nNLoDE8WLOVnCY1FgXx3CZ5CU6hFm6QyvrkX
X-Received: by 2002:a05:6214:5090:b0:704:8f24:f03d with SMTP id 6a1803df08f44-704f4825428mr238949956d6.16.1752914328902;
        Sat, 19 Jul 2025 01:38:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQsvNQe0y0XkePnP7jlgYK0y9weg7ronQqAfB9AOD0zuVM4AIPd7Z2x/hqwuEfSMzAV+Y4bQ==
X-Received: by 2002:a05:6214:5090:b0:704:8f24:f03d with SMTP id 6a1803df08f44-704f4825428mr238949776d6.16.1752914328437;
        Sat, 19 Jul 2025 01:38:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a911b775sm5216151fa.45.2025.07.19.01.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 01:38:47 -0700 (PDT)
Date: Sat, 19 Jul 2025 11:38:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org,
        kernel@oss.qualcomm.com,
        Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 7/9] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
Message-ID: <iuojvg73siqfxq4ejv4g7o562k7i766bbpg36sxsljq7z7tqrs@ueqfdknfp5zw>
References: <20250715180050.3920019-1-quic_pkumpatl@quicinc.com>
 <20250715180050.3920019-8-quic_pkumpatl@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715180050.3920019-8-quic_pkumpatl@quicinc.com>
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=687b599a cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=rRvH8sadIMNe52h8dg0A:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: YjP0mppjHH0K58QB1Ir0hyADqsrM3RO4
X-Proofpoint-ORIG-GUID: YjP0mppjHH0K58QB1Ir0hyADqsrM3RO4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDA4NSBTYWx0ZWRfX9dqxYsZq1+t3
 P/Qg1d+vLMJ5gDCRZLtZKgEuQFRQpkaKYszi8+vwd83ab+QV/mMoROXPR95iifBb4spSPOWgo2h
 OpbdmGxT2YD5zi31GK0JyksnCFMcth/P6lsg4nLJ+K+wIhz1ejMN6uX4937mT4UBrerPYY/+y+r
 RYVVqFoEY7tBMxw3DFQm+16xM3zz0J/nsX251F4pS6aBWycthF3FEeSaEAWdneHb4e3P8EMkt8e
 B9pLOR6yKkZX6iDJgkza1CrfNPanj5ZlwsUh0N7up0fTT5wVcxaKDkuj7aXlNqMSMLzNyPURTTl
 C4OmOmuuYoam9mKuvRdHHif8si7cneEQVSc0aoQl1Sm/KId5CcKSjXVJyZSXkMO3pzDMuKgr4Gi
 GHM6mrDYJviuRJ2rlbK6SDxXPMzcH/SFlAHWRfKlz4p0AYkANlqzMznt4p3pa1JWY+++Hny1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507190085

On Tue, Jul 15, 2025 at 11:30:48PM +0530, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers
> and digital on-board mics.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 45 ++++++++++++++++++++
>  1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 82aa69d715d9..4ec3501eecdc 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -1048,6 +1048,51 @@ &sdhc_2 {
>  	status = "okay";
>  };
>  
> +&sound {
> +	compatible = "qcom,qcs6490-rb3gen2-sndcard";
> +	model = "qcs6490-rb3gen2-snd-card";

This model name doesn't seem to match established practice. Please use
'QCS6490-RB3Gen2'.

> +

-- 
With best wishes
Dmitry

