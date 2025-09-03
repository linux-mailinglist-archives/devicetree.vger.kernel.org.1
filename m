Return-Path: <devicetree+bounces-212097-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 08C7AB41CA8
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 13:06:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C90D681E0C
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 11:06:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 79A682F5492;
	Wed,  3 Sep 2025 11:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kNC7lZEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9F8B2F5304
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 11:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756897606; cv=none; b=IAyfAu6awPa1+bL7bVW45k2mjQN8hJ0JcnQAXtCA1KQq2VbEZ9B3s+jRlwGjka7ZQgOo8xL+2/4s7RPEGWYTeLFCRJON9cJPgon59fHQWHYOJPLu9f1BXvNKoAP+lpS8AIND8cWWKysDnwlywSCuqbaMt4aRoScdjX24tjOSGmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756897606; c=relaxed/simple;
	bh=kJsm/X4Ar1trGdOmwZdjzg4ChxjhqnivRo6fgK39i5Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kX8qCgaiLRDCSSqSrVooAvfB1Hux+/i5svzk3dr9LGuKp8L9DdtpoDosNNmStObEmVh5/fOhcb65JSeU2OPzDArgV0EQ/uWFuGubtyprw4pLYxzEGUcFdAeJSqb/LB7Bo0bCDhuiglx3TJgx2+Vy51ECLI7fEm2qydxU2lHR7dQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kNC7lZEl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AHCZ9010164
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 11:06:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	3po8LD/tlDhYLuSoiG6xgfO9Aa0+IGS8ggHVHTqjVRs=; b=kNC7lZElTHx+SieB
	1RXKKthOAUXZYQfJQXj8fQYDnwehpb4OqCksUcVQKs/kool2Ip0usulzq81QOFv0
	yKI1JmhBtdMvXEE8uL1BkKAawdZmDwifCca2CtipwDBt1wchU5Yn/dABfanrI6+r
	431XPvaZmOCnHfTwUGug6v970wfWWhZ/Z45e2dxO0dMJPXvvf77teG7bBW4slcMB
	KMAbX/hg7/LVLts7mYVAy1v7FiPeypQVs1zSePqwy3K0ZxIk8rL2yshLavRgXByX
	VQCApdhjhTk3Nh54E7l5tqSh5HDmbQdlCSIf4F6FUegQYCtAiD/0Ae69KWwk445W
	hfS5/w==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48uq0ekh5g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 11:06:43 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b31f744865so10365351cf.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 04:06:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756897602; x=1757502402;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3po8LD/tlDhYLuSoiG6xgfO9Aa0+IGS8ggHVHTqjVRs=;
        b=YtJIM6vr7zt/Cw1AxyFXoNc3hyE8L9p16ATQRKnUdlRAC1HZQpwj07psiUp1h//L1/
         TXC3mPMgQ84i+b6axBV+gJoeQf6NqY9mN48fOvi6LywSAO5fEAhuXmIlUHmv+IZibsQA
         eDsokNhd7Orhw8wC05NLYPG++xGHCGjDo9veOi7uNK4ZX3adYB048mB5tcqqjUjNHBGF
         yDU4JWoX8BedEFprqWtgo2VQpHWJIsFuT1cGlZIwEGiB9Hfn6/Yf/XHp85PwxBlLZxMd
         3H+Mx6K6XjSUfCFny1sYF8gBpTTtzDGphdh4QNx7luk3ndJFjJCctNBrWWmnkvIn7BRo
         sxKA==
X-Forwarded-Encrypted: i=1; AJvYcCUpMIdCGhxsHrscsgiJQqZ/HQSvqDkpTK5HTyJuHDySd0zL52RCKDxJT+tgq9d9ah1uJ9As2KL0BY88@vger.kernel.org
X-Gm-Message-State: AOJu0YwdCCqikIonogdseecOV8W7DWiSpejQaSr5sKmzH2eaNHU3d9CW
	tuAYv5WmSDFH/b5/d/0v76L+xbgLKdWU0pUrD/czWQz6hu/FtGBIZEX85zIhAWU83knwsybQyy/
	LUK6lyT7QCXVOGPLzVPGF9gMzdlwzRFboEjHNYyUI7KrPLqarRD8sA/gJtq8TtoKP
