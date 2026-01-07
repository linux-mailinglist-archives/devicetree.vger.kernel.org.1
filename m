Return-Path: <devicetree+bounces-252229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D94CFC8E3
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:17:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 81F47306B043
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:16:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92AA729827E;
	Wed,  7 Jan 2026 08:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LR/cx1/g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="V0Px4qEY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB7E28726A
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773785; cv=none; b=ZYGoBugNt7wsqJIpQrCq2DsyUjvIJhQ5v/giZACiNrD16+t7sXb31+nxEks1qJ+3CMZDNzyysLxsFsvJdDmzqi8ibPM4iHe3P0Xy79ENej2BG3X8DBGmkaKbOJhlsP83QsnRtGiXLSPP8vg77WuMAW8hPIcECBb/vpQrGLlwjyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773785; c=relaxed/simple;
	bh=b7llptmEDM1luO25/hrBZesC6P53tyMBBRiePAFHdsI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lx8i+/qwXvf8rDjehkYB23mOHh8nFNv/QP2gSyVzIMYY0/IOXkEmgnolzciaEviHxyGM7BFai3v0law2MH2iokCcv70hYeqUoqw5GYet7fT4dQeojaUt4G8rFGQQRK9jtOez9Wagj4k9+fJP413iNZXOYweB+a5RS3Z0ApXaZX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LR/cx1/g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=V0Px4qEY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6076tHE32378917
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:16:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yBB2cmx9lnK1XlQC3aSe2Jwt
	16yLObyrRqpkJZ/2ddE=; b=LR/cx1/gvwPOxL+YejIBsjQdZ5fGh8Rc8g+gWJRP
	2idfmcVoG6tvuyNsbY4O3kV7FHwd0ModGGhnGTfUUA911Dbt6AUotxcj3WMDQvIZ
	Jp5j/1NOpneX9sPFOOxWkCYDdINnQbTo7m9O5dDCuGmp6j4WbhrArhnHinmqznXd
	gUNVQ3vwk09lVhrMmv/Zan4Byt1V4Lj9UwSvIH6X5EI3bcmDq3/6hvX7NOY+piZ2
	q7uY2FiKBf9IvgzYJh2DO72xT7GzRnKEaOw1wpI0K+N9JiopDqD2bCC4Qg+y0SaW
	jofwXJgS0CN4jeeZqsPERDqcAJ2Y4f2BGmBxd9MG942fVg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhjn4r82e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:16:22 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f4d60d1fbdso1668551cf.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767773782; x=1768378582; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yBB2cmx9lnK1XlQC3aSe2Jwt16yLObyrRqpkJZ/2ddE=;
        b=V0Px4qEYEnaNCxlzZaMNjjlQeH2zBz5wqR/J8fc6WZCLgnZ250GS43rczKda0vRKVd
         rEossb7CmczdPahyE9IVueO9IO15/DReNWAGF6CHeneRWCgGOElhZLUuqNvfU3fYYB9q
         bZhgNw9iCN37CjiTIB4bR8Oa1GAzTqXwy2f7yM5j6lmUZZIggSbVEmiHKU11p654QOje
         CpKgfBcOf7zEZALdlCqhrMT6zCgNId0VhWR7gaLKe/oQt7yWZOo9ucQBVREomEEtm1sd
         wDbTip2YUCJZrIrsEGkowsQZzBwt0U9pLg0Z5kNIKO2cZpgtPubb0iVCoF9FQfus8AnO
         p2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767773782; x=1768378582;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yBB2cmx9lnK1XlQC3aSe2Jwt16yLObyrRqpkJZ/2ddE=;
        b=ZiVceJJ/V9UCZIB60jUU2VYUsvXa7FKQY72VZBHGR54RuKMOmtz0Qokc18xO4/qYaF
         xUmLgz9OBesJzREpD5L9bFxUZtXK98DCP9+a1zzy5zOyRxuhFKIpTNqLBG5v/fTXKIuc
         xrd4ajRagmTIuLUZay4R3lk9kn0+9u5YKXPLHPcYazFyqXmg6JAakgcMKMYzkcTGBuP6
         2DnPu56UDu7ra9tFK+H02aS2Y3lFTIjr5T1/G/PKbYBIlrjpgQ4/DKlwqy+8CldKk20z
         RKkmZE26Ub+Zw/cxSqMxTti3c5RWaCSg8V3e57pt/Pi5nvQmueZA5rRrCkKGhd1zbejD
         LxIg==
