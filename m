Return-Path: <devicetree+bounces-259358-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wHmQA3sWd2k1cAEAu9opvQ
	(envelope-from <devicetree+bounces-259358-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:23:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EF684D09
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 08:23:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 860053001068
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:23:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D2C88225A3D;
	Mon, 26 Jan 2026 07:23:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC09219301
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 07:23:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769412212; cv=none; b=GlKV/xu2P/4R9IT7Z6XXl2XdShu+ydn/VV+4cTMLAWmZ18MELIIgDmFFkoQWLyVvBVJ4EGtoKeQV5F/VIl/a4nkzfrFa1KYwYDn1xkHlDI6pSjcJZFXY1ASE993wfBovne14HIZiTWwTxNxUqBSZ+I8t4uMQpUCp9oVFfKWNk4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769412212; c=relaxed/simple;
	bh=JeYD5AtiNqcXEAO9bt0FtHN4bDtIwFuJFUCK3lyjKok=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=S8iHwWFSDLzIwHC8x8onvujWB3J6badZyF1VqcPClMv5sbmip4+1UweYNCiawj16youjaTEJVrc4Sqj6PFPWOU1hUXR4iNgAurfj/sUH99tB3oAOKwL1WEg93UDbZN8Xc88JfumDSYz3UYrhmv23ooiZtNdyQ2GixS2mHrPN12k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkGwT-0005aD-PO; Mon, 26 Jan 2026 08:23:21 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkGwS-002XgO-0I;
	Mon, 26 Jan 2026 08:23:19 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vkGwR-000000002hB-1PKm;
	Mon, 26 Jan 2026 08:23:19 +0100
Message-ID: <ca32359d08c642bd68133a8960315a80490f4da7.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/3] reset: tenstorrent: Add reset controller for
 Atlantis
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>, Joel Stanley	
 <jms@oss.tenstorrent.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Michael Turquette	 <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, 	linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, joel@jms.id.au, 	fustini@kernel.org,
 mpe@kernel.org, mpe@oss.tenstorrent.com, 	npiggin@oss.tenstorrent.com,
 agross@kernel.org, agross@oss.tenstorrent.com, 	bmasney@redhat.com
Date: Mon, 26 Jan 2026 08:23:19 +0100
In-Reply-To: <CAEev2e_6PePu3omq-Zf1R-8TYikgz9V1cp6cwn0nZ8LaPHaJ2A@mail.gmail.com>
References: <20260122-atlantis-clocks-v2-0-c66371639e66@oss.tenstorrent.com>
	 <20260122-atlantis-clocks-v2-2-c66371639e66@oss.tenstorrent.com>
	 <1adc068bbf1a15b1b10651f6ad9385415f6d4227.camel@pengutronix.de>
	 <CAEev2e_6PePu3omq-Zf1R-8TYikgz9V1cp6cwn0nZ8LaPHaJ2A@mail.gmail.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259358-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,pengutronix.de:mid]
X-Rspamd-Queue-Id: 23EF684D09
X-Rspamd-Action: no action

On Fr, 2026-01-23 at 10:15 -0600, Anirudh Srinivasan wrote:
> > > +/* RCPU Reset Register Offsets */
> > > +#define RCPU_BLK_RST_REG     0x001c
> > > +#define LSIO_BLK_RST_REG     0x0020
> > > +#define HSIO_BLK_RST_REG     0x000c
> > > +#define PCIE_SUBS_RST_REG    0x0000
> > > +#define MM_RSTN_REG          0x0014
> >=20
> > Why not move these into reset-tenstorrent-atlantis.c, they are not part
> > of the interface between clock and reset drivers.
>=20
> We were considering putting register offsets like this in separate
> header files that are dual licensed. In that case, is it okay to put
> it here?

I see, nothing wrong with that.

regards
Philipp

