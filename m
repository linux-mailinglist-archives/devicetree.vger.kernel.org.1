Return-Path: <devicetree+bounces-211749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61ACFB40678
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 16:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 88CF4207016
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 14:15:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3793305062;
	Tue,  2 Sep 2025 14:15:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="idsb4DJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D05C2E03EB
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 14:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756822541; cv=none; b=eUjGeLnMioBi7MtdSM1GJMqtxIF8pJPTD4t2szNhHLRc4nSoalTD4UbgmflvOEpzIusyPR4DZQGVOMRVgjX+pmlupr0RmrsXBspQ9il7BQqpJu0PWItNUW1B/hN7vW62ONpiT2BBAUHi6e7TtyHisjJTVP9KuxKBwkh4fjqTarQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756822541; c=relaxed/simple;
	bh=akGpi+QtTCgfYTofF4Pk4tpeZByYbVJ+RjDKLpVnM6c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fhfcw+QbfI/xlL3YRBPaVdAW/hNDP/CT6DWtI/ODT+7DMeiea985OO64L9HXV/BUru6uk/xt0SIvDTh3eRy4wnCtQE4rRZA0YA7BRRDNpAMh0mP97YpwJuG5AUHfYHwy7yLbMnXPaBWqHMSRZq7U+3JBiFYfl5R3mH16dqZDwaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=idsb4DJV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 582B3LgU020382
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 14:15:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Mlie5F52Ht3HYOWTj4ogGL6rzgMYQ/jMzQdCkcJA/LM=; b=idsb4DJVLCwHX/wd
	dLBEgRWQ5XfjnjoPCs7vnuCRGJDdRCLaAbT5T9svXWbSJnjAlyb3/SWGWuOXj3nU
	Qf062q356QCUP7EggKRkCFJpFN80p5bOLKePqvMQ+knYwQUYRK4AOeYvjlNkcp0B
	Mc0bbXRe13v93zHGHvugMaUGyLlbRd+iWqVdOTLObCSNW4oStfcXJFow81/iP6hy
	oTt7Qq42AOjVxo4tLmcNly88otHG5A1q5+jjW/t6ic29337YqqsxkJ8cJ8NkDG21
	ReeAlq5PVBOhG5ubWXO+i1jNO66SVUvqRx9IF/hi/OGahlLGwyFigblyPUyCj8B9
	XN0p8A==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8s0563-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 14:15:39 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-52b51898eb7so368425137.2
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 07:15:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756822538; x=1757427338;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Mlie5F52Ht3HYOWTj4ogGL6rzgMYQ/jMzQdCkcJA/LM=;
        b=ZQftYUDqA/eiSl1iQ0ySms5xQjg4e9dxWzk8dp8R55vTiPbhwb0bH+nFB9K/AQtmLq
         ACd79bVIsN9X91wWUWN7y8v3QW+t9qHSPmPkTMZ3n71VMd4z2Tqlk055nKu3DASykm9a
         fAr9ovDEDnMG9dUaFXhjWpNgyYIWQYC15pXwIY7kyhWuubsVYpsG+Nz5UTVzBAQY3Vtp
         8SHbZC4ZJPoIMkU3bs7AZsRLzSZky0SGejbihARtENn745o7+iDgutDmtFIwKrD60jlg
         kMdelX28W5prB5/qL/A2rQCey/H8adG3AVYVxYBtXhGBZsx2ce20it1p8OtHpDEutMQ7
         wBgA==
X-Forwarded-Encrypted: i=1; AJvYcCWu0m/TZTvPcBCEdFlSfr6ss6B087n5ExGV4sYoSSlhDy/ZFxNLBWF96xnvxQr0guuc5Bl/6tqPAMfd@vger.kernel.org
X-Gm-Message-State: AOJu0YyVBA3J8Z5c1moTI0f2dm2p/j/kbOkz/3hDdEH6ngW8pO568ILZ
	pgDbL8klstS3tZ35ix6E/aTu8v3UJNDyVHzjgLTlQqFTknHLsnUlD5YtiwwYUr/6sr1AcCH0RBL
	SJ23P5fSBC2qoHerrKcLCYCMkmRlV+YX6c9NiEptGdLUKwByt1E75dAunZ/gFCRpM
