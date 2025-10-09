Return-Path: <devicetree+bounces-225018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DC171BC9947
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 16:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 24D1F4FB443
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 14:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5AC02EC08F;
	Thu,  9 Oct 2025 14:41:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ep6+HlCS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000132EB87B
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 14:41:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760020904; cv=none; b=V0GZAQfpL3S2X6Vkpphjh0XbRIAhiTEvUq7pJkSAgC2P3XuUYB6S5a+Mn8FZxPBB2YtVdM4rxQBZXFtknBJL30caKuGIMmRdJNloW3xIgx2IwTacC6FIFxnVM19OolPkzvMMYwfM2esefu48tBSIu91pAUTgUgJoLsIsNYkQkWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760020904; c=relaxed/simple;
	bh=HclYgnPF4LRbdDLD/Q8caHudhorVDWjtXDMuv4Ilhzo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r87k6Srnwgcll+AvSsyH4wVR2zPNqvaN3cMFqVAJyX1tRXSx9w7K4uhN+JTU24Owq5s09NXGbVHxoRutgVBHE50Qnvk3vYZPq08MRbm6bWWzqCdDMyyJTzkhSzqnI0udnXO+nGEauexnQ5xdLPCC0hAq96xrXlCN+CqYAdVdKEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ep6+HlCS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 599EZmaW024093
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 14:41:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qZxbfmQyGMX+bvx3enASN+Ih
	rNAG5CFfSD/AXrL+wew=; b=ep6+HlCSyQOJYq9gMKv7Lf5Yl4AvI8mXKlrQ9mtn
	3hF9uNIa6GCVtHHdvjY3B6y5oZQMwgNIgVgyu2nHqdCELr2MAJPaZe5o8zG0xmGw
	u8HSoS//g8O1z8Mcf6xxBwDGRbcunC1WVr7XI52fb9YR/GymuZpRltTVHt35XeaC
	VBmS1I/uKOi8WteNS+q6K/qEVAvbKQgJg+FV0aij+gkvAI+Sijy+LDSNcr05PVmK
	guTCqdFz4PwY3z12gCIxN5nJ+dDAEsBAExvH1Ao1SPtpvAWLRjP1dlFFF55/1YVL
	CHo7LaODkouibxY5AUaNgZZ+pFnkX/vsgFxNbr39bbDm5A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4m3833-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:41:42 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e1f265b8b5so35975871cf.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 07:41:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760020901; x=1760625701;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qZxbfmQyGMX+bvx3enASN+IhrNAG5CFfSD/AXrL+wew=;
        b=VAmmuK6o7Sv5n3ooO4Eutk+uC5QB435OqUATx0qIO21l8Ic1j+D7ImpVTP2MY7Codo
         ZnNqrhH4fJJ17H5sJsoE5PN4hFTjQ89THYVir3jCFk1g9Hfp5XHatwvV93ZCv+7h6Qsv
         3g69XxuTXB0xBbXtSe2LcnLuRdXFcVyBbRS6vi7lOc95Qvr1VfJYA6V/2kBGuCJAFOek
         BVJwUJB2U27m1wt53UFsJUBV5yBuHQiVcz5QyltCRyQ1CjYUWvOGrziV8xWJk/45neBx
         7tLdc/up0w3eDYHfk+lV3A0k/9W07O5gD7unH/6LfiZA/tPiX4hpXN0HrO6jCY9iYMic
         jGCg==
X-Forwarded-Encrypted: i=1; AJvYcCXb3OCH4Ztk/KHn+J7ckSzTc1LFSn3OTilZMeTnat7TEfco+ce8U40BwiCwWcYqyMfNHUX/NMPzTqtI@vger.kernel.org
X-Gm-Message-State: AOJu0YzYQAGghqg/IV4/Dx3mkF78fl3+RR2cGHedagu8WWgybFoBjIhc
	c8ryAFRtpZIPL904REdtdpD73pu+iTK1GzXoPBPNYhWHNhT41ywfklEGyLgG5ovfSgkIpeWFCG1
	Wc7rrqRdNzgacWGWI0lcMWd8zVA6tcGE7kTI29sguvb7xbzLiUjq9IgneBnNgA5Zh
