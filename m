Return-Path: <devicetree+bounces-213101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF6AB44A10
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 01:01:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AF6F01C27835
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 23:02:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E5872C1587;
	Thu,  4 Sep 2025 23:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxbgcgE1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3BD2727E5
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 23:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757026909; cv=none; b=ZIH0rfSFnB/4vJFab6WByVJUQorOXFamjSt/zUDDMC5ZcNLOTb1RVLD0k+/bQNqVP8ApSufHzSPxcH8LnzBvAuSc6QFzTalZHbYLCg1uuuJveXv06n0R36hxSZDY7Xb+NjXcyRvB2p2JWVc/4/cMLBILPfHe3OhVjIvySmQpMi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757026909; c=relaxed/simple;
	bh=QIAtTJTOWc2cm4r1AvvZcuu+0yp32J2PCv2mbv+ufT0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WMov3oDMZmkUpsmb+1WlO1NejnPejqmgbO6KysB70zKWAF4JIsiQFtfFftLskGHTg2ecAddarynl58dFV13+Dr3N+852JVSpG9Zx9+7MN0pMx6d/siXUvSoWKFeTMBbdJ19z4xVbyNWnlB3cYvi9A4yaP1R/S3a+XCeBQhw+6KE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxbgcgE1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584IM9qR031829
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 23:01:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=etXN28r9jaaYlfuPDpTiD3hF
	bcuxX5byMenXbqFORPk=; b=cxbgcgE19sPkiCfBgjxSL0gtQ/GF3vK/15azlZvP
	rMuvJB/9qEBN0q6sBcwnl9uFN+JtlDrdp8dp+rYhd2DCbtiVVBW/iwZF2CydTRPj
	L+67D9ejpUL41AaGRfS5mticXJ6YXt/avFmZAIzh//5kypz7QoTbbZoUeWGRGSb3
	Rc3bkJEE4pjCW9wR/q7Xyfx64s4CDG8JHeDFB9Jtz8EWTPcisFAlCOEAVDB4wTg5
	RE2zApN6d9drKEa3jXmknkDaQ3r567urujro2hcAdKSC1fR7s6+cvQ3WgzPj94l/
	3wtLGq4KUK0kJsmF3YLwmxdVqpse6Ts7mdmEdpuCPio5dg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urw096uh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 23:01:46 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5353106c96cso817960137.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 16:01:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757026906; x=1757631706;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=etXN28r9jaaYlfuPDpTiD3hFbcuxX5byMenXbqFORPk=;
        b=nDEE+2lH7UQ9aVVK/EbVlkPEWhlSD7B01OeZL4ryEry2wKwz5WaCdqxaf2PY7dJJv/
         UtmhKYg5qgEHfCY5sZg4m7V5X+842T/MplwgBNG95yOz6uGnr7VnZgHCZrYsr9wWJvzd
         ilhorwGMW70Ou4JKkD62cgqynwsJw++d1cj/yMjbGCgfH839Wyu5KHIzlcs+WfQ32ku3
         n4jiQJUc4iF91K7XPYeLzSkcHd1MC7OYtLo9CIjyJPfVUTWuLht2xN6Y8U+yl7y83XLC
         sLXKSNdk7BCsuZ7b10axWnxBXkjt3BEKS2dlIKfr4fLnASBs9u7jQ8/e9OSx77vXFft/
         5c0g==
X-Forwarded-Encrypted: i=1; AJvYcCVyhHkPCNkAKJf5gt6cUnWCh6tvoxPBYIuHfvxQncoE+YJ3/cisG48SROUh8IimkH9WIM+tV65Jg7uh@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2E1MaHIDJolTXyihZcGzCRHa4RELSXKpf3mllP8xig7MPS9AX
	r3Tsrxy+6To/k0Y9wF5Z2VE/ocViiCTdZmuq8Jrpi4blMYyYltKGX1NmTT+1Ae6gXvBre8jt4m2
	kTsLOoAi46d0GFF8eP3cfyfrsZSQbIZ/tMx4cZEfrQzMYZ6f+fGZ5vshhOguYYG2a
