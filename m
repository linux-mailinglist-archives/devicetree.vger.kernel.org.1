Return-Path: <devicetree+bounces-220286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFD3B93EBD
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 03:59:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E39118A4A8F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 01:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A1F826E717;
	Tue, 23 Sep 2025 01:58:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UqevwbKu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55494946C
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:58:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758592712; cv=none; b=bxmD7+sGaNCu95Eq94BGjcsJtfO4DPMqk5QNHbEpl9ejN4SSYDjRWUOLenRulnHWC7eXWDTbdSFNOUum+gZ5U9kuZTWkt92TBSdTYv7F+G5Io0uWuXxUscH/iJoGk4xZJdwTB09qq4CfxVhGFF0ggNlwbkP/GmQgBoQfR72Jnn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758592712; c=relaxed/simple;
	bh=Ez+2+z9s2cZ3Ks+zfr6d2CtjABwPPY0+0vnJRhDSqjA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WEhXbbf7Fkf/1eOLseCrAZQ4Y9612cv8NtEaKr7318Kmt29zx0DvKeAQgkZusB80ZXXQrVFaevBUGcpPPWOb/zPCuyacULwAs0y+j6u6ksQZMVLSWE/ME9QfH8OkAaGyCat5Homkgh87rV0g03zFz9zZrjt1XitybaxUTtLiD28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UqevwbKu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58MGxmgt024020
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:58:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wjZBpcuck2b3wq2R80w3BXiH3NCwuHgMqXfKHFPCfUw=; b=UqevwbKuVrII/QtV
	nwG11NVaZ1R6HuGxJB/01OGjPm2+eEpRGoK+UolPuBI21JvO3GbVEISDIWjZKeLS
	BPENgATFfm/GL+JUgAFomijvrXZennRbZFnnHvbk937sIebZrXINrxRg6WIyt+Fx
	vLVxw5PKkSGAOif2n2Dpx93ljmphbhm1V9aoLMq8LUWysIZJ1L6bjS5+unjePSQS
	amv4yZDARGHBEzXfLp7u6kZWmkOcJkM9gyGFG1I8d5sofY5PdckFzlCeOn/DyDgZ
	NJlahtyP157t1jxmC/a2AjY+9MwqXgrQo4fZO5EBHqCobtwgW/HAXaLyzaedJuLA
	0iwkeQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kv0xsdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 01:58:27 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-798ab08dde5so65463766d6.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 18:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758592707; x=1759197507;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wjZBpcuck2b3wq2R80w3BXiH3NCwuHgMqXfKHFPCfUw=;
        b=cbT2YetTQ6EQvMqOg3wYb6sUsRcgKBwRSQ5i7MQrn9ux32fNkBg+hca3za1CsDSwx/
         spQ68pnCoSXuVNnjAp/LPWfk+I53ohGIUrWM/+Wbu9SBm4xMNlUcAA4RJY06Mm887hNV
         GIuiMi32CqmrZTPKiCca6/Wj736FYrJvzLSsYamXCge0qv2geeEqZKXK9bIV6A8xBPoR
         ZEPl5eFEBtMYFob6d1L4koBy3w6jHpat2fkyCBsgtflVgcU5Ic1ph/v+mM0U2MWpn0Xq
         2tTaE0zhhngRhKmvfSd9KNVxPePhLQxtcxwxC+lxp6zCP+qMVTuTQfK3HomgLVuTI/2V
         gQWw==
X-Forwarded-Encrypted: i=1; AJvYcCUp0yTbQWDncffdiZGEGYxvfae5sQX58+ra/OjXWpNLlWvz9xuG/+TDJZ3AoLcl7fjekgpEVbzhNcWb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzyd9CxzfPZ1Nvwdx2b/q4jmjlmjxq9mv0y8wLnsEDdoTd4+eW2
	1RTKWuGWNuhVWZPFEissML/FkRcU2dSrR0l79VDzHQof5ft8qgZ2RjtWLqqR8X7Ro9npJDoJJpi
	C9gp54EKD9j89qGjgDNc/+VlBKe/BUwP8ZKpYZH4MSBkwW0hVf57UKnIO95wU/+63
