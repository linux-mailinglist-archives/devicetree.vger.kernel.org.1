Return-Path: <devicetree+bounces-223593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 64F77BB83D1
	for <lists+devicetree@lfdr.de>; Fri, 03 Oct 2025 23:51:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E33D7188715B
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 21:51:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0631327055D;
	Fri,  3 Oct 2025 21:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eqm3RKvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4EA026E71D
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 21:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759528259; cv=none; b=EBTsPi92aqnxd8DMrfvCvXt4xZMeWM/44WqdSchJskuP/+XRSfJZCH0KIUK9+cAUN6i4zQKL1pqZNj1m0yQCmLNgSx9rYaNZ6utJSe3m86JymdQcgSBEzOHN6RrUI3QOQXXcI0gmeLyAflxKLO0w35m6Zs/wq6sptcgviqL0BdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759528259; c=relaxed/simple;
	bh=2+Qx4TvvkyhDYLhaS2hPHaAOwTarJmhD8/45A6LfgP8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dvYhz3FTinRRoKyDobcqdzg5rnMgJ3Q14vdEDkDyjKliak/hmUao4fPxD84ljEKpj2xwSmUVxTRxFZOYZj+a0wFRXsO/Z/dg6+sBbbZCRleN17+hg9eourPvM6I6c0MkfpXbF04tQbHyfTBXBfySqMxNrlPihVz0HSFBRGT+hT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eqm3RKvr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5939cfYd023421
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 21:50:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dMwDleF2rEGTBFbEEiU5Yhas
	7ke7oirsC8DK/6N2dXI=; b=eqm3RKvr7KraUO4Rza3bsiOE5tvK2i/tL19oyWFK
	cFUle3SSZ1YXnvej7kY95+vF+jfZmoDOMJClzxyFUzQsprU45zNmjzs2rC28sH5f
	4nG+Lt18CthRMhpVft6tbgW/mw1T7AvHRFk4oLbdauxDPdaOU/zG0/vjHouNG6AU
	mFdysk9RQjva8InOKND4/wJgiwvEPPfLcBjEBTKnFxfwSWlwmpIRUhJtWt85JR2p
	Nmn2ft0C0oOwryGjzCE8kE8vA+E8RCEEelh5ZShH8MmMmZeMN441bHUAoKbSCbOq
	DYPuGgodnhVhTLgyqu/+1sLHK11NB29isYOhKUdP+860RQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e9783v7m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 21:50:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4e1015c48c8so71928241cf.1
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 14:50:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759528256; x=1760133056;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dMwDleF2rEGTBFbEEiU5Yhas7ke7oirsC8DK/6N2dXI=;
        b=K0Vf7B95cuxrGXeOJeGpgXkduyHwTAPNcKMiM+kFBW29O7EhGNRs7wiuvcSZbQsBAo
         +xI5fGnaO2uC1a5tk9tu9CrCtP/5Uf3g7qEd8JKx0jUeXxM1bvB73ZqMYVrBvdIcnKrZ
         4XDuoUGg+jB1fClAuG9vcK2BaBdLRsRDWZMGSfe8Fd1xmFA1QeMxeXg/ggIP7UKsb+W2
         2eXTC7HejNaCH16kvZnrOTEExyDfpuZ3i6VQnCeP2OhTQ6aydY6ZOE8/uUDc7n35fu75
         qNZn6lpLRBNikUh0EVqto18dCFBYksLlU4fW7/lLanHp3wGRjUMBo+R898FAJJDL8xhe
         /W9Q==
X-Forwarded-Encrypted: i=1; AJvYcCU0jDwoUfl2e66z804eOL01XC/kn30tgjufPbFwM48n1d939tyOh9tjei5eKf98t40MuHTcEIs+b//w@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7l1Y8Hbtglk3HVBbGaYXPt2y1et5OZT7OTBG860s35fLUfDI4
	CX8LNfotAet3V67r+9MSjfN+b3bP0TKlC4HrjhQNqB+U/Et+FRpMaz933cj4qIfZJ7HP071nhLt
	R2vDQU3FsLYm2i6qUOc+2rjVSJdpArrh3xaAPjfmZuneRRy+e5E3xVCh/tfGjfOCZ
