Return-Path: <devicetree+bounces-125690-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2456B9DEF5C
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 09:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79B01B20EE4
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 08:29:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCDE914A60F;
	Sat, 30 Nov 2024 08:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HkzHa6u0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5F482890
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 08:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732955390; cv=none; b=f26v/lSY9reXE8WbmAfprmsJs74OIN0pI18ibhVZkHOcesv+9M21lA/E2+L2kb5XCI2lPr48bOU27jj9tEqyzXFY7yn8Rq8t1jzhdkAhgctydouZJyHV9XaDi5+xTe8p1OQNR5SpUmKQ6yjishipWD5RJ5/DlGDllFBg0AnbHoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732955390; c=relaxed/simple;
	bh=0fSqyzR++e7auylOPjp0yiY8ODsmjbPZaFBt/OyXsBw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UFSqlHuBJpkkpCYuw/90P5+N/o5qHZ5CaAaju3an+tlOILbBubESBL51KJlFSB6SLSWM5HZWyfCQ1k7OookCHPbWnvd3RB1v3yMALozdg53hUyjPBaGNiEXKedZlRFtOJ8TTd8drm83WVA3BIT3KZBJ0ZqyZNq4Z++LXRInCv88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HkzHa6u0; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-53de101525eso3469659e87.0
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 00:29:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732955387; x=1733560187; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YwEfcn5Pby1DuMjHVg1b1o/lcfJvv/jFNZtuiy5rgCw=;
        b=HkzHa6u0UNBNQY+pUjgl/qbTDrT6IFFvje/xc/ylVkCidfqh3wYlHHRv04jq4V1FC3
         B21z9OWxtC6fk/2yrioQcHKtnKkha5NnLRGQsFP5Oj0ORZS/jMlP4Gn0OHunTfttQY/H
         4iDauQU28wHVwxEN+cePCphA4E8S6PMCasp0wf38V5jlwS2FyCnA2tN2N7t+FSCdGg18
         l2h3LQsMw9biL+XpbCYiCiviwORV8PHhHJ9YfUOvS1PrhvGpnXaZxlP/fEH6x+TyfwJS
         tVUzcTr0JuPZETryJgmGNnEeaswkSUYXbjcD0OVBT+dVPf+Sm8j7KefxZb9JLrCamdqN
         vETA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732955387; x=1733560187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YwEfcn5Pby1DuMjHVg1b1o/lcfJvv/jFNZtuiy5rgCw=;
        b=DEyZhi32vGVwlh6frDGQgNPr/8chjuheYR/MlKJk5inhNSTHj/BACEncxqPr3+WRqJ
         xbChSK6YE8J3C7WX6FzrmAaOysdEIKeZ1L6XybymTxvLCH6ss5Rbr89tkcbDC9YDpriT
         0ExZ1wx3ieg/T27FJVaeZ5i+71DmvNAPWQl6M2KhJhczXG+qx8G803ToJeZzBIpkTcUF
         fVhtY7/Tjp7u7fLVBymvZkGVUH9ec8lwUOETfVS9lQi3ftovRqUicQzMKaIApDspTmw1
         Ja7icWfxeguJ+cn91JBVBu8QwzaK3cprHyqwZbeq8qlh6JiYIovzMg+kLnHA1L+Hqp1T
         GcNQ==
X-Forwarded-Encrypted: i=1; AJvYcCVobsGiWRNUtRv4+n7fUHeRbh3Xod/fwHy9WqP5SuQYbbOJt0vnX2IgM/B/1CDP9FV+X8en2ewWKkax@vger.kernel.org
X-Gm-Message-State: AOJu0YxzFkvBgedosgz6AwpoB+mTNfNr/9d443CL4i6aNHBVJR1pmUQ7
	7XbfwgXqDX4vHNaP9QKJuVGm5eFl6zlGbmOsdeTvSxMg01lgIxIz5Bs7g/nIIWg=
X-Gm-Gg: ASbGncvd5/WBo/lsPvOOugQUyoc7nUtL+Jgjt6O5bSQX+IopdyvuXmUOeTgr6ETRyBk
	T6Y5x3eC4q3hUZbUdCjEBmuH/DzUx3Gk3XECscC8PQ0UEOXysN/uDhxMdRaz/aBeSnixruSdDWZ
	nEVv+4tYqa2dfIz506qOWpSR6b3eWCxALnkp7yss+5fPSGlSE7QOT3+tz4VhBR+0lNnRbuQAqFm
	ksAHwn0ZwYzqOGzSy4UjwHiA/ElvKzFcHsGCw6Tgip3Ip89yulIOqUFRpCJ5zvlrE9n+Q6ayiaI
	NUfHFCAs7zkXVY190URwIEoZ3WLTxg==
