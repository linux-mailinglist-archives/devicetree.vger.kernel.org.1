Return-Path: <devicetree+bounces-116466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A35349B2FF7
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 13:19:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7E641C21985
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1CA1D79B1;
	Mon, 28 Oct 2024 12:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="M54QznVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 444541922DD
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 12:19:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730117967; cv=none; b=Q+eydM55X9X5gKhcgzmk5kB7dT7KOmr2zyJJV5/fqaWiM69XW4+lkZGmDN2ZnME0pZvUBpY2Yc2fL9M/V4O1mV9H2+Mn8IiHuyhg50QUcKdMe2Ma1Yedu9P6C+4f05XFHOkOTS8lFnbZ1tPwakrgT0T6+nq70xWOu4vjg+oipjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730117967; c=relaxed/simple;
	bh=GXWGcR0pyZQhCcbI+Gc3gunB3SMdKAUS2ZKBSmfDDXY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZR+XClYFAGHP/dlsGCykgFvclwbmulMnv8VT4HN9SWa3iC/5Wh/UUTlhUDBfxVQA1Zk4EJFJNsUgFxy56vDrd6Vux4Hl/ceD0N7Vv8scCU9fVYQ3q8QzwjUYo1mi/bgLQVJJG+1bCWlD/brPIkeLP3r3MN+Lh0Indc+cRv42hPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=M54QznVP; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-53b1fbb8be5so4215350e87.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 05:19:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730117963; x=1730722763; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kewq0jun/sKTyFEkBiL9iXhIasxDz8VGr2qCbe0+u6U=;
        b=M54QznVPBSqJkn7JRvwzrJIua9+HDQZtCJagYVs9YKxT/VtfJF597CQTesQgusnc2Z
         G4/kYEQIMPJnoCL7/NIbDTi49VqI6qVRHB23e2cT/j/eQm9NirplGbLVm7n9m/xj+KRR
         HUpM2/c/jpXZFZnPo0MVl4KSw4DgoGkpk/a0ifYOVFV54DfIhiXaxKaKlXSzUCKRassx
         00+J5XAs1GUMJUU11FhIq1+49VETveRs1Uxpf0epokEo+1wbZVQi2qH3+twOmSpk1Tr6
         WQV7lwcf/c/zaGlR4RTFSM72a+tN3ABJ5R7+7onyig/UilfRTLZTT3UeGJfoZx6AWM26
         WLmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730117963; x=1730722763;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kewq0jun/sKTyFEkBiL9iXhIasxDz8VGr2qCbe0+u6U=;
        b=b43gIumD3aOjmZZbpkbV+msizV0q1myIEaHZ/SPY39MBCNTN+iJ3SANS6urqDHIV8d
         Q4yWDRslZ7mPQDYCmQARSXmOBGu6viE5knUaxhpwW2m2x9j55eJilxUOLkg2T8BQSCxS
         q6xrvmOo8kQvbb3nVvwsC1P8AFG5alEcj7e4TkbdQQ6Q5HtLXdqzMeFsGkzXfZhVFYMQ
         VG6lZ2mCOALZziOE7nSxjTPOKqB3L/wmu3gI0DFVtwk8e2yDsog8/AWhiabJVnHIqGJR
         3fwLFYTvokHp8SAEjOCcuOQvmk9At+IMcflaVbyKO5qLdGly157p0lkiSnypFjxcBy7s
         qiug==
X-Forwarded-Encrypted: i=1; AJvYcCXfJolluJR+n0O6pZMouPanzMHxxXWRm8LCLMarn6p/zdVhi6Ywgx+eTyJrXLMUXXjakumXBHzA6hji@vger.kernel.org
X-Gm-Message-State: AOJu0Ywv+rxrs1GMLetLkKw4MBpAbj36MdA7tJUS6UW6wbKab9dffhBV
	pRGEz5mzXAzX2KypOlLloKpjt97mfxVStfyPPnqEKk9XHcsKJhmTQ9LKeflJFk4=
X-Google-Smtp-Source: AGHT+IFcJ911YncxzDz+vUGU2wKxP//zFGp4XOAPitX3IxTT9WIuDtrsNPSJE+JGqHL6nbUCTYefbQ==
X-Received: by 2002:a05:6512:33d5:b0:539:eb97:61d7 with SMTP id 2adb3069b0e04-53b236a6912mr4462705e87.4.1730117963369;
        Mon, 28 Oct 2024 05:19:23 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53b2e10a7bcsm1047277e87.21.2024.10.28.05.19.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2024 05:19:22 -0700 (PDT)