X-Gm-Gg: ASbGncsmmIDaY0z5xEquSc2Eh9eaAetR9EK4w7NV2T3/v/viIplBzOv/TkJhN8j2ta5
	Cl/3x5GcYF6zWzL5hcwPhigSjSshnFv35R7pOgVPnK6GGIQoEs8PyPToYQFJeRD5z1gkla89CJS
	tcgKrpIKDHT0FqORh5mCZlYjx4Cv+zFIYfKMvCZR9u+dQO9pnHKfywJG3l1aUW8H62eAHak71Y9
	5lLMBTDRJesKcrERC6xpNez9mb5UYUiQcCNsbcC3iDwfFQspHo7/g9g0kk64idkOIhpvV5ikIW2
	LNjiOPRuoqKviT8TNZAVX4OedOdTybIoJtSBQ22cyTUhJqCiTFT1c2M65Y3imI4km8bE8bz7sdq
	oBdE8CHK5MddmVcFKBFvQ6KfHke6fuGfsHMwX+nUj/Iu9pJvgk5E/o5/JWw==
X-Received: by 2002:ac8:5952:0:b0:4b4:9531:8a8a with SMTP id d75a77b69052e-4e563b6866cmr113183451cf.38.1759528256485;
        Fri, 03 Oct 2025 14:50:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi4tK4Ey95PC2GedwCZ2MhCcVKB0hyCtFcuRedprkbRea3U2e1PifERn9nC1Yryiua1m/vKg==
X-Received: by 2002:ac8:5952:0:b0:4b4:9531:8a8a with SMTP id d75a77b69052e-4e563b6866cmr113183211cf.38.1759528255910;
        Fri, 03 Oct 2025 14:50:55 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d6f3sm2197351e87.77.2025.10.03.14.50.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 14:50:54 -0700 (PDT)
Date: Sat, 4 Oct 2025 00:50:51 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v3 10/11] arm64: dts: qcom: sdm845-lg-judyln: Add lab/ibb
Message-ID: <mtz4owbmukfo2zkgkzjckkisy52trmimlmy3kfngg2n3ej45c7@crkidtvm6o26>
References: <20250928-judyln-dts-v3-0-b14cf9e9a928@postmarketos.org>
 <20250928-judyln-dts-v3-10-b14cf9e9a928@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928-judyln-dts-v3-10-b14cf9e9a928@postmarketos.org>
X-Proofpoint-GUID: 9u2TpxGYHifekYovNHAda9WAF8D9sdRH
X-Proofpoint-ORIG-GUID: 9u2TpxGYHifekYovNHAda9WAF8D9sdRH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDA0MyBTYWx0ZWRfX+Fr1Nh5ypjFR
 8lEyIHcKgkd6tQBcbePEGEyzzYHWFWCEHBGODGvMEfC9WJlFWH16HYlAA+DsnhWmRR49GAuZN1s
 FNY/9TaXvSycUJ1tG7MfeJwOU/jxNm9FYsFeCI2yuGewmt2DFBs9hksgjRZhfKpO4hhflT+s5CD
 3J/fSkJ5h2qQXPXAVFvqW3Qf7MQIsfUJyPa3yVTbHfF+Uh/TwO5N/ISNrNhDQvY5BnvH23DRd6v
 CI1RJ7ODLX15Ft2bC5UQmk72FVCiEdcu9oBJUrOwnuBfTQEqsN5mxWVZWjH2xyRtn0G+regq8TQ
 ban4A01cfrs5HzGlWYTSJ0OYAg1hRICdvjtTlsPAm1+PIyMewePMQIrKS5yr41imTK35JrwiXAl
 V5gvit05GvLbToueZoT3hyT6wha/Qg==
X-Authority-Analysis: v=2.4 cv=Sf36t/Ru c=1 sm=1 tr=0 ts=68e04541 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=Gbw9aFdXAAAA:8 a=DjAeRk3aBtCqIWsq8ncA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 priorityscore=1501 malwarescore=0 lowpriorityscore=0 phishscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270043

On Sun, Sep 28, 2025 at 10:05:33PM -0700, Paul Sajna wrote:
> These regulators seemingly help the lcd to work better

What does it mean? Also are they board-specific or should they be a part
of lg-common?

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts | 17 +++++++++++++++++
>  1 file changed, 17 insertions(+)
> 

-- 
With best wishes
Dmitry

