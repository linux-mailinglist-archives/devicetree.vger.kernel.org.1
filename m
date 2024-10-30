Return-Path: <devicetree+bounces-117245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 403459B5A45
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 04:21:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F32D72844EC
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 03:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A84E4198E79;
	Wed, 30 Oct 2024 03:20:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jjcQxQXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63E6E18B09
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 03:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730258456; cv=none; b=F5azZ4GeJLceado4+/1GtPZ0AS75lhoCcUfItj5T8JQV78nMfNV9trO0vxSMWJmOvlrxIZxQDbauQWa9FyIElVItWzlOfLBO/huBCdf1T5UhStvMqFZTwg5cBXaPMimEg33IeTtG8DBz7osRnoWOxkJAPTVTLUmGKhybJag62AM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730258456; c=relaxed/simple;
	bh=QHZTDo9BvXYI83SwgoZ9SgjKh9TWU3q/tKddZ9gqf6o=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=k5Duk2wNByF8ljMM0/5uBeWvy5h3bTiJSIXcgikuREvar45D8yQIWUz09JcQ0bB6nOLvY55TryhNMbPqX/ri1zZVqB+a/8ayGY836+BFly6D3zhQIWjZ93vPi758QD2GEr1Thh7RufATMJ1u5Phy6hlO6KahLyRVKUsejAKoxzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jjcQxQXq; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-6e9f8dec3daso24776497b3.0
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 20:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730258453; x=1730863253; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T9iHB+TnDUm4jF2fdOU5XWejl3GGCTCDW+b12N/hHY0=;
        b=jjcQxQXqnO2LUpJcHRDcA33L1P1OwBOmpL3YPUOwxwxfefgNjnTRo+B5vBLC7W3O9Y
         MSd4e+KxyiQp4tuweJuLgLpcysxvbvC+VYpU0J5ZLg4sr9z2ZUBwJOyLLOjCZMJTYNaG
         79Gzbt1HA1v09EeqaNEBmNu+Gjg/ZBv0g3AjUusNnum6m7H/ZIOeWVgTzanqA1qOGD4w
         LwlGEaN1wqAUHDp7kVTv1RbAazMAdHjwOu05CokaiHBYg/rmSmlxuIt7MpjHmEmrrMXv
         o/Xn7HjwujWMdJiTZ5HNkLiB0A9iEdoj6UItQZ9RHmM9xEXepixD/ccXpAT9h3cGp+8g
         ouqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730258453; x=1730863253;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T9iHB+TnDUm4jF2fdOU5XWejl3GGCTCDW+b12N/hHY0=;
        b=AVMr7xoOo658t5m4UV0wwVOngd9FrW7OQF/BnofsKLzrvbWG/+eTUivM1zdHr0JCVx
         D9O6oDzKO3OlTtIYLyEPAcou8vthS8vkIsxzx8FWUp1T2Dr+0lRNBrUsZk+vQyMjazxZ
         DRCsThMEBbDwtFWKYit4gLCSUbAd/gkDMgkuNX/UHvVrXnrJGDytIq1pnIEz/XJkooY0
         DhdNPabLhMJp5ihWiAf1rl7dsr4eMy9vVT4Xcu+Sgb8jtkEBmi92fELFCv3Kfr7yUva7
         9yGD9Lm8eKYIPqf/UKWQnq0eucXE6nPT8dQPeIExraZe9XgmC6e7Dkpu6GBclxXh35HW
         QbzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBdDzdikG+3zIlVHa9h8ZGv8wJ1QWeB9/Tq6S5drYzINr1BtrA7qElUU8bjdYEVEW7isnen91/ZcPK@vger.kernel.org
X-Gm-Message-State: AOJu0YwZhK++ArkHW06w9MJSB94JZzUEZ2bo1OAv1c+eGH/HHFliiDIx
	I7zth5hF/Ix0ALRKiX7YrvITeZUj2zoyUc0rICKQtom0vNuVdw3FqsfModjYgrKXeTF6wp8vQLC
	3q9uqR/u/jM036dQAtFCdsskQrQBx8N06kzLh1g==
