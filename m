Return-Path: <devicetree+bounces-249314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AEC3ECDABBC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 23:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EAAEB302105A
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 22:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65281313523;
	Tue, 23 Dec 2025 22:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i8f6WR4V";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SvIZjOW4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE2D4201004
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766527698; cv=none; b=namnJY6IACzR/cRXnqaWKKnYgU7C0hjU4JUy3vgi4vS861YiWAaQbhIu75jYAtz3deUK4IlmEmGVpp8NT3qxXOieC1vicH5LgbSYwGnAa4V9+9NmW8vD7bNKwvLRcKQhMvxCjYvmfPuJkQ2pByst0YkRNVY5YHQAW+rPaTL2+jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766527698; c=relaxed/simple;
	bh=a98mvWaq9EZp44r0pI82gjPXVlfxzp4tJqf11M8SZbk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FTZdCPH3S3KGrSr/qcOXcXGvsl6ekAuhqvpq6DeW90WN0V+kKTWCvFucDEqHwpgea7lGY1Swz48O4zw6mwBgijQWxKQhhV/myBxW3RGp2h0s2A7JcbqM9rYvYee6hE24m+obcaEz36NYy7PDvYyDdCxuE3zVetZ15D7vaeEYjGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i8f6WR4V; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SvIZjOW4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BNG1m1Q2747219
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:08:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pZ023nu64DJJ3Y8rgETunY1O
	d4d2ftvJ+vLszIxbrBs=; b=i8f6WR4VoMU6AyBB5YCIuJI/kQN2ycJ9FbpfA1Be
	xidLtJhuGCH6pIVzj6cuvhWTd2fV1qtwjYsWdSsxog5hhpyxV61BKubB+hAkpfds
	K7s1M9zGlPX5SyZrZTCkN4nwL0VViVSSezmMPbDd5Cy1Zh6fgkbx79hFEzIDe8nt
	3XwYpjFOBpO7aevFq/bc5kI4LoR+cKhkipuSGfc2s8FhxdqDZOlckZFsEda/TYLE
	5TKLr5EDvFJMHrFNp7nzNnIahl0TUUHxpm8T3ZN0D9pKRA3BLtis6FDwj5AojGb3
	dcvur8WCrlFMsfIDFZb6oZQIMnOthdLtuiWtscZFxMLuog==
