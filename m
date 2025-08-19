Return-Path: <devicetree+bounces-206572-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 35AA2B2CC41
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 20:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A403726F0E
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 18:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF77031577B;
	Tue, 19 Aug 2025 18:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HA8HyV17"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3974B31A061
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755628782; cv=none; b=o40qB+QIBMzCQl3G7u6ZXGoGPg+aAFtggDCU1NL5lVFawMvJ4yngSFIP6NwgF7TLHpZU2y1Nv4U2Z2wIfmceqLQV0YEIVwrUpZfXQ1qaex+1Y91nSV5eUSCeIaizQDOyzrZX1hp15vVpZ1WQYsr2n1g5Kad+XDTYTxZIfRuM9bY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755628782; c=relaxed/simple;
	bh=attFyXnsjHZ7VC6hMeNw79npgKt7Qbm7Wikl7gPhU0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLW59Ygxlx/CfhJOBNia1nO1SexTfDUgpLdHDa5vQUxlbb0hV5ag3OXJ1N+zvKQucnPfwffxrqRSkm6LnCreXxupwqXYr0C7q088895s2Y4r8jGva2Xoa4O8VEB8iFnb5FXqFDl/qF2ArNDb8Fl4h0ALd9634iz7oc2MiDzZv3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HA8HyV17; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57JHNM59029801
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=B/NaYmJCzR8gO0DUUe2ae+cl
	BVLL43im9S6/z9w+rf4=; b=HA8HyV175E3ppKJkvp3ZXjn+X1lO3j/LLsRYtcj5
	saZyrC6h3vauSLYZ/bkqJursuLjCblbztWVFx3Rzmq6HmtkK+xYh+a6LUaE90wNv
	IlHvUgN9aCH6Lvs3iRIe7SsVKwYWIundaswflKp8KYpXlQs0/sYVq/4nrGjSpvVp
	abypcNFh+2mVsFV3VOT2iJJY9d18UpOgj0UpAix04OdIj8CKP+BMVg+8i+LaEsNr
	IuOxYjeTUADvIimhGGRRfYMIlnyvLDUYxQlj+vhErW5w1HkW2B9WXdAM/fZACLM7
	X8fZ7qgSiqt6Z0dFKIq3LkQXgcQ8mSVnY1O0hYEAm6t8/g==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk5mhgfn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 18:39:40 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70a928282a3so194898456d6.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:39:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755628779; x=1756233579;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B/NaYmJCzR8gO0DUUe2ae+clBVLL43im9S6/z9w+rf4=;
        b=vOcp6MXBBbNiLdPiCABDObno6wof5dGgTZD/YdaEq+6ANe9Wg4021G/8skhXDmLq9f
         aTjPFi7htTtObBffmpEPvwmbzMqXIKLtmehf59wL0uoxRtUeKCuX3D9K5jDZUHPqhPpf
         1UK8g5eQc9pF3HpqurIzzDjzPtPcjkzO6EGCwoeHstrMWPcgr8FVN2A4jxfBvEhlQ6Ea
         vRXN4Ke43fSApVs68FdnR2oETCtlvVcP4Jr+2Sgn7UyJS814dIrd/qOQLT6QanqCLFWh
         x+Tox25wRNr9JGm5tkNaMMD4vDcslQqX1z7KenzBUnjXuATl4SBtoyc8BsDBY2pPbKvS
         IOSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUp6iUUsLgas7WmMuRYWG99GMp8SE6aaEE3sxASApa2PsQlAP9V9YWlRHpc62TXX0yvqLLLAGUu8jRZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxcl1HxWyoPXVmxZIunGettOyLs6UFpKwt5TqkZ/RlltwO8Tk1N
	kD/MtRAjsN7VTJOt5mRx5RxrQBffTGuNtIC8Dcv+FchDCkQhI6TMvuDiKSpybJklcxy8IYqhlP3
	U9bPjGHSMd2zFpBXH5KJ4qUqoe68fgC2Zu/3YK6x3IbiTiHcGKtL+H+4JEBvmqRqD
