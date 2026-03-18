Return-Path: <devicetree+bounces-277210-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHzhKH+iummyZwIAu9opvQ
	(envelope-from <devicetree+bounces-277210-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:02:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 211792BBEA5
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:02:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9CFDF301A7C0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 13:02:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEBF23D6CC0;
	Wed, 18 Mar 2026 13:02:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA233D6467
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 13:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773838969; cv=none; b=Z8/I8r6UQirXkwuzcAi0PyTg3j7ToJ2Fshcx4Y43Env+DSj+t3FIjbfkkUXvkimp4nov1FDYcA4zvM6d3XzdQLb5hKqDL3e1HnXg8JqZt7lDnoyt279ypVd6CTuyofDbm3uwDQgKyy+a9Q1Aa35Ab0cNrmilLnVQddEHjaNi8JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773838969; c=relaxed/simple;
	bh=bfvFjikoFhI+X0NEQ8Xf0MT0tf4D9Y6TrcsEe7x3N4Q=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RMRcUqEFcTyfYCWy0XiBFJZ8uN4CitYsxOcHqqEOYrTmouLdu2uzaAH6ZJJKXgIAyfmbIbGHqPyXY6k9X1hwMsKvC/WhIjrBhq9auQW2vSCMzXpaSFq5fctLNvVdEQ56lMv7mxIbW5liqNjw42sAfJ7gSr4+V+kCRKVJcf0VPHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w2qXm-0004sx-Gk; Wed, 18 Mar 2026 14:02:38 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w2qXm-000ufB-0L;
	Wed, 18 Mar 2026 14:02:38 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1w2qXm-000000009pv-03B9;
	Wed, 18 Mar 2026 14:02:38 +0100
Message-ID: <105290d6ece59ef9570c07db5bda50854c6b78a1.camel@pengutronix.de>
Subject: Re: [PATCH v4 03/10] clk: realtek: Add basic reset support
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yu-Chun Lin =?UTF-8?Q?=5B=E6=9E=97=E7=A5=90=E5=90=9B=5D?=
	 <eleanor.lin@realtek.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"	
 <sboyd@kernel.org>, "robh@kernel.org" <robh@kernel.org>,
 "krzk+dt@kernel.org"	 <krzk+dt@kernel.org>, "conor+dt@kernel.org"
 <conor+dt@kernel.org>, Edgar Lee
 =?UTF-8?Q?=5B=E6=9D=8E=E6=89=BF=E8=AB=AD=5D?=	 <cylee12@realtek.com>,
 "afaerber@suse.com" <afaerber@suse.com>, Jyan Chou
 =?UTF-8?Q?=5B=E5=91=A8=E8=8A=B7=E5=AE=89=5D?=	 <jyanchou@realtek.com>,
 "devicetree@vger.kernel.org"	 <devicetree@vger.kernel.org>,
 "linux-clk@vger.kernel.org"	 <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org"	 <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"	
 <linux-arm-kernel@lists.infradead.org>, 
 "linux-realtek-soc@lists.infradead.org"	
 <linux-realtek-soc@lists.infradead.org>, James Tai
 =?UTF-8?Q?=5B=E6=88=B4=E5=BF=97=E5=B3=B0=5D?=	 <james.tai@realtek.com>, 
 =?UTF-8?Q?CY=5FHuang=5B=E9=BB=83=E9=89=A6=E6=99=8F=5D?=	
 <cy.huang@realtek.com>, Stanley
 =?UTF-8?Q?Chang=5B=E6=98=8C=E8=82=B2=E5=BE=B7=5D?=	
 <stanley_chang@realtek.com>
Date: Wed, 18 Mar 2026 14:02:37 +0100
In-Reply-To: <907b6a0128904309991f0a4a9000d8f1@realtek.com>
References: <20260313081100.596224-1-eleanor.lin@realtek.com>
	 <20260313081100.596224-4-eleanor.lin@realtek.com>
	 <20260314-silky-goshawk-of-penetration-f00964@quoll>
	 <907b6a0128904309991f0a4a9000d8f1@realtek.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-0+deb13u1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277210-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.900];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,realtek.com:email]
X-Rspamd-Queue-Id: 211792BBEA5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Di, 2026-03-17 at 02:12 +0000, Yu-Chun Lin [=E6=9E=97=E7=A5=90=E5=90=9B]=
 wrote:
