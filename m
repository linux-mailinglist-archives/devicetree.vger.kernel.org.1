Return-Path: <devicetree+bounces-128553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 394639E8FE5
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:15:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 05DE118839E0
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:15:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD0112163AE;
	Mon,  9 Dec 2024 10:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NvdqhXZ8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4902F215700
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:15:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733739338; cv=none; b=WFAw98NZPgqJVEYer3rQozFVLe9pELz3aBYgrpveNXKnlzE/wyuJ0C7hq2cG9aNG7PQKtrpqt+Cu022jcWvKwgj1l8882R5tGkckmte1YdrSXI/Q4PwZpT31sIRXpEd9bHvlpudOd6PSN1To+fNWhSmxoaeTYLll5fuFIDhhnBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733739338; c=relaxed/simple;
	bh=Si4/zUf2Y8HHlz3XRMv8pm4MIwvBmAUG2exqZk7HEdQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gnJNzSUWfzbmg9CWh24SgvNp4p7ygltIS3W2N/6noTby24CpEi1GptJPfPiPoSUgMTDsk0DrIVj0bUmjRHtN6abvPU2S9+wf7unk4b/VFwjLxvvg+mr4sQ7b1EUS2lnboDS5o3iD+j9MJVvHuELHgXK99Ne/5CIRokomI0fyZf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NvdqhXZ8; arc=none smtp.client-ip=209.85.219.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-e3a1cfeb711so1534012276.0
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:15:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733739335; x=1734344135; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l8vI+mafQJICnkT4ByBE+HuAejFrqMpigPXyZ+V3gfk=;
        b=NvdqhXZ8EzBNFeu+o9dBkafOZcb486WEq9NgXKy8icEzETYtaIHLN5ZR5SAn8rzd+T
         RyFhTU6GuQkO559kQdIz31tylRNh0zj3kSVcNJ4y9C+nGKW8QZmm0PQ4j+YGejljIcvU
         2JiJXu/+hVRHeU1rHQ1DGi8hSKofe8K4a5oR7eUtJUzxz32efU3w0nddyvBAiUFbsxmT
         4b9YTLhMdxR7q/7eH3XAnDRhY7/TcfBp3bPAhSKERE+aY1zzao5w1WiybrWWRcLJ3a5g
         X+wVFCfEyqTy2W64Di1CIVnSBcIul7Jlz0v5Ahn40gbR1vzAapnHpFTsX3kRLbEtVp0S
         C4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733739335; x=1734344135;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l8vI+mafQJICnkT4ByBE+HuAejFrqMpigPXyZ+V3gfk=;
        b=HYb4x1xFyT70gkCZ5NfQZXTW+Ld7+4DEuVuaRTYgdtJpH5ynJ0y7+FIrVNihGioKpm
         fkQyMLMr/FeKkNA7RIzkXE3zqhHaprWGY+a8agvpNesHPjqfSf53lB2kaX3P/4Oj4iw5
         m/7JtAXM+rOH++qkdzgyZOl8+xxz6qG03hBoQm9zlokgka0ri/F7M01iIPcqiCSIOkk7
         MOGF6OgRVoIeqnRQZLTsSKfbh/tSwyzRn1tvHbJROmREe3v0hWMCT4AhFkHLtiMpFVqp
         GljjiaUsY0NhyNqrg5PSrvccttKKLrwzHPAIC77JPBJua0BcaSr/tVOUdqMZllTtrAqY
         YHJg==
X-Forwarded-Encrypted: i=1; AJvYcCXwZyJD/aZcUURhXSx15Z3Hczzb6bgxzoI6JMa9CKvNrqzE2mNEjUlCyMKnvHn9lY8sU7UpgmluPyXA@vger.kernel.org
X-Gm-Message-State: AOJu0YwI9DXzRPRzhbrsMfPn9EB3OYo5dqUdHBSP4D9IIk8E/s3gGUjD
	5nMZaWEZPawSGhd/+vUE4BmnM5YoMTJEkoEWM4tvUdYuCqe6irVRq7M98MbzY/Um0PI72QZSvYF
	oU2T4J2cqVhQvY2ufJZX+cHQkLmpeblUvLvYeLg==
