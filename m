Return-Path: <devicetree+bounces-248734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CC58CCD5529
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 10:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BEA8C3007690
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 09:29:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516D2310627;
	Mon, 22 Dec 2025 09:29:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CC8OcIe/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ejeg0sNk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26912745E
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766395752; cv=none; b=mymlTCktYuCOBLJwsTDhr8JHfgP/WejFeXqt66L6E40HdIio6jkP+cbImTxA00/2KV2lPUpS6HVBVqBm+ZwHtnROuEVAzmioqdncWQBsNMS0MGVRniyjg4E5AroEPw9D2ARpKzBRYIE+Gm+IXpEzWjZm1CGB6U6bbeFqg2s+790=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766395752; c=relaxed/simple;
	bh=TTbyAUX46eVxv/TLQ2Gev8TLZhOiaZlPocsSc0WpOaM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FpWy1wsInl8rMlm+PPtuLK4DRXGjLaTocyskaeXO5YnbcNKMvVQ/2YkN2NyqFywYM5Fnnx2Jq9+zcVdUFKBHvqUKqN4Ye+H1ozHyfuYzAePpoheNBY7i8MfeayDY1Jct8cjVsLoZPH2VXYGVBUif4MCiQS3WNEZNGO95upwKZ9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CC8OcIe/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ejeg0sNk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BM8E7Us090094
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:29:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/HKOtVoIv512INV2o3xK4Mpp
	F5CVLf2Qs0cmzl3CXhA=; b=CC8OcIe/eBFs0D9yPL8Ar+IdX67S6PCJNDs0rMYV
	2kRQiEovNkSYuFNdK4ox0PoGYY1t/JN3pUVKLRc1BYYChJ7221OWw0mHpYVzYAzE
	Jh9f7/d8byyrA+YYCzxqM/3ZKIjcCKsMcxnSFgVUvl8seYJfTHvzD/qrLbi8H1/i
	bnfcrd3DiIvuuxg9VUkoeLZoPkeGsS+1Z7y9WjHFQ8ladJANYx3/SxplvDKfbgXY
	nvT1sBz1J6HYWH4hnYooVbeEBdz1HHqT8664gxUsRusYFCz7eqTDAtMOug8uBw/z
	JU+KNt4OnHSim9r29MrdFlh5WEm8Vmvj1PsaOednyUJDpg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mracfqh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 09:29:09 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4eff973c491so91661671cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 01:29:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766395749; x=1767000549; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/HKOtVoIv512INV2o3xK4MppF5CVLf2Qs0cmzl3CXhA=;
        b=ejeg0sNkI2lu0tNDb7RC4HBAVtjH5mc4cjWGi4M2PywL2ubLLTkK88IBpYxDroyOqW
         YtH2CPpOfhebA6pnqhvKVvDannawvvmN+E927clgM4JIr9Igdx2zZoc13htn/jpfcdCB
         96SZ3mZ64jSwYxmITxqgVQUvi2bHLmAqeKf3zwWgiZmBiiyKZZ7eLngI9GS+eV3efZlE
         UAzEbCacYBDu5kJuXoFqSqZzuKFn9Ovscmek+c96pTWLU+XMU3MM9/DP6gn34SiJ+i1+
         c71gpewwvuh3JBgW77PQNc4PblxX3VI8+wPeMgKLRo/aUdtz/VEAsEOFoRNZRw6XXt0t
         wqNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766395749; x=1767000549;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/HKOtVoIv512INV2o3xK4MppF5CVLf2Qs0cmzl3CXhA=;
        b=VPA5ZmjkzB2mqy2tGX0Tic1ea65gl2bkHDvm80WQ1Kwg0Lqeq2jC7ACIwxGBY+8L/n
         mL5P2C19C57ePfQ5pSsdXasvY7nbsbfMab1+Q/oHVI51vQ6Gscap6qG7IO2i2UVzplbe
         7uoAevhYKrVz0QmpoucKZTKWjtW1OZvPYIY0D2nR3aUgC1nPuHlnhUf4nHJV+l96+EGY
         jSmCUWvQScGQuyi9MW4K6EuawuSSz0YEvegoxNB0lj2vAO/3VhGOhD+d7mELTcTy34Ir
         muj6h4ZM65pzcvLYjm7t4B4OczaGRVAQD49mGBkRIAIxtxzmjcG9rERKg+y/TUo6oN5l
         FYNQ==
X-Forwarded-Encrypted: i=1; AJvYcCW/2pPYlaEsFS/DY0EXfvVuJUpgjUorNy7dLddUg6KRYaaDNWtNOyzILxikfbzW5ofNKYid8CdvOItA@vger.kernel.org
X-Gm-Message-State: AOJu0YysANMp7qPNipGHSRIoK3YWkfFjicdv+JOujYqpE1w6bHkopj/5
	NUbmpuzBxbkIdeoh2z8m2ST7YM64/i9Y9pJeTJqzeJ7jKnnQu9ys0IL61JaxuSUjW2SxpsbOkP0
	OlzwNdZxhBYA0egLwU7oCPrwaP/z+y9k2NKdSTF/jipZtaPmRminm3u5FDD//3XAB