X-Google-Smtp-Source: AGHT+IFP18Fs2tm+rkcoRcGuOjeKCtHmaRhumXjK8HFzyE2dMFMrDGTjZVI7r8/PZwnSMuCmogkovvlmIbOEJH7HW6w=
X-Received: by 2002:a05:690c:6402:b0:6e3:32e2:ecbf with SMTP id
 00721157ae682-6e9d89951a7mr151053517b3.24.1730258453510; Tue, 29 Oct 2024
 20:20:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241028023740.19732-1-victor.liu@nxp.com> <CAA8EJprFBbC_=kBHi86j-nE_K68QeG+c2OBzJCbUyNWs5zQK0Q@mail.gmail.com>
 <TY3PR01MB11346F956733032EC10E997AF864A2@TY3PR01MB11346.jpnprd01.prod.outlook.com>
 <5ycxltnw3vhik3iype6ncuh4nelwwtom745o5dlf32qyiqh5bv@yjj5l6kb2psm> <1e8526e5-d9b7-42ac-9db3-13b42ccc4fbe@nxp.com>
In-Reply-To: <1e8526e5-d9b7-42ac-9db3-13b42ccc4fbe@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 30 Oct 2024 05:16:30 +0200
Message-ID: <CAA8EJppAnfiVqNYN6CxaU1Q5fMwDgWhSsPU9qQz7KHb6px=grA@mail.gmail.com>
Subject: Re: [PATCH v4 00/13] Add ITE IT6263 LVDS to HDMI converter support
To: Liu Ying <victor.liu@nxp.com>
Cc: Biju Das <biju.das.jz@bp.renesas.com>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-media@vger.kernel.org" <linux-media@vger.kernel.org>, "imx@lists.linux.dev" <imx@lists.linux.dev>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, "rfoss@kernel.org" <rfoss@kernel.org>, 
	"laurent.pinchart" <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>, 
	"mripard@kernel.org" <mripard@kernel.org>, "tzimmermann@suse.de" <tzimmermann@suse.de>, 
	"airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>, "robh@kernel.org" <robh@kernel.org>, 
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>, "conor+dt@kernel.org" <conor+dt@kernel.org>, 
	"quic_jesszhan@quicinc.com" <quic_jesszhan@quicinc.com>, "mchehab@kernel.org" <mchehab@kernel.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org" <will@kernel.org>, 
	"sakari.ailus@linux.intel.com" <sakari.ailus@linux.intel.com>, "hverkuil@xs4all.nl" <hverkuil@xs4all.nl>, 
	"tomi.valkeinen@ideasonboard.com" <tomi.valkeinen@ideasonboard.com>, 
	"quic_bjorande@quicinc.com" <quic_bjorande@quicinc.com>, 
	"geert+renesas@glider.be" <geert+renesas@glider.be>, "arnd@arndb.de" <arnd@arndb.de>, 
	"nfraprado@collabora.com" <nfraprado@collabora.com>, 
	"thierry.reding@gmail.com" <thierry.reding@gmail.com>, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	"sam@ravnborg.org" <sam@ravnborg.org>, "marex@denx.de" <marex@denx.de>
Content-Type: text/plain; charset="UTF-8"

