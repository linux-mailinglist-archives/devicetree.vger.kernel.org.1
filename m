Return-Path: <devicetree+bounces-249313-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 44875CDABB6
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A92E33038F5D
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA8E2327BEB;
	Tue, 23 Dec 2025 22:08:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pnYWgpI2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NSnOm+De"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3330D30EF91
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766527682; cv=none; b=cmkv1E+NgoeS+3ZzwAVLGPaAqZd//SlUO2rEHSHhH/RitHrzh58lMvLPoGxGxxNFjj3Op/lWJY5bU+wiuu33+bi1IqdG5ZfCFyKJtso52bB9KgI5Rf+WaVFkdi5hohV9HoRg6xErluGALkK0JyZuseTfwp+efm8CNxtrLsgM4+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766527682; c=relaxed/simple;
	bh=FQCRae8BAY0BBIjiv1yr2asV12UdZHwBUj9dOhlTE60=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=eLCyxD1uOIKApRzJxBlp8OTarxk8/P4zpV8S13gBu6GkHrFylTyIVlqKzslOLmJC4hCYZzCcPirj/MNRP2mrqdMCk2P5YfHB9ltRTGGqVXGpVtdTz/GdEP2IjQUPO2fgKEbm+/SPi1vxEdljhzSFIM/O0o753OwL128m3jdhM/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pnYWgpI2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NSnOm+De; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNGOHbE1018272
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jMGcMKBFiRUiXwR0Q4eaONoH
	D+Ff9TMZZ+q68jc2VWE=; b=pnYWgpI2MAvaIAw40seMT2h94/YWQZy6IjWnTw18
	LCt7F03Y6t76OmMoad3QFfVQJJ48tDgeTcn4nXaOyDeSDUGlZPNr7p9HnXB5zOyX
	uR7S+TKLwhnsyPR+VBQVZpJ5Ch6BMJkdeogkIXtyZQ37mrAe6BovYetDpOINEwEI
	KgfcT1U5JhfMmkFs1caaHSof2GnqbzDG8uhM/Nq88mT3DMr0iXO1wuPEw/6eUjZv
	ay+tzRGL2cNyv0vA1k+b4cXwznqGu/aSw1XdJQ2kEEZ37OxpHYJoDa3VAquEXbyk
	ZyjSTpOz6IhgSsgEG0dBPop24vqea0tD1/fN9SIGkoOkCA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7xjs91m8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:07:58 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee1b7293e7so187778421cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766527678; x=1767132478; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=jMGcMKBFiRUiXwR0Q4eaONoHD+Ff9TMZZ+q68jc2VWE=;
        b=NSnOm+DeouEau3CGh56N9I46YVgDSabLhC+8nyi6VotsXqbhqQCVJW/ZmNwnNZWH+m
         c68Xi477AdFNRMYTnloNli+CV3uBOXgDxaNbgY2EHwZYZ/7d4fFdrx7eLgebimxuOiYl
         hAnZJaKbgEaSCfjCjLFSzKeRIcFxlMonbDl0g8NvhlcWBnRWde4bapLxnAgOwEBOhifi
         h+mwKkm7YLNP1siR/e7px4wtwqA8M0JJCB4zRuAimBg16pXTddCXrqqPfGMuSFn7fwwr
         3iBu84yDUxByT3J6DkJ0nHCn+OOcsplLAsU8Ab6R4krlUxb4HPMfTl0jFU67e+1699cl
         5S/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766527678; x=1767132478;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jMGcMKBFiRUiXwR0Q4eaONoHD+Ff9TMZZ+q68jc2VWE=;
        b=st82Xb72EKBPNEdWqKY2rLnOgR31cQFnMdJk89SdZnSn6kE+pawn5yEWLbNP4eqsBS
         LWtNBsYXbIGCgcw0SRwPnQ0i1y4oavrJVZQkuX8QBlMsr+zlYH8sU/fexWR59L/wrO2v
         v9F/6YxhuM/+MJ3RSdFkPvx8Eae80vS4DkkITJCfCRyCNjTnU0pff/85mHws7sMubm8U
         sy6Wxwg+M2t9S1CCCLU8srSbd+sk1Xjajjxnc5nUKot6MDvsNUdQOToPnix1iSZSRE9T
         AtBYjPGYie2rZBbURb1QLIewqKsZfifXe+m8pPYviMm0mpdTVRAeYeYoDZsvkJ1SqWbs
         EWYg==