X-Gm-Gg: AY/fxX6fbWTKLXdC88Oo8gExY9oTB7eEfDZNyc+hKOUye3TGCn4gmDL/TwHKoLo/0w2
	Hx9beT68L4FKMiCc5LdKsUsXPYGuoUoEV/ZawxyukHHd0vf21hHeHy4hAXbJk53kFtl/+F7442z
	6bUZqU6dgeNbMOwrnGXyCNfhHfzp6BTC96NfeovUgMcLpkU6/e7VtzAEKr9cX+3PniqqGSYIaln
	JzgB1K4yihPajXDimfChC4vf+eWDu/8u3cdMqTDeYYtxPxsjCY8RIcPeH8Cx+QwXOcdqvoyB8aL
	lycfkFEvOE6fIV5H2LiSwamNWRDmfSC5Y/3jJYkEMyV2AoJqIojwtA8TRHzdVrmXRXeMOz4/kpo
	JLRFYW6uwP7XK7rxz9yIRKBDDfC9xF7cGe56YQ2oJJvrUi2IL9f+MS6dZVroLmy9mq3kx3Qxl27
	UzyzXRNaaUNbWpcUkurz3r2bc=
X-Received: by 2002:a05:622a:1f1b:b0:4ee:1920:2b1c with SMTP id d75a77b69052e-4f4abcce8cfmr159380911cf.2.1766395749244;
        Mon, 22 Dec 2025 01:29:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwSlYOymNGy0LLuxJ1FptuNgkHLS+Be3MfFgWzX6IAexjMV23f+6YZgHpqSQNwf/zv07YI/Q==
X-Received: by 2002:a05:622a:1f1b:b0:4ee:1920:2b1c with SMTP id d75a77b69052e-4f4abcce8cfmr159380681cf.2.1766395748868;
        Mon, 22 Dec 2025 01:29:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812267a438sm26255481fa.41.2025.12.22.01.29.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 01:29:08 -0800 (PST)
Date: Mon, 22 Dec 2025 11:29:06 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: monaco: add QCrypto node
Message-ID: <sbfaknkaha6hb7wl5vceyswkdz4ptsay3aw3evwcgjtfpto7am@v5ezpvy2xuj6>
References: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-enable-qualcomm-crypto-engine-for-monaco-v1-1-06741d6ea66a@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 668t1jLvYI4b-ubgHA6Ppj8wIui2aQ9L
X-Proofpoint-GUID: 668t1jLvYI4b-ubgHA6Ppj8wIui2aQ9L
X-Authority-Analysis: v=2.4 cv=e9wLiKp/ c=1 sm=1 tr=0 ts=69490f65 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=_OpZ_5cEmvcoVn8VV1UA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA4NSBTYWx0ZWRfX2LhHu0L9J7pN
 jrsL4PAMNITgCVmyfrHx5FgoSNDfSHTWYb386/4xz3LxHRqpFWWu0DBNAGYnFaPWtnNGjD7uMuE
 mRyy4JQ8dfPFkXJWnDhDnGQ7JUdPTyTxDI005MxhTsimfWxIXwnmVSsGDSQs7pVgQDWhoOn8KGS
 GRCpyRoKxxI2SoGLCCaoo9aBe/cJdSF4TfSq3LGlQPEcT5Z2QMUnQmwKUk8tAWn3JfsiXchket3
 gK4aCSDU9ViLu3cwYxy/0kzax4EUoYAupQj/c1KsXqj2j26GoXcBEj0yeM1o3pO5nnvCOqpUpmo
 gK/KaF1dpBi83GFCxUZiVxPvVE1CtvcYJ3fCmzhpC3AXIVNI5itlIX9W8O4FFc/i/R34lBIP0DV
 4g2FRPTnn3cBjAuTTOfLTFNTrueAVlh91gfziGPHRF2mB0NqDBwnDV1TqZTMxIb8o0K7dTMRtd/
 QO4+KUJFfQmUV1pG5nQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 impostorscore=0 clxscore=1015 phishscore=0
 adultscore=0 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220085

On Mon, Dec 22, 2025 at 01:00:19PM +0530, Abhinaba Rakshit wrote:
> Add Qualcomm Crypto Engine device node for Monaco platform.
> Bindings and Crypto DMA nodes for the same platform is already
> present in the tree.
> 
> QCE and Crypto DMA nodes patch was applied as part of the
> commit a86d84409947 ("arm64: dts: qcom: qcs8300: add QCrypto nodes"),
> however was reverted due to compatible string being miss-matched
> against schema.
> 
> Resubmitting the enablement of QCE device node for monaco platform
> with compatible-string being aligned with qcom-qce schema.

This part will not make any sense in the commit message, once the
patch gets applied.

Please put it under the three dashes at the end of the commit message,
after the SoB (or into the b4's cover letter, it will also be properly
included here). Or, better, rephrase it in a way that makes sense for
the applied patch.

> 
> Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/monaco.dtsi | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

With the commit message fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



-- 
With best wishes
Dmitry

