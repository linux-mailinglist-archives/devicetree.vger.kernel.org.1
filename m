Return-Path: <devicetree+bounces-158921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D07A688FA
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:01:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B7FEE165B64
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:01:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C739202C5C;
	Wed, 19 Mar 2025 10:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FvWuU1Da"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7767D1DD889
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742378504; cv=none; b=jFypeZbr6a0m8atkbmuvgu/5PK72rC9ylW3WKQ8viZNq4JUy7gaF0xqQhNt8jrIlvR9t0BQZd81Jp09OpS9cyVSw8Qbit18t6dp7KKA47DEXU72oBzybOJMEU2kE5gDrZ3VV3IDX2KP+4eqxsh9w+QObNFex2WqbZtLE5YCGN0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742378504; c=relaxed/simple;
	bh=XUe+jsxf6CToNNlzFKXj0FuOYSurMgVx9HLYqUtrkAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=a2xCVhKo3HPMh5Q15WyPl2I5RYX13NodlgdKs/1zskNRVdEs5HqZtambpou5j97dHX26pihuqSFbFb5zy4kQUVziWlfugslR0eQSTnIy40ZMsq30ENNSJ/jPBC9PWHM+TyZ/6uTgt7+RQz7gTqQXN4+DmXxbu1SZkmVMSjP/uSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FvWuU1Da; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4lhI8020655
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:01:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6ar7fCbKOyGZpKMOTQA5T0v9
	4HfMi68v9XDsZNUCZ7Q=; b=FvWuU1Daaxee/BDGkLvLgqqvZWHnpWs/fPlhMvUp
	CQ5/POZUPHyvQl4f9sl2XyT9xOAPHlE+EEskQZPL8bNPpVEOeNNdLlk02SUFDCs1
	coOw1ypM/a1jqILUU88yc4gY47LhEUdVLnTmLrRlKguqtI8z0auolSsl+Cunh3Ld
	GFCyMEulA4h/35pSI610co/Zvl38EsMXhCeuKN9OuEVO2aK6y4sC7YedaPzgJEh3
	DHYMboN689VPlZJlrQar9CV5Px/ZOmQmo2mF0Qng/A0kyXwnkLV05p1AdYBkDlnh
	7lU5RMvnudsC+V1orFMKWProvBhXIiPKYYu4Wj8/pd67yQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exx34wh5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:01:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47682f9e7b9so113002211cf.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:01:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742378500; x=1742983300;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6ar7fCbKOyGZpKMOTQA5T0v94HfMi68v9XDsZNUCZ7Q=;
        b=WJ3q1lMrfHKPGaiv+vDM8zg2kZ2preP1jIHGkww6ysTAnqpQLPgeRaPrbtZAsoDlHh
         VmHznvWIg7j+ICvtS1gs2yC1N97CIuv0FjNMCpg3YUK+KjZYPucLqo8ZFF3IIY94GYUQ
         X6lbDsMmaGIJ1GnG4UDafKBTJFXrzZQ5+mSLU4C5uvK72bqxuH0irLCOvfKpjiThl65c
         t3d8z2jSuSm3tckKYcb77s7yODB1rhHfpf8v2DpVfena9n96F/7YQQ6qPbM6gaJuMvzo
         LWvrwpHjk1haWSREmfP/ZM1p8Y8udXr7cTJSnHtxZMZLo1H/td8YJ4Cf9W4m6T5D/2qy
         9Ymw==
X-Forwarded-Encrypted: i=1; AJvYcCUiVIRl7Rqug8EPjBbGCZzjIw6a8hVmdx++sQe3E5V7vFleC3rZmI+nDg8ANyDvJxFuvXTuGNfzDecO@vger.kernel.org
X-Gm-Message-State: AOJu0YwAIL1WOpHGu+xzBcfv7+QcD0uPptHrPq8sOpbbN5LDGWA5ZwwJ
	oAfp57nZEJBcIt+zwaXQg4Y24rfvDivevzLYXqYcMQSNh69Ugc9aD85ZWLVxzqwkJfvICG9hcrO
	WU3m74za+bJyidrR0CGXCzd7q/AJhAfLfFWVUN+uRNVwS//IE3d7ItpmPpGQw