Received: from mail-vs1-f72.google.com (mail-vs1-f72.google.com [209.85.217.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7h5curqj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 22:08:16 +0000 (GMT)
Received: by mail-vs1-f72.google.com with SMTP id ada2fe7eead31-5dfb407f2faso9934856137.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 14:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766527695; x=1767132495; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=pZ023nu64DJJ3Y8rgETunY1Od4d2ftvJ+vLszIxbrBs=;
        b=SvIZjOW4MuW6kkLIbA4wLjq/85COGDkSaX7z3iUnf89oj/WwY16CKACaj47bcFwXd6
         HaMDBOr7ZVcERWSYh/i1In0uxqGQ85py84cR8+wR7+J/k2QtjQfiz/qwm+DOxKYmLj25
         At23afiqHYjftadA2L1HSNzAX+gUiN9uZWWlhYQExArKw05nLedpkJkq2qDQp7tgr7OC
         rRyXNxVGAjsm6fP4FbL9mV41ZiwsyfNeX7ja0OiExOOSneTDdxmFoytLmzz9m8aRUhk/
         8omZz5CBsSejSNjZT3JkwC6nwDX4YPPdXGb5Iu2AxCCSGFH0GznfPwwEcn/7F2BJENCK
         SdEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766527695; x=1767132495;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZ023nu64DJJ3Y8rgETunY1Od4d2ftvJ+vLszIxbrBs=;
        b=oGAoojCOUsZXz38PwdBLA1InIG6WwUFRIiNKY2XVdgNlWRDQXuHzG8c9LEYkuoflP2
         DQmXPg3m6a9U6IT6wmj61sjx3zC35V5phmNXn2RSrP9X+HMBMU8EW5/Q1pduEAt9hL1B
         lpw+rfgUKy5DFEkyuC3QHyQKOtTuUBR41iGZxE4bllyR2oWDcoQP+0mftTzX7GFbAD1R
         zcVJhBcoEgf3fTS5lOkDkkQezoZOF4e43ezj2RW2m7hh/Drt0f34OHa4N1/ia7Syy6ur
         jyZ6l9ndB/evxmRnt+BY30R4A4Dt+ZWfcKKPsK5ZAcbTCG043oVKzb+ryzgkAMX61yU1
         aNmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtBQeGnuT9uA7Y2dh9GsUKE/uy02SwF6fHVQ5+MpeNyuS1HwcJ5zUR4qCo3ECPBOtzV6sWoNLd33aq@vger.kernel.org
X-Gm-Message-State: AOJu0Yxd4nNwwuHxYiWghG8VZ0Nf/BmnIl5+RNcwFoFI9CbHOLTAvDKc
	y+FfOi2oU5M5GJPPS7hCQtssTuShgf7g9rqw3H6Mroj3jY+0r95w9+LMwWsfgYS1jiISsvq95sm
	0JYVhXhhs90V5hxpkMKD1qDNMyiZvQkh4LgoLFy5gYxffklvxMcAUvkjKEz5r898n
X-Gm-Gg: AY/fxX61rQ1sGvJEB+OE0mKcMPQaQPf7/OUq3r3vZ5izo1U+eII4XwSuUAERak0nHB5
	BBvqQ/52RLzWrXw9ATyAW0WQV5SlqNouaDwzikADBA76OK9p0fEbrRqnptkJ7uxKTR81Vw5rbyb
	IU/QjPZnK9YGUyX8u9lBNKnidwbB3RVPIjmZFJ72s0jw6Ga2R8+Sgs1lA4wWZfy1AuVYFpjYLxV
	dzyxyLuO79nQtfPEoCfJbwUy2aVIVpolkf00RkOz2IxN8rY/WUVupo63mSXjmVKpe7JQWYax7ZV
	W5YXAfnaaVsvo4Urg+XABtSMmN1m5615UXJKqM/i9s5MMqSX5XXtZCCYGEPmr8zhZWWgYY4lA45
	wYXNeU2e7IU6KT1Z8m1taqwJBTzGT4p+R3B7jB8LKwvgJfKE3w4spwaj8ZQxYX7RcScvWLB1F3c
	129LtGOdppj7p0hsMN1DQURnE=
X-Received: by 2002:a05:6102:2b84:b0:5db:ce49:5c71 with SMTP id ada2fe7eead31-5eb1a6b167amr5577662137.18.1766527695398;
        Tue, 23 Dec 2025 14:08:15 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHL2kbDar7DYki3vQpxPi1t4IuJfKgj+kVmBUoqLUuX5UzEVFW5WoifqAha6zGIugEN+Z0Agg==
X-Received: by 2002:a05:6102:2b84:b0:5db:ce49:5c71 with SMTP id ada2fe7eead31-5eb1a6b167amr5577648137.18.1766527695030;
        Tue, 23 Dec 2025 14:08:15 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812251affbsm38741161fa.17.2025.12.23.14.08.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 14:08:14 -0800 (PST)
Date: Wed, 24 Dec 2025 00:08:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: sdm845-samsung-starqltechn: Update
 firmware paths
Message-ID: <vy2kfurhjzwbrt4uzyi7jpyjr35izw6bgnojxlrnaxtc7oonpt@rnykz4blhdwi>
References: <20251222-oneplus6-new-fw-path-v1-0-a2d366f9eb89@ixit.cz>
 <20251222-oneplus6-new-fw-path-v1-3-a2d366f9eb89@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251222-oneplus6-new-fw-path-v1-3-a2d366f9eb89@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDE4NSBTYWx0ZWRfXyPvIoDzSTq3l
 rvqwyMdasxQ+eBX2D2wkJFvvTn+07452lZpFV9J4f94QiTRJZjAVnsks+COAfqRX4+r4nJVgHAD
 dHTPbMIJh2PmjSh+OBESfKD9KR2q3HuGoPCIRCvVk3UB5VDtf8GaHSnrZlwWy1hFtlxexZQ9k7V
 hSs1UcaPZssrxigbutrVhFTqwS1QlJNcv+BHTZhzRF/4lhjc0rClWPcDVICKDp+m8MvzmsvwsqY
 D0WAMgMhzZTVJ/5BnCZKiZfVlLxIMGvyV6pmZy1TO2wr3+7aRVq+gb6bD1gZxLev1NGmtHShc3m
 VnQgBtGI2mfQqaqyggo/Z/oGxzJ4l9xXHZCa1r3k15wJ+EUWt54ABCFnY/XBwmBdxudM8iC8OPN
 v5ljovhm7z4s8MXBj6MV4sZT8PF5yB+yh0yQi5D0/1zmRlojGkiMNipake5xsiKWkrpsPvg7WJI
 fXWm0AHA6xNTU/0Z75w==
X-Proofpoint-ORIG-GUID: z-TThi13erVLPwRxSZy3xrvXgfx2PVMF
X-Authority-Analysis: v=2.4 cv=LeUxKzfi c=1 sm=1 tr=0 ts=694b12d0 cx=c_pps
 a=DUEm7b3gzWu7BqY5nP7+9g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=mzIAMnI6jw0G_sTere4A:9 a=CjuIK1q_8ugA:10
 a=-aSRE8QhW-JAV6biHavz:22
X-Proofpoint-GUID: z-TThi13erVLPwRxSZy3xrvXgfx2PVMF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_05,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501 lowpriorityscore=0
 clxscore=1015 impostorscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230185

On Mon, Dec 22, 2025 at 08:05:39PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Conform to the new firmware path scheme.
> Includes cosmetic cleanups.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