X-Gm-Gg: ASbGncvUq47rvj9pcL0a6HHH/vjkJQARV2B3F0CmisN16uFUxHc8wEB8PP2vLkiFm7I
	gro9H1k02bC4Qk5om3h87x3+RQY6MmUtJGHtyReQEkbaXepRR7o6llZwtCjiLqQnFKEpjpuGjEa
	z4iiHRvnzWWfN9vGsjxj3Kus9rbZZcQ5AGNafUSjMBnvl8ERJX+gPY5i5fNE7/ht0T5cHUoWApq
	FhCFlhJpEFSndn5o8glPIrmorDGg6F93ta8EDXPsEumr/ANJW+0+e+x4SOGoM3N9ZEqX27EfpFU
	IgGUi5jiw1slIDPawvh219jozseFgXutKWYpWd1ZtvGzZTAEN2mCAaPUN1DPgVy/RFFz5sfHkSu
	XWziH6++XUJLDYJl7tDybOEqY/WjJqHBpR5UqAwZDq3NO+Dvawct5
X-Received: by 2002:a05:6214:f6c:b0:78e:ea84:768f with SMTP id 6a1803df08f44-7e705d7bf47mr11042976d6.30.1758592706905;
        Mon, 22 Sep 2025 18:58:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG2UHfHXJZyQ10p2X6Fpt5TanjCh8LeDMIwT7ePmjsHI9tTKDN1phKB8vhk3eST38TyWHjFsw==
X-Received: by 2002:a05:6214:f6c:b0:78e:ea84:768f with SMTP id 6a1803df08f44-7e705d7bf47mr11042766d6.30.1758592706397;
        Mon, 22 Sep 2025 18:58:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e80683e89sm1357059e87.95.2025.09.22.18.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 18:58:25 -0700 (PDT)
Date: Tue, 23 Sep 2025 04:58:23 +0300
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
Subject: Re: [PATCH v2 3/8] drm: verisilicon: add a driver for Verisilicon
 display controllers
Message-ID: <7zswcrcfsypbd36mddslreeli2zbrn33nyqkxmwdufakhl2vgm@bb6i6zfgeznh>
References: <20250921083446.790374-1-uwu@icenowy.me>
 <20250921083446.790374-4-uwu@icenowy.me>
 <a46szgmjrwgqhv5issuijyvih4tof3xa45tdhxv4qjplekszpz@55tgbkeby7zr>
 <dacdfabb30fae413949d8bde28a709096ecda4c7.camel@icenowy.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dacdfabb30fae413949d8bde28a709096ecda4c7.camel@icenowy.me>
X-Proofpoint-GUID: uVBNliW-S4JdqeAUfNgin4EeJ9Fq_AWi
X-Authority-Analysis: v=2.4 cv=RO2zH5i+ c=1 sm=1 tr=0 ts=68d1fec4 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=yJojWOMRYYMA:10 a=ZNbfwUPgZe5FKaAedJYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyNSBTYWx0ZWRfX+Mc7hVZJaOyI
 QyQisxjujRgSMgvN+0oV9Do+k6i/1tIw/ZaZ0nIFuFANF1+BhvFHbLW7Ez7J8kz06EAHCva7ZE9
 zMQnWx0eyUJCffsoJlJFw4T92x9CuBPWd9ZvJxPGReDrErLfgBKWkUGDzRnjF4Z8BBsOVNH4aB9
 y4a5A6GpI1AsWPkvrERHEIPzrSnG7T2VreSTI2csaCryS0PG+NSVn7nxGJWhSLSTi2s1u8p74Ep
 aheaU9NOE2qcTbGxyj7fvO13R8hKoxfgJejwUym5S1Gf4KxW50Nj1BySn2nPIboTgI9Ym34nPOU
 Mxn64LLXzHwjsW+gIeTjzj+dC+F17pc05ric+Cf5BkSF/Qo6pscnKgWktryFOAgQpI1p/ZdQTbE
 c6ZQaOHN