X-Gm-Gg: ASbGncvJNHkerTP+A+C4cmXZyL4fy2AEeIN7H4QXurg1xwB5WuJCcFW3RZdSVJHU8De
	gOhm9jAVqQetSYe9HXhemmZekBdPoEkn8+BDsTGY+4HREuEmM/hJWG7IgO3sJo3N5SwmsWiaovt
	4/VB8G7M/GBYFLYf1XvY2JMcn/xbkHw7s/OlIfYXyFQprXA/uMyQUPLgbTExLOaA833aJjAeHOG
	kme5xDef7fmwb5vQrbVF2UpKCG54u5ghZWgouTSjLyVRXnswpgVKZbgIi6A2c3jxm1a6BI92wSA
	f1fqWmGJUWlmUiky8QDdsAllUIa6UxldmbPNuNky1ka+koz+Ca8elbbGUotf3TgLfdDWUJ1ljHM
	utCA=
X-Received: by 2002:a05:622a:198f:b0:476:9e28:ce49 with SMTP id d75a77b69052e-477083fa83fmr36529551cf.43.1742378500201;
        Wed, 19 Mar 2025 03:01:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn/8jRnkAWhCa8HlPDdGVL0sr7qdZWUT3wVBvjOrwpblEM6Qa/FT2Y56cp1uYZGIz0DEa7Vg==
X-Received: by 2002:a05:622a:198f:b0:476:9e28:ce49 with SMTP id d75a77b69052e-477083fa83fmr36528881cf.43.1742378499705;
        Wed, 19 Mar 2025 03:01:39 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba7a8352sm1962602e87.7.2025.03.19.03.01.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:01:38 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:01:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: srinivas.kandagatla@linaro.org
Cc: broonie@kernel.org, andersson@kernel.org, lgirdwood@gmail.com,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, perex@perex.cz, tiwai@suse.com,
        dmitry.baryshkov@linaro.org, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org
Subject: Re: [PATCH 1/3] ASoC: dt-bindings: wcd93xx: add bindings for audio
 switch controlling hp
Message-ID: <4ie22uuz5tpg77jto3c3hec6lhonr44hrjda7jk655axlaxvba@u3atd4gcyghn>
References: <20250319091637.4505-1-srinivas.kandagatla@linaro.org>
 <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250319091637.4505-2-srinivas.kandagatla@linaro.org>
X-Authority-Analysis: v=2.4 cv=b+uy4sGx c=1 sm=1 tr=0 ts=67da9605 cx=c_pps a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=BBAQEGfUMlneDKUuzf4A:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: UHDZ7x0j9qR4HHOUlChVe_1_FqzAaTCn
X-Proofpoint-GUID: UHDZ7x0j9qR4HHOUlChVe_1_FqzAaTCn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 bulkscore=0 clxscore=1015 mlxlogscore=700 priorityscore=1501 mlxscore=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190068

On Wed, Mar 19, 2025 at 09:16:35AM +0000, srinivas.kandagatla@linaro.org wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> On some platforms to minimise pop and click during switching between
> CTIA and OMTP headset an additional HiFi Switch is used. Most common
> case is that this switch is switched on by default, but on some
> platforms this needs a regulator enable.

Is this regulator supplying the codec or some external component? In the
latter case it's likely that it should not be a part of WCD bindings.

> This patch adds required bindings to add such regulator.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../devicetree/bindings/sound/qcom,wcd93xx-common.yaml        | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
> index f78ba148ad25..fa00570caf24 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,wcd93xx-common.yaml
> @@ -26,6 +26,10 @@ properties:
>    vdd-mic-bias-supply:
>      description: A reference to the 3.8V mic bias supply
>  
> +  vdd-hp-switch-supply:
> +    description: A reference to the audio switch supply
> +      for switching CTIA/OMTP Headset
> +
>    qcom,tx-device:
>      $ref: /schemas/types.yaml#/definitions/phandle-array
>      description: A reference to Soundwire tx device phandle
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry

