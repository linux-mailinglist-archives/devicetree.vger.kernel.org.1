Return-Path: <devicetree+bounces-159731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5F4A6BE07
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:13:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8CA603A6EA5
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C2A1DB356;
	Fri, 21 Mar 2025 15:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h/6WsxSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 773821D5174
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:13:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742570018; cv=none; b=Kds76nvUbFdvcyRtg79wihJjJWRP94iq0CJI0vUFUuihWebNTKB5YsQJiwpDupduff2WoFfWOT0o1so14f683wBcHBXqC2DFVujr34Q7r32iHMZZL71jITByyVhbWfmnpDBNGxF+6C3vPYLW80hneUyHX/OAgyfpDDIlSjf3x6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742570018; c=relaxed/simple;
	bh=eUb6pFAQJsgClBFqUN//SWMcT52YNoD/1rKlYn3NhwQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jwDPCG+Dx9akvD1FZ4+1hv+xNdyPPo3aZ62KOHakwmUK3kaglEJY0Dcd3tqY07oNUYba63B39Dzbj4IIA+HOQSBrLcTxy1zXXNbc7dKNjIQTjxBJqJ9G0yzuCEj0ZduIHiSC5xYzCLHMnHBDL8sUicn8T847qYanErOkHAD5BxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h/6WsxSI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATHGW001127
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:13:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xMZqwFdk5KSv8eArmzuOQClA
	gGlpgEE5tdbkxdpxDLQ=; b=h/6WsxSIpkBW/1vpvBD4bsmbgrPtvlQotX2E+c3P
	l6lUuTmlKhEoKuu1aFsMZLe+kZd72mFSYJyZQxtw5NnuS6SawRGqz+0sL31k5xqE
	YCTHuQKTtQrBVWupRyfq7nOGIUd5YKJbkHBByxPZWBHO31EF+wUbc0fUDGP9Ync8
	4b60IeJb8RzC4RQj6hqN2dITSuYivsSbTKi6Ev7lVfom1Rjc9UxtSP8SshRsyjuV
	9bUcTkeDeFhtQpAZAh/wJwIrUFMXWpBPmIHlB5W8GEZc2wJELyVkT/P7D9uPfoIm
	SnmSU5CEHREX/2k6N1Q7QH9QsXPs7L8AhgXeTIg1RBw6xg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4u9s39a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:13:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8feea216aso53903406d6.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:13:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742570013; x=1743174813;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xMZqwFdk5KSv8eArmzuOQClAgGlpgEE5tdbkxdpxDLQ=;
        b=I6aC5clJKbQ2+0/jBjxCxYErGDF/67+tYKW9m4JVxvz1Lafa6cckU577aC9gmRtXFX
         Y9DfnsQPCPCq2FAY59DvaI2DoVtMLqr1RnmptloixnNcjxXh48lSzlhQJRTcqdfCgSCz
         6sbBjImGedaN224b5dHO+NzK3pVgQi1MzBqp5xOErQic0y8vRl2DiGghxs5nyXa2fYeG
         FwbY/eG+gY9Zu/Oa5kq6WAx0+nlUic6L+/fbR7yb+GITLlBRuafQenHEYr+1/BxQm/Z9
         PQ52yOL2LkVUrUnfDIUgVhI1UcWMQ0GZt67Z7OlbzR9dqv9YqAJPWf1ZkqWxXrsrbS7v
         2v0w==
X-Forwarded-Encrypted: i=1; AJvYcCVj8wEdZP2F22TwYTIvOd9n7eOvRUKjHtfznW4InEnjgGmAsxqtO8arloNefh3cz6B8SjzYPxBBPDhP@vger.kernel.org
X-Gm-Message-State: AOJu0YwEPo+cKHb4QUvNhn6QErns2dnxhYWPofghk64cJSdWlUFgMBIA
	lLeUAGDs4fmDnzb77qF/C0UdUml5hV78sU1LtGtLbb5A3s1U9CpvbbYpn7RbetnpHkWmJxQBmgw
	V/45QyyBO9UzadFTeewCFS1oxKPiIw0yB/FUuPPckCYIuOLBKaDsSSmaunnCf
X-Gm-Gg: ASbGncvQCA/X5DeksqvwcR8Wa3JXP8jr4jHwKHOF4ZkiWM1yuyjC+A4++8Z5Etk5Bnj
	iy3KHmhm1Y9sMCkEsTZiKFOrittmi1sKDvbslhSsrAlgkVHPRbnvWWPZBa8Kp64g0DroYWxxZ0m
	0wCMaO3wK9kJShGivI2GkOyUdbP4/dcyl+3cGPH0M74LOKt0SkJEIF5jXK3h8WFfPqBmXPyGwME
	uPLPj1UAUa0OTgRSz9GHXCCKac+5Uz0B4OXsxzaZs1kSM6PPJBSuyJRwBrwDT+7QFkWKcjwIlPG
	a/C7u/GqXzKgCY1/BOKNZZXIaQwps0G2hHrSrKRC/Ain/i+4af8HZxj4WbuGayFJ0SnvAYxzQxu
	1XQ0=
X-Received: by 2002:a05:6214:2504:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eb348e09bdmr117295196d6.4.1742570013192;
        Fri, 21 Mar 2025 08:13:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEV2qUsrf8Ji8k4NQXXY0QZJ3uWE9bmcYzJL0crOi3WG2aGplZZOmwLfnoE3lH8ycAUmOl/vQ==
X-Received: by 2002:a05:6214:2504:b0:6e4:5a38:dd0f with SMTP id 6a1803df08f44-6eb348e09bdmr117294576d6.4.1742570012721;
        Fri, 21 Mar 2025 08:13:32 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30d7d8f4f79sm2679021fa.77.2025.03.21.08.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:13:31 -0700 (PDT)
Date: Fri, 21 Mar 2025 17:13:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 06/10] phy: phy-snps-eusb2: make repeater optional
Message-ID: <m6uabp57a2kskyspnrz65frcf7dqkljmdeffupqkcni5qbgya7@cwmdcac5eh52>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-7-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-7-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-ORIG-GUID: cT0Vd0KEAZPpBFMLP1cpQMg4JAl-CjJW
X-Authority-Analysis: v=2.4 cv=FYE3xI+6 c=1 sm=1 tr=0 ts=67dd821e cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=zXIZtLy0MoHwQ1NDvSoA:9 a=CjuIK1q_8ugA:10
 a=zZCYzV9kfG8A:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: cT0Vd0KEAZPpBFMLP1cpQMg4JAl-CjJW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 impostorscore=0 mlxlogscore=678 mlxscore=0 priorityscore=1501 bulkscore=0
 phishscore=0 spamscore=0 clxscore=1015 adultscore=0 lowpriorityscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210111

On Fri, Mar 21, 2025 at 03:58:50PM +0200, Ivaylo Ivanov wrote:
> As described in the device tree bindings, it's not necessary for the
> SNPS eUSB2 phy to be connected to a repeater. In configurations where
> there are such instances, the driver probing fails and the usb
> controller does not work.
> 
> Make the repeater optional to avoid that, which also lets us use
> the eUSB2 phy when it's connected to a repeater that is not configurable
> by the kernel (for example it's missing a driver), as long as it has
> been configured beforehand (usually by the bootloader).
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Acked-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/phy/phy-snps-eusb2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