X-Gm-Gg: ASbGncuM1C/zsZolfkcWzQbWQY84g+yudHR03A88zwXG8qDByPep6K7YwfLIi+EtJKg
	TBNNJJCLVDSEx769rbURmTdI0ImUEZQo=
X-Google-Smtp-Source: AGHT+IEYOHT/dGfysgHNg+sIyk39rFclVXASjoPiptGYgkI+v6pr5kBeW++F6mbWR9LBKnALmvDk24OJ2+AqS/tovSY=
X-Received: by 2002:a05:6902:727:b0:e3a:4f3f:af41 with SMTP id
 3f1490d57ef6-e3a4f3fb32fmr656889276.17.1733739335239; Mon, 09 Dec 2024
 02:15:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1732627815.git.Sandor.yu@nxp.com> <4ef8252825d7a962b440519fb17fdcd5dd817672.1732627815.git.Sandor.yu@nxp.com>
 <slkpvbemsrz5jv4cafp7k4pdj3smpl575w2dtmjoheoqqrh32j@2wi5564jzawg> <PAXPR04MB94488CEFA54F8AA193DC2BBDF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB94488CEFA54F8AA193DC2BBDF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Dec 2024 12:15:26 +0200
Message-ID: <CAA8EJpoKkOj2pBxi4QcVAVOwzaW=yVAyomOFv7-oAxPYamfa-A@mail.gmail.com>
Subject: Re: [PATCH v19 6/8] phy: freescale: Add DisplayPort/HDMI Combo-PHY
 driver for i.MX8MQ
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, "jonas@kwiboo.se" <jonas@kwiboo.se>, 
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, "airlied@gmail.com" <airlied@gmail.com>, 
	"daniel@ffwll.ch" <daniel@ffwll.ch>, "robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, 
	"shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, 
	"festevam@gmail.com" <festevam@gmail.com>, "vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 9 Dec 2024 at 10:38, Sandor Yu <sandor.yu@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: 2024=E5=B9=B411=E6=9C=8826=E6=97=A5 22:43
