Return-Path: <devicetree+bounces-128549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8819E8FCE
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 11:13:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 99A15280CF9
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 10:13:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97672216614;
	Mon,  9 Dec 2024 10:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JyYO15VQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5E092163A1
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 10:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733739207; cv=none; b=DajY6t8kGPtl3E/ar7rU1MZJ5RZjde39hPnt1o9BshIU+I8vNz84Ej8xT3oOgQ/J6sP/NxXM1VhLDCjPgGwARg7vOiO0dXYjAGjlMU5zDY+SFM+gp3QbSdMxSkgsjs465hUAveAXoNupvGICdRPZdTfz9nCubHhbFLysvI1/DlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733739207; c=relaxed/simple;
	bh=tKmczGCJi6w7fkSsT4DEYoM0aEb7uxDmmzVZqraNyU8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KloSj6HZ3JCS26HOTQ2pPCtPfiyuX7n5ozLX2pwXlJYPCYLwIrLY7vmfonWexKdlikC2+qbKm1SawQhin+s/IK0RW6jTGBNQc240vM2NbfNuXfHE+UAKakUkVeKWDbNIs1ZgKieZRR6Lz+Hqc3k0py2ChF/SLrMIrf5imDx6AwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JyYO15VQ; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e396c98af22so3412043276.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 02:13:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733739204; x=1734344004; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qcha0zHynfu3Ub0724lpoIRWfmwOKO+r/oksIEeJ2RY=;
        b=JyYO15VQXGKBEvMgXZ1dQ172+oTtZzvdk97fzzouxOsBEQK+H+3bkvn0I/lI97mpmu
         /eT1cSlszKEMZdWqPCNQGDmgoSEe9CljCgoziOZunaCypXb1pmP2LrtnqwwsTY8Gtmrr
         /LCJmlYJDixBtsuvLRcn9eL6g9+th3WoPxQio5f6Ixxdo7HGzlu/PxEoWj6WIUeF7n56
         HNuXzCAVXzgjQxYwZ9XfXhOfj0Vm7ryOV8fgXrpoaDhe5JtBSJ1tSoQItQsa2JckTjc5
         tcLVPFibSMjn/uJ3MZpsD+Y9/TflYFwfbyyfBo6d5J20k2P1wGza3mefC5lbn2K7I18I
         QMNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733739204; x=1734344004;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qcha0zHynfu3Ub0724lpoIRWfmwOKO+r/oksIEeJ2RY=;
        b=GZAqEBFPmcR1RkcTS5d9j8nMJNTTFAkKgd3zeT0x83KlXagyoiJkVR5iSutV1JdD94
         hq6tNtf7RacRUtWgYLSoR+P5634qPmlLy3flEiD3yR2Wa/jmiZndqhqkMES7bt6QX1Eg
         udfjqewteW5AZtoqltUv15VipCXsCg+6oWoST93kPoyScThqaAExwP97VtV9GSBcAF4C
         HxNlXOnblg9IvuUpDrtVfc8NexzcPNwiroXQfsk4FBiEjg1h94372LMKoCOQ5LD+5AWI
         fJhEkrz5hqAaODw/N5BzlNij0lTnDgcOVCzfJBZE+eJlgMQy5nZL3iLWL60Rv8XwWh7E
         KbKg==
X-Forwarded-Encrypted: i=1; AJvYcCV7UyQt4q7MmNH+a3/I4v5xB/gATl2974Z7H116TR5zR8eK/uHh+g/VTvBKzM1qtOTlSNaXHMvx6N2+@vger.kernel.org
X-Gm-Message-State: AOJu0YxuW2DCyHr3mEgkecTsIQVkYQcQnLoonmJElk1eVnfLqUMancN7
	pHdJXh57aTn4GfwK898kIGbwUn7nQi3XnZHTFwqfpxMcYiJ5G1P2bAHjLTGqByORxlxEHStwpkR
	GGIvJsBop1JRBkmp3Le7vu/LCnWjwGBQ5qHJs8g==
X-Gm-Gg: ASbGncu/oT7pi5wZLp5lzWQw6giwSvme7Zymk8pC7g2KtcwuWpjMFQYw+i2ssyV5UI3
	sIE6toSMDTiT0o0PZdY6hBJdBhEFYvJE=
X-Google-Smtp-Source: AGHT+IH2bT+gKDdOGRSmqtWgH0YUH5W9D5gi5OgCuogw+kN6ib1DMYcXSnWkxS48FLs9InNsXTrt1JIXrBK8w04Q03w=
X-Received: by 2002:a05:6902:983:b0:e30:b98e:b111 with SMTP id
 3f1490d57ef6-e3a0b0c4f08mr8343409276.17.1733739203685; Mon, 09 Dec 2024
 02:13:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1730172244.git.Sandor.yu@nxp.com> <411e42c70e71dce33a80059f663fb6c58fb2ac8c.1730172244.git.Sandor.yu@nxp.com>
 <efciuvoptv7qxwauswfseb6zlt5w4fmjdbm3huxfsn63a6bm7u@kfgkkvqoz5x4>
 <PAXPR04MB9448F638D47B5495CF78007AF4522@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <z6p6bewmykmufsghdojr4lvziurmmfpnrr5m4w3pfjlqzobpwr@zq2d2ukjvtac>
 <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <foi2sizfkppmunq4yqt4pex47alsvsjyqi3rk32fwyz4f5xepn@zdsx74bzzda4> <PAXPR04MB94488E0A549E519CEB8AA40EF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
