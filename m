Return-Path: <devicetree+bounces-223718-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B5EBBBCD42
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 00:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EF97B1892CE5
	for <lists+devicetree@lfdr.de>; Sun,  5 Oct 2025 22:22:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEECF23D7D8;
	Sun,  5 Oct 2025 22:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cj9zs/cY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D9D1D5ABA
	for <devicetree@vger.kernel.org>; Sun,  5 Oct 2025 22:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759702902; cv=none; b=AooOHQI35sTYLPmCytW9qiy4bTWrllG3j7ICtwrtP0DJBTKGoXbVE5Tp4+vll2Uxyfg2/FhFcrPS+Vube22pSdPN0y3R/phoH9ZD5JgTjhbOoeKPF7n4wovzYFilNBhX5M4SYQugmgxn9FGhrAwGpLl0+EkYtgi5FtKR52G1biM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759702902; c=relaxed/simple;
	bh=nf2JZo8S4O5Si3dpHQAuIbO0dLHifWUIEtNkyGSfUzc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iMRxOs7rIrDNvowRdldb2ofY+Mx3ec48SjB6bDHsjCRcIzPwjebUmyBVvvtJestl+skHv1eHWcRr7vHcYG18rftMGiphrH6HadYRmzS/HxbQHyc9nugI9LMXYQnwzqap75ALLvD9nNHdyXfuqRKAgfxazsYonp3Qch63m4KTWzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cj9zs/cY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595Lq6d2025865
	for <devicetree@vger.kernel.org>; Sun, 5 Oct 2025 22:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wseIUBNjEAWHGdAYXjs/JQy7
	HUCRZAe0kBxl/0omv5Y=; b=cj9zs/cYLK1gz6TDRlg+MsgJLNn8q83AaJ+PILqT
	Yb+dWa4LSjAZmbHqzY9OGip0i4n4tW+BnhO4baAso8VEu317OIAsr5hjIpdno67g
	MfIM21jJQioxuzk6NKkle3CU9o0CahTLwqHPjKPH4V1u/H/xqWQyJmTfIMWSSApO
	FUiLVMEDgykVUAdDDutMpYubVpAxuJhB9TvQnSWzgxcTkpD4AJCSYpUflie3Rb6E
	tGvyfa4wfuF1ldtQusdP4pfKmbti9iBs/yeuNY7eiSId2WkqRuree+L/L4kXDdF0
	1GJzRgt3XC0mjP7mW13XMTfMPug310DIpYo62OWDvgVRyQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49ju5xajkr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 22:21:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4df60ea7a1bso88812191cf.2
        for <devicetree@vger.kernel.org>; Sun, 05 Oct 2025 15:21:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759702899; x=1760307699;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wseIUBNjEAWHGdAYXjs/JQy7HUCRZAe0kBxl/0omv5Y=;
        b=T3yyV1lKMxxoeI6XxgUQdj8MRyjkRJtQw82IJPygYdCJyURQUvLmTq4JvwyCXDgDo9
         g8RHXd00Pz8eODin8+p0gHa8KjJ8A9Fu3Fn1vOY8df3eMsJbJRSj2ct1KR/OTBhSVYiz
         /E64qDfpz9ov8BN7iRIY3XEl/nrrj2GpwIEv6QFyUBR0eHEfqKju4STM4tzUEzt0DL0z
         MEYTE97cfo2JsYE5TJlChNBGelLdwqDbMTOepPtmmm1nXf3DyroLuxxh1Msdg35xbG3h
         CcaYVRwZLDxAEPZXLBjOZbdWMv9BymHfuwlnIei+edMoDB/jkDPuoYs5snsPPJBZfHzC
         GFRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVERSx4J9J+K3bsAo5gHPUnLR9pX6jmuBaqAY9aW7wBcg3jxuBzerE4A9pWNGnGhjizckZsmOAJxmxS@vger.kernel.org
X-Gm-Message-State: AOJu0YwzkQwj1ECaIh4sUlxcdAV6hGHrebhB32WmjYm+7PrfxehExcfR
	Kc2xHpyi4UF7YBynAnrdvciHHutHpmI8SrWeg2z8nS2mGFMduBWzoVKrixmQiaypNjSpuq/CWnf
	Le8WQaU/mV6x26pMPq5EUStJphCY1RR1lzc3n7PdWU79mOjKgQzXZ/wElKB9kB1cb
