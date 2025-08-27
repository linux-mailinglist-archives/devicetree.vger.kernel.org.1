Return-Path: <devicetree+bounces-209758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DD4A9B38E5B
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 00:25:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BCD3F4E33A0
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 22:25:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 832522F83B4;
	Wed, 27 Aug 2025 22:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gS4ZBzmC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF3041F4191
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756333502; cv=none; b=FNxgesrPO63xgQiPU+InRbedtMCFw+5PX6CZrOFLhWdiQaZQsmpLMetIypToEeGToe5W3Fj14onp7W27jy+ohP3ammfheQ83uY+lBZMjvhh9XdxhSl0mpBXS/RFcgFzD+tXdQo25UXxLq1/L8Kru+UyWxppK3G1nCZQ3HGciFjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756333502; c=relaxed/simple;
	bh=Z1DvAKKM2j6TgptKzaEBkJT9zaImy1drSJPHVc5HFW4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EKWgNnf0diltIg46Huy4bcfuUuWqAv0Kx2GIQOIgM18ZYBH/YGxGVGyAQiTcqQEztgj7OSKhriiNCgYlovFKop2Z+yQ9r+Fnhm0nAavcyKoGhKgcYn6P3w2t2OGSRMkObdnu3IBqFZZsfycycH6ligFzq6MML65h5ep6mViJEJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gS4ZBzmC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57RG8nSt027635
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:25:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wMabvnMiY6aI3QTnrZr9pq+N
	RKVIz1RxP9V/JHunYhU=; b=gS4ZBzmCgDeh85coVTvtc5oGJFI2VEr0B4boNmF1
	O3qPXL7qBbiAVuTr52jGhMBV2zit0RdQ5BLv12Fl+ToaZkvNk+/1F0xHIdrwbb1J
	wmQxWz6cVISIN9+voNHKu43ytyrWMVYcVBM+BS0zM8uBNyiBQvJhoLQgZ5chaMi0
	kNfVSdHggJV6j0kxpQnGhrU+rHeMZL+IDFphUzlfQdbC2LQ8TKO68RRBFZkn+mPM
	vvZN+NnKqUQIHRSN5Yg5A6scSFSLnHBxfQFuoaKEnc5sx9unDcsxRS0YWurBvaQK
	AtnOt25Q1gVPh0lff1ALoiyTYRPbFDQNtm0WgE6pb8HW2A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48se16w437-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 22:24:59 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b2b3cd4d00so9180971cf.3
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 15:24:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756333498; x=1756938298;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wMabvnMiY6aI3QTnrZr9pq+NRKVIz1RxP9V/JHunYhU=;
        b=OElwO3F91RKZOAOysL4+KfOXerS9Wbf3f1TtlJt8GAKNnqKoJ1go3bDACnhlnnLb5g
         xNv2fdmV8kJWASO94uCla6D9mkNEMCy3QfaziZ85C5f6PhNBo2lZjqAPpPebayFFTNDr
         YnW17NCxRCpxwvkSe8pDDZqWZKrvNZBKqS8JquRGyVt4Yo4VOErz/eRMNSoP2Yqrntcr
         nBHBmfcmJ8zEVeR+nknZbRyYkl0BzUfrNb+uV2sEuo+5fYojGluELPfbXW+aSAy1+yy2
         +HCpBjFErp+QVEb/v/yNnEWw+grpdcRcFsd6DVrMm7qguRpOYJhYlhFj1z1/T/LViKkH
         CfTA==
X-Forwarded-Encrypted: i=1; AJvYcCUkGWenAOzd2cwXinl6Dzx+AG+L2RdFIGpRSMNEUs8oI5L0MTj6EOY2gmJ2p22DQahiZZBe2Ify6nRU@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8GXa2ptMu9bOX8Y5tff4jaVcTXx8ZrxASRsT3lL2ffox7biJs
	d0PuGe07E0i8HU0fI6ymnO7NPGDFdWdzpf/2GASBw0khOyS4ANzZ3MjcYyZDBbWrGbEF3l8dH/y
	kC+w0jKqoT03ul0XfyFaDU6ttM2O9xFsvGGFQz5tyE9SMJwzLA6LNkWiT8e2CkqLvH5XJFHPs