X-Gm-Gg: ASbGncu88ts7kwgaWMSggHUFut7DmD+7ndStiIXJospbKtz6fOcnlNru7eeOssI5N3t
	t8vrHhV7r8k2y91FkEXQOoHxlpdhNRpSP6Skz8AJC41i3yNrUZi0El5ZJi0yvwjkFQY1+eTMzOv
	FaDC6qt8lMHnIk2K2WiEgiVXhn+4PkVD23TLkR6BUUMjGIjtztiL25Da7tEpCVAmOmxySSblIx3
	tLvfTYrm33m1ZhB2DqvPYNIWlP5fIKeTJJjIwIk7i2+SbXRrZrJ5za2KKJFq5ty75zSjYJmiZp+
	RZEC2DqtAo7VyyrwwUnYqzHvYpD/rynbV6QuRP7uNZBROQfIqEiWwOrM3vCIvB9ORehQ0IBoSfm
	uX70W4WVTGfSWejpvGe6FS8Ti4FvQ4RpSAETxIbSxp+eKOiMPwweH
X-Received: by 2002:a05:6102:4613:b0:530:f657:c5d with SMTP id ada2fe7eead31-530f666561bmr570515137.20.1756822537066;
        Tue, 02 Sep 2025 07:15:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFNjsqepLP76zUIqTQQBX9Us4UoXPo5VPCLW3VzTnrFgAj+u/0dS6AteoLKyMgNUBFdMU3pqQ==
X-Received: by 2002:a05:6102:4613:b0:530:f657:c5d with SMTP id ada2fe7eead31-530f666561bmr570468137.20.1756822536291;
        Tue, 02 Sep 2025 07:15:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560827b1df6sm730194e87.143.2025.09.02.07.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 07:15:35 -0700 (PDT)
Date: Tue, 2 Sep 2025 17:15:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        iommu@lists.linux.dev, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Dang Huynh <danct12@riseup.net>
Subject: Re: [PATCH v8 5/7] arm64: dts: qcom: Add initial support for MSM8937
Message-ID: <gkkxxd45xclwjs6cp2loj4male7wobeacbshvjasolr4accz64@vux2ou4wa2wa>
References: <20250831-msm8937-v8-0-b7dcd63caaac@mainlining.org>
 <20250831-msm8937-v8-5-b7dcd63caaac@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250831-msm8937-v8-5-b7dcd63caaac@mainlining.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfXyXojX9pTm2Ba
 WTEmnMQj3u020A9EdNw+XjjMRVmfkpYdbcnP6uHSV9lmjhmkwXhhb1jkWyGzRnQXU5eJZfATd56
 3eW3mtZ1+FFFsxzD7bW38tuiQ3iMMrDRetZRlB4TATp/OR9DOCTXVZwWtMvQNfIe5SHCb7O5UhZ
 nZj9RIlChcp2Qo8/zUqBb6zWTkFtFZQ9ymoIuFWStS0uHsccUNN2dPkPVTpjItgAPPvgGCJwV3C
 4KpkPwTdg2QQqO7q5Dwe2wkLHALBXHQvA7eezFgBW8usloUHItXPGbm8ycsvLf4UJlZ0HGn6vcu
 glHbK217YE3ju35/Ce1ALbj+6p30KmCsN0ON4buzKwbtZGVxNqgSciuc3jL22/Ei0Ra9LA5JCmk
 4hk1vaO4
X-Proofpoint-GUID: 1wl3IhkKJA_0C9aHExpKcQ7XelWc_sV0
X-Proofpoint-ORIG-GUID: 1wl3IhkKJA_0C9aHExpKcQ7XelWc_sV0
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b6fc0b cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=bBqXziUQAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=9HHfay7fNgEZ8udxRwkA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=crWF4MFLhNY0qMRaF8an:22 a=BjKv_IHbNJvPKzgot4uq:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Sun, Aug 31, 2025 at 02:29:28PM +0200, Barnabás Czémán wrote:
> From: Dang Huynh <danct12@riseup.net>
> 
> Add initial support for MSM8937 SoC.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8937.dtsi | 2134 +++++++++++++++++++++++++++++++++
>  1 file changed, 2134 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