X-Gm-Gg: ASbGncu7d98WMg6wdSqn2I7mRDAHiN3CALwl9xrZ1xwkh1MaOLdDULiHyBh3tXq/+ey
	Jwx2htGQ+htSmgclTtWbsoxB0y9X9zkNhlh7CRBDgrL6UBXCnvfFjJiXWbNDrS/s4tSSVPyTIUM
	R5tMOUHzkpU7mPV93vB6MrpXlkizV9x55zkWZgxTPdti2RkrvdT6SZMiyXo+Ax8bnn9NzfirUvW
	xBw9MDo5txGDmz2YYNlCmJUNU7KsTKyigVN+1R4QU8wRvUoLusftPN3U2IgD0Pucc/IqfPjJYoE
	KT1DPXGb0b4Ky+s0ABM9uxlMFlsueFWgogRGEVIaBZ5RvcWVc0vODSV3q+yP+ca6effWa4o/a05
	BpaI814N5F8nuU65dS20wW1okloozeQDZNc8UAJNSVcFqdHjBHIVnpcGCuw==
X-Received: by 2002:a05:622a:5c99:b0:4d9:f384:769f with SMTP id d75a77b69052e-4e576a453cdmr143092481cf.12.1759702899349;
        Sun, 05 Oct 2025 15:21:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNXUGPhpIT34KBgwecemNjwePmdy8rRffI0B7rY2C77xXUhRnJ64Q5MJFXBA2W2K75wHMmKQ==
X-Received: by 2002:a05:622a:5c99:b0:4d9:f384:769f with SMTP id d75a77b69052e-4e576a453cdmr143092261cf.12.1759702898894;
        Sun, 05 Oct 2025 15:21:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b011404a5sm4359025e87.55.2025.10.05.15.21.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Oct 2025 15:21:37 -0700 (PDT)
Date: Mon, 6 Oct 2025 01:21:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: arm: qcom: Add Pixel 3
 and 3 XL
Message-ID: <bq3jeaxksk33ntdk32ojsdyh2d3qkglvgj6segtc3acizlkrhm@fvdsccdbuook>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-1-ab8b85f6133f@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251005-pixel-3-v1-1-ab8b85f6133f@ixit.cz>
X-Authority-Analysis: v=2.4 cv=FooIPmrq c=1 sm=1 tr=0 ts=68e2ef74 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=z_xC24y9C4s5lgGYHN0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: rj6Tq_XZ2BNCGZDi-MDJCO9XYL_oaYAP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyMiBTYWx0ZWRfX8GbPD8lOHK5u
 d/Is9+8H/b/wnNyLBrttvx7QWcKcGvoOPLoHc4EaFUGttV/FVgJi6jmcDikIbg9KbcFqFVmEt+Y
 /r2P1DH2JLnG0FbYh9IyFm6mg2tZ3UQEGZt2FPQ4bylRFYk7mqoHwMgEQUkLd/uVrumwXj1eJaM
 7tKtakdwxKQbTLfS+HXoI/Cu9uunWb9UzXce0yOL708GfaDxcP3xwxtWHHewrI9F1PdEe0mvB61
 Z43OgULN1HKhVqmgMoIF7xFe3vxwq5u3WDDx7MmOzVlvi7mqOuu2YC2NuA87RsUl1szukFA9aPo
 Kyy4Zrd9n6w3EY7LNpKJaDTwUXjpeybCXhwXwQdGR2DX6w4E/RSCXoDUdHmZX70KCDtEhjJdexc
 LsR7tQK5rSyyzW0wCYlY6MEdfybTwg==
X-Proofpoint-GUID: rj6Tq_XZ2BNCGZDi-MDJCO9XYL_oaYAP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-05_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 suspectscore=0 impostorscore=0 bulkscore=0
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040022

On Sun, Oct 05, 2025 at 03:16:28PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Document the bindings for the Pixel 3 and 3 XL.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index ae43b35565808..2190c5b409748 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -976,9 +976,8 @@ properties:
>  
>        - items:
>            - enum:
> -              - google,cheza
> -              - google,cheza-rev1
> -              - google,cheza-rev2

Why are you removing those?

> +              - google,blueline
> +              - google,crosshatch
>                - lenovo,yoga-c630
>                - lg,judyln
>                - lg,judyp
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