X-Gm-Gg: ASbGncvh/9q8v1oNyrlKHzzzMaINZklubAIFchEnAE4cigRiyZSfdroEv6+S7leJzSS
	snJAXkkn6bv3njVVwqmqeB+zV3no1ke1b4ICcvuIGmGbVFDMmbooHt09RzWHC+MQ/Zkvkx4lMR4
	M/NJ2y+STIXAPXkuXhHAzSJXgYE+2CANZ64EtTMYsh0RSej4ceJy28bwVeH76MBoTVApHKbPg1R
	uaehj7fNM2poNsX7JhpNb3Qrbl0uWeFwrvFI80AvPbfCm0eiMJ5Yn7jLsRZM7RPAMsI+9fIVC5d
	m+Te99q4LIJdTSCUBGqAOH5IXg+QOXh49r5zP8kQjmo6cS89UfLV+b+Faqrac+11XBaU9aKMC3y
	yQVHGgciMMVckwa3X2kbwQfER+qT6pdIaRo7QwGN+hTtMtRNWHVCz
X-Received: by 2002:a05:622a:5e1b:b0:4b2:b6dd:3f62 with SMTP id d75a77b69052e-4b2b6dd4850mr141574621cf.15.1756333498277;
        Wed, 27 Aug 2025 15:24:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWL5d3fRji5RjCf7oZDMHi6+hAavouE1mTTu18gEHtzIXVQqcCSxTkltVNvjDodB9v6M14nQ==
X-Received: by 2002:a05:622a:5e1b:b0:4b2:b6dd:3f62 with SMTP id d75a77b69052e-4b2b6dd4850mr141574451cf.15.1756333497748;
        Wed, 27 Aug 2025 15:24:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca6af5sm2954613e87.138.2025.08.27.15.24.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Aug 2025 15:24:56 -0700 (PDT)
Date: Thu, 28 Aug 2025 01:24:53 +0300
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
Subject: Re: [PATCH v7 00/10] Add support for RK3588 DisplayPort Controller
Message-ID: <bochli5u37mhc6eup7h2oz3yeignofbbj4k5nrvm2k7zf6f4ov@t2sje4gmveqa>
References: <20250822063959.692098-1-andyshrk@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
X-Proofpoint-GUID: 3FkcmtGQ86pSZevp8XrcmUmWx4J_PvkK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI2MDEyMCBTYWx0ZWRfX2c7fbEQg7iOy
 H/+VYNwjb1MAKfCqSpaDq6YHbEz0ntEQstrbVKn9btusKj4VjOqp7JuJQdGAyCFeRGJF4KVzvH7
 /Kwpnyb2TrChTCsDabzZXLaaOr+xp/NolvjExByT/j4hRfVPWWX1UolJk76sfd/8JG/1VxYq30U
 6ZUrPDzMfWZMCk4CBae7tZdSZaDPBnL68n4R/Pn78VvkEEfLgW6+zXkZdoL49lOP6ngPE3cH0kx
 ZvIqI6X08hfKCjReeIGndniHE0OgEBbifbzT8kNFdWkh28P1O4O54yaEnQ8Ja04S2WeXzSOy+Pn
 iz+/BNrGxc/5JGw4DlE0kDq3ozU90a5e85YyTUWeI9k5u6rprBpGnmZ7T8dpcX9sx9AF0c2YyRL
 HihLimUR
X-Proofpoint-ORIG-GUID: 3FkcmtGQ86pSZevp8XrcmUmWx4J_PvkK
X-Authority-Analysis: v=2.4 cv=CNYqXQrD c=1 sm=1 tr=0 ts=68af85bc cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=IMEu-sUR2OXSz8FBHAsA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-27_04,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 adultscore=0 spamscore=0
 phishscore=0 suspectscore=0 bulkscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508260120

