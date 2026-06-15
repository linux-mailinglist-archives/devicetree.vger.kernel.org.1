Return-Path: <devicetree+bounces-311949-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LpuDAMX1L2pmKAUAu9opvQ
	(envelope-from <devicetree+bounces-311949-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:53:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 823396866AF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:53:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311949-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-311949-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F00B43007494
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:53:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E2873EFD15;
	Mon, 15 Jun 2026 12:53:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DC33E274D
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:53:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781528002; cv=none; b=qCIYEvXxxh8dODkclWjVJkorSbYLyXI/6zKpdGvDzxgmZGZdm1RC4hjDs26lq489hL37H84P2s3Pgb2+cuyGkvnr0kpusXk7DfuiyYUTXKOLFRazqWqg07LSTPR/2FBUffEewbsrQgyKdINQHqGJAY/nN/0N/BI6PoUqX/gqzjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781528002; c=relaxed/simple;
	bh=TEDgwR7nvYT7vNJoc4HaCRYL3kPYN1P3GwbaFU4R+Ps=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=imok8ICqs3I6Sgu6C2ZRZRyg575g8m7Z4wSjHGgPaaUgI7B17O6PITwcTw9j3rsWcLatRkH8Xfwf+ajJh8cc9CUNc37L1XHlnm5EvTc2jkNZZjgk8z48ppaxh7BIHkxkTy5lppOoEgBTXQET17ZsQFVt0UX5SHQNIWStV+2s82M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wZ6oS-0000gS-0q; Mon, 15 Jun 2026 14:53:12 +0200
Message-ID: <624ac28d675035f26f3ea2dd8afb288d59af34f9.camel@pengutronix.de>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Gira
From: Lucas Stach <l.stach@pengutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 kernel@pengutronix.de
Date: Mon, 15 Jun 2026 14:53:11 +0200
In-Reply-To: <20260611-swiftly-imaging-d624308d16b3@spud>
References: <20260610213047.500701-1-l.stach@pengutronix.de>
	 <20260611-swiftly-imaging-d624308d16b3@spud>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:kernel@pengutronix.de,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_FROM(0.00)[bounces-311949-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,pengutronix.de:email,pengutronix.de:mid,pengutronix.de:from_mime,gira.de:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 823396866AF

Hi Conor,

Am Donnerstag, dem 11.06.2026 um 18:40 +0100 schrieb Conor Dooley:
> On Wed, Jun 10, 2026 at 11:30:47PM +0200, Lucas Stach wrote:
> > Add vendor prefix for Gira Giersiepen GmbH & Co. KG
> > Link: https://www.gira.de/
> >=20
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
>=20
> Where is the user?
>=20
The user is a currently under development board support for the Barebox
bootloader. It is expected that the DT for this board will also land in
Linux at a later time.

Since the kernel source is basically the registry for vendor prefixes,
I didn't expect that a in-tree user would be required for this
submission.

Regards,
Lucas

> > ---
> >  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >  1 file changed, 2 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/D=
ocumentation/devicetree/bindings/vendor-prefixes.yaml
> > index 28784d66ae7b..2b7bf7d7b9c2 100644
> > --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> > @@ -656,6 +656,8 @@ patternProperties:
> >      description: Giantec Semiconductor, Inc.
> >    "^giantplus,.*":
> >      description: Giantplus Technology Co., Ltd.
> > +  "^gira,.*":
> > +    description: Gira Giersiepen GmbH & Co. KG
> >    "^glinet,.*":
> >      description: GL Intelligence, Inc.
> >    "^globalscale,.*":
> > --=20
> > 2.47.3
> >=20

