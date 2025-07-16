Return-Path: <devicetree+bounces-196915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D95F9B0790E
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6255A1884F57
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D47C26E143;
	Wed, 16 Jul 2025 15:00:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E9mAF7cF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F221D1CAA7B
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678021; cv=none; b=E8EbHgJY/Nv4ipMe7mC5G8NOINfh4+dH0RPVFQwu+a9B7bYXfHI8nZT+pzpdCQT8Nfqs3ZHM7eLKDDIbnKtgrjLkgyTE5AkdeJqmkbt3iFF9YjMjSCfvcPrBiotqsQv0hQc8JnTLfBGr7BNyEipncTCrr8sYXtiPXou0QRlQIe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678021; c=relaxed/simple;
	bh=BwHmnv73EJxa8pAkw/DD9qciTC2+e5Jm3oOKDe6id+o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SXMicvgj2ecOUYUCYpmG8iaDpHQMSNLKsdsKv+tBRVMOQDryod6GGyKHsiOfARPXFkaly1RK+E5P6cWxqfyiT7vxggleO6+EUDIaa4ce9Mwdqy7FrfEwu+/mdhsJ+OedqXkrJomCkWve5y4QJwyOJPR7n+PhhmakmIiDsTLqpgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E9mAF7cF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDVd36008367
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=CAkscxFZ6HPZNFfbizbkemU9
	/nA8/uTZ5nzyZGm4eYY=; b=E9mAF7cFp0O/oPxA23hAjZCE4ukdBn9E1ECZekk6
	J0+L2cXbTsuT3r7zPG4NJB/hvxzGebmbWlvVQ4kotzxbVOo6ISVGkINW0f+aGhuC
	wHGJ7Td3R1MyznuYDavStZnjviMYjrfuahkaIIe8xMRNRpMU4fopzsNnQewUPJDD
	VMJAYftLkowOIlY3mm8BlLvQpjOXVY5P5rh7mg2Fsq8LHLQuY/zno7/5JVxHGXf3
	/o5Jel+vQcJHu/k41qnnrmyjGRGO4Km/a22LsJK9xbGeTSGuJUlS4FEECh7ewyk6
	lTLl8th7wzxEUx+Bbt/KdksQykh1UWpjrlpwv8WZgqBBxg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh5vk5h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:18 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7dabc82916cso1193997085a.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678017; x=1753282817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAkscxFZ6HPZNFfbizbkemU9/nA8/uTZ5nzyZGm4eYY=;
        b=Ji6S52wmhq57AID/XSCE88ezeSDxNKG+TFno1iOjSb63Vdqr02HHW9+gIUi+5w1h2e
         iQgDwn1es6n56IMyfeWWJ3dJ+ngAfY6DFwsX5vHhwATqIXaC6EvyVvT8F+LPlT6Hv2kN
         d77WDw1x+BUBQl4d5z2RsqygpntqTDYzVhE0OCB3xZ7u1Ll/PesFXDr+T6Sks2h3+JqS
         snHyQ/ojLDnfY72vsZxVKARum2KDUM2Yu5OIR7oRCsNT2FoVHlMvLV8+Fwik9e/BcuMk
         xoDdslvFwn610ZgNkD7kkHBCVDJwKMe+hH09jTymSjjHtEG6nFNHmvaOuTB66dII0JKr
         qpww==
X-Forwarded-Encrypted: i=1; AJvYcCX9KXPLc/tQ3gnX9QJyIS/wUDBppoUq8d1xNEsKGNmwCk5J7v7G4FPBd2VRc720xIB5FQSLuT9NmL8a@vger.kernel.org
X-Gm-Message-State: AOJu0YzqjPITySsAD05IKHX0MDN8G9QvE6/NNVh1OUXlTuAy8SM9+Qtm
	4kABSx50V7OxZS23qjXd8F7367fvnuL098zqOHlm5abx+Wp7a9SO3B+wFnGt5p7hsDG3sxvIAN3
	ppQjMzWHuNSqKlbz2ZsL3oWD7cQfZ22rDv1hj0ZS7xa7aaRktUvNL2XkfDdnDBRum