X-Forwarded-Encrypted: i=1; AJvYcCWDf9jIE6ITUZe6jW9nUv0KTVTSVzgN5cG2wuBJxbqbXanMBFbCmYKpqI9DaQTqoPk31wZ2KZXOdcq9@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5nBJJ2En7qsJf+tdbnWb+N6v1Ogwj2hVIgP+EnlcbvIAPTxYi
	l/lGPa9azYzuSMtkWVCPkZko/JRnrtGRY6Nh+bobItaUad8za5cFYaDwCmPFtpRK3Je6y7TNDtn
	C7HfUAFIQOKyMEfbrkPstrJyyW4NV0RQP77Bi0o9Jg4aqAvPZB1eTq+kn99GLf8Pg
X-Gm-Gg: AY/fxX74V0YcCkORNWbyQHRM9lQJq/E2+SVd5CLEs7/SYu7UcESkxN3wTiwcivzCeqy
	KTywM6wggNsWjvuv7UU7n/WmhKT2l2mKTR4xnUCqEH4AGJ8bYlHQYzTZPV08P2QWAhdhPxeIcw0
	Osuq/dV0keKuW7us1o3yu/9tC4cc+Wb74MsiOkBHmpqSU0NaSYA3IXz8vWBcJ6NB0okCHEqkcbl
	1nMjhCfPdM21Q6WyEkHYpvKpNn6FHnNA6XyHi0pjp0PQuNKt1gFVPdthx1icNyAYFrvrsbiL3zX
	dCqtwCI3oAhLrKItEsrs49qtn1SLj+8ff4zYcAOhRXGTlumWMACnyKM+O5BE63jNQJcUMBrbMjM
	CyWsOhWSU5TJFD1LPUaoSqyGcsJliHgv9+yEM1xrHYjFh+ejaxG0Z47bYgq3Tjz6RKLAMl6YaIe
	jOMO3+KP4v1pLfWb/cNdJFndc=
X-Received: by 2002:a05:622a:209:b0:4f1:b9ec:f6a4 with SMTP id d75a77b69052e-4ffb48f03edmr21060711cf.33.1767773781772;
        Wed, 07 Jan 2026 00:16:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGdihUJiADpylFeISDLyhuutWUXSisSGVWPGAH1SHUu+jl7zZy3/SG5e0+6NwqMIu0tpq9bRw==
X-Received: by 2002:a05:622a:209:b0:4f1:b9ec:f6a4 with SMTP id d75a77b69052e-4ffb48f03edmr21060371cf.33.1767773781370;
        Wed, 07 Jan 2026 00:16:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b731aa442sm75691e87.95.2026.01.07.00.16.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:16:20 -0800 (PST)
Date: Wed, 7 Jan 2026 10:16:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Vinod Koul <vkoul@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: milos-fairphone-fp6: Enable UFS
Message-ID: <plypx2dvl7hbfokvuoydzdgqhlgy5ch5j3wgsxtrgrjlce72tz@qubblpc6x2jh>
References: <20260107-milos-ufs-v1-0-6982ab20d0ac@fairphone.com>
 <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260107-milos-ufs-v1-6-6982ab20d0ac@fairphone.com>
X-Authority-Analysis: v=2.4 cv=LJhrgZW9 c=1 sm=1 tr=0 ts=695e1656 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=STFXn1ACf7ZPQ-DneOQA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=a_PwQJl-kcHnX1M80qC6:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2NiBTYWx0ZWRfXy3sNzH5KXRE6
 KmvB2soSokXW2W3rPEZgTw7CfHl43PF7cusyNGyG022q+wrU1fpcj6LISM2QWuB+aOd8Xgx7cYv
 GH2R+tdkhSGvoQWPAIcmdVD/CLMNlr7A9WnWil2PewPlvV88de/UXICeSgHcTUg6nuCiKrd5Srt
 l3eYWg+9uFRKNrGtBKG1umnsDl2SDR4kMibvOwKk1YB3xAOxdPvvfPxAUalWMwtfvrxYNFowa65
 DzmtGYvUIHZeVbSaI6HVk8n6IKL2C23fF6q7MfrgH4kuiIIzOWfvcahHe9BCHJvYavxSQgznpbD
 ya1FO2LpzUmsmHwmzWvyYEcwfNCkWpBbfBVMQhpwrbk2c5oM/hPrdAUGs5h4y4qI/ISVvEOgMkb
 9Hfiz3l2mylmcG6hz6hV8FeVGqRZe5hQZb4mrHzTaRsQ/1YCRDJ24coXmeell71/Qlkne4gaVZD
 /cZlKjf6SMyQFqPPTyQ==
X-Proofpoint-GUID: vFWihmngjkTJgeKm2cMxlTzvjfurT3EZ
X-Proofpoint-ORIG-GUID: vFWihmngjkTJgeKm2cMxlTzvjfurT3EZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0 suspectscore=0
 clxscore=1015 spamscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070066

On Wed, Jan 07, 2026 at 09:05:56AM +0100, Luca Weiss wrote:
> Configure and enable the nodes for UFS, so that we can access the
> internal storage.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/milos-fairphone-fp6.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