X-Gm-Gg: ASbGncsa2dbAbumZq8pKN5G7XlUEJjmPkEGTYJrRRLT+N8ny77WLJ/TXGlIDk7tJUab
	Jh7vi2dE4lkpGYhoJKOKq9ZoCEJwz+mYuoNHJJmAxwt5+Q1MU1CZKr4Grih3H81086UOtQdeXJh
	+IE2I3I3B+eEN279crkHiSqiIlqfcm2P8IIbgX7oT+sMcl6Y2XqYMCTUzDQDidr9VpZH9/tvGVT
	lPMcP5tK+gI1A6eDBTJWrCPir/Kw0HdQnz86FeKgh7blEawn/4FF5gqdREyxBzg1Uh6JkmD0lSS
	dG6+7Ck85Nntq4Gah29SbYwp/Z6Ia8+1vW4Y6YjSgCmkiCyWhEMxEL5LpWc9EqG/Ea1/NtGq7nD
	CdSvkbzafmI3ZbDXCGG9LR8DFkwLVRYK/hZlzCm5sgDLm66IY/Z+4
X-Received: by 2002:a05:6214:2464:b0:707:68f2:3275 with SMTP id 6a1803df08f44-70d76fbbb32mr550046d6.24.1755628778959;
        Tue, 19 Aug 2025 11:39:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1qwSILdKAsr0GJZliDLF6PIj5cZ2w6GM1QhNowyGfOtSCmwfpTie6OxhRJWiVBpMO8KPupQ==
X-Received: by 2002:a05:6214:2464:b0:707:68f2:3275 with SMTP id 6a1803df08f44-70d76fbbb32mr549686d6.24.1755628778433;
        Tue, 19 Aug 2025 11:39:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3cc9d3sm2266106e87.73.2025.08.19.11.39.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 11:39:37 -0700 (PDT)
Date: Tue, 19 Aug 2025 21:39:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Minor whitespace cleanup
Message-ID: <vmyn2kj7ln4a2acwfe4c2qedw7onrgzxylcojsxtuzhpbd52zh@6h5jpiw2r6yc>
References: <20250819131717.86713-3-krzysztof.kozlowski@linaro.org>
 <20250819131717.86713-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250819131717.86713-4-krzysztof.kozlowski@linaro.org>
X-Authority-Analysis: v=2.4 cv=Sdn3duRu c=1 sm=1 tr=0 ts=68a4c4ec cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=Gb3ubVUUNhpLmocYnzIA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: s25CCYMDIJJK9mhD-uD5z6CgHfMQFM6Z
X-Proofpoint-GUID: s25CCYMDIJJK9mhD-uD5z6CgHfMQFM6Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0MiBTYWx0ZWRfXy76r/tcf7MKe
 +g/0cJQD9Rora7dvIrD7kn1FE0/a40zOl5587JpYqIEEJ0BsZBxbukW0DNI0VJKScVRSGwg5khc
 8A1Ewl+WuUxJCzBSj62meaS9QicnQlf1oQPLiwYJ30whaC0C9Qgng6F74e9IFssI8n85NHnJOFc
 R6653hSgonrdMx0I7r0i34I4aogcCYllTMYLfdKc7dk5DG4NHBpGaXkmUYDqWPvIPE2oXKunyRY
 4wpemzktX/nQWTMjecb3NvSrbxws1oQtCCWwIKbgKmnLeTc0+9vbulJ3t/dR5caJyL+YOB47L6e
 iuZHYC3jsKhPlLnAA3LDxhtNQghyfFxFUbPshhXrNM32XCS1tS6P4fEl1o5o54EgUhYwIBnr0px
 1Upg6sfa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-19_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 spamscore=0
 adultscore=0 malwarescore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160042

On Tue, Aug 19, 2025 at 03:17:19PM +0200, Krzysztof Kozlowski wrote:
> The DTS code coding style expects exactly one space around '='
> character.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018.dtsi                   | 4 ++--
>  arch/arm64/boot/dts/qcom/msm8998.dtsi                   | 6 +++---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi                   | 8 ++++----
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 2 +-
>  4 files changed, 10 insertions(+), 10 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

