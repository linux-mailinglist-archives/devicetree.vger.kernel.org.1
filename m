Return-Path: <devicetree+bounces-207435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4730BB2F6D5
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:36:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D8F17B9487
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE9F330E824;
	Thu, 21 Aug 2025 11:36:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pLgrUQ8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704648248B
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755776192; cv=none; b=vCFzjaWkL2C9GF7YEXjwj1rL/3xl55aJdTLMQasl7Y3Qj8ATY3cD159rE/zTnih1qcypMbXBOOOLiyv5jODsqjXTUD65aNX022Uji13V96j3qBV83jeg9AB8/B5/kcx4SV2WAHQtA+im0Yb1p1UfX7J7+mQtVUR/4gaSeFTfyvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755776192; c=relaxed/simple;
	bh=w5kLktYo7kKSQ70KXaOXwLHYgkNc/yQyqKIs7fbVPNI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LFACtcBqGvz8IMqGrKN+osWN+EtxxoiHWhoAlhP0l0b3Fp50v4T3DcqtI0D4qaPtU99pxJ3wPgin43y6XVS0NBsAWJtFG7WH5sf5+RkIGpHU2ylsizM5ruLHK05xL6ExcCZQEeJEAIuJc/Gc0nEBAZH5aWOtkTXx293fds0pl7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pLgrUQ8U; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57L9b7Tp006994
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:36:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+oRchL+ZGiIm6AbmB6F+/gh0
	suQo1rfvXtM2Pmnn/tc=; b=pLgrUQ8UwRDGgkxhghdJLrIo1NxVJOOqX7qU90bN
	vI/JwszjzYwjPdZhF0MbqFeiQcpMQIwV6vQJWHUwjQ345GV7G45MfY/YOYMNGSoz
	3i7GEONr2sY0bl1NSvUNGPk75Qc/P73kUIYdg6yLV63xQ1+DA58rJw1LQ2ZZNCKq
	CBztzVy/m3Dnmm43zUPCaUXTqIVKUiIVreSxGSi1Hxzvhh8ebZg6GRvWrVTDIUQm
	II4t1izcldKcSzC58UHVIC2ohrqew12NSlz7ndjT+vurdehSx7NX0kOF6cFBJook
	6sK8efsNDNbzDUVOtzhn6Pnl9UiMp7QiYidL4c+CJ8oPew==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n529595s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:36:30 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-70d93f579ceso2057756d6.1
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:36:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755776189; x=1756380989;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+oRchL+ZGiIm6AbmB6F+/gh0suQo1rfvXtM2Pmnn/tc=;
        b=WkvnntcKLb4NgwoIgW2+p4aoOzwto7EB/JoDLUewMdzthvI/E7kzEXYor0gYyAfZc+
         URuWEvUVapJoJ7B8hqPLMNVJNyDuIGbIJV0nuSGmOkMzaLwIh3EArtxeiNACbSucXdYt
         JxUnxYy+umhpqSvapx1E1S61n9HypBXulArIUMDwlVzSNs6E+fS+sEu1RaVvsC4+6CCU
         piQ9g4gOiKbUyEdg/M0GwYkfX5kMm5WgOxpiSeW3CYQM2jx4Tyh0oQu/3xTKJYWsiDUd
         /m3tIzVgIztQ9c8GLSyvkBbYQABHiJTvw+ZPwVRjmoKv46ScSNyIRGUWX/O5OnmqRLLk
         VShg==
X-Forwarded-Encrypted: i=1; AJvYcCUdbwHhkNtoBi44bLf8/1AzC58zCGppS94rzOVI149rc/bjY5Yh1l+m7VhLeuQAFFmsk+Z/YBSgzubO@vger.kernel.org
X-Gm-Message-State: AOJu0Ywe9qP689uDTNsL2/ZI99NymG4yo/7Ja/G2dTPBK1GsyJ28YuXX
	g/elE/zuTZc9S35Z4OML9bdxs27FZDSKbRJ8EfyyUHP+PGsMIgj6Dg+7efy/q9jWiSppGVcwVzw
	vuBOasbJ7BZEOO27PfHTmCIotqr74qZC3eGuGvAAtJLIj64gFe7IN2y/ucjC+5Wwf