X-Proofpoint-ORIG-GUID: uVBNliW-S4JdqeAUfNgin4EeJ9Fq_AWi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_01,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 impostorscore=0 spamscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200025

On Tue, Sep 23, 2025 at 09:10:28AM +0800, Icenowy Zheng wrote:
> 在 2025-09-23星期二的 03:53 +0300，Dmitry Baryshkov写道：
> > On Sun, Sep 21, 2025 at 04:34:41PM +0800, Icenowy Zheng wrote:
> > > This is a from-scratch driver targeting Verisilicon DC-series
> > > display
> > > controllers, which feature self-identification functionality like
> > > their
> > > GC-series GPUs.
> > > 
> > > Only DC8200 is being supported now, and only the main framebuffer
> > > is set
> > > up (as the DRM primary plane). Support for more DC models and more
> > > features is my further targets.
> > > 
> > > As the display controller is delivered to SoC vendors as a whole
> > > part,
> > > this driver does not use component framework and extra bridges
> > > inside a
> > > SoC is expected to be implemented as dedicated bridges (this driver
> > > properly supports bridge chaining).
> > > 
> > > Signed-off-by: Icenowy Zheng <uwu@icenowy.me>
> > > ---
> > > Changes in v2:
> > > - Changed some Control flows according to previous reviews.
> > > - Added missing of_node_put when checking of endpoints for output
> > > type.
> > > - Switched all userspace-visible modeset objects to be managed by
> > > drmm
> > >   instead of devm.
> > > - Utilize devm_drm_bridge_alloc() in internal bridge.
> > > - Prevented the usage of simple encoder helpers by passing a NULL
> > > funcs pointer.
> > > - Let devm enable clocks when getting them.
> > > - Removed explicit `.cache_type = REGCACHE_NONE` in regmap config.
> > > - Fixed a debug print using a variable before initialization.
> > > - Fixed a wrong index when using bulk to handle resets.
> > > - Added missing configuration for DPI format (currently fixed
> > > RGB888).
> > > 
> > >  drivers/gpu/drm/Kconfig                       |   2 +
> > >  drivers/gpu/drm/Makefile                      |   1 +
> > >  drivers/gpu/drm/verisilicon/Kconfig           |  15 +
> > >  drivers/gpu/drm/verisilicon/Makefile          |   5 +
> > >  drivers/gpu/drm/verisilicon/vs_bridge.c       | 330
> > > ++++++++++++++++++
> > >  drivers/gpu/drm/verisilicon/vs_bridge.h       |  40 +++
> > >  drivers/gpu/drm/verisilicon/vs_bridge_regs.h  |  54 +++
> > >  drivers/gpu/drm/verisilicon/vs_crtc.c         | 217 ++++++++++++
> > >  drivers/gpu/drm/verisilicon/vs_crtc.h         |  29 ++
> > >  drivers/gpu/drm/verisilicon/vs_crtc_regs.h    |  60 ++++
> > >  drivers/gpu/drm/verisilicon/vs_dc.c           | 205 +++++++++++
> > >  drivers/gpu/drm/verisilicon/vs_dc.h           |  39 +++
> > >  drivers/gpu/drm/verisilicon/vs_dc_top_regs.h  |  27 ++
> > >  drivers/gpu/drm/verisilicon/vs_drm.c          | 177 ++++++++++
> > >  drivers/gpu/drm/verisilicon/vs_drm.h          |  29 ++
> > >  drivers/gpu/drm/verisilicon/vs_hwdb.c         | 150 ++++++++
> > >  drivers/gpu/drm/verisilicon/vs_hwdb.h         |  29 ++
> > >  drivers/gpu/drm/verisilicon/vs_plane.c        | 102 ++++++
> > >  drivers/gpu/drm/verisilicon/vs_plane.h        |  68 ++++
> > >  .../gpu/drm/verisilicon/vs_primary_plane.c    | 157 +++++++++
> > >  .../drm/verisilicon/vs_primary_plane_regs.h   |  53 +++
> > >  21 files changed, 1789 insertions(+)
> > >  create mode 100644 drivers/gpu/drm/verisilicon/Kconfig
> > >  create mode 100644 drivers/gpu/drm/verisilicon/Makefile
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_bridge_regs.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_crtc_regs.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_dc_top_regs.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_drm.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_hwdb.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.c
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_plane.h
> > >  create mode 100644 drivers/gpu/drm/verisilicon/vs_primary_plane.c
> > >  create mode 100644
> > > drivers/gpu/drm/verisilicon/vs_primary_plane_regs.h
> > > 
> > > +
> > > +static int vs_bridge_atomic_check(struct drm_bridge *bridge,
> > > +                                 struct drm_bridge_state
> > > *bridge_state,
> > > +                                 struct drm_crtc_state
> > > *crtc_state,
> > > +                                 struct drm_connector_state
> > > *conn_state)
> > > +{
> > > +       struct vs_bridge *vbridge =
> > > drm_bridge_to_vs_bridge(bridge);
> > > +
> > > +       if (vbridge->intf == VSDC_OUTPUT_INTERFACE_DP &&
> > > +           !vs_bridge_out_dp_fmt_supported(bridge_state-
> > > >output_bus_cfg.format))
> > > +               return -EINVAL;
> > 
> > I still think that it's better to have per-interface type bridge
> > funcs
> > rather than checking for the interface type inside the function.
> > 
> > > +
> > > +       vbridge->output_bus_fmt = bridge_state-
> > > >output_bus_cfg.format;
> > > +
> > > +       return 0;
> > > +}
> > > +
> > > +
> > > +       bridge = devm_drm_bridge_alloc(drm_dev->dev, struct
> > > vs_bridge, base,
> > > +                                      &vs_bridge_funcs);
> > > +       if (!bridge)
> > > +               return ERR_PTR(-ENOMEM);
> > > +
> > > +       bridge->crtc = crtc;
> > > +       bridge->intf = intf;
> > > +       bridge->next = next;
> > > +
> > > +       if (intf == VSDC_OUTPUT_INTERFACE_DPI)
> > > +               enctype = DRM_MODE_ENCODER_DPI;
> > > +       else
> > > +               enctype = DRM_MODE_ENCODER_NONE;
> > 
> > Nit: DRM_MODE_ENCODER_TMDS ?
> 
> The DC it self never encodes TMDS, and although most SoC connect the DP
> interface to HDMI TX controllers, it's theortically to use other
> bridges here (e.g. DP TX controllers).

