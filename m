Return-Path: <devicetree+bounces-68784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4B188CDA0C
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 20:36:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BE41281776
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2024 18:36:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73CB182C6B;
	Thu, 23 May 2024 18:36:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA1B433A4
	for <devicetree@vger.kernel.org>; Thu, 23 May 2024 18:36:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716489387; cv=none; b=ihM1d4Q5LOgch0EWR0CLd4G4g2o9hKBp/3ZC/GIxvB3cK0zhXA1iwSYmaf8+Ntnd9wJ/Nj0LRKj5JHKazVgAhUMUGh8swSrLYvNYIip9WazIkslqeAexA6t7q0k/ZZz0k5BMcceq5bYEIQTGF8sR/tX7BSQZYIL/GXCedXzS+lE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716489387; c=relaxed/simple;
	bh=5RUAp8ZjGFL4XRjmweHbAxKTYu3FMUhMMQO7Zf2Hno4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n3ITYqdfZSJpMsqnH5hOtPjPXgmwOaosBV+WZSjAOE/nOLO2VF2Wsj2ySk+GC2mCx0QYPcRRa14+uo3zoNNyktJO1j9U6Ye6b9KWanimCVHjX7Fg1BgtWflFeW7+iv1PGbZvgpFutRCt6UsXO3VuFqtH+q5vCk+Fcv3ntIsVpvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1sADIG-0005dy-Sc; Thu, 23 May 2024 20:36:00 +0200
Received: from [2a0a:edc0:2:b01:1d::c5] (helo=pty.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1sADIF-002hBH-U5; Thu, 23 May 2024 20:35:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1sADIF-009tpb-2g;
	Thu, 23 May 2024 20:35:59 +0200
Date: Thu, 23 May 2024 20:35:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Pankaj Gupta <pankaj.gupta@nxp.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"imx@lists.linux.dev" <imx@lists.linux.dev>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: [EXT] Re: [PATCH v2 4/5] firmware: imx: add driver for NXP
 EdgeLock Enclave
Message-ID: <Zk-Mj43f43YFrf50@pengutronix.de>
References: <20240523-imx-se-if-v2-0-5a6fd189a539@nxp.com>
 <20240523-imx-se-if-v2-4-5a6fd189a539@nxp.com>
 <Zk9DV6Ko-KO0kym_@pengutronix.de>
 <AM9PR04MB86047218A243EEB5BA79F69D95F42@AM9PR04MB8604.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <AM9PR04MB86047218A243EEB5BA79F69D95F42@AM9PR04MB8604.eurprd04.prod.outlook.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

On Thu, May 23, 2024 at 01:43:46PM +0000, Pankaj Gupta wrote:
> 
> 
> > -----Original Message-----
> > From: Sascha Hauer <s.hauer@pengutronix.de>
> > Sent: Thursday, May 23, 2024 6:54 PM
> > To: Pankaj Gupta <pankaj.gupta@nxp.com>
> > Cc: Jonathan Corbet <corbet@lwn.net>; Rob Herring <robh+dt@kernel.org>;
> > Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>; Conor Dooley
> > <conor+dt@kernel.org>; Shawn Guo <shawnguo@kernel.org>; Pengutronix
> > Kernel Team <kernel@pengutronix.de>; Fabio Estevam
> > <festevam@gmail.com>; Rob Herring <robh@kernel.org>; Krzysztof Kozlowski
> > <krzk+dt@kernel.org>; linux-doc@vger.kernel.org; linux-
> > kernel@vger.kernel.org; devicetree@vger.kernel.org; imx@lists.linux.dev;
> > linux-arm-kernel@lists.infradead.org
> > Subject: [EXT] Re: [PATCH v2 4/5] firmware: imx: add driver for NXP EdgeLock
> > Enclave
> >
> > Caution: This is an external email. Please take care when clicking links or
> > opening attachments. When in doubt, report the message using the 'Report
> > this email' button
> >
> >
> > On Thu, May 23, 2024 at 04:19:35PM +0530, Pankaj Gupta wrote:
> > > NXP hardware IP(s) for secure-enclaves like Edgelock Enclave(ELE), are
> > > embedded in the SoC to support the features like HSM, SHE & V2X, using
> > > message based communication interface.
> > >
> > > The secure enclave FW communicates on a dedicated messaging unit(MU)
> > > based interface(s) with application core, where kernel is running.
> > > It exists on specific i.MX processors. e.g. i.MX8ULP, i.MX93.
> > >
> > > This patch adds the driver for communication interface to
> > > secure-enclave, for exchanging messages with NXP secure enclave HW
> > > IP(s) like EdgeLock Enclave (ELE) from Kernel-space, used by kernel
> > > management layers like
> > > - DM-Crypt.
> > >
> > > Signed-off-by: Pankaj Gupta <pankaj.gupta@nxp.com>
> > > ---
> > >  drivers/firmware/imx/Kconfig        |  12 +
> > >  drivers/firmware/imx/Makefile       |   2 +
> > >  drivers/firmware/imx/ele_base_msg.c | 286 +++++++++++++++++++
> > > drivers/firmware/imx/ele_base_msg.h |  92 +++++++
> > >  drivers/firmware/imx/ele_common.c   | 239 ++++++++++++++++
> > >  drivers/firmware/imx/ele_common.h   |  43 +++
> > >  drivers/firmware/imx/se_ctrl.c      | 531
> > ++++++++++++++++++++++++++++++++++++
> > >  drivers/firmware/imx/se_ctrl.h      |  99 +++++++
> > >  include/linux/firmware/imx/se_api.h |  14 +
> > >  9 files changed, 1318 insertions(+)
> >
> > [...]
> >
> > >
> > > +int imx_ele_msg_send(struct se_if_priv *priv, void *tx_msg) {
> > > +     struct se_msg_hdr *header;
> > > +     int err;
> > > +
> > > +     header = (struct se_msg_hdr *) tx_msg;
> > > +
> > > +     if (header->tag == priv->cmd_tag)
> > > +             lockdep_assert_held(&priv->se_if_cmd_lock);
> > > +
> > > +     scoped_guard(mutex, &priv->se_if_lock);
> >
> > scoped_guard() with an empty block doesn't make much sense. Either use
> > scope_guard() { /* do something locked */ }; or guard().
> >
> Need to allow send more than one message at a time. Hence, done it after taking the lock.
> Once message sent, scope of lock is over.

You take the lock and release it immediately afterwards. There's nothing
locked with this. Please have a look how scoped_guard() works.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