X-Gm-Gg: ASbGnctxiBTjqkNPKDNQTvpRjj8gsW2IdthfRndlLCUMTQnfK02sP/3xjXqls1VhapI
	vg+oYhz/ifMYtV7ue1SJ6oQfGdlHs5voNZMIBuA5nwI+dmrYNYKOu/CzIkMYYS7pVwhPOC7oHnR
	wSxWM9SOKxA1/SFFwGuWfIBPVBJrKB2SV4s2DtTBM3IxYyjwNnspTq3n5LD7J0+iLpk4dyKs9Mq
	wC593KBUzOHzGMluqHpnrGPyfzgZzhT2Pv9EDWcjfVnFJQMwpnvnJ/WLFCyG8aU+97oQSbNKo1Y
	GdyHo6Ls9b1Gkl8oMT8Mk4zld8jIkqbZVAI9zVTYPuxDK8C7raf7IbKioN+S2RBs3R2FNjEAFkJ
	2VfMmCGDnNSGGSHlaKCBoJjbENVZ+NYRDfaARQhqHz39W4Mo4zoxU
X-Received: by 2002:a05:6214:d08:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d88f6c1b8mr21455456d6.38.1755776189114;
        Thu, 21 Aug 2025 04:36:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFc4pz99CtfcFnUf3vsu43oB3VrYZHY0a8u+w/WlSr/OGxDRM13tso2usgrGww5C5aEQRhY4g==
X-Received: by 2002:a05:6214:d08:b0:709:d518:74fe with SMTP id 6a1803df08f44-70d88f6c1b8mr21455026d6.38.1755776188614;
        Thu, 21 Aug 2025 04:36:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3f361asm2967476e87.116.2025.08.21.04.36.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 04:36:27 -0700 (PDT)
Date: Thu, 21 Aug 2025 14:36:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Andy Yan <andyshrk@163.com>
Cc: heiko@sntech.de, hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com,
        stephen@radxa.com, cristian.ciocaltea@collabora.com,
        neil.armstrong@linaro.org, Laurent.pinchart@ideasonboard.com,
        yubing.zhang@rock-chips.com, krzk+dt@kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-rockchip@lists.infradead.org, robh@kernel.org,
        sebastian.reichel@collabora.com, Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v6 06/10] drm/birdge: simple-bridge: Add support for
 radxa ra620
Message-ID: <4qs65cbi2u777ykgial37gsyzosj5znduxwvcuwbxi3kxzy5dd@k7tcgcyepjoz>
References: <20250728082846.3811429-1-andyshrk@163.com>
 <20250728082846.3811429-7-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250728082846.3811429-7-andyshrk@163.com>
X-Authority-Analysis: v=2.4 cv=ZJKOWX7b c=1 sm=1 tr=0 ts=68a704be cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=EUspDBNiAAAA:8 a=HhVUBrKwW8KbpwAMqUoA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: jjfaJs6Riw6aA8ZM9qk5NJS_OyZgw0Wd
X-Proofpoint-GUID: jjfaJs6Riw6aA8ZM9qk5NJS_OyZgw0Wd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX1YW3AeDJl+Gu
 pvYBlxmU9Wejr77jnBgy2TymB2sd/Dv9+HpT4UN14XFM1/nE6lOv+3/k43yLVtJcYG5jCx6fz1a
 5Au8ATZF7FMbGIJHw1naN5aTZLh+nDrVtnW8T2fioKv9Mk8o9UuyAGgM+vQKM9XswI2nTKU1afj
 jOtgmWPCoiW8YtOvTRC6bGltx7Kw0Bk3MW2EdqLnMRuo8LLdDCP1YENfEihM2DKwPIW98MEZQ6t
 U//i+G8Pd13Ujr5Zt2wekkTNEzQLsjYZZU3biXy4g0QLq8JVLUZHI1w3AoAWutUCK1Rc6kV4R1P
 v9mpuUZRk1L1fbogHFZtkLLvzfVWzSRmxxacmsA8FyR0Giqw57TGWRiQB0JV67S8qgTxuYREIbx
 fhWYdQnbInA89et/KkW/RUNxGu1vrA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-21_03,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 malwarescore=0 adultscore=0 suspectscore=0
 lowpriorityscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Mon, Jul 28, 2025 at 04:28:31PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> The RA620 is an active DP to HDMI converter chip, basically
> no software is involved to drive it.
> 
> Add it to simple bridge to make it can be find by the drm bridge chain.
> 
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> 
> ---
> 
> (no changes since v3)
> 

Nit: typo in the subject, should be 'bridge'

-- 
With best wishes
Dmitry