But NONE also doesn't sound completely correct here. Anyway, this is
really a minor thing, so feel free to ignore this comment.

> 
> > 
> > > +
> > > +       bridge->enc = drmm_plain_encoder_alloc(drm_dev, NULL,
> > > enctype, NULL);
> > > +       if (IS_ERR(bridge->enc)) {
> > > +               dev_err(drm_dev->dev,
> > > +                       "Cannot initialize encoder for output
> > > %u\n", output);
> > > +               ret = PTR_ERR(bridge->enc);
> > > +               return ERR_PTR(ret);
> > > +       }
> > > +
> > > +       bridge->enc->possible_crtcs = drm_crtc_mask(&crtc->base);
> > > +
> > > +       ret = drm_bridge_attach(bridge->enc, &bridge->base, NULL,
> > > +                               DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> > > +       if (ret) {
> > > +               dev_err(drm_dev->dev,
> > > +                       "Cannot attach bridge for output %u\n",
> > > output);
> > > +               return ERR_PTR(ret);
> > > +       }
> > > +
> > > +       bridge->conn = drm_bridge_connector_init(drm_dev, bridge-
> > > >enc);
> > > +       if (IS_ERR(bridge->conn)) {
> > > +               dev_err(drm_dev->dev,
> > > +                       "Cannot create connector for output %u\n",
> > > output);
> > > +               ret = PTR_ERR(bridge->conn);
> > > +               return ERR_PTR(ret);
> > > +       }
> > > +       drm_connector_attach_encoder(bridge->conn, bridge->enc);
> > > +
> > > +       return bridge;
> > > +}
> > 
> > Other than that LGTM.
> > 
> 

-- 
With best wishes
Dmitry

