Return-Path: <devicetree+bounces-163475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 352F9A7D03A
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 22:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0189D188BAE5
	for <lists+devicetree@lfdr.de>; Sun,  6 Apr 2025 20:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2EA131A5BAA;
	Sun,  6 Apr 2025 20:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jme3Wz73"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0BFA158874
	for <devicetree@vger.kernel.org>; Sun,  6 Apr 2025 20:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743971191; cv=none; b=Ou20ySfut7OxcrKRLKScjaF+lOxqzJLJOR6YLFYMKePdFlhfkwziijqa43TPC7duGcZpmu+n7AVxIWnHGk1oV1lQJji8iB34z0HMY6XYivHrRl+WKGpdZ4kE6l6TvO4M3F1+jG4hPcNEEfWHfnrhf97Nrvim37c3TZwhlQ72xys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743971191; c=relaxed/simple;
	bh=08+tqfAB1Sd57oWzPVazTtvjR2adNb2Tmjo9iIOlBjk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ecVAvm4iMo5XQl2s+AE4IyhO0EECgM8DXfapxob8Wv+1Rh7yd4tzYgvpvdz+CG5EOw9HR5+j1Ud8DA9LP8szNxqR1SLoMPUujj+94hJmqyakiWzXDN2LFiqOsOB9xC1ykSptupnNPWi5snvK+LOf3gnB7qSnLaIqRBFkYLHJicE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jme3Wz73; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 536JNBvK001028
	for <devicetree@vger.kernel.org>; Sun, 6 Apr 2025 20:26:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UjGwNH6c05e2ZJVyDxHhI0Wz
	SpJhkNhQNLiWVKWtit4=; b=jme3Wz73pGBnVPz9xxvf3BndomAwtGrT41KUZrFn
	a/bY0uXX2DhhFLvBbxjV09Xx50nfeSq5YZW1IwlYe5S3nAdnflBvInjMY18BZact
	9iNjktSyC5TeSb9FnGJxv3RrP9nRsRl85+DkAIcjoqOEow0v0La7aO+iNyTLo7eF
	j49cLVexYSYSLTawBzvd4YCTsYYtjsIffF8iHe6ze0tSufkwsVeC6eHyP3l7pTCy
	b49giFZM72EY6krXk1OBSp2Vcao1GU7q+yEpPE2nmI5ZR0t7zV0I/iyCjUbbGMzv
	HkG3goKEvBYXV38HXCLnjJ4SYDxdhFfkDQ0K+kPNZX9EUQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twtat92d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 20:26:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so1147802885a.3
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 13:26:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743971187; x=1744575987;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UjGwNH6c05e2ZJVyDxHhI0WzSpJhkNhQNLiWVKWtit4=;
        b=Wf94nRB6Z3QqRHiyddhpDKvRiNqQUNJ9XZZgITKii5Nki3bxfXvagTL26MPk1Hrwuc
         u8WuE6GkZNYnWL7ucIzH3HbQxtaVQPWAmSycfmx6wFz4woBVyg61j/cPhNZsEnSc2g6K
         AjaAzZfL8peXnHkNPD5D3PPyj9DD2KrGQ8WhAXmwQkzHSlwmklmA8FaDBR5vz7i6Kx0b
         rLtm2jPQ9HX4JAfxk65YakFGiWC4OhjuQpPwMq8AygpREkuIDPI1xwOyBQYPLTaCMGG0
         f5BPyQEBbVUoEhPbZ62X6aecrTdN6132AOPYXmsIrGX/Iv9yWcnbscrYavw3G88lVJax
         Rusw==
X-Forwarded-Encrypted: i=1; AJvYcCVh83H1AOp4RVrwskAJFYPPeeWKyGAQPEANVmt0IshMsLYfN98OVGoRheC9B3iuLtcTloz3yYHNNSmp@vger.kernel.org
X-Gm-Message-State: AOJu0YzwP1Kn6vddsntdPnjAwxPAYCsh3Pk6zLAY+6ogrkJ16fFs3Q2S
	ZF4CvkM1uTum2t7R5CNwxra/C/1Sqb7YbetmRtu5grd8cfdiMcPwCwp1RVuRDNdT53pH9Jvrl98
	8aumQrxPDeUG3Mf16gntEiafjdT92xvlPAwy8KjKef2RtuJPIT2/J1cT59Kw9
X-Gm-Gg: ASbGncvnymEMwhFWlgXDnA/9bmclHh7bZGU0rNyszr1wHz0yDYNgNH2c2fALx/yjvR4
	NIB3fG4joSD1fU10+Anzg0H+xfnvN3E4ht3K6rPYbOGaKxH3xCvx8xd7RlR/ieYHe9xPb0dGWNy
	qIm7/0unl90X0HBG9ntmuhc6pUSTsTKFjyHYkPuEFsMUAvCLUbZo3A2f78SPZuuyfWs5ESA0IwH
	3EKahChzFRSZ9P7mzFySw3PcLWQaWaPEmqmk5KaQB/q64chJNf6XPwBejn3euztCAwtH9eeU9O8
	UlUIvO6Ic/+spFwWeELQ9f/QWC6UB98RdM38Gndvu+n1Pp3hs5lGIkIkV8z8SmjtIq5h4V0BTxD
	AI5k=
X-Received: by 2002:a05:620a:430c:b0:7c5:5cd6:5cea with SMTP id af79cd13be357-7c774d2cb64mr1319173185a.15.1743971187504;
        Sun, 06 Apr 2025 13:26:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOUC8/sge2Zws3JbtbtlXIqzr1w+PRoazsYS05/FRkX06ItoCneX0X4IELGp4ykgdikcb+3w==
X-Received: by 2002:a05:620a:430c:b0:7c5:5cd6:5cea with SMTP id af79cd13be357-7c774d2cb64mr1319170885a.15.1743971187219;
        Sun, 06 Apr 2025 13:26:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e671b8csm1078793e87.223.2025.04.06.13.26.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Apr 2025 13:26:24 -0700 (PDT)
Date: Sun, 6 Apr 2025 23:26:21 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com,
        dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v3 08/10] drm/bridge: anx7625: enable HPD interrupts
Message-ID: <srobukvnruqkgwbtfeoc4aiam2zw7j4oe2eyoqd24fn54m7s7v@v4roslimt7gn>
References: <20250404115539.1151201-1-quic_amakhija@quicinc.com>
 <20250404115539.1151201-9-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404115539.1151201-9-quic_amakhija@quicinc.com>
X-Proofpoint-GUID: 8DTvuQn_03ZNwvA3hXRkO7dBI84UBdgW
X-Authority-Analysis: v=2.4 cv=LLlmQIW9 c=1 sm=1 tr=0 ts=67f2e374 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=dfltxrk8hYN0BGuGiOAA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 8DTvuQn_03ZNwvA3hXRkO7dBI84UBdgW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-06_06,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 clxscore=1015 mlxlogscore=612 malwarescore=0 phishscore=0
 lowpriorityscore=0 priorityscore=1501 mlxscore=0 spamscore=0 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504060149

On Fri, Apr 04, 2025 at 05:25:37PM +0530, Ayushi Makhija wrote:
> When device enters the suspend state, it prevents
> HPD interrupts from occurring. To address this,
> add an additional PM runtime vote in hpd_enable().
> This vote is removed in hpd_disable().

Please re-wrap the commit message according to the recommendations. With
that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  drivers/gpu/drm/bridge/analogix/anx7625.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)

-- 
With best wishes
Dmitry

