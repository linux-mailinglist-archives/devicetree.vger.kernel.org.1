Return-Path: <devicetree+bounces-205428-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD43B2900C
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 20:11:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C6A21BC1B14
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 18:10:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DFE32FD7B5;
	Sat, 16 Aug 2025 18:10:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c5uOmo2z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45B21DE3B7
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 18:10:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755367819; cv=none; b=Nqglcz/gz7NRinVfyV+PG2b6N3BnF2vmY+o/d9lTcv2kV2VsvdmDWMozsSTNOtHbbXIVRYxU8LfAsHj2VfCRwuG6XXpndcRgQHKQo41VP4ZMF+HSozdzRGBjspc2YgW21qnZLxHWv1V+g6v6trSQayuMW/Ruy9Lbf5imlSOWUgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755367819; c=relaxed/simple;
	bh=9i9LISw9RVCaDnSDtqv5an7RuA4RdwpV/yQb/dx4ukE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fGJCO68OfdfrgrCGod6nPCLDf3d4VfmzFt+MJ93mIO5ihgvuwxCorpdomITh9PIjIucyPK0yn3M5ICqkZvpaD6skR9xEwDWV0WlykmPlOdKzVu3qDDS/lYOndVdl2bUIaZO2Oe/v5PVoRML0u/veciXRXHpKIk2DLjv0sbyErs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c5uOmo2z; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G5q5Cn016959
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 18:10:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yG/G6lh/LkLzYMzmLYWhP7M0R2CFgcnZp3gBKe/dYFU=; b=c5uOmo2zL3aYWINV
	r+B23iDZpKXfr5koKdNCLqhb5d6I3/OIBVZaczgLorcADkkWicWoEIB+xkj+93ZY
	2bOA2jSlHNSxMZ8v6avDSD06YSokhtdc9w39v2zNkyxY7BniElApNMGwPSkrOdHa
	kF7FNlLI1V3pzXqP3L8qkQF1uUP1vUXvGYm6LSwc0y/LnBxh1b0J2g+QbP0dxWl+
	DrzsviT51qVM7yRNc1Gh+u/HcrA6/ohJQI7I0XY7kBWMkGeZAxCX7qAlbNRDH4Me
	0hMgnBIokoxyaZNzUGw+BQevW1yP3yznGlaGXnUccJu17DcE0cz+qstDZv0Oeuq2
	/vUf/A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jk99gwvv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 18:10:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70a9f55eb56so67609056d6.2
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 11:10:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755367813; x=1755972613;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yG/G6lh/LkLzYMzmLYWhP7M0R2CFgcnZp3gBKe/dYFU=;
        b=kvxydQCz4OXSWhs9DyNJvVkxMHhzKxTL/Z/68vQZxgQSjnK/r3GKoqh/9PW0VjdvKe
         0HnAby8rQ/rFopCuLMohlYNZJd7wpLiYq+d8xYALtZGPnaf57b1PqQ/A3ioFanAapGlC
         pDqZxdxF2b4hT2EXR/wbgs5Do9IzvVEMaQqzuXM9BvaxEaXqkCvr9bH3+/g9btCT7Wzt
         A5ymtHAZOlSwJ9+4Gh6Ue3oOvH+8kBxSoS/1WvIw6Scu0qMmM+Zs1seARyaWfgif6+nT
         7ROgL31DspAGrYG+DSh9IZYy57bocxAO54pWpPnPXDPojEfy5pp6mJcOCvpsp0hKRzwS
         O8uQ==
X-Forwarded-Encrypted: i=1; AJvYcCW1/ZgKKrzy3yMjquQzWPwJjHNF1VC7MBmWedhcKLs6qkWbBO8Rcx6lhZSn/UHDxTujvypJj+88790w@vger.kernel.org
X-Gm-Message-State: AOJu0YwVSYb9LVCP96fcTqlssvT7pWFl0orM+Bz3zGDq4HIjF+xZERcK
	yfU+xCUGMitpHkt9c3Y56RQ6QbLgjBcnbtBBeUoUKvOeIxSqreQiZe7aRhMGlvQDGNh6IGY3y7J
	0yTSLaSPDtDO6uQwbCDTpc1ciB5YZ6/VgXzcKFis8YK4cQNZYop2SjACPTyRwkfst
