Return-Path: <devicetree+bounces-272830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AEbQDK2jrmmbHAIAu9opvQ
	(envelope-from <devicetree+bounces-272830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:40:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99067237410
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 11:40:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB57E304CEB6
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 10:40:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6190A392825;
	Mon,  9 Mar 2026 10:40:09 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88D1D310636
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 10:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773052809; cv=none; b=rv7G85hkz4lX8adzUZTkGe2mN5GtCSKllfIB9QsUzymFtsCv5sU6Tu3NnbUzzrm7CApg+3evxSC/E7D42H9R/8keJuYcCuMhG6rmxyRw52VgdmDEXWFYTGZtypj3W6qCDtwFPWzj9ETCx7uGnIwPbgj5YlMy1ToToKbud5u6A2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773052809; c=relaxed/simple;
	bh=fYqmx1ijLidEboCzHve4ZlpR+nUXv0Lkg9KY7M3dYx0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=JVYIF+NbU0f3j4QenXvAwYhX313wVV+Ev9hulxhKqSRIGLzkW5Tg5Du0ZPNplbdThqcO2lWnyXvIdvxNZCEdSUSwHsdACEoMYMZ+VyiST80/akkRSOGkoik7f37MNMEAakVLEYJhxS1Uo46i2dKYJ/8oXindL9XBFDkwHqyFrOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzY1b-0005pX-P5; Mon, 09 Mar 2026 11:39:47 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzY1Z-004W4o-1u;
	Mon, 09 Mar 2026 11:39:46 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vzY1a-000000006kZ-3XVB;
	Mon, 09 Mar 2026 11:39:46 +0100
Message-ID: <4777a26fa1406067d8e7126851ba0b56b32038c3.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] dt-bindings: soc/reset: ti: add binding for k3
 platforms reset module
From: Philipp Zabel <p.zabel@pengutronix.de>
To: "A. Sverdlin" <alexander.sverdlin@siemens.com>, 
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, Vignesh
 Raghavendra <vigneshr@ti.com>,  Tero Kristo <kristo@kernel.org>, Santosh
 Shilimkar <ssantosh@kernel.org>, Andrew Davis <afd@ti.com>,  Jayesh
 Choudhary <j-choudhary@ti.com>, Siddharth Vadapalli <s-vadapalli@ti.com>,
 Abraham I <kishon@kernel.org>,  Roger Quadros <rogerq@kernel.org>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Date: Mon, 09 Mar 2026 11:39:46 +0100
In-Reply-To: <20260309100800.1134701-2-alexander.sverdlin@siemens.com>
References: <20260309100800.1134701-1-alexander.sverdlin@siemens.com>
	 <20260309100800.1134701-2-alexander.sverdlin@siemens.com>
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
X-Rspamd-Queue-Id: 99067237410
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.028];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,siemens.com:email,pengutronix.de:mid]
X-Rspamd-Action: no action

On Mo, 2026-03-09 at 11:07 +0100, A. Sverdlin wrote:
> From: Alexander Sverdlin <alexander.sverdlin@siemens.com>
>=20
> Add DT binding for Texas Instruments K3 Multicore SoC platforms reset
> module present on AM64x and newer members of the K3 family and consists o=
f
> the RST_CTRL, RST_STAT, RST_SRC and RST_MAGIC_WORD registers.
>=20
> The planned usage is to provide reset reason information.
>=20
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@siemens.com>
> ---
>  .../bindings/reset/ti,am64-rst.yaml           | 39 +++++++++++++++++++

I think this might belong in .../bindings/power/reset instead.
Or maybe .../bindings/soc/(ti/)?

Like 'device', the term 'reset' is a bit overloaded.

The existing binding docs in .../bindings/reset/ describe peripheral
reset controllers that provide reset signals to other hardware blocks.
See Documentation/devicetree/bindings/reset/reset.txt.

Since your bindings don't contain #reset-cells, I assume the RST_CTRL
register does not contain direct control of reset signals that need to
be operated during runtime.

System reset (restart/poweroff) machinery related bindings are found in
.../bindings/power/reset.

regards
Philipp