X-Gm-Gg: ASbGncvce/XZRQjKxh4LY+kXFul26nQ04DmkTaXRu8j1jv/HbpxQiS+ORaKNveox+6N
	IxggN0KxxX6OBJl0JM5ZfAy+kF0UbIIP9xOmEiPjtFeVVHp8MHbO9vqkq3q/utuGjo9ts0mKesb
	+9FJ24sgMD1YhNnDKWkpzylaiZbos+P1D5UNu0oKu1vjcwfs+FVQ6yFesWawMmyPJxh5AIMleD+
	i4QTbuHLDUyqSigTVQsj87n//FCU9p2kfBXizeJhsg3dtmNOENXNkNiANQ4ep9Ux8mD+CRTqsQy
	tNYH2SdOJFnU55PPNppoRy5I0YG7Tg8bnuja8GwUJppqpvVQ3AdLm4C1+p9kVpxZIXgE2U5A76Q
	nxbn7RiE3DD/OsPe4cOmONQ==
X-Received: by 2002:a05:622a:46c7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b49070f397mr8044211cf.0.1756897601561;
        Wed, 03 Sep 2025 04:06:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnvWanngRWYl/vDrIJba220OS1NpihDvhNZFTX9RixZk2pRzoKnklmLD8akR5jvqrGDafwkw==
X-Received: by 2002:a05:622a:46c7:b0:4b4:9070:f27e with SMTP id d75a77b69052e-4b49070f397mr8044021cf.0.1756897601000;
        Wed, 03 Sep 2025 04:06:41 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046d420e02sm97552966b.39.2025.09.03.04.06.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 04:06:40 -0700 (PDT)
Message-ID: <4a28c9ea-fe71-44de-ada9-eda3111eff9e@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 13:06:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/3] coresight: tpdm: add static tpdm support
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
 <20250822103008.1029-3-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822103008.1029-3-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ld-kGAJ4f61-MXHRKHYbcmEZu0REoI_F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAwNCBTYWx0ZWRfXx/45xU8mfn/L
 qP3oiA4Oyle5r5UM92yRQccFOMJmdniBGgGNRbakRRi2HF8cTYRu8UczpceycBIWm7+/DITdwf4
 mfYzhCduoOCu3zzKlzvhZ6psLPktM7lDLFmqnKfYvrESAxTJiEMsojbHSSlDgS8LnlsgqsI3d3+
 QFymDov6947BiaAIWWGtM2ax2uu3CUwF0SNmB7HmIpdVy0w/dByX2dGtncOY2X59BjrkI14wPvW
 Q5Ork4bJyE+H1SpC7Bq4CZ4lqCuXYQzQe5G86lTAlQNTtzZ6g1v5mnLAouypOgNyl+IxVgJLzKo
 2nVtDvHeEUNcMnSoilr7+zobbljzATb27id0uLfGZqscGz9AeolbdZl5HkiPhY1CZO+76zr4Amv
 oktYzq3P
X-Proofpoint-ORIG-GUID: ld-kGAJ4f61-MXHRKHYbcmEZu0REoI_F
X-Authority-Analysis: v=2.4 cv=ea09f6EH c=1 sm=1 tr=0 ts=68b82143 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=4Vys72YcJYr5vsCECUwA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 malwarescore=0 phishscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300004

On 8/22/25 12:30 PM, Jie Gan wrote:
> The static TPDM function as a dummy source, however, it is essential
> to enable the port connected to the TPDA and configure the element size.
> Without this, the TPDA cannot correctly receive trace data from the
> static TPDM. Since the static TPDM does not require MMIO mapping to
> access its registers, a clock controller is not mandatory for its
> operation.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>  drivers/hwtracing/coresight/coresight-tpda.c |   9 ++
>  drivers/hwtracing/coresight/coresight-tpdm.c | 148 ++++++++++++++-----
>  drivers/hwtracing/coresight/coresight-tpdm.h |   8 +
>  3 files changed, 131 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/hwtracing/coresight/coresight-tpda.c b/drivers/hwtracing/coresight/coresight-tpda.c
> index 333b3cb23685..4e93fa5bace4 100644
> --- a/drivers/hwtracing/coresight/coresight-tpda.c
> +++ b/drivers/hwtracing/coresight/coresight-tpda.c
> @@ -68,6 +68,15 @@ static int tpdm_read_element_size(struct tpda_drvdata *drvdata,
>  	int rc = -EINVAL;
>  	struct tpdm_drvdata *tpdm_data = dev_get_drvdata(csdev->dev.parent);
>  
> +	if (coresight_is_static_tpdm(csdev)) {
> +		rc = fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
> +					      "qcom,dsb-element-bits", &drvdata->dsb_esize);
> +		rc &= fwnode_property_read_u32(dev_fwnode(csdev->dev.parent),
> +					       "qcom,cmb-element-bits", &drvdata->cmb_esize);

This allows either pass/pass or fail/pass combinations to succeed
- is this intended?

Konrad