X-Gm-Gg: ASbGnctEbR646y5aKF8sZPAFd8POCdOwcbMzdjoYnpUpulIDFYTUD/9M4+9PsIBYbjl
	ONwS3vwtIT1qMjoaEFtLccFT1DQPeJ/AWvmAQhWzrgzOlY4lqr67b7QQOCQ+OUFxA2P7+zTT6pr
	jDQPJ2q0CCRQMuhrh1ux+Savo2jSFbkRAvP/4AzsFFhcKAGlNqGYqT+4d4SvHA/HN9gA6l7PI2g
	o/2Hjb5n+d9Y7ExE2fJf4crUbaDwSVHn2g7u0kqUkbgB4cVezBIPLYQodAbMyKzo1SAHMnCDcDK
	whqsEyyONM6GgLznEzb4KBiKBvT+AT/w78NuS0xFWT0Huv6igpjskA0CCizxX1WN83EXEWaN0iP
	RJxWQvsP50HFxOWxQN04ju5WWg5fzyyfvu6QIv81dYtuyZwykhaVmahB3XQ==
X-Received: by 2002:a05:622a:507:b0:4e5:8180:d4fa with SMTP id d75a77b69052e-4e6ead4a78cmr98196671cf.39.1760020900846;
        Thu, 09 Oct 2025 07:41:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGv0mdo3za5+5FAlM5CJ7wLkbh7iaSVKM8BbIGVMwJLYVlsYxxhzIKo+VojFEtceXLiOMhU7A==
X-Received: by 2002:a05:622a:507:b0:4e5:8180:d4fa with SMTP id d75a77b69052e-4e6ead4a78cmr98196221cf.39.1760020900338;
        Thu, 09 Oct 2025 07:41:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac1f095sm1108654e87.37.2025.10.09.07.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 07:41:39 -0700 (PDT)
Date: Thu, 9 Oct 2025 17:41:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Alexander Martinz <amartinz@shiftphones.com>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v2 4/6] arm64: dts: qcom: qcm6490-shift-otter: Enable
 flash LED
Message-ID: <b24tiwwhie34narc4u3ez4le3cne3whjtxaccm4xtit3wldumb@ipgsccain72f>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
 <20251009-otter-further-bringup-v2-4-5bb2f4a02cea@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251009-otter-further-bringup-v2-4-5bb2f4a02cea@fairphone.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX/8IBRlddxFBC
 pczGFbgp+ZzhBVf2zFeO6venHxUiG6gldr7XlPwcL+z4wQgbVMS2ByHeYMRbU0DZ5J5stTd7HEY
 o/3lfE3iiyWM0rwI6RBI1hiMS9Zj3Q35paNCxvPB73jRDAQBWpdYOLYoBgys+e8NaogHkUuixRw
 8T3WXcopN5nVeJy5E2StSRs55U6j3Qp5g+1EfGDAJwtnWfPvvwqGrkg4ov8mMd0j02aOrxPbvcj
 wdxvZL7oVfQEkUeQAPY7Ius2RNfN3IHuGSRtPhVuIQOkvN5U1/8K0g9Z/iUljGr/R/oaElhwImj
 yZHqFyniF7zcY+ebbAqKJBDpssvBSrZX25k5Kik9SHAowc+IMYthDJsLvaqQvL5IiCcQn74kCQK
 NCw2IRvoOQNpvtzmxnvb9dTcvFXccA==
X-Authority-Analysis: v=2.4 cv=B6G0EetM c=1 sm=1 tr=0 ts=68e7c9a6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=6H0WHjuAAAAA:8
 a=kDRJMEyxNqLK-ifJ8_YA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: UvKmXFbKtYDiT-CYsqQFXmuxj85S-etr
X-Proofpoint-ORIG-GUID: UvKmXFbKtYDiT-CYsqQFXmuxj85S-etr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Thu, Oct 09, 2025 at 11:06:34AM +0200, Luca Weiss wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> Describe the flash LED on this phone.
> 
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

