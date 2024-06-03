Return-Path: <devicetree+bounces-71887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DB8AA8D8528
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 16:35:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B6411F20EFD
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2024 14:35:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BCE412EBF2;
	Mon,  3 Jun 2024 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="E90FdO2i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8FC12BF34
	for <devicetree@vger.kernel.org>; Mon,  3 Jun 2024 14:35:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717425321; cv=none; b=t+IyuWrpS7vew9nZrSiaN7+R00iXNNysOVscHPHqp3ImxkOCORMbv44V+HmWPFOycr7o2MpBQlTpp+S0cwR1Zx/A2Hl7duuxJhstGZh0XbDMZfyQH89Dmu/DV73QWeA/cYQmQ5ObEPk8keOCPFtLH0FR7fTvhkk43iDUPxi5qVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717425321; c=relaxed/simple;
	bh=wMDWT/3j7lMlyJ0jn02Ql17O5sSjhWZh3eqo6ItihpI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cba4WCrDP+kIX2wfnfMtoPUB/4Eb+5lI2E8D2YymCHcZ6f0amemfr+4ZvD+iySvW2MwRl2wUxEVZcbot+Ek//sGLcVfAcdw3tthzRoVK1wMI6Jvb3uKxBzhfA5SRnaZNh44GaLI9+mPGV7wdvVhadX+u/B/3srpGGI7TTygDWZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=E90FdO2i; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-57a32b0211aso3935787a12.2
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2024 07:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717425318; x=1718030118; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IjiZy0A+IiOg0NID/3j9joaAnDhVLRbkPfAL2w/lRx8=;
        b=E90FdO2iU1A2p4eURDuenfbEk9Ktaoa6pIMgWNT+8y/N/xpCWWaSpt/slvBA15fW7j
         uoD0fHFeiJdyQc5kuNXE2w910KXC6ztZkUGYTn3dpPHYEs+EwNDEqZ01pqTFVIt3UZXm
         33wx8mJulZdHSSh94TdpxZ5r+RC/Z/QP/ruDw+Abf79NuPojnxGwRXXfNiwkkQTFS9Nq
         ifLgeZ8+lTUUDnYP4sBB6H/N2dCZk1VqWSZq3mIzyEzU8HKdTKNIr2hoe5qMmFL/xrdH
         jMC9EHngORPF1X8aydcBbeHz6tTqpcdpcpp2T89OsjbAmc3qFN3J32dNpYBTN+G4bZrm
         mT4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717425318; x=1718030118;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IjiZy0A+IiOg0NID/3j9joaAnDhVLRbkPfAL2w/lRx8=;
        b=s13kdahh51S77L6lPb4ZXTsp3y3nMJuf+UYLyYr0ZLDu6Ec+LqWJzwFdTQ337+ojSN
         GbWoPj25A+gPDPOKe/KjrMTXAM7x1nrIL9VMs5PjmZWZEo8S2TgEhx4HzR6yhiszf+mi
         cnSL3kWlQH2lU9/JmZVtpTtajTAVQ3Y7lV0Obs/feG/geUSO+HYeV6pfSfddio2WGTon
         55TypWsRcN3hFusbHhVlQjlN7s3TiMOPRWe7Mi8JZb3dCzspGlQk7W++1kiv4V6UpGlF
         KktfGmjyFYYUAMggd86pvBCS3J4PffcNL0BdWdAA9fqbOE7donKaYmYWhbcXwozWMY93
         jW/Q==
X-Forwarded-Encrypted: i=1; AJvYcCW4HbG6fHZvNu4QA47mRBY/ND5ZGDhHD3Ul61O/567oZQ9iD/nYcwljJtEMx7WTI4t6XK39eZLtIljTOmAxMWDqB46mWU45Id114w==
X-Gm-Message-State: AOJu0YzUE/3eifCZ6MAPVn5TG2HcrzjE05RwufDVMryeNORRyNiq02BO
	kOSXYXtKPkirf2jwh2NGuKXC6cXjWV2vX5mjGuVkg39xR50jxriIV3UtBVm2ipl0HDDwKhCLYJh
	O7+RIEot+gCuSAKNg5Z1Xh0Od874=
X-Google-Smtp-Source: AGHT+IEIGX63vWeSUePEEOMqz83AeDn2dYDIwBDPg554yoYAyS7l6TvEu4gk8wRL60IRlOIma/nsoc48LqIb6U3NYYU=
X-Received: by 2002:a17:906:7c8d:b0:a61:4224:c998 with SMTP id
 a640c23a62f3a-a6821d64674mr683493366b.54.1717425317733; Mon, 03 Jun 2024
 07:35:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
 <CAFXsbZo3miDMQ7SDktRP_DOzMy2JTFz4AsuMp78jLQGauTNsmA@mail.gmail.com> <qcbh6pltjsetikped3ioihwmiow5ngstimgebplnl6ckqkkl63@z5xd64qbsbga>