X-Gm-Gg: ASbGncvE2Ox9Uy/o443JU8LAT7TaFWEmToTHu6Ka8lqSfjc4XMOsHqWWVHYdF6ScAxk
	vFZfIeafR4qRCc01oSyd358vkApEOt51Qd/x7pLBodEDGZVeS9yIzaHT0KMSc9xIg7byvL0Y4/D
	gIOkvSXE4DdC5fl54GNRE5Eudi3xHM+Fdj9DtQqNkhnYGuwPyUS8OP1FoKVs2AzTLimZzWGWqmG
	H15xrKb+5+rGU9BFvIwd1xsPAgnF+w3QwRqsOwcamxxcTXKBr8Wv5zOwDl7faNGBEDwywN+Rv/V
	92GQYz6QdaGwoh9MRjnZ1eFfvWoC/kYYO+r6rB4n02NKwMp7C5o4ZnbHsqNpasMdfBXlOdSGOYJ
	X0J8O4i0cPrEul+Z1rTlDEC8k45YrfmjiM0k2F9pjtcqKwI1eR+qT
X-Received: by 2002:a05:620a:31a0:b0:7df:dea8:6384 with SMTP id af79cd13be357-7e34362a36cmr473602485a.47.1752678015276;
        Wed, 16 Jul 2025 08:00:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXmj8FKGIbR1WpW/ts2gzvh16kMRBL5dGL7A/pS8FbIBPN1NfTScfYvF7qf91Ybpr0sAjHog==
X-Received: by 2002:a05:620a:31a0:b0:7df:dea8:6384 with SMTP id af79cd13be357-7e34362a36cmr473573485a.47.1752678013808;
        Wed, 16 Jul 2025 08:00:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55943b7927fsm2648229e87.224.2025.07.16.08.00.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:00:13 -0700 (PDT)
Date: Wed, 16 Jul 2025 18:00:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Arseniy Velikanov <me@adomerle.pw>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Luka Panio <lukapanio@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v2 3/3] arm64: dts: sm8250-xiaomi-pipa: Update battery
 info
Message-ID: <tpv2xy2ycbzacyqlcztrvyd4kmiyocb7qbquit5rar2c7wun53@llrdpzhdyvnk>
References: <20250716141041.24507-1-me@adomerle.pw>
 <20250716141041.24507-3-me@adomerle.pw>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716141041.24507-3-me@adomerle.pw>
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=6877be82 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=9pW74NbYAAAA:8 a=EUspDBNiAAAA:8
 a=oujwet5aPAZ3wE0JuRMA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=67o8LzlnqLyy2xoPAWJp:22
X-Proofpoint-GUID: GzVGSh2Ic_OGA_Wy9XK0SRafsiGQrRcd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNSBTYWx0ZWRfX61NJuBjFrByC
 0VwLBDr8mD4bDuXr4WH9+hRkk9ezhqMtzm+C2nk+2vMGlg5Z0MPePAY+gCT/6Xn/d2bLTflT6+m
 COFyfMm/sQA+m0m6DHfuK6/OF0MlEGFuOUnsbbsJUx79hs+EhElJsKdM1AkizEnGJTHImZy05KX
 6YLlDFf+hkUIleTZFW4sTe60jUNyTaMByLuNPm3kgkAk2l+QwlXxB+xp2ZlTt2ySf2aBDZV7YPq
 4kxE4jKPM+HHuoLpJ/djyeYD5gGJXcc6L+j6ham+WFJSLS5eV7VIn4L9OnFJ5dgJzNI79C7WL4L
 c6+wBCljz8Ff+Ijhf79jaBDkhWJQNNRaE96lM9nr23Ol15E8Fb1Bqj7BVGh3qaOc7GJbs9HcYbu
 Nhv7bvndOPnsPpuf0gJpFRvuDUafmbtxoxFsXk3VdHF+lbIycSro30yw93tiF4AG4DtIqFPd
X-Proofpoint-ORIG-GUID: GzVGSh2Ic_OGA_Wy9XK0SRafsiGQrRcd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=793 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160135

On Wed, Jul 16, 2025 at 06:10:41PM +0400, Arseniy Velikanov wrote:
> Added max design microvolt. Merged battery info into one node,
> since pmic fuel-gauge uses mixed info about dual-cell battery.
> 
> Reviewed-by: Luka Panio <lukapanio@gmail.com>
> Signed-off-by: Arseniy Velikanov <me@adomerle.pw>
> ---
>  arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts | 16 +++++-----------
>  1 file changed, 5 insertions(+), 11 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts b/arch/arm64/boot/dts/qcom/sm8250-xiaomi-pipa.dts

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