X-Google-Smtp-Source: AGHT+IG7msEs9hgIu3ta16vL9mWEiaIEtxRrnODIuHdyaMtVbZhaiQTdxZhi9NhcUgHBW26OK3t30w==
X-Received: by 2002:a05:6512:3f7:b0:53d:f583:81df with SMTP id 2adb3069b0e04-53df5838209mr2781109e87.28.1732955387112;
        Sat, 30 Nov 2024 00:29:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53df64a05ebsm703544e87.255.2024.11.30.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 00:29:45 -0800 (PST)
Date: Sat, 30 Nov 2024 10:29:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <sandor.yu@nxp.com>
Cc: "andrzej.hajda@intel.com" <andrzej.hajda@intel.com>, 
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>, Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	"jonas@kwiboo.se" <jonas@kwiboo.se>, "jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>, 
	"airlied@gmail.com" <airlied@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>, 
	"robh+dt@kernel.org" <robh+dt@kernel.org>, 
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>, 
	"vkoul@kernel.org" <vkoul@kernel.org>, 
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, "mripard@kernel.org" <mripard@kernel.org>, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, 
	Oliver Brown <oliver.brown@nxp.com>, 
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [EXT] Re: [PATCH v18 6/8] phy: freescale: Add DisplayPort/HDMI
 Combo-PHY driver for i.MX8MQ
Message-ID: <foi2sizfkppmunq4yqt4pex47alsvsjyqi3rk32fwyz4f5xepn@zdsx74bzzda4>
References: <cover.1730172244.git.Sandor.yu@nxp.com>
 <411e42c70e71dce33a80059f663fb6c58fb2ac8c.1730172244.git.Sandor.yu@nxp.com>
 <efciuvoptv7qxwauswfseb6zlt5w4fmjdbm3huxfsn63a6bm7u@kfgkkvqoz5x4>
 <PAXPR04MB9448F638D47B5495CF78007AF4522@PAXPR04MB9448.eurprd04.prod.outlook.com>
 <z6p6bewmykmufsghdojr4lvziurmmfpnrr5m4w3pfjlqzobpwr@zq2d2ukjvtac>
 <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <PAXPR04MB9448D68A5CA9755036E9B23DF42F2@PAXPR04MB9448.eurprd04.prod.outlook.com>

On Tue, Nov 26, 2024 at 02:12:19PM +0000, Sandor Yu wrote:
>  
> > 
> > On Tue, Nov 05, 2024 at 02:05:51PM +0000, Sandor Yu wrote:
> > > >
> > > > On Tue, Oct 29, 2024 at 02:02:14PM +0800, Sandor Yu wrote:
> > > > > Add Cadence HDP-TX DisplayPort and HDMI PHY driver for i.MX8MQ.
> > > > >
> > > > > Cadence HDP-TX PHY could be put in either DP mode or HDMI mode
> > > > > base on the configuration chosen.
> > > > > DisplayPort or HDMI PHY mode is configured in the driver.
> > > > >
> > > > > Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> > > > > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> > > > > ---
> > > > > v17->v18:
> > > > > - fix build error as code rebase to latest kernel version.
> > > > >
> > > > >  drivers/phy/freescale/Kconfig                |   10 +
> > > > >  drivers/phy/freescale/Makefile               |    1 +
> > > > >  drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c | 1337
> > > > ++++++++++++++++++
> > > > >  3 files changed, 1348 insertions(+)  create mode 100644
> > > > > drivers/phy/freescale/phy-fsl-imx8mq-hdptx.c
> > > > >
> > > > > diff --git a/drivers/phy/freescale/Kconfig
> > > > > b/drivers/phy/freescale/Kconfig index dcd9acff6d01a..2b1210367b31c
> > > > > 100644
> > > > > --- a/drivers/phy/freescale/Kconfig
> > > > > +++ b/drivers/phy/freescale/Kconfig
> > 
> > [...]
> > 
> > I'm sorry, my email client cut the email.
> > 
> > > > > +static int cdns_hdptx_dp_configure(struct phy *phy,
> > > > > +                                union phy_configure_opts
> > *opts) {
> > > > > +     struct cdns_hdptx_phy *cdns_phy = phy_get_drvdata(phy);
> > > > > +
> > > > > +     cdns_phy->dp.link_rate = opts->dp.link_rate;
> > > > > +     cdns_phy->dp.lanes = opts->dp.lanes;
> > > >
> > > > Shouldn't this be conditional on set_rate / set_lanes ?
> > >
> > > PHY do not support reconfigure link rate and lane count.
> > 
> > So, you don't support reconfiguring the rate / count, but you still copy the new
> > rate and lanes into your driver data. That sounds strange.
> 
> The PHY will use link rate and lane count to configure its registers

I'm not sure if I follow it. Do you mean that rate / count configuration
is static?

-- 
With best wishes
Dmitry