In-Reply-To: <PAXPR04MB94488E0A549E519CEB8AA40EF43C2@PAXPR04MB9448.eurprd04.prod.outlook.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 9 Dec 2024 12:13:15 +0200
Message-ID: <CAA8EJprUKXxGbtP6M95Ep=2Lj2NSiUN31QNaysNJAzvO5g2LdQ@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI
 Combo-PHY driver for i.MX8MQ
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

On Mon, 9 Dec 2024 at 10:16, Sandor Yu <sandor.yu@nxp.com> wrote:
>
>
>
> > -----Original Message-----
> > From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > Sent: 2024=E5=B9=B411=E6=9C=8830=E6=97=A5 16:30
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
> > Subject: Re: [EXT] Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/=
HDMI
> > Combo-PHY driver for i.MX8MQ
> >
> > Caution: This is an external email. Please take care when clicking link=
s or
> > opening attachments. When in doubt, report the message using the 'Repor=
t
> > this email' button
> >
> >
> > On Tue, Nov 26, 2024 at 02:12:19PM +0000, Sandor Yu wrote:
> > >
> > > >
> > > > On Tue, Nov 05, 2024 at 02:05:51PM +0000, Sandor Yu wrote:
> > > > > >
> > > > > > On Tue, Oct 29, 2024 at 02:02:14PM +0800, Sandor Yu wrote:
> > > > > > > Add Cadence HDP-TX DisplayPort and HDMI PHY driver for
> > i.MX8MQ.
> > > > > > >
> > > > > > > Cadence HDP-TX PHY could be put in either DP mode or HDMI mod=
e
> > > > > > > base on the configuration chosen.
> > > > > > > DisplayPort or HDMI PHY mode is configured in the driver.
> > > > > > >
> > > > > > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > > > > > Signed-off-by: Alexander Stein
> > > > > > > <alexander.stein@ew.tq-group.com>
> > > > > > > ---
> > > > > > > v17->v18:
> > > > > > > - fix build error as code rebase to latest kernel version.
> > > > > > >
> > > > > > >  drivers/phy/freescale/Kconfig                |   10 +
> > > > > > >  drivers/phy/freescale/Makefile               |    1 +
> > > > > > >  drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c | 1337
> > > > > > ++++++++++++++++++
> > > > > > >  3 files changed, 1348 insertions(+)  create mode 100644
> > > > > > > drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > > > > > >
> > > > > > > diff --git a/drivers/phy/freescale/Kconfig
> > > > > > > b/drivers/phy/freescale/Kconfig index
> > > > > > > dcd9acff6d01a..2b1210367b31c
> > > > > > > 100644
> > > > > > > --- a/drivers/phy/freescale/Kconfig
> > > > > > > +++ b/drivers/phy/freescale/Kconfig
> > > >
> > > > [...]
> > > >
> > > > I'm sorry, my email client cut the email.
> > > >
> > > > > > > +static int cdns_hdptx_dp_configure(struct phy *phy,
> > > > > > > +                                union phy_configure_opts
> > > > *opts) {
> > > > > > > +     struct cdns_hdptx_phy *cdns_phy =3D phy_get_drvdata(phy=
);
> > > > > > > +
> > > > > > > +     cdns_phy->dp.link_rate =3D opts->dp.link_rate;
> > > > > > > +     cdns_phy->dp.lanes =3D opts->dp.lanes;
> > > > > >
> > > > > > Shouldn't this be conditional on set_rate / set_lanes ?
> > > > >
> > > > > PHY do not support reconfigure link rate and lane count.
> > > >
> > > > So, you don't support reconfiguring the rate / count, but you still
> > > > copy the new rate and lanes into your driver data. That sounds stra=
nge.
> > >
> > > The PHY will use link rate and lane count to configure its registers
> >
> > I'm not sure if I follow it. Do you mean that rate / count configuratio=
n is static?
>
> In DP controller driver, rate and lane count are determined during link t=
raining.
> These two parameters are fixed in the DP PHY driver and cannot be modifie=
d.

Yes, llane count, rate and swing are determined during link training.
However it's not a part of the PHY's job to settle on that. Usually it
is the DP driver who determines these params and then calls
phy_configure() to set necessary params for the next iteration of
clock recovery attempt or link training step. As a part of the calling
API the DP driver doesn't have to pass full configuration. Instead DP
driver sets only required parts of the PHY configuration and uses
these flags to specify which part of the PHY configuration should be
updated and which parts were not set and must be ignored.

--=20
With best wishes
Dmitry

