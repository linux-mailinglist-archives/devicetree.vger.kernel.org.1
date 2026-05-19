Return-Path: <devicetree+bounces-300010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPuSFL8+DGqqawUAu9opvQ
	(envelope-from <devicetree+bounces-300010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:43:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FD7657CAB8
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 12:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B7439307AC94
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 10:31:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23E2D31F988;
	Tue, 19 May 2026 10:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdNr/RJd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE7FE233957;
	Tue, 19 May 2026 10:31:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779186717; cv=none; b=qKlfMu+oD3A3GFpP87y44gWzG+yxLTy9R47YHfuH7OxZ3mTXM2KQCPqVGVhlNqeUrNkd3w8uwX1bx10s4G+OsK3iNrBNjj7aIyf8XuOz/YBHPaaEQ1tYXcBKsrW11kh2PBDicrnLZTYnZ7C6cIz4VN4QxmsyJ0+FCbWIG1SGNhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779186717; c=relaxed/simple;
	bh=+pVjRCef2fx1wi/94V9Q9YLIKI0OIkOkvW/Td8OA66c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=baEYyq+MUo3f8oyyChGfzafZgKFoKWxWp75YPjancJXbeJ9VEVATZcsG+asWbYNonDSK032JeAu5/Q9YGIEfoh6Xg8ozl/lqRWdR5EJWf3MJFp14+Ay5Y8xU57ysn5Rrb8dRYZqFH5reYk87alfvx8PhuYNaWrmfZM44SYE88To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdNr/RJd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E40DC2BCB3;
	Tue, 19 May 2026 10:31:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779186716;
	bh=+pVjRCef2fx1wi/94V9Q9YLIKI0OIkOkvW/Td8OA66c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kdNr/RJdErIY9+7bHbp4T3wbfDSwMqwFtAzQRJzv0L4oX1ofQCCt5bUkBgs2KhxnG
	 Do9r2dZK3fqYGaRq+C7pBCxbE5IFtwP7k0cRNDR1R5x/Aeep33imJEuoe9Rd0r+B2b
	 u7dAjaWQvkvnVj7xeRIJ1O0AZb6UCf0wvzd6QvIeiv5cVgbUTBtBrQCRbx+S1Q9xG+
	 yqfx1gHpOyaqd+6FTm/T7HLV2/c5kfiOcHB5nY8/QePaplbOfONmxMPAmJjUvlfyYL
	 SrTiW5KJN2oRojwB20yeeIoopjp6SnLRhHXKL3IGNjmqBmGsYM2UUdeIVfsYYPJPSe
	 dAIiEblMf9GKA==
Date: Tue, 19 May 2026 16:01:53 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, johan@kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 phy-next 2/2] phy: ti: add PHY driver for TI
 DS125DF111 Dual-Channel Retimer
Message-ID: <agw8GeTLAZJ8XU8-@vaman>
References: <20260516060309.2282592-1-ioana.ciornei@nxp.com>
 <20260516060309.2282592-3-ioana.ciornei@nxp.com>
 <agnu5Mmf_d8zvWXH@vaman>
 <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fkosq3es6lqzabowzpppgsal4lhctb4qyr6ypmazm7vwekd7ix@elffqa6kx5jp>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300010-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vkoul@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,ti.com:url,ti.com:email,infradead.org:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,nxp.com:email]
X-Rspamd-Queue-Id: 9FD7657CAB8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18-05-26, 10:29, Ioana Ciornei wrote:
> On Sun, May 17, 2026 at 10:07:56PM +0530, Vinod Koul wrote:
> > On 16-05-26, 09:03, Ioana Ciornei wrote:
> > > Add a generic PHY driver for the TI DS125DF111 Multi-Protocol
> > > Dual-Channel Retimer. The driver currently supports only 10G and 1G link
> > > speeds but it can easily extended to also cover other usecases.
> > > 
> > > Since the available datasheet (https://www.ti.com/lit/gpn/DS125DF111)
> > > does not name the registers, the name for the macros were determined by
> > > their usage pattern.
> > > 
> > > A PHY device is created for each of the two channels present on the
> > > retimer. This allows for independent configuration of the two channels.
> > > This capability is especially important on retimers which have more than
> > > 2 channels that can be, depending on the board design, connected in
> > > multiple different ways to the SerDes lanes.
> > > 
> > > Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> > > ---
> > > Changes in v3:
> > > - Use reverse Christmas tree ordering
> > > - Print a symbolic description in case of error
> > > - Some words do not need to be capitalized
> > > - Remove duplicated exit code path
> > > - Return -EINVAL in case of unsupported submode received in .set_mode()
> > > - Add a .validate() callback
> > > - Remove comma after sentinel entry
> > > - Add a ds125df111_rmw() helper
> > > - Use read_poll_timeout() to wait for channel reset to complete
> > > 
> > > Changes in v2:
> > > - Explicitly include all the needed headers
> > > - Change ds125df111_xlate() so that it returns an error if args_count is
> > > not exactly 1
> > > - Add a MAINTAINERS entry
> > > ---
> > >  MAINTAINERS                     |   7 +
> > >  drivers/phy/ti/Kconfig          |  10 ++
> > >  drivers/phy/ti/Makefile         |   1 +
> > >  drivers/phy/ti/phy-ds125df111.c | 294 ++++++++++++++++++++++++++++++++
> > >  4 files changed, 312 insertions(+)
> > >  create mode 100644 drivers/phy/ti/phy-ds125df111.c
> > > 
> > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > index f877e5aaf2c7..58f410b666e7 100644
> > > --- a/MAINTAINERS
> > > +++ b/MAINTAINERS
> > > @@ -26781,6 +26781,13 @@ T:	git git://linuxtv.org/mhadli/v4l-dvb-davinci_devices.git
> > >  F:	drivers/media/platform/ti/davinci/
> > >  F:	include/media/davinci/
> > >  
> > > +TI DS125DF111 RETIMER PHY DRIVER
> > > +M:	Ioana Ciornei <ioana.ciornei@nxp.com>
> > > +L:	linux-phy@lists.infradead.org (moderated for non-subscribers)
> > > +S:	Maintained
> > > +F:	Documentation/devicetree/bindings/phy/ti,ds125df111.yaml
> > > +F:	drivers/phy/ti/phy-ds125df111.c
> > > +
> > >  TI ENHANCED CAPTURE (eCAP) DRIVER
> > >  M:	Vignesh Raghavendra <vigneshr@ti.com>
> > >  R:	Julien Panis <jpanis@baylibre.com>
> > > diff --git a/drivers/phy/ti/Kconfig b/drivers/phy/ti/Kconfig
> > > index b40f28019131..475e80fcd52d 100644
> > > --- a/drivers/phy/ti/Kconfig
> > > +++ b/drivers/phy/ti/Kconfig
> > > @@ -111,3 +111,13 @@ config PHY_TI_GMII_SEL
> > >  	help
> > >  	  This driver supports configuring of the TI CPSW Port mode depending on
> > >  	  the Ethernet PHY connected to the CPSW Port.
> > > +
> > > +config PHY_TI_DS125DF111
> > 
> > This should be in alphabetical order, so I guess before PHY_TI_G...
> 
> Now that I actually tried to make the change that you requested, I
> realised that the Kconfig is not following any alphabetical order. And
> neither does the Makefile.
> 
> Do you still want me to move the entries?

Yes please. I will sort this one later in the cycle again!

-- 
~Vinod