X-Forwarded-Encrypted: i=1; AJvYcCUqmG6Jmr6D2wSvt9tWe65+1Z8Z8645A6st9NC3zFkDyy80epBD2ocd1L6Qsfrp/+OE4efzpBPkuVr3@vger.kernel.org
X-Gm-Message-State: AOJu0YztFONyqquRDCOml9VqVYlRNpYHbA6iXRqZUqVvO9c7EzTDRgkd
	GTQfMlp2mdiv5fjGJ054WsfeA5lokqkHszrdJjFVEWbxVaTRrluAU529mBSjMlcFUyNt/+wX7ui
	2LoMPH+Ij9LejD9+O8BmPu2rBqqnaMMAfr/N3v791mKN5rIlOc7WWk5aUN9cAjfTH
X-Gm-Gg: AY/fxX66chARU02iaO66POsk3FmYWfPoJMEHVG8CdhzjQm6YgZv4iBcKTNlo0F4FkyU
	N3D1JL9gTxhRxOxm9AC0Oz6XvUZSxLyVVA+tWUFOnQxH+HjzV5nsC0cpSuNYPSrxT0NftMsPRo6
	pjdRxZVAzaxwQ+p/RFgskrP48r/S4P4QQCRvr24vr87ItG8ArOsu0A2OyeZ7UQBJZJ817Y9yhkS
	MtgT8W6WHmEB/uLCnxsLuU+87dqz9ivvvIiOrJhpERjkDYGtUGZr4Ex0QaKOFiqqplRYaFYwVK3
	mlc6sU1T2JdraUN5OlDimWWpC5VV74JmySzbdz0A8wWma/AKybjctWSr1LLz+efQbjynU5uxB6y
	r3DXirsDF9AlhSpLKc54vlrJoQhUhdHZ5qDSOLiIDQRfBTQ4nVBvbhl88zbUu9NJnpMBj5cHXEI
	oHULBGqMucUbQbKEjl5W6fKso=
X-Received: by 2002:a05:622a:178b:b0:4ed:2ff9:b325 with SMTP id d75a77b69052e-4f4abd9da0cmr197213191cf.59.1766527678186;
        Tue, 23 Dec 2025 14:07:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFR4ZB7JsPEycMaOnjCWZZa8CpHCY92b7eETRNpkra/hjSaBy96sg0KxqZJWwiI2hVRlVOrHQ==
X-Received: by 2002:a05:622a:178b:b0:4ed:2ff9:b325 with SMTP id d75a77b69052e-4f4abd9da0cmr197212971cf.59.1766527677811;
        Tue, 23 Dec 2025 14:07:57 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18618d6fsm4439608e87.65.2025.12.23.14.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 14:07:57 -0800 (PST)
Date: Wed, 24 Dec 2025 00:07:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: sdm845-axolotl: Update firmware
 paths
Message-ID: <62mgy6obfy5sqizamx5gycy7rqomxzzhgoqyfts5ib6s5rzxhi@e6hyqaaaeutd>
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-2-a2d366f9eb89@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-oneplus6-new-fw-path-v1-2-a2d366f9eb89@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE4NSBTYWx0ZWRfX0m8/3LNLrQGv
 MNN3aNFF8s7XQed8EIIXyeZyuVuNZeAwFpAaS+ocmz2PTRXaEOAdUMbNo9IDf4Q7fMGtdByvW/H
 sY+FmzXr3a/PO8dKVN/7qn6rQUvk8IPtUB5MmwsQ/xK+3uiOI6YCm+7L920gzA9i8TTVGZrXJNi
 JX/B5YoIoICzeMI3Jdx06uE/F6uAHj1tPeqWcPMqKSAOiHvuZOzwhtKI1O9FmyV0bVm1fjojZGO
 Fm8z6QGIhNA82Noi/+e4yv0XaGhyzjzujAYCVQGBO31xSFpoWlsGwuPXLJqyTw8MXmKRbsvSomX
 wWKDPlYW4Ijjmd1WQXwM5gbYA+1z3xmhzlt+FkxXwEjueF4KJwRJAGDtW6EMdneRL3gGAKseImN
 9wzZpL+FW5KExB6QF6Xy45lPUjwep5TMXAZcCITQQu53gVT7PCjPiYLET8DTJB9D7I6zGqDpA3W
 qyMJehQogSywrtBBP9w==
X-Proofpoint-ORIG-GUID: eXRBxRkhKymPp08uk9rAy6f-Fears3wA
X-Authority-Analysis: v=2.4 cv=YcqwJgRf c=1 sm=1 tr=0 ts=694b12be cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Je5-vcQqzLJVh6QI5oIA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: eXRBxRkhKymPp08uk9rAy6f-Fears3wA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 phishscore=0 clxscore=1015 bulkscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512230185

On Mon, Dec 22, 2025 at 08:05:38PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Conform to the new firmware path scheme.
> Includes cosmetic cleanups.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 22 ++++++++++++++--------
>  1 file changed, 14 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

