Return-Path: <devicetree+bounces-280412-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Lb4D5zJw2lKuAQAu9opvQ
	(envelope-from <devicetree+bounces-280412-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:40:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A37F03240A4
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 12:40:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1767F3095611
	for <lists+devicetree@lfdr.de>; Wed, 25 Mar 2026 11:27:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F26B3CD8B8;
	Wed, 25 Mar 2026 11:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b="Lve7YK+w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail11.truemail.it (mail11.truemail.it [217.194.8.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69733CEB8E;
	Wed, 25 Mar 2026 11:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.194.8.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774438060; cv=none; b=ZjQQqHC12+Bg8ZK9P0fW+9Y102FAo2CEZpjbEPT37bPqv/NGTFTwSh+7T2twTa2WS2Fjig4CJJDZNqnFgfFZ+vmXo1J2RkVLtrMTbqQtKsnFUQqyEOF71MUxLGeVThdJuNzejFvPBG18Bo9M49UHCms+bJFbdhD6kpcz1V7WqDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774438060; c=relaxed/simple;
	bh=l8k94qCXX4up4bjhSDfUE0TCZEECdzAKty2f0bEPp8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZqQWWACZ7c6h37oSM8aS7GT5+PvJsNV7s19+JFSFWfnrpOP1bEl5Lg7pKLz65SFY3daE6N07ecxGSkXLO2JcpBn7dDfEitHmFb2qqLTXCHZDyYBWlpZjDSRk1EEHx8GIIT2V9umRd8WJsOqIAacKv+RIQfOQs6ETqMpxe+VO4Rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it; spf=pass smtp.mailfrom=dolcini.it; dkim=pass (2048-bit key) header.d=dolcini.it header.i=@dolcini.it header.b=Lve7YK+w; arc=none smtp.client-ip=217.194.8.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=dolcini.it
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dolcini.it
Received: from francesco-nb (93-49-2-63.ip317.fastwebnet.it [93.49.2.63])
	by mail11.truemail.it (Postfix) with ESMTPA id 802C81FD07;
	Wed, 25 Mar 2026 12:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dolcini.it;
	s=default; t=1774438049;
	bh=S2YQAGejwfR5ZlCcWyHUSZO12iuE4GgPthnFZ7lNm/A=; h=From:To:Subject;
	b=Lve7YK+wnl2mE3II7S1FEj7bjiLJ4Anor5/kTXKOzbDteEX6YJLbLp5sEpKgWs+HP
	 gnyqs4S3EqlSWVpUJcArFe5vDEH/5XWbhZs0AG7SdvZQBWwcAGYE4MbSA9rX+A4fEt
	 QNlw7RrLFYOmOkY+Nvx21bJMBhzkQWDgbiKMQ9gdkSpM/K9hLZl/ZJidD/H2FuUgFO
	 Rh2a1ul4NWs/P9Od/YJtMYi0O+mYJiNVsJNUqYN7T94SwQO1n6bjGu7cTY27EAsjTg
	 ixYp+Dyubh61gmf4Br4fuY2aQYRtLzjsE4nLkLTQCSLYGVJL0ilLkPuqEpYI+qUHSh
	 79tkNmj1ic8kw==
Date: Wed, 25 Mar 2026 12:27:24 +0100
From: Francesco Dolcini <francesco@dolcini.it>
To: Frank Li <Frank.li@nxp.com>
Cc: Ernest Van Hoecke <ernestvanhoecke@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Ernest Van Hoecke <ernest.vanhoecke@toradex.com>,
	Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 2/6] arm64: dts: freescale: Add Verdin iMX95 support
Message-ID: <20260325112724.GA7964@francesco-nb>
References: <20260313-verdin-imx95-upstream-frank-li-base-v2-0-bd488be7c699@toradex.com>
 <20260313-verdin-imx95-upstream-frank-li-base-v2-2-bd488be7c699@toradex.com>
 <acK4awcokUyCHrG5@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <acK4awcokUyCHrG5@lizhi-Precision-Tower-5810>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[dolcini.it,none];
	R_DKIM_ALLOW(-0.20)[dolcini.it:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-280412-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,pengutronix.de,toradex.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[francesco@dolcini.it,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[dolcini.it:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[toradex.com:email,toradex.com:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,dolcini.it:dkim]
X-Rspamd-Queue-Id: A37F03240A4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 24, 2026 at 12:14:35PM -0400, Frank Li wrote:
> On Fri, Mar 13, 2026 at 09:57:43AM +0100, Ernest Van Hoecke wrote:
> > From: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
> >
> > Add support for the Toradex Verdin iMX95 and its development carrier
> > board.
> >
> > The module consists of an NXP i.MX95 family SoC, up to 16GB LPDDR4x RAM,
> > up to 128GB of storage, a USB 3.2 OTG and USB 2.0 Host, a Gigabit
> > Ethernet PHY, an I2C EEPROM and Temperature Sensor, an RX8130 RTC, an
> > I3C bus, one Quad lane CSI interface, one Quad lane DSI or CSI
> > interface, one LVDS interface (one or two channels), and some optional
> > addons: TPM 2.0, and a WiFi/BT module.
> >
> > Link: https://www.toradex.com/computer-on-modules/verdin-arm-family/nxp-imx95
> > Link: https://www.toradex.com/products/carrier-board/verdin-development-board-kit
> > Co-developed-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> > Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> > Co-developed-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> > Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>
> > Signed-off-by: Ernest Van Hoecke <ernest.vanhoecke@toradex.com>
> > ---
> > v2: Reordered nodes alphanumerically by node name
> > v1: https://lore.kernel.org/all/20260305-verdin-imx95-upstream-frank-li-base-v1-2-823fad02def9@toradex.com/
> > ---
> > +
> > +/* Verdin UART_1, connector X50 through RS485 transceiver */
> > +&lpuart7 {
> > +	rs485-rts-active-low;
> > +	rs485-rx-during-tx;
> > +	linux,rs485-enabled-at-boot-time;
> > +
> 
> Nit: needn't empty line between status and other property, suggest run
> https://github.com/lznuaa/dt-format to speed up process.

Please review Documentation/devicetree/bindings/dts-coding-style.rst.

Quoting from there
 > "status" (if applicable), preceded by a blank line if there is content before the property

I would be careful on taking every detail of such a style guide literally,
but your comment here is not correct and it's not helping anyone.

Francesco