X-Gm-Gg: ASbGncusroU8fj1vN5U5ngVIvAytbLO1gwS+t9MdVgO+LCDw7KkxTa5vryfpCN116wh
	BRB2rnXzx86Ics/qcWvA4AxDA61UFtLyXGPFlTFhye3BNL8mYCI5TZIgFeP+WDQGdRDY0/nMhnV
	t1BArqAgX9WNEKQHAIEgYD6wXlETMAYYfCIulUYCHQhHSyLrH+0hniVckWSBzx39YZpdis/sc+e
	sbE+bFpZTwM1H5yWPi+IOilBjfGeSIDpjln6RxM97DiW5FoSMcmUvIa9CmKWm1rh0MYHXSWPDoW
	JizmOVQoGviqRwo/K/zcSLsxAURRYkB2UKG6ormMiRvrcrjznrcKV6csT/Dow4EgzaWoRaBGLkR
	b+/of6SO6Xpa/LCdMgMiRCOTnT/mdH+6D0Rc8jRTt0r3kN0eokSEu
X-Received: by 2002:a05:6214:2249:b0:709:8742:e46e with SMTP id 6a1803df08f44-70ba7c4c918mr90662216d6.45.1755367812981;
        Sat, 16 Aug 2025 11:10:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHudZQltT5VdvRVyB2pGZmQmIXYECsSOje+oqGK2LKNnDQrT0AibUgteBZaQiMHPZjvprKw0Q==
X-Received: by 2002:a05:6214:2249:b0:709:8742:e46e with SMTP id 6a1803df08f44-70ba7c4c918mr90661716d6.45.1755367812367;
        Sat, 16 Aug 2025 11:10:12 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef369abasm935429e87.63.2025.08.16.11.10.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 11:10:11 -0700 (PDT)