On Tue, 29 Oct 2024 at 04:41, Liu Ying <victor.liu@nxp.com> wrote:
>
> On 10/28/2024, Dmitry Baryshkov wrote:
> > On Mon, Oct 28, 2024 at 11:12:00AM +0000, Biju Das wrote:
> >> Hi Dmitry, Liu,
> >>
> >>> -----Original Message-----
> >>> From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >>> Sent: 28 October 2024 10:20
> >>> Subject: Re: [PATCH v4 00/13] Add ITE IT6263 LVDS to HDMI converter support
> >>>
> >>> Hi,
> >>>
> >>> On Mon, 28 Oct 2024 at 04:37, Liu Ying <victor.liu@nxp.com> wrote:
> >>>>
> >>>> Hi,
> >>>>
> >>>> This patch series aims to add ITE IT6263 LVDS to HDMI converter on
> >>>> i.MX8MP EVK.  Combined with LVDS receiver and HDMI 1.4a transmitter,
> >>>> the IT6263 supports LVDS input and HDMI 1.4 output by conversion
> >>>> function.  IT6263 product link can be found at [1].
> >>>>
> >>>> Patch 1 is a preparation patch to allow display mode of an existing
> >>>> panel to pass the added mode validation logic in patch 3.
> >>>>
> >>>> Patch 2 allows i.MX8MP LVDS Display Bridge(LDB) bridge driver to find
> >>>> the next non-panel bridge, that is the IT6263 in this case.
> >>>>
> >>>> Patch 3 adds mode validation logic to i.MX8MP LDB bridge driver
> >>>> against "ldb" clock so that it can filter out unsupported display
> >>>> modes read from EDID.
> >>>>
> >>>> Patch 4 adds MEDIA_BUS_FMT_RGB101010_1X7X5_{SPWG,JEIDA} support, as
> >>>> they are supported by IT6263(with LVDS data bit reversed order).
> >>>>
> >>>> Patch 5 makes drm_of.c use MEDIA_BUS_FMT_RGB101010_1X7X5_{JEIDA,SPWG}.
> >>>>
> >>>> Patch 6 supports getting dual-link LVDS pixel order for the sink side
> >>>> as needed by IT6263 driver.
> >>>>
> >>>> Patch 7 documents jeida-30 and vesa-30 data mappings in
> >>>> lvds-data-mapping.yaml, as needed by IT6263 DT binding.
> >>>>
> >>>> Patch 8 extracts common dual-link LVDS display properties into new
> >>>> lvds-dual-ports.yaml so that IT6263 DT binding can reference it.
> >>>>
> >>>> Patch 9 adds DT binding for IT6263.
> >>>>
> >>>> Patch 10 adds IT6263 bridge driver.  Only video output is supported.
> >>>>
> >>>> Patch 11 adds DT overlays to support NXP adapter cards[2][3] with
> >>>> IT6263 populated.
> >>>>
> >>>> Patch 12 enables the IT6263 bridge driver in defconfig.
> >>>>
> >>>> Patch 13 updates MAINTAINERS to add maintainer for IT6263 driver.
> >>>
> >>> This has pretty complicated structure from the merging point of view.
> >>>
> >>> I propose we take patches 6, 8, 9 (without 30-bit formats, they can be dropped while applying), 11, 12
> >>> (?) and 13 through drm-misc in one batch (once DT maintainers review the binding parts). This looks
> >>> like a minimal set, having no extra dependencies.
> >>
> >>>
> >>> The second set might be 4, 5 + new patch, re-adding 30-bit formats to
> >>> IT6263 binding (no driver changes are necessary). This can go in separately, after an Ack from media
> >>> maintainers.
> >>>
> >>> Of course both sets can go together if linux-media maintainers reacts quickly and ack merging media-
> >>> formats patch through drm-misc tree.
>
> I'm fine with merging the two sets through drm-misc tree as long
> as linux-media and dri-devel maintainers accept this.  Up to them.
>
> >>>
> >>> The rest of the patches don't have such strong dependencies and go in once ready / reviewed.
> >>>
> >>> WDYT?
> >>
> >> I guess, 6,8,9(without 30-bit formats), 10, 12 and 13.
> >>
> >> 11 may have dependency on 1, 2 and 3 as it is SoC specific.
> >
> > Yes, of course, 10, not 11.
> >
> >> Then 4, 5 + new patch, re-adding 30-bit formats to IT6263 binding.
>
> I think it would be good to directly support 30-bit formats in
> IT6263 DT binding, not re-add them to it.  This way, we'll have one
> version of the binding, not two.  So, a better first set would
> contain patch 6, 7(one existing A-b from Krzysztof), 8, 9, 10, 12
> and 13.

I'm not sure that 7 can go without an ack from linux-media maintainers.

-- 
With best wishes
Dmitry