In-Reply-To: <qcbh6pltjsetikped3ioihwmiow5ngstimgebplnl6ckqkkl63@z5xd64qbsbga>
From: Chris Healy <cphealy@gmail.com>
Date: Mon, 3 Jun 2024 07:35:05 -0700
Message-ID: <CAFXsbZqdna4S6t7UgRDacSb3WcC_21KDkh5pDyD4LCHgYsPang@mail.gmail.com>
Subject: Re: [PATCH v3 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 3, 2024 at 3:12=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sun, Jun 02, 2024 at 08:25:39PM -0700, Chris Healy wrote:
> > On an i.MX53 QSB with HDMI daughter board, this patch series is:
> >
> > Tested-by: Chris Healy <cphealy@gmail.com>
>
> Thank you! I assume this is imx53-qsrb-hdmi ?

Yes
>
> >
> > HDMI output still works correctly and the bridges file reflects the cha=
nges:
> >
> > Before:
> >
> > root:/sys/kernel/debug/dri/display-subsystem/encoder-0 cat bridges
> > bridge[0]: 0xc0fa76d8
> >         type: [0] Unknown
> >         ops: [0x0]
> > bridge[1]: 0xc0fba03c
> >         type: [0] Unknown
> >         OF: /soc/bus@60000000/i2c@63fc4000/bridge-hdmi@39:sil,sii9022
> >         ops: [0x7] detect edid hpd
> >
> >
> > After:
> >
> > root:/sys/kernel/debug/dri/display-subsystem/encoder-0 cat bridges
> > bridge[0]: 0xc0fa76d8
> >         type: [0] Unknown
> >         ops: [0x0]
> > bridge[1]: 0xc0fb9f5c
> >         type: [0] Unknown
> >         OF: /soc/bus@60000000/i2c@63fc4000/bridge-hdmi@39:sil,sii9022
> >         ops: [0x7] detect edid hpd
> > bridge[2]: 0xc0fb9794
> >         type: [11] HDMI-A
> >         OF: /connector-hdmi:hdmi-connector
> >         ops: [0x0]
> >
> > On Sun, Jun 2, 2024 at 5:04=E2=80=AFAM Dmitry Baryshkov
> > <dmitry.baryshkov@linaro.org> wrote:
> > >
> > > The IPUv3 DRM i.MX driver contains several codepaths for different
> > > usescases: both LDB and paralllel-display drivers handle next-bridge,
> > > panel and the legacy display-timings DT node on their own.
> > >
> > > Drop unused ddc-i2c-bus and edid handling (none of the DT files merge=
d
> > > upstream ever used these features), switch to panel-bridge driver,
> > > removing the need to handle drm_panel codepaths separately and finall=
y
> > > switch to drm_bridge_connector, removing requirement for the downstre=
am
> > > bridges to create drm_connector on their own.
> > >
> > > This has been tested on the iMX53 with the DPI panel attached to LDB =
via
> > > LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> > > linked directly to LDB node and the display-timings node).
> > >
> > > To be able to test on the iMX53 QSRB with the HDMI cape apply [1], [2=
]
> > >
> > > [1] https://lore.kernel.org/all/20240514030718.533169-1-victor.liu@nx=
p.com/
> > > [2] https://lore.kernel.org/all/20240602-imx-sii902x-defconfig-v1-1-7=
1a6c382b422@linaro.org/
> > >
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > > Changes in v3:
> > > - Notice (soft) dependencies in the cover letter (Chris)
> > > - Select DRM_BRIDGE instead of depending on it (Philipp)
> > > - Dropped unused selection of DRM_PANEL (Philipp)
> > > - Added missing include of <drm/bridge/imx.h> to parallel-display.c
> > >   (Philipp)
> > > - Link to v2: https://lore.kernel.org/r/20240331-drm-imx-cleanup-v2-0=
-d81c1d1c1026@linaro.org
> > >
> > > Changes in v2:
> > > - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> > > - Moved the legacy bridge to drivers/gpu/drm/bridge
> > > - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> > > - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0=
-e104f05caa51@linaro.org
> > >
> > > ---
> > > Dmitry Baryshkov (12):
> > >       dt-bindings: display: fsl-imx-drm: drop edid property support
> > >       dt-bindings: display: imx/ldb: drop ddc-i2c-bus property
> > >       drm/imx: cleanup the imx-drm header
> > >       drm/imx: parallel-display: drop edid override support
> > >       drm/imx: ldb: drop custom EDID support
> > >       drm/imx: ldb: drop custom DDC bus support
> > >       drm/imx: ldb: switch to drm_panel_bridge
> > >       drm/imx: parallel-display: switch to drm_panel_bridge
> > >       drm/imx: add internal bridge handling display-timings DT node
> > >       drm/imx: ldb: switch to imx_legacy_bridge / drm_bridge_connecto=
r
> > >       drm/imx: parallel-display: switch to imx_legacy_bridge / drm_br=
idge_connector
> > >       drm/imx: move imx_drm_connector_destroy to imx-tve
> > >
> > >  .../bindings/display/imx/fsl-imx-drm.txt           |   2 -
> > >  .../devicetree/bindings/display/imx/ldb.txt        |   1 -
> > >  drivers/gpu/drm/bridge/imx/Kconfig                 |  10 +
> > >  drivers/gpu/drm/bridge/imx/Makefile                |   1 +
> > >  drivers/gpu/drm/bridge/imx/imx-legacy-bridge.c     |  85 +++++++++
> > >  drivers/gpu/drm/imx/ipuv3/Kconfig                  |  10 +-
> > >  drivers/gpu/drm/imx/ipuv3/imx-drm-core.c           |   7 -
> > >  drivers/gpu/drm/imx/ipuv3/imx-drm.h                |  14 --
> > >  drivers/gpu/drm/imx/ipuv3/imx-ldb.c                | 203 +++++------=
----------
> > >  drivers/gpu/drm/imx/ipuv3/imx-tve.c                |   8 +-
> > >  drivers/gpu/drm/imx/ipuv3/parallel-display.c       | 139 +++--------=
---
> > >  include/drm/bridge/imx.h                           |  13 ++
> > >  12 files changed, 187 insertions(+), 306 deletions(-)
> > > ---
> > > base-commit: 850ca533e572247b6f71dafcbf7feb0359350963
> > > change-id: 20240310-drm-imx-cleanup-10746a9b71f5
> > >
> > > Best regards,
> > > --
> > > Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > >
>
> --
> With best wishes
> Dmitry