Date: Mon, 28 Oct 2024 14:19:21 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Liu Ying <victor.liu@nxp.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, 
	"imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"laurent.pinchart" <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, "mripard@kernel.org" <mripard@kernel.org>, 
	"tzimmermann@suse.de" <tzimmermann@suse.de>, "airlied@gmail.com" <airlied@gmail.com>, 
	"simona@ffwll.ch" <simona@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"quic_jesszhan@quicinc.com" <quic_jesszhan@quicinc.com>, "mchehab@kernel.org" <mchehab@kernel.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>, 
	"sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "hverkuil@xs4all.nl" <hverkuil@xs4all.nl>, 
	"tomi.valkeinen@ideasonboard.com" <tomi.valkeinen@ideasonboard.com>, "quic_bjorande@quicinc.com" <quic_bjorande@quicinc.com>, 
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "arnd@arndb.de" <arnd@arndb.de>, 
	"nfraprado@collabora.com" <nfraprado@collabora.com>, "thierry.reding@gmail.com" <thierry.reding@gmail.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, "sam@ravnborg.org" <sam@ravnborg.org>, 
	"marex@denx.de" <marex@denx.de>
Subject: Re: [PATCH v4 00/13] Add ITE IT6263 LVDS to HDMI converter support
Message-ID: <5ycxltnw3vhik3iype6ncuh4nelwwtom745o5dlf32qyiqh5bv@yjj5l6kb2psm>
References: <20241028023740.19732-1-victor.liu@nxp.com>
 <CAA8EJprFBbC_=kBHi86j-nE_K68QeG+c2OBzJCbUyNWs5zQK0Q@mail.gmail.com>
 <TY3PR01MB11346F956733032EC10E997AF864A2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <TY3PR01MB11346F956733032EC10E997AF864A2@TY3PR01MB11346.jpnprd01.prod.outlook.com>

On Mon, Oct 28, 2024 at 11:12:00AM +0000, Biju Das wrote:
> Hi Dmitry, Liu,
> 
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: 28 October 2024 10:20
> > Subject: Re: [PATCH v4 00/13] Add ITE IT6263 LVDS to HDMI converter support
> > 
> > Hi,
> > 
> > On Mon, 28 Oct 2024 at 04:37, Liu Ying <victor.liu@nxp.com> wrote:
> > >
> > > Hi,
> > >
> > > This patch series aims to add ITE IT6263 LVDS to HDMI converter on
> > > i.MX8MP EVK.  Combined with LVDS receiver and HDMI 1.4a transmitter,
> > > the IT6263 supports LVDS input and HDMI 1.4 output by conversion
> > > function.  IT6263 product link can be found at [1].
> > >
> > > Patch 1 is a preparation patch to allow display mode of an existing
> > > panel to pass the added mode validation logic in patch 3.
> > >
> > > Patch 2 allows i.MX8MP LVDS Display Bridge(LDB) bridge driver to find
> > > the next non-panel bridge, that is the IT6263 in this case.
> > >
> > > Patch 3 adds mode validation logic to i.MX8MP LDB bridge driver
> > > against "ldb" clock so that it can filter out unsupported display
> > > modes read from EDID.
> > >
> > > Patch 4 adds MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG,JEIDA} support, as
> > > they are supported by IT6263(with LVDS data bit reversed order).
> > >
> > > Patch 5 makes drm_of.c use MEDIA_BUS_FMT_RGB101010_1X7X5_{JEIDA,SPWG}.
> > >
> > > Patch 6 supports getting dual-link LVDS pixel order for the sink side
> > > as needed by IT6263 driver.
> > >
> > > Patch 7 documents jeida-30 and vesa-30 data mappings in
> > > lvds-data-mapping.yaml, as needed by IT6263 DT binding.
> > >
> > > Patch 8 extracts common dual-link LVDS display properties into new
> > > lvds-dual-ports.yaml so that IT6263 DT binding can reference it.
> > >
> > > Patch 9 adds DT binding for IT6263.
> > >
> > > Patch 10 adds IT6263 bridge driver.  Only video output is supported.
> > >
> > > Patch 11 adds DT overlays to support NXP adapter cards[2][3] with
> > > IT6263 populated.
> > >
> > > Patch 12 enables the IT6263 bridge driver in defconfig.
> > >
> > > Patch 13 updates MAINTAINERS to add maintainer for IT6263 driver.
> > 
> > This has pretty complicated structure from the merging point of view.
> > 
> > I propose we take patches 6, 8, 9 (without 30-bit formats, they can be dropped while applying), 11, 12
> > (?) and 13 through drm-misc in one batch (once DT maintainers review the binding parts). This looks
> > like a minimal set, having no extra dependencies.
> 
> > 
> > The second set might be 4, 5 + new patch, re-adding 30-bit formats to
> > IT6263 binding (no driver changes are necessary). This can go in separately, after an Ack from media
> > maintainers.
> > 
> > Of course both sets can go together if linux-media maintainers reacts quickly and ack merging media-
> > formats patch through drm-misc tree.
> > 
> > The rest of the patches don't have such strong dependencies and go in once ready / reviewed.
> > 
> > WDYT?
> 
> I guess, 6,8,9(without 30-bit formats), 10, 12 and 13.
> 
> 11 may have dependency on 1, 2 and 3 as it is SoC specific.

Yes, of course, 10, not 11.

> Then 4, 5 + new patch, re-adding 30-bit formats to IT6263 binding.

-- 
With best wishes
Dmitry