> > On Fri, Mar 13, 2026 at 04:10:53PM +0800, Yu-Chun Lin wrote:
> > > From: Cheng-Yu Lee <cylee12@realtek.com>
> > >=20
> > > Define the reset operations backed by a regmap-based register
> > > interface and prepare the reset controller to be registered through
> > > the reset framework.
> > >=20
> > > Signed-off-by: Cheng-Yu Lee <cylee12@realtek.com>
> > > Co-developed-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> > > Signed-off-by: Yu-Chun Lin <eleanor.lin@realtek.com>
> > > ---
> > > Changes in v4:
> > > - Add forward declaration for struct regmap in reset.h.
> > > - Move struct rtk_reset_data definition into reset.c as it's only use=
d there.
> > > - Remove rtk_reset_reset() due to unnecessary implementation.
> > > - Remove unnecessary parameter from rtk_reset_get_id().
> > > ---
> > > =C2=A0MAINTAINERS                  |   1 +
> > > =C2=A0drivers/clk/Kconfig          |   1 +
> > > =C2=A0drivers/clk/Makefile         |   1 +
> > > =C2=A0drivers/clk/realtek/Kconfig  |  27 ++++++++++
> > > =C2=A0drivers/clk/realtek/Makefile |   4 ++
> > > =C2=A0drivers/clk/realtek/reset.c  | 104
> > > +++++++++++++++++++++++++++++++++++
> > > =C2=A0drivers/clk/realtek/reset.h  |  28 ++++++++++
> > > =C2=A07 files changed, 167 insertions(+)
> > > =C2=A0create mode 100644 drivers/clk/realtek/Kconfig  create mode 100=
644
> > > drivers/clk/realtek/Makefile  create mode 100644
> > > drivers/clk/realtek/reset.c  create mode 100644
> > > drivers/clk/realtek/reset.h
> > >=20
> > > diff --git a/MAINTAINERS b/MAINTAINERS index
> > > 9b7d64cc8d90..53a2f3575c37 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -22247,6 +22247,7 @@ L:    devicetree@vger.kernel.org
> > > =C2=A0L:   linux-clk@vger.kernel.org
> > > =C2=A0S:   Supported
> > > =C2=A0F:   Documentation/devicetree/bindings/clock/realtek*
> > > +F:   drivers/clk/realtek/*
> > > =C2=A0F:   include/dt-bindings/clock/realtek*
> > >=20
> > > =C2=A0REALTEK SPI-NAND
> > > diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig index
> > > 3d803b4cf5c1..d60f6415b0a3 100644
> > > --- a/drivers/clk/Kconfig
> > > +++ b/drivers/clk/Kconfig
> > > @@ -519,6 +519,7 @@ source "drivers/clk/nuvoton/Kconfig"
> > > =C2=A0source "drivers/clk/pistachio/Kconfig"
> > > =C2=A0source "drivers/clk/qcom/Kconfig"
> > > =C2=A0source "drivers/clk/ralink/Kconfig"
> > > +source "drivers/clk/realtek/Kconfig"
> > > =C2=A0source "drivers/clk/renesas/Kconfig"
> > > =C2=A0source "drivers/clk/rockchip/Kconfig"
> > > =C2=A0source "drivers/clk/samsung/Kconfig"
> > > diff --git a/drivers/clk/Makefile b/drivers/clk/Makefile index
> > > f7bce3951a30..69b84d1e7bcc 100644
> > > --- a/drivers/clk/Makefile
> > > +++ b/drivers/clk/Makefile
> > > @@ -140,6 +140,7 @@ obj-$(CONFIG_COMMON_CLK_PISTACHIO)
> > +=3D pistachio/
> > > =C2=A0obj-$(CONFIG_COMMON_CLK_PXA)         +=3D pxa/
> > > =C2=A0obj-$(CONFIG_COMMON_CLK_QCOM)                +=3D qcom/
> > > =C2=A0obj-y                                        +=3D ralink/
> > > +obj-$(CONFIG_COMMON_CLK_REALTEK)     +=3D realtek/
> > > =C2=A0obj-y                                        +=3D renesas/
> > > =C2=A0obj-$(CONFIG_ARCH_ROCKCHIP)          +=3D rockchip/
> > > =C2=A0obj-$(CONFIG_COMMON_CLK_SAMSUNG)     +=3D samsung/
> > > diff --git a/drivers/clk/realtek/Kconfig b/drivers/clk/realtek/Kconfi=
g
> > > new file mode 100644 index 000000000000..121158f11dd1
> > > --- /dev/null
> > > +++ b/drivers/clk/realtek/Kconfig
> > > @@ -0,0 +1,27 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only config COMMON_CLK_REALTEK
> > > +     bool "Clock driver for Realtek SoCs"
> > > +     depends on ARCH_REALTEK || COMPILE_TEST
> > > +     default y
> > > +     help
> > > +       Enable the common clock framework infrastructure for Realtek
> > > +       system-on-chip platforms.
> > > +
> > > +       This provides the base support required by individual Realtek
> > > +       clock controller drivers to expose clocks to peripheral devic=
es.
> > > +
> > > +       If you have a Realtek-based platform, say Y.
> > > +
> > > +if COMMON_CLK_REALTEK
> > > +
> > > +config RTK_CLK_COMMON
> > > +     tristate "Realtek Clock Common"
> >=20
> > Reset drivers go to reset directory.
>=20
> Several vendors (e.g. qcom, mediatek, visconti) also place reset code in
> drivers/clk/ when the reset controller is integrated with the clock contr=
oller.

Mostly for historical reasons (qcom and mediatek drivers were
implemented long before the auxiliary bus existed).

Can you turn this into an auxiliary device driver under drivers/reset?

regards
Philipp