On Fri, Aug 22, 2025 at 02:39:44PM +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> There are two DW DPTX based DisplayPort Controller on rk3588 which
> are compliant with the DisplayPort Specification Version 1.4 with
> the following features:
> 
> * DisplayPort 1.4a
> * Main Link: 1/2/4 lanes
> * Main Link Support 1.62Gbps, 2.7Gbps, 5.4Gbps and 8.1Gbps
> * AUX channel 1Mbps
> * Single Stream Transport(SST)
> * Multistream Transport (MST)
> * Type-C support (alternate mode)
> * HDCP 2.2, HDCP 1.3
> * Supports up to 8/10 bits per color component
> * Supports RBG, YCbCr4:4:4, YCbCr4:2:2, YCbCr4:2:0
> * Pixel clock up to 594MHz
> * I2S, SPDIF audio interface
> 
> The current version of this patch series only supports basic display outputs.
> I conducted tests with DP0 in 1080p and 4K@60 YCbCr4:2:0 modes; the ALT/Type-C
> mode was tested on Rock 5B, DP1 was tested on Rock 5 ITX by Stephen and Piotr.
> HDCP and audio features remain unimplemented.
> For RK3588, it's only support SST, while in the upcoming RK3576, it can support
> MST output.
> 

[skipped changelog]

> 
> Andy Yan (10):
>   dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
>   drm/bridge: synopsys: Add DW DPTX Controller support library
>   drm/rockchip: Add RK3588 DPTX output support
>   MAINTAINERS: Add entry for DW DPTX Controller bridge

I tried pushing patches 1-4, but got the following error:

dim: ERROR: 5a68dcf5837a ("MAINTAINERS: Add entry for DW DPTX Controller bridge"): Mandatory Maintainer Acked-by missing., aborting

I'm not sure how to handle MAINTAINERS changes (or whether it's fine for
me or not), so I will probably push patches 1-3 in a few days, if nobody
beats me (or unless somebody points out a correct process for
MAINTAINERS changes).

>   dt-bindings: display: simple-bridge: Add ra620 compatible
>   drm/bridge: simple-bridge: Add support for radxa ra620
>   arm64: dts: rockchip: Add DP0 for rk3588
>   arm64: dts: rockchip: Add DP1 for rk3588
>   arm64: dts: rockchip: Enable DisplayPort for rk3588s Cool Pi 4B
>   arm64: dts: rockchip: Enable DP2HDMI for ROCK 5 ITX
> 
>  .../display/bridge/simple-bridge.yaml         |    1 +
>  .../display/rockchip/rockchip,dw-dp.yaml      |  150 ++
>  MAINTAINERS                                   |    8 +
>  arch/arm64/boot/dts/rockchip/rk3588-base.dtsi |   30 +
>  .../arm64/boot/dts/rockchip/rk3588-extra.dtsi |   30 +
>  .../boot/dts/rockchip/rk3588-rock-5-itx.dts   |   59 +
>  .../boot/dts/rockchip/rk3588s-coolpi-4b.dts   |   37 +
>  drivers/gpu/drm/bridge/simple-bridge.c        |    5 +
>  drivers/gpu/drm/bridge/synopsys/Kconfig       |    7 +
>  drivers/gpu/drm/bridge/synopsys/Makefile      |    1 +
>  drivers/gpu/drm/bridge/synopsys/dw-dp.c       | 2095 +++++++++++++++++
>  drivers/gpu/drm/rockchip/Kconfig              |    9 +
>  drivers/gpu/drm/rockchip/Makefile             |    1 +
>  drivers/gpu/drm/rockchip/dw_dp-rockchip.c     |  150 ++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    1 +
>  include/drm/bridge/dw_dp.h                    |   20 +
>  17 files changed, 2605 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip,dw-dp.yaml
>  create mode 100644 drivers/gpu/drm/bridge/synopsys/dw-dp.c
>  create mode 100644 drivers/gpu/drm/rockchip/dw_dp-rockchip.c
>  create mode 100644 include/drm/bridge/dw_dp.h
> 
> -- 
> 2.43.0
> 
> base-commit: 18b8261b84ad5462d7261617fbfa49d85d396fd9
> branch: rk3588-dp-upstream-v7
> 

-- 
With best wishes
Dmitry

