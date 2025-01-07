Return-Path: <devicetree+bounces-136240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DBFA045A6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 17:11:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 858993A51E5
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 16:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 257971F3D2D;
	Tue,  7 Jan 2025 16:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="UqYBbtj1";
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="jq/MXzcb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3341D8A16;
	Tue,  7 Jan 2025 16:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736266295; cv=none; b=u7n4zkAAwZJcpTc73WTQrSjjquiB+Z8gWaNoEjrBmuGLBrHW8yPnmgsNKUfd9uhh3JKG5bCEquEVuHdMAkclZOGM5Tlt/IqR4ixLZbgTYUbMoMohbLe2wHC+D8Dp0ay2MynNFkaoSEG7PBHhc9vnxanIfXI8NdJ5AZAjQM9qPMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736266295; c=relaxed/simple;
	bh=X4JYLbm0X+/P8hX601BSc7rL+oKUYptgEJImu1hoWpQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NFTUj3euuNWudiuP+D5Toqja0NgEwvYtRRgNhTgBHRqmB0GMCyO/rCJzAROuzdGhEi3mlw/Mw22EYc0fNTXDgIilTlTDzGTlrmBhczYO1Enb8QDSgOrnxkyN9N0je7rW1HrFsztGpF6jkbkukbA9cwtVUw2jfpfd/MaUfssBn9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=UqYBbtj1; dkim=fail (0-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=jq/MXzcb reason="key not found in DNS"; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1736266290; x=1767802290;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=fpObqAoXYGDuXmd7OJbLt1uD81iqZ65kmp4O9tlZlR0=;
  b=UqYBbtj193ku2o87haaEjj8sNNR6KDaxSkfzGozHN9Bk8/6tC/QoWEUd
   yLl0CmAwrzk5dsXdBoJI07surD7ckqBmgHtHLwKmXaEYJvCUpdXrQd6aI
   3bO4BQkIz7CdwmaJk8Bo0tqxMiqntFfFbQZy/SWIt95E8tE2xjV1ffZQx
   lrj8YU2bZvzFChARX6qsp+kc/WlqPIIPGhfBoOalzMwB3zzYNHmZJ5Gci
   9A33sKPnDWD5fvkDESuQeK1hw6KC+fgkr8pjaMfOi9meH4dqSu3PZ032Z
   imc2nekQqMzm701/i37rA46tL+N3743Fj+fJLeYe1E3d1xaDUfGeAhqvh
   Q==;
X-CSE-ConnectionGUID: zfmTbFAKS+6qkYkoNxcPMg==
X-CSE-MsgGUID: vix0vpW6SK2bT7vB7tR6vQ==
X-IronPort-AV: E=Sophos;i="6.12,296,1728943200"; 
   d="scan'208";a="40899285"
Received: from vmailcow01.tq-net.de ([10.150.86.48])
  by mx1.tq-group.com with ESMTP; 07 Jan 2025 17:11:27 +0100
X-CheckPoint: {677D522F-17-1CE016C0-E589DA3E}
X-MAIL-CPID: E868A18D3CE8DA83F2851A3B639ED350_1
X-Control-Analysis: str=0001.0A682F1C.677D5230.002F,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id ACDDE164C41;
	Tue,  7 Jan 2025 17:11:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ew.tq-group.com;
	s=dkim; t=1736266283;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=fpObqAoXYGDuXmd7OJbLt1uD81iqZ65kmp4O9tlZlR0=;
	b=jq/MXzcbHKMcyfTWpycQVV4XyGhaio9YN4lyLQ7Aoif8Z6K4ksVdzwyi+bWk2nJ4A1J8EU
	M+3+8ccRu0FvM57ycTvP9U8RIQkTp2XU97jRI4nRx6q3+5DJzClnOOKjEkB6Wa7nymoOTV
	VEa26nf/HBRs7kMGffGPRi9zqaqkbY2ScY4Njzy8GuGE/P0C4Oodb7kWDj1utcXBen7Tn4
	K4xTKkd8t8NPPcDddWcKFMtYbvpilaLRf2IN5tQnMS5cybm1k8K+7ZyaV9Vk2kqENp92Qy
	u/R9Bhp+OhaNbCwPtQOJGOgWSb7hnwL0HcOUK4mn0SFQtyDcnKjPt2Jfpz0iRw==
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: "dmitry.baryshkov@linaro.org" <dmitry.baryshkov@linaro.org>,
	"andrzej.hajda@intel.com" <andrzej.hajda@intel.com>,
	"neil.armstrong@linaro.org" <neil.armstrong@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	"jonas@kwiboo.se" <jonas@kwiboo.se>,
	"jernej.skrabec@gmail.com" <jernej.skrabec@gmail.com>,
	"airlied@gmail.com" <airlied@gmail.com>,
	"daniel@ffwll.ch" <daniel@ffwll.ch>,
	"robh+dt@kernel.org" <robh+dt@kernel.org>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"vkoul@kernel.org" <vkoul@kernel.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-phy@lists.infradead.org" <"li nux-phy"@lists.infradead.org>,
	"mripard@kernel.org" <mripard@kernel.org>,
	Sandor Yu <sandor.yu@nxp.com>
Cc: "kernel@pengutronix.de" <kernel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>, Oliver Brown <oliver.brown@nxp.com>, "sam@ravnborg.org" <sam@ravnborg.org>
Subject: Re: [PATCH v20 0/8] Initial support Cadence MHDP8501(HDMI/DP) for i.MX8MQ
Date: Tue, 07 Jan 2025 17:11:18 +0100
Message-ID: <7783214.EvYhyI6sBW@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <PAXPR04MB94483B3704FB62E12A009390F4112@PAXPR04MB9448.eurprd04.prod.outlook.com>
References: <cover.1734340233.git.Sandor.yu@nxp.com> <2381464.ElGaqSPkdT@steina-w> <PAXPR04MB94483B3704FB62E12A009390F4112@PAXPR04MB9448.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-Last-TLS-Session-Version: TLSv1.3

Hi,

Am Dienstag, 7. Januar 2025, 15:42:56 CET schrieb Sandor Yu:
> Hi Alexander
>=20
> It may cause by the first preferred mode in EDID is not supported by driv=
er.
> Please use modetest or other user application to change the video mode to=
 CTA standard modes.
> Such as148.5MHz 1080p60 or 594MHz 3840x2160p60.

No, the EDID does not affect the issue. I resurrected series v14 and
HDMI does work without any issues at 1920x1080.
If I can find a time slot maybe I can check which series version regresses.

Best regards,
Alexander

>=20
> >
> > Hi Sandor,
> >
> > thanks for the updates.
> >
> > Am Dienstag, 17. Dezember 2024, 07:51:42 CET schrieb Sandor Yu:
> > > The patch set initial support Cadence MHDP8501(HDMI/DP) DRM bridge
> > > driver and Cadence HDP-TX PHY(HDMI/DP) driver for Freescale i.MX8MQ.
> > >
> > > The patch set compose of DRM bridge drivers and PHY driver.
> > >
> > > Both of them need by patch #1 and #3 to pass build.
> > >
> > > DRM bridges driver patches:
> > >   #1: soc: cadence: Create helper functions for Cadence MHDP
> > >   #2: drm: bridge: cadence: Update mhdp8546 mailbox access functions
> > >   #3: phy: Add HDMI configuration options
> > >   #4: dt-bindings: display: bridge: Add Cadence MHDP8501
> > >   #5: drm: bridge: Cadence: Add MHDP8501 DP/HDMI driver
> > >
> > > PHY driver patches:
> > >   #1: soc: cadence: Create helper functions for Cadence MHDP
> > >   #3: phy: Add HDMI configuration options
> > >   #6: dt-bindings: phy: Add Freescale iMX8MQ DP and HDMI PHY
> > >   #7: phy: freescale: Add DisplayPort/HDMI Combo-PHY driver for
> > > i.MX8MQ
> > >
> > > i.MX8M/TQMa8Mx DT patches:
> > >   #8: Add DT nodes for DCSS/HDMI pipeline
> > >   #9: Enable HDMI for TQMa8Mx/MBa8Mx
> > >
> >
> > I gave this version a new try but unfortunately the display stays black.
> > Although the display pipeline is intialized and even wayland starts.
> > Do you have any idea where to start looking?
> >
> > Best regards,
> > Alexander
> > --
> > TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
> > Amtsgericht M=FCnchen, HRB 105018
> > Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
> > http://www.tq/
> > -group.com%2F&data=3D05%7C02%7CSandor.yu%40nxp.com%7C734ea27ba98
> > 140b7483e08dd2eed1276%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%
> > 7C0%7C638718317967624410%7CUnknown%7CTWFpbGZsb3d8eyJFbXB0eU
> > 1hcGkiOnRydWUsIlYiOiIwLjAuMDAwMCIsIlAiOiJXaW4zMiIsIkFOIjoiTWFpbCIs
> > IldUIjoyfQ%3D%3D%7C0%7C%7C%7C&sdata=3D1HdQdbye9p5AHoT7JCF3Md%
> > 2FB9k9tyN%2FW25YKCEngvWM%3D&reserved=3D0
> >
>=20
>=20
>=20


=2D-=20
TQ-Systems GmbH | M=FChlstra=DFe 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht M=FCnchen, HRB 105018
Gesch=E4ftsf=FChrer: Detlef Schneider, R=FCdiger Stahl, Stefan Schneider
http://www.tq-group.com/