X-Gm-Gg: ASbGncvh+w5/olAOuJae4iBeQm7JDnt3M7m1EQWrLJH5U7Nx07cJ/y4jPULIGB2rf+c
	4e340IwtL1GzZSV3FfmgmblzQt5HgPup7OXARdMBXLSlhPX310KKL5NV+S4/shr1gl5tUdSLZed
	laOpYZSPp4ZGNs38VRb94BiDeIjI9qF0eZlE/hWMUplOzcleyVLQd9hyziMM2cpDKm1G9iZJ7ns
	AXOf3vlJ23YZHAbBvFxIJJ4JxjGyUigv2kVFK8of87/rd2nxHTQQ89uj7KxbQ6mD5BTdxRC6hAk
	vXl0meja5xOEEM85Nfv3udIzeF7zqXwbE7ATDsPcYvpw8GV6tmVI98/3qEw43xVUEE8IiW0SX+b
	aBY1501E6K3DvApBp7+br7EUDZKaWi7hBWQFmRIbG/H7iSOTUY8HY
X-Received: by 2002:a05:6102:4412:b0:508:aeba:ac31 with SMTP id ada2fe7eead31-52b198509ddmr6977172137.2.1757026905702;
        Thu, 04 Sep 2025 16:01:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZFTY0xHZC0fSrJeqcA/zXmLkbjpVOO2YoQKWjdh8znnPj9BanzEoFDRvnxif8pLwlmRxjVg==
X-Received: by 2002:a05:6102:4412:b0:508:aeba:ac31 with SMTP id ada2fe7eead31-52b198509ddmr6977153137.2.1757026905323;
        Thu, 04 Sep 2025 16:01:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608acea11fsm1477286e87.80.2025.09.04.16.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 16:01:44 -0700 (PDT)
Date: Fri, 5 Sep 2025 02:01:42 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: dri-devel@lists.freedesktop.org, Conor Dooley <conor+dt@kernel.org>,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        David Airlie <airlied@gmail.com>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH] drm/panel: ilitek-ili9881c: Turn
 ILI9881C_COMMAND_INSTR() parameters lowercase
Message-ID: <tzz75sv4orkbydpd2wmqxvsoyhc6as3uusjmt6rcw45mjz74wi@r7wm7wibzaom>
References: <20250904205541.186001-1-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904205541.186001-1-marek.vasut+renesas@mailbox.org>
X-Proofpoint-GUID: Wtmo6-BkJKW-vNpJ7flyeJTT4v6XvM0I
X-Proofpoint-ORIG-GUID: Wtmo6-BkJKW-vNpJ7flyeJTT4v6XvM0I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNyBTYWx0ZWRfX8XdlYwtR/flk
 hfkQ8WVsc7pxG8DQjmdgEycHNx57HgOvUCJ+kHufb7CjrZpAtnxeuSTl9Yj/9fz9Rpow7Uv20Vv
 gx4pBxM9QTXkDgpOiPvEMRONVaosbeNjl8GlNlZsFmINoKjTu7+Uz+wX5Kf5zY8EfYl8PMaBfFX
 zhGadExjUxHJj7Wri9Arqc0gG3hJP/QVahJm+o0QtXvo6yhyE50Sdt4wHLL49z2GjNIusYtDumn
 JmwC9k0W5Ij/O9zpzPcJ730Q9G+EwIVsKsHtXTxZaoxgm2/2Zzgywx06pipejICKNtivUQ8apkD
 0S4Ew6RS+S9nmRPpqx+M5gOI8ZPD6y7/SNxEAyXS1SXpKKueDBD8FmfvZAa0/1+gIrOQJlm8Dls
 T3T43XB/
X-Authority-Analysis: v=2.4 cv=NrDRc9dJ c=1 sm=1 tr=0 ts=68ba1a5a cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=b3CbU_ItAAAA:8 a=VwQbUJbxAAAA:8 a=RF00TdSWAAAA:8
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=QyXUC8HyAAAA:8 a=KKAkSRfTAAAA:8
 a=e5mUnYsNAAAA:8 a=dCZUmJHuHaGrPOQQW1IA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=Rv2g8BkzVjQTVhhssdqe:22 a=_nx8FpPT0le-2JWwMI5O:22
 a=cvBusfyB2V15izCimMoJ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_08,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 malwarescore=0 priorityscore=1501 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300027

On Thu, Sep 04, 2025 at 10:55:15PM +0200, Marek Vasut wrote:
> Make all ILI9881C_COMMAND_INSTR() parameters consistently lowercase.
> No functional change.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Jessica Zhang <jessica.zhang@oss.qualcomm.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
> NOTE: Use vim :%s@ILI9881C_COMMAND_INSTR\(.0x.*\)),@ILI9881C_COMMAND_INSTR\L\1),
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 888 +++++++++---------
>  1 file changed, 444 insertions(+), 444 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