> > To: Sandor Yu <sandor.yu@nxp.com>
> > Cc: andrzej.hajda@intel.com; neil.armstrong@linaro.org; Laurent Pinchar=
t
> > <laurent.pinchart@ideasonboard.com>; jonas@kwiboo.se;
> > jernej.skrabec@gmail.com; airlied@gmail.com; daniel@ffwll.ch;
> > robh+dt@kernel.org; krzysztof.kozlowski+dt@linaro.org;
> > shawnguo@kernel.org; s.hauer@pengutronix.de; festevam@gmail.com;
> > vkoul@kernel.org; dri-devel@lists.freedesktop.org;
> > devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> > linux-kernel@vger.kernel.org; linux-phy@lists.infradead.org;
> > mripard@kernel.org; kernel@pengutronix.de; dl-linux-imx
> > <linux-imx@nxp.com>; Oliver Brown <oliver.brown@nxp.com>;
> > alexander.stein@ew.tq-group.com; sam@ravnborg.org
> > Subject: [EXT] Re: [PATCH v19 6/8] phy: freescale: Add DisplayPort/HDMI
> > Combo-PHY driver for i.MX8MQ
> >
> > Caution: This is an external email. Please take care when clicking link=
s or
> > opening attachments. When in doubt, report the message using the 'Repor=
t
> > this email' button
> >
> >
> > On Tue, Nov 26, 2024 at 10:11:51PM +0800, Sandor Yu wrote:
> > > Add Cadence HDP-TX DisplayPort and HDMI PHY driver for i.MX8MQ.
> > >
> > > Cadence HDP-TX PHY could be put in either DP mode or
> > > HDMI mode base on the configuration chosen.
> > > DisplayPort or HDMI PHY mode is configured in the driver.
> > >
> > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > ---
> > > v18->v19:
> > > - Simplify the PLL tables by removing unused and constant data
> > > - Remove PHY power management, controller driver will handle them.
> > > - Remove enum dp_link_rate
> > > - Introduce read_pll_timeout.
> > > - Update clock management as devm_clk_get_enabled() introduced.
> > > - Remove cdns_hdptx_phy_init() and cdns_hdptx_phy_remove().
> > >
> > > v17->v18:
> > > - fix build error as code rebase to latest kernel version.
> > >
> > >  drivers/phy/freescale/Kconfig                |   10 +
> > >  drivers/phy/freescale/Makefile               |    1 +
> > >  drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c | 1237
> > ++++++++++++++++++
> > >  3 files changed, 1248 insertions(+)
> > >  create mode 100644 drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > >
> > > diff --git a/drivers/phy/freescale/Kconfig b/drivers/phy/freescale/Kc=
onfig
> > > index dcd9acff6d01a..bbd17e9556cc3 100644
> > > --- a/drivers/phy/freescale/Kconfig
> > > +++ b/drivers/phy/freescale/Kconfig
> > > @@ -35,6 +35,16 @@ config PHY_FSL_IMX8M_PCIE
> > >         Enable this to add support for the PCIE PHY as found on
> > >         i.MX8M family of SOCs.
> > >
> > > +config PHY_FSL_IMX8MQ_HDPTX
> > > +     tristate "Freescale i.MX8MQ DP/HDMI PHY support"
> > > +     depends on OF && HAS_IOMEM
> > > +     depends on COMMON_CLK
> > > +     depends on CDNS_MHDP_HELPER
> >
> > You should not be depending on the symbol that can not be selected by
> > the user.
>
> OK.
>
> >
> > > +     select GENERIC_PHY
> > > +     help
> > > +       Enable this to support the Cadence HDPTX DP/HDMI PHY driver
> > > +       on i.MX8MQ SOC.
> > > +
> > >  config PHY_FSL_IMX8QM_HSIO
> > >       tristate "Freescale i.MX8QM HSIO PHY"
> > >       depends on OF && HAS_IOMEM
> > > diff --git a/drivers/phy/freescale/Makefile b/drivers/phy/freescale/M=
akefile
> > > index 658eac7d0a622..a946b87905498 100644
> > > --- a/drivers/phy/freescale/Makefile
> > > +++ b/drivers/phy/freescale/Makefile
> > > @@ -1,4 +1,5 @@
> > >  # SPDX-License-Identifier: GPL-2.0-only
> > > +obj-$(CONFIG_PHY_FSL_IMX8MQ_HDPTX)   +=3D phy-fsl-imx8mq-hdptx.o
> > >  obj-$(CONFIG_PHY_FSL_IMX8MQ_USB)     +=3D phy-fsl-imx8mq-usb.o
> > >  obj-$(CONFIG_PHY_MIXEL_LVDS_PHY)     +=3D
> > phy-fsl-imx8qm-lvds-phy.o
> > >  obj-$(CONFIG_PHY_MIXEL_MIPI_DPHY)    +=3D phy-fsl-imx8-mipi-dphy.o
> > > diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > b/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > > new file mode 100644
> > > index 0000000000000..e99487622d43c
> > > --- /dev/null
> > > +++ b/drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > > @@ -0,0 +1,1237 @@
> > > +// SPDX-License-Identifier: GPL-2.0-only
> > > +/*
> > > + * Cadence DP/HDMI PHY driver
> > > + *
> > > + * Copyright (C) 2022-2024 NXP Semiconductor, Inc.
> > > + */
> > > +#include <drm/bridge/cdns-mhdp-helper.h>
> >
> > Still, I'd ask for drivers/soc instead.
>
> If put it in drivers/soc, should I create a new directory called drivers/=
soc/cadence or put it in drivers/soc/imx?
>
> The mhdp helpers will share code between cdns-mhdp8501 and cdns-mhdp8546.
> I prefer creating a new directory, drivers/soc/cadence, but the problem i=
s that cadence not a real SoC.

I think drivers/soc/cadence is fine. Please explain your decision in
the cover letter and in the commit message, this will help other
maintainers to understand you.

--=20
With best wishes
Dmitry