Date: Sat, 16 Aug 2025 21:10:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Drew Fustini <fustini@kernel.org>,
        Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Heiko Stuebner <heiko@sntech.de>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Michal Wilczynski <m.wilczynski@samsung.com>,
        Han Gao <rabenda.cn@gmail.com>, Yao Zi <ziyao@disroot.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [RFC PATCH 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
Message-ID: <eyfgdk6d2oj2tpw7vndxcn3jw5ib3h4sahghbe23xn4qvj3rr6@jwzuzjpihnlx>
References: <20250814164048.2336043-1-uwu@icenowy.me>
 <20250814164048.2336043-4-uwu@icenowy.me>
 <m7sg6sbc75lsnm6u6zppq574rtgt2rzr5hjmpwfwns2wnmmfs2@anbw5z7mo5a3>
 <c9caa122d57cbe3de3efee2de211d914c96eb0bc.camel@icenowy.me>
 <0a931bef23d8feb758f5a752ee84a4abaddb8fa4.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0a931bef23d8feb758f5a752ee84a4abaddb8fa4.camel@icenowy.me>
X-Proofpoint-ORIG-GUID: O81WbRlg5I7cHk7-rr_apEn6hkReuUkI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDA0NSBTYWx0ZWRfXx6CIOENAH5sb
 S7Vu5YwOBNtj2Vucymp82aZyrBNybAZrARvl//hLr0FKMSXnP5haQoHFbTAaGnj/7/3wlI5GL90
 II34CdCfl8MW3JcVrOjbAoaX4tg7hMt9Jq1ngT7hm1TrRgK46ROQtEk7EeI77jHfucCia5YJKuG
 c8ZFhhCYUJODjGO/gDD1k9KKJYjc7jPdFqMher63U3eWxjG+5ojrBc0KKbg0OEy2gG/GsCUE39i
 FGUn+RNbB9aiAWNECvIaKVcaWL2YhAoXljZ35wzG/PKa46thAoDILN7pxdl+Ceia+WvnKLnzpJQ
 RRePmbZcSofAl2BYSeANv8jfCdkNZ0DYU5IPTswu3EFNg0+3QT6zLjHJMCAPNlrRrHJmFpOKR8g
 LcDQuFKP
X-Authority-Analysis: v=2.4 cv=IIMCChvG c=1 sm=1 tr=0 ts=68a0c986 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=ss7acsNiZ-28_-SBEVcA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: O81WbRlg5I7cHk7-rr_apEn6hkReuUkI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 clxscore=1015 impostorscore=0 phishscore=0
 adultscore=0 malwarescore=0 bulkscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160045

On Sun, Aug 17, 2025 at 01:22:07AM +0800, Icenowy Zheng wrote:
> 在 2025-08-17星期日的 00:48 +0800，Icenowy Zheng写道：
> > 在 2025-08-16星期六的 19:18 +0300，Dmitry Baryshkov写道：
> > > On Fri, Aug 15, 2025 at 12:40:43AM +0800, Icenowy Zheng wrote:
> > > > This is a from-scratch driver targeting Verisilicon DC-series
> > > > display
> > > > controllers, which feature self-identification functionality like
> > > > their
> > > > GC-series GPUs.
> > > > 
> > > > Only DC8200 is being supported now, and only the main framebuffer
> > > > is set
> > > > up (as the DRM primary plane). Support for more DC models and
> > > > more
> > > > features is my further targets.
> > > > 
> > > > As the display controller is delivered to SoC vendors as a whole
> > > > part,
> > > > this driver does not use component framework and extra bridges
> > > > inside a
> > > > SoC is expected to be implemented as dedicated bridges (this
> > > > driver
> > > > properly supports bridge chaining).
> > > > 
> > > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > > ---
> > > >  drivers/gpu/drm/Kconfig                       |   2 +
> > > >  drivers/gpu/drm/Makefile                      |   1 +
> > > >  drivers/gpu/drm/verisilicon/Kconfig           |  15 +
> > > >  drivers/gpu/drm/verisilicon/Makefile          |   5 +
> > > >  drivers/gpu/drm/verisilicon/vs_bridge.c       | 330
> > > > ++++++++++++++++++
> > > >  drivers/gpu/drm/verisilicon/vs_bridge.h       |  40 +++
> > > >  drivers/gpu/drm/verisilicon/vs_bridge_regs.h  |  47 +++
> > > >  drivers/gpu/drm/verisilicon/vs_crtc.c         | 217 ++++++++++++
> > > >  drivers/gpu/drm/verisilicon/vs_crtc.h         |  29 ++
> > > >  drivers/gpu/drm/verisilicon/vs_crtc_regs.h    |  60 ++++
> > > >  drivers/gpu/drm/verisilicon/vs_dc.c           | 233
> > > > +++++++++++++
> > > >  drivers/gpu/drm/verisilicon/vs_dc.h           |  39 +++
> > > >  drivers/gpu/drm/verisilicon/vs_dc_top_regs.h  |  27 ++
> > > >  drivers/gpu/drm/verisilicon/vs_drm.c          | 177 ++++++++++
> > > >  drivers/gpu/drm/verisilicon/vs_drm.h          |  29 ++
> > > >  drivers/gpu/drm/verisilicon/vs_hwdb.c         | 150 ++++++++
> > > >  drivers/gpu/drm/verisilicon/vs_hwdb.h         |  29 ++
> > > >  drivers/gpu/drm/verisilicon/vs_plane.c        | 102 ++++++
> > > >  drivers/gpu/drm/verisilicon/vs_plane.h        |  68 ++++
> > > >  .../gpu/drm/verisilicon/vs_primary_plane.c    | 166 +++++++++
> > > >  .../drm/verisilicon/vs_primary_plane_regs.h   |  53 +++
> > > >  21 files changed, 1819 insertions(+)
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/Makefile
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge_regs.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc_regs.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.h
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
> > > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
> > > >  create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > > >  create mode 100644
> > > > drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
> > > > 
> > > > diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
> > > > index f7ea8e895c0c0..33601485ecdba 100644
> > > > --- a/drivers/gpu/drm/Kconfig
> > > > +++ b/drivers/gpu/drm/Kconfig
> > > > @@ -396,6 +396,8 @@ source "drivers/gpu/drm/sprd/Kconfig"
> > > >  
> > > >  source "drivers/gpu/drm/imagination/Kconfig"
> > > >  
> > > > +source "drivers/gpu/drm/verisilicon/Kconfig"
> > > > +
> > > >  config DRM_HYPERV
> > > >         tristate "DRM Support for Hyper-V synthetic video device"
> > > >         depends on DRM && PCI && HYPERV
> > > > diff --git a/drivers/gpu/drm/Makefile b/drivers/gpu/drm/Makefile
> > > > index 4dafbdc8f86ac..32ed4cf9df1bd 100644
> > > > --- a/drivers/gpu/drm/Makefile
> > > > +++ b/drivers/gpu/drm/Makefile
> > > > @@ -231,6 +231,7 @@ obj-y                       += solomon/
> > > >  obj-$(CONFIG_DRM_SPRD) += sprd/
> > > >  obj-$(CONFIG_DRM_LOONGSON) += loongson/
> > > >  obj-$(CONFIG_DRM_POWERVR) += imagination/
> > > > +obj-$(CONFIG_DRM_VERISILICON_DC) += verisilicon/
> > > >  
> > > >  # Ensure drm headers are self-contained and pass kernel-doc
> > > >  hdrtest-files := \
> > > > diff --git a/drivers/gpu/drm/verisilicon/Kconfig
> > > > b/drivers/gpu/drm/verisilicon/Kconfig
> > > > new file mode 100644
> > > > index 0000000000000..0235577c72824
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/verisilicon/Kconfig
> > > > @@ -0,0 +1,15 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only
> > > > +config DRM_VERISILICON_DC
> > > > +       tristate "DRM Support for Verisilicon DC-series display
> > > > controllers"
> > > > +       depends on DRM && COMMON_CLK
> > > > +       depends on RISCV || COMPILER_TEST
> > > > +       select DRM_CLIENT_SELECTION
> > > > +       select DRM_GEM_DMA_HELPER
> > > > +       select DRM_KMS_HELPER
> > > > +       select DRM_BRIDGE_CONNECTOR
> > > > +       select REGMAP_MMIO
> > > > +       select VIDEOMODE_HELPERS
> > > > +       help
> > > > +         Choose this option if you have a SoC with Verisilicon
> > > > DC-
> > > > series
> > > > +         display controllers. If M is selected, the module will
> > > > be
> > > > called
> > > > +         verisilicon-dc.
> > > > diff --git a/drivers/gpu/drm/verisilicon/Makefile
> > > > b/drivers/gpu/drm/verisilicon/Makefile
> > > > new file mode 100644
> > > > index 0000000000000..fd8d805fbcde1
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/verisilicon/Makefile
> > > > @@ -0,0 +1,5 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only
> > > > +
> > > > +verisilicon-dc-objs := vs_bridge.o vs_crtc.o vs_dc.o vs_drm.o
> > > > vs_hwdb.o vs_plane.o vs_primary_plane.o
> > > > +
> > > > +obj-$(CONFIG_DRM_VERISILICON_DC) += verisilicon-dc.o
> > > > diff --git a/drivers/gpu/drm/verisilicon/vs_bridge.c
> > > > b/drivers/gpu/drm/verisilicon/vs_bridge.c
> > > > new file mode 100644
> > > > index 0000000000000..c8caf31fac7d6
> > > > --- /dev/null
> > > > +++ b/drivers/gpu/drm/verisilicon/vs_bridge.c
> > > > @@ -0,0 +1,330 @@
> > > > +// SPDX-License-Identifier: GPL-2.0-only
> > > > +/*
> > > > + * Copyright (C) 2025 Icenowy Zheng <uwu@icenowy.me>
> > > > + */
> > > > +
> > > > +#include <linux/of.h>
> > > > +#include <linux/regmap.h>
> > > > +
> > > > +#include <uapi/linux/media-bus-format.h>
> > > > +
> > > > +#include <drm/drm_atomic.h>
> > > > +#include <drm/drm_atomic_helper.h>
> > > > +#include <drm/drm_bridge.h>
> > > > +#include <drm/drm_bridge_connector.h>
> > > > +#include <drm/drm_connector.h>
> > > > +#include <drm/drm_encoder.h>
> > > > +#include <drm/drm_of.h>
> > > > +#include <drm/drm_print.h>
> > > > +#include <drm/drm_simple_kms_helper.h>
> > > > +
> > > > +#include "vs_bridge.h"
> > > > +#include "vs_bridge_regs.h"
> > > > +#include "vs_crtc.h"
> > > > +#include "vs_dc.h"
> > > > +
> > > > +static int vs_bridge_attach(struct drm_bridge *bridge,
> > > > +                           struct drm_encoder *encoder,
> > > > +                           enum drm_bridge_attach_flags flags)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +
> > > > +       return drm_bridge_attach(encoder, vbridge->next,
> > > > +                                bridge, flags);
> > > > +}
> > > > +
> > > > +struct vsdc_dp_format {
> > > > +       u32 linux_fmt;
> > > > +       bool is_yuv;
> > > > +       u32 vsdc_fmt;
> > > > +};
> > > > +
> > > > +static struct vsdc_dp_format vsdc_dp_supported_fmts[] = {
> > > > +       /* default to RGB888 */
> > > > +       { MEDIA_BUS_FMT_FIXED, false,
> > > > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
> > > > +       { MEDIA_BUS_FMT_RGB888_1X24, false,
> > > > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
> > > > +       { MEDIA_BUS_FMT_RGB565_1X16, false,
> > > > VSDC_DISP_DP_CONFIG_FMT_RGB565 },
> > > > +       { MEDIA_BUS_FMT_RGB666_1X18, false,
> > > > VSDC_DISP_DP_CONFIG_FMT_RGB666 },
> > > > +       { MEDIA_BUS_FMT_RGB888_1X24, false,
> > > > VSDC_DISP_DP_CONFIG_FMT_RGB888 },
> > > > +       { MEDIA_BUS_FMT_RGB101010_1X30,
> > > > +         false, VSDC_DISP_DP_CONFIG_FMT_RGB101010 },
> > > > +       { MEDIA_BUS_FMT_UYVY8_1X16, true,
> > > > VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY8 },
> > > > +       { MEDIA_BUS_FMT_UYVY10_1X20, true,
> > > > VSDC_DISP_DP_CONFIG_YUV_FMT_UYVY10 },
> > > > +       { MEDIA_BUS_FMT_YUV8_1X24, true,
> > > > VSDC_DISP_DP_CONFIG_YUV_FMT_YUV8 },
> > > > +       { MEDIA_BUS_FMT_YUV10_1X30, true,
> > > > VSDC_DISP_DP_CONFIG_YUV_FMT_YUV10 },
> > > > +       { MEDIA_BUS_FMT_UYYVYY8_0_5X24,
> > > > +         true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY8 },
> > > > +       { MEDIA_BUS_FMT_UYYVYY10_0_5X30,
> > > > +         true, VSDC_DISP_DP_CONFIG_YUV_FMT_UYYVYY10 },
> > > > +};
> > > > +
> > > > +static u32 *vs_bridge_atomic_get_output_bus_fmts(struct
> > > > drm_bridge
> > > > *bridge,
> > > > +                                       struct drm_bridge_state
> > > > *bridge_state,
> > > > +                                       struct drm_crtc_state
> > > > *crtc_state,
> > > > +                                       struct
> > > > drm_connector_state
> > > > *conn_state,
> > > > +                                       unsigned int
> > > > *num_output_fmts)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +       struct drm_connector *conn = conn_state->connector;
> > > > +       u32 *output_fmts;
> > > > +       unsigned int i;
> > > > +
> > > > +       if (vbridge->intf == VSDC_OUTPUT_INTERFACE_DPI)
> > > 
> > > This kind of checks looks like there should be a drm_encoder
> > > handled
> > > by
> > > the same driver. Or maybe it's better to have two sets of funcs
> > > structures, one for the DPI, one for DP.
> > 
> > Well these functions used to be for an encoder, however I found that
> > encoders cannot take part in format negotiation, and at least some
> > source says encoder is deprecated in this situation and a first
> > bridge
> > in the bridge chain is better here.
> > 
> > A simple encoder is created by this part of driver, but all its works
> > are moved to this bridge, similar to what other drivers with bridge
> > chaining support do.
> > 
> > > 
> > > > +               *num_output_fmts = 1;
> > > > +       else
> > > > +               *num_output_fmts =
> > > > ARRAY_SIZE(vsdc_dp_supported_fmts);
> > > > +
> > > > +       output_fmts = kcalloc(*num_output_fmts,
> > > > sizeof(*output_fmts),
> > > > +                             GFP_KERNEL);
> > > > +       if (!output_fmts)
> > > > +               return NULL;
> > > > +
> > > > +       if (vbridge->intf == VSDC_OUTPUT_INTERFACE_DPI) {
> > > > +               if (conn->display_info.num_bus_formats &&
> > > > +                   conn->display_info.bus_formats)
> > > > +                       output_fmts[0] = conn-
> > > > > display_info.bus_formats[0];
> > > > +               else
> > > > +                       output_fmts[0] = MEDIA_BUS_FMT_FIXED;
> > > > +       } else {
> > > > +               for (i = 0; i < *num_output_fmts; i++)
> > > > +                       output_fmts[i] =
> > > > vsdc_dp_supported_fmts[i].linux_fmt;
> > > 
> > > memcpy(a, b, min(ARRAY_SIZE(), num_output_fmts)) ?
> > 
> > vsdc_dp_supported_fmts is a map of linux_fmt to hardware-specific
> > parameter, so memcpy won't work here.
> > 
> > > 
> > > > +       }
> > > > +
> > > > +       return output_fmts;
> > > > +}
> > > > +
> > > > +static bool vs_bridge_out_dp_fmt_supported(u32 out_fmt)
> > > > +{
> > > > +       unsigned int i;
> > > > +
> > > > +       for (i = 0; i < ARRAY_SIZE(vsdc_dp_supported_fmts); i++)
> > > > +               if (vsdc_dp_supported_fmts[i].linux_fmt ==
> > > > out_fmt)
> > > 
> > > return true;
> > > 
> > > > +                       break;
> > > > +
> > > > +       return !(i == ARRAY_SIZE(vsdc_dp_supported_fmts));
> > > 
> > > return false;
> > > 
> > > > +}
> > > > +
> > > > +static u32 *vs_bridge_atomic_get_input_bus_fmts(struct
> > > > drm_bridge
> > > > *bridge,
> > > > +                                       struct drm_bridge_state
> > > > *bridge_state,
> > > > +                                       struct drm_crtc_state
> > > > *crtc_state,
> > > > +                                       struct
> > > > drm_connector_state
> > > > *conn_state,
> > > > +                                       u32 output_fmt,
> > > > +                                       unsigned int
> > > > *num_input_fmts)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +
> > > > +       if (vbridge->intf == VSDC_OUTPUT_INTERFACE_DP &&
> > > > +           !vs_bridge_out_dp_fmt_supported(output_fmt)) {
> > > > +               *num_input_fmts = 0;
> > > > +               return NULL;
> > > > +       }
> > > > +
> > > > +       return drm_atomic_helper_bridge_propagate_bus_fmt(bridge,
> > > > bridge_state,
> > > > +                                                        
> > > > crtc_state,
> > > > +                                                        
> > > > conn_state,
> > > > +                                                        
> > > > output_fmt,
> > > > +                                                        
> > > > num_input_fmts);
> > > > +}
> > > > +
> > > > +static int vs_bridge_atomic_check(struct drm_bridge *bridge,
> > > > +                                 struct drm_bridge_state
> > > > *bridge_state,
> > > > +                                 struct drm_crtc_state
> > > > *crtc_state,
> > > > +                                 struct drm_connector_state
> > > > *conn_state)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +
> > > > +       if (vbridge->intf == VSDC_OUTPUT_INTERFACE_DP &&
> > > > +           !vs_bridge_out_dp_fmt_supported(bridge_state-
> > > > > output_bus_cfg.format))
> > > > +               return -EINVAL;
> > > > +
> > > > +       vbridge->output_bus_fmt = bridge_state-
> > > > > output_bus_cfg.format;
> > > 
> > > You are saving a state value into a non-state variable. There is no
> > > guarantee that this atomic_check() will be followed by the actual
> > > commit. So, either you have to use a struct that extends
> > > drm_bridge_state here or store the output_bus_fmt during
> > > atomic_enable().
> > 
> > In fact I don't want to save it -- the kernel is quirky here and this
> > value does not get passed into atomic_enable. I mimicked what other
> > drivers do. See ingenic_drm_bridge_atomic_check() in ingenic/ingenic-
> > drm-drv.c and meson_encoder_hdmi_atomic_check() in
> > meson/meson_encoder_hdmi.c .
> > 
> > > 
> > > > +
> > > > +       return 0;
> > > > +}
> > > > +
> > > > +static void vs_bridge_atomic_enable(struct drm_bridge *bridge,
> > > > +                                   struct drm_atomic_state
> > > > *state)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +       struct drm_bridge_state *br_state =
> > > > drm_atomic_get_bridge_state(state,
> > > > +                                                                
> > > >   
> > > >      bridge);
> > > > +       struct vs_crtc *crtc = vbridge->crtc;
> > > > +       struct vs_dc *dc = crtc->dc;
> > > > +       unsigned int output = crtc->id;
> > > > +       u32 dp_fmt;
> > > > +       unsigned int i;
> > > > +
> > > > +       DRM_DEBUG_DRIVER("Enabling output %u\n", output);
> > > > +
> > > > +       switch (vbridge->intf) {
> > > > +       case VSDC_OUTPUT_INTERFACE_DPI:
> > > > +               regmap_clear_bits(dc->regs,
> > > > VSDC_DISP_DP_CONFIG(output),
> > > > +                                 VSDC_DISP_DP_CONFIG_DP_EN);
> > > > +               break;
> > > > +       case VSDC_OUTPUT_INTERFACE_DP:
> > > > +               for (i = 0; i <
> > > > ARRAY_SIZE(vsdc_dp_supported_fmts);
> > > > i++) {
> > > > +                       if (vsdc_dp_supported_fmts[i].linux_fmt
> > > > ==
> > > > +                           vbridge->output_bus_fmt)
> > > > +                               break;
> > > > +               }
> > > > +               WARN_ON_ONCE(i ==
> > > > ARRAY_SIZE(vsdc_dp_supported_fmts));
> > > > +               dp_fmt = vsdc_dp_supported_fmts[i].vsdc_fmt;
> > > 
> > > This might trigger all static checkers in the universe. It's not
> > > really
> > > possible, since you've checked it in the atomic_check(), but...
> > 
> > Sigh I don't know how to properly describe it...
> > 
> > I can only say something really bad happens if the previous
> > WARN_ON_ONCE is triggered.
> > 
> > > 
> > > > +               dp_fmt |= VSDC_DISP_DP_CONFIG_DP_EN;
> > > > +               regmap_write(dc->regs,
> > > > VSDC_DISP_DP_CONFIG(output),
> > > > dp_fmt);
> > > > +               regmap_assign_bits(dc->regs,
> > > > +                                 
> > > > VSDC_DISP_PANEL_CONFIG(output),
> > > > +                                  VSDC_DISP_PANEL_CONFIG_YUV,
> > > > +                                 
> > > > vsdc_dp_supported_fmts[i].is_yuv);
> > > > +               break;
> > > > +       }
> > > > +
> > > > +       regmap_clear_bits(dc->regs,
> > > > VSDC_DISP_PANEL_CONFIG(output),
> > > > +                         VSDC_DISP_PANEL_CONFIG_DAT_POL);
> > > > +       regmap_assign_bits(dc->regs,
> > > > VSDC_DISP_PANEL_CONFIG(output),
> > > > +                          VSDC_DISP_PANEL_CONFIG_DE_POL,
> > > > +                          br_state->output_bus_cfg.flags &
> > > > +                          DRM_BUS_FLAG_DE_LOW);
> > > > +       regmap_assign_bits(dc->regs,
> > > > VSDC_DISP_PANEL_CONFIG(output),
> > > > +                          VSDC_DISP_PANEL_CONFIG_CLK_POL,
> > > > +                          br_state->output_bus_cfg.flags &
> > > > +                          DRM_BUS_FLAG_PIXDATA_DRIVE_NEGEDGE);
> > > > +       regmap_set_bits(dc->regs, VSDC_DISP_PANEL_CONFIG(output),
> > > > +                       VSDC_DISP_PANEL_CONFIG_DE_EN |
> > > > +                       VSDC_DISP_PANEL_CONFIG_DAT_EN |
> > > > +                       VSDC_DISP_PANEL_CONFIG_CLK_EN);
> > > > +       regmap_set_bits(dc->regs, VSDC_DISP_PANEL_CONFIG(output),
> > > > +                       VSDC_DISP_PANEL_CONFIG_RUNNING);
> > > > +       regmap_clear_bits(dc->regs, VSDC_DISP_PANEL_START,
> > > > +                         VSDC_DISP_PANEL_START_MULTI_DISP_SYNC);
> > > > +       regmap_set_bits(dc->regs, VSDC_DISP_PANEL_START,
> > > > +                       VSDC_DISP_PANEL_START_RUNNING(output));
> > > > +
> > > > +       regmap_set_bits(dc->regs, VSDC_DISP_PANEL_CONFIG_EX(crtc-
> > > > > id),
> > > > +                       VSDC_DISP_PANEL_CONFIG_EX_COMMIT);
> > > > +}
> > > > +
> > > > +static void vs_bridge_atomic_disable(struct drm_bridge *bridge,
> > > > +                                    struct drm_atomic_state
> > > > *state)
> > > > +{
> > > > +       struct vs_bridge *vbridge =
> > > > drm_bridge_to_vs_bridge(bridge);
> > > > +       struct vs_crtc *crtc = vbridge->crtc;
> > > > +       struct vs_dc *dc = crtc->dc;
> > > > +       unsigned int output = crtc->id;
> > > > +
> > > > +       DRM_DEBUG_DRIVER("Disabling output %u\n", output);
> > > > +
> > > > +       regmap_clear_bits(dc->regs, VSDC_DISP_PANEL_START,
> > > > +                         VSDC_DISP_PANEL_START_MULTI_DISP_SYNC |
> > > > +                         VSDC_DISP_PANEL_START_RUNNING(output));
> > > > +       regmap_clear_bits(dc->regs,
> > > > VSDC_DISP_PANEL_CONFIG(output),
> > > > +                         VSDC_DISP_PANEL_CONFIG_RUNNING);
> > > > +
> > > > +       regmap_set_bits(dc->regs, VSDC_DISP_PANEL_CONFIG_EX(crtc-
> > > > > id),
> > > > +                       VSDC_DISP_PANEL_CONFIG_EX_COMMIT);
> > > > +}
> > > > +
> > > > +static const struct drm_bridge_funcs vs_bridge_funcs = {
> > > > +       .attach = vs_bridge_attach,
> > > > +       .atomic_enable = vs_bridge_atomic_enable,
> > > > +       .atomic_disable = vs_bridge_atomic_disable,
> > > > +       .atomic_check = vs_bridge_atomic_check,
> > > > +       .atomic_get_input_bus_fmts =
> > > > vs_bridge_atomic_get_input_bus_fmts,
> > > > +       .atomic_get_output_bus_fmts =
> > > > vs_bridge_atomic_get_output_bus_fmts,
> > > > +       .atomic_duplicate_state =
> > > > drm_atomic_helper_bridge_duplicate_state,
> > > > +       .atomic_destroy_state =
> > > > drm_atomic_helper_bridge_destroy_state,
> > > > +       .atomic_reset = drm_atomic_helper_bridge_reset,
> > > > +};
> > > > +
> > > > +static int vs_bridge_detect_output_interface(struct device_node
> > > > *of_node,
> > > > +                                            unsigned int output)
> > > > +{
> > > > +       int ret;
> > > > +       struct device_node *remote;
> > > > +
> > > > +       remote = of_graph_get_remote_node(of_node, output,
> > > > +                                        
> > > > VSDC_OUTPUT_INTERFACE_DPI);
> > > 
> > > This deserves a comment in the source file.
> > > 
> > > > +       if (remote) {
> > > > +               ret = VSDC_OUTPUT_INTERFACE_DPI;
> > > 
> > > return here, drop else{}
> > 
> > Well a of_node_put() is missing before the final return, and Yao Zi
> > noted me of it.
> > 
> > > 
> > > > +       } else {
> > > > +               remote = of_graph_get_remote_node(of_node,
> > > > output,
> > > > +                                                
> > > > VSDC_OUTPUT_INTERFACE_DP);
> > > > +               if (remote)
> > > > +                       ret = VSDC_OUTPUT_INTERFACE_DP;
> > > 
> > > return
> > > 
> > > > +               else
> > > > +                       ret = -ENODEV;
> > > > +       }
> > > > +
> > > > +       return ret;
> > > > +}
> > > > +
> > > > +struct vs_bridge *vs_bridge_init(struct drm_device *drm_dev,
> > > > +                                struct vs_crtc *crtc)
> > > > +{
> > > > +       unsigned int output = crtc->id;
> > > > +       struct vs_bridge *bridge;
> > > > +       struct drm_bridge *next;
> > > > +       enum vs_bridge_output_interface intf;
> > > > +       int ret;
> > > > +
> > > > +       intf = vs_bridge_detect_output_interface(drm_dev->dev-
> > > > > of_node,
> > > > +                                                output);
> > > > +       if (intf == -ENODEV) {
> > > > +               dev_info(drm_dev->dev, "Skipping output %u\n",
> > > > output);
> > > > +               return NULL;
> > > > +       }
> > > > +
> > > > +       bridge = devm_kzalloc(drm_dev->dev, sizeof(*bridge),
> > > > GFP_KERNEL);
> > > 
> > > devm_drm_bridge_alloc()
> > > 
> > > > +       if (!bridge)
> > > > +               return ERR_PTR(-ENOMEM);
> > > > +
> > > > +       bridge->crtc = crtc;
> > > > +       bridge->intf = intf;
> > > > +       bridge->base.funcs = &vs_bridge_funcs;
> > > > +
> > > > +       next = devm_drm_of_get_bridge(drm_dev->dev, drm_dev->dev-
> > > > > of_node,
> > > > +                                     output, intf);
> > > > +       if (IS_ERR(next)) {
> > > > +               ret = PTR_ERR(next);
> > > > +               goto err_free_bridge;
> > > > +       }
> > > > +
> > > > +       bridge->next = next;
> > > > +
> > > > +       ret = drm_simple_encoder_init(drm_dev, &bridge->enc,
> > > 
> > > Oh, so there is an encoder... Please drop drm_simple_encoder, it's
> > > deprecated, and try moving all the ifs to the encoder funcs.
> > 
> > Ah? Is it really deprecated? I can find no source of this
> > deprecation.
> > 
> > In addition, I think many drivers here are using a bridge as a
> > "better
> > encoder" because of the restriction of current encoder
> > implementation,
> > and I am doing the same thing. Either encoder functionality should be
> > improved to on par with bridge, or such dummy encoders with a bridge
> > should exist, and some helper for creating them should exist. It
> > might
> > be not drm_simple_encoder_init (because I can understand the
> > deprecation of other parts of the simple-kms routines, although I see
> > no formal documentation mentioning it's deprecated, maybe I missed
> > some
> > newspaper?), but it should exist.
> 
> I see some practice of passing NULL to drmm_plain_encoder_alloc() from
> the adp driver, however looks like this isn't always safe and on my
> test of this change on top of verisilicon driver (on top of v6.17-rc1)
> I got mysterious oops if the DC driver happens to be probed before the
> HDMI controller driver:

I think you can pass NULL for funcs only if you use drmm_* functions to
handle encoder. This way it gets cleaned before
drm_mode_config_cleanup() gets called.

> [   28.519454] [<ffffffff807d7016>] drm_mode_config_cleanup+0xc6/0x224
> [   28.525754] [<ffffffff807d75f8>]
> drm_mode_config_init_release+0xc/0x14
> [   28.532312] [<ffffffff807d5b8e>] drm_managed_release+0x7a/0x100
> [   28.538257] [<ffffffff807c6b9a>] devm_drm_dev_init_release+0x62/0x78



-- 
With best wishes
Dmitry

