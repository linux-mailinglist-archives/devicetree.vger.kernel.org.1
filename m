Return-Path: <devicetree+bounces-325252-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id aRwdLSWZVGpSoAMAu9opvQ
	(envelope-from <devicetree+bounces-325252-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:52:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AC3748612
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 09:52:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=ew.tq-group.com header.s=default2602 header.b=RSjVNoET;
	dmarc=pass (policy=quarantine) header.from=ew.tq-group.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325252-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-325252-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 37F873007288
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 07:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68ED83955C0;
	Mon, 13 Jul 2026 07:51:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from www537.your-server.de (www537.your-server.de [188.40.3.216])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37A3394EB7;
	Mon, 13 Jul 2026 07:51:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783929105; cv=none; b=Zsi/NOaEVgq5J5JOsoYzw56WKMTLU1JzEiBOQFT89s7LhfprnUGJNxuQcpRwNiYzWvO5dDvuOb5PA7nw00hJ0Tl2Ny7i+jWoXfN/5hBtyiWbzRswCL/apmVvoWuUOAq2o77TANosGB6CtmQgLwaqI0k3ZwF7dmC77jZzJRt07RY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783929105; c=relaxed/simple;
	bh=e9glkP5v7PSdU6TbLOBVie6NJfKFwxz0W3Bfzvpe02s=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=V/KO01y4L8Pb5MQnFh791vlFQltE4fWf0LN/76iV0BKf/3VmsuuWA+eWQ2WLy0szaEcsb4PV/sxs7FPrO2YnHjn8l4aSTZV47hSIs4h3I1BygsvgmvulRSK4TfnnUXmxduHxQ2o+z7fzlT/NNL5l9jJ0Ikoch0gHBol56V5p778=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=RSjVNoET; arc=none smtp.client-ip=188.40.3.216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=MIME-Version:Content-Transfer-Encoding:
	Content-Type:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=6PWwYyZCnbfXWgO9LHedRidprsqhsFzreLR4BeyON5c=; b=RSjVNoETA6d+cqne82/gUyS6A/
	mh3aa+03CHahLJX0DEgVMLKdngnpCh+J/xokQIvqfAoPtHikMTqEXkLUOGAhBIK+qpQHakIZ4jI9Z
	ms4CUL/bpnNGijVs+fKWsFT+F/Mi7l2hlXh2N2JaTvIhfgS/obyrRb/6g7HsCyuTbMKS8J0rVkB7n
	7PRWdm7/SG/CuzjgkJsemzwGnfflc/ZnrSr0dcsudO4/3ewe4WSmcyCHqbgztkNvgJuJ2CmFFznKQ
	Od39/cKscPGxXj7/gnnPAIzbZxZfHueLGF8Kyus6XJXpGde0bc0JYU+o/9J7VMpgGtInCCrHoOCYv
	unReUGdA==;
Received: from sslproxy02.your-server.de ([78.47.166.47])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wjBRz-000Gav-2v;
	Mon, 13 Jul 2026 09:51:39 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy02.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wjBRz-000JPd-1T;
	Mon, 13 Jul 2026 09:51:39 +0200
Message-ID: <123688e88d5892eeb3905eb9a90a3d2a0971c4b1.camel@ew.tq-group.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: k3-am642-tqma64xxl-mbax4xxl: add
 icssg1 ti,pa-stats
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Vignesh Raghavendra <vigneshr@ti.com>, Nishanth Menon <nm@ti.com>, Tero
 Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org,  linux-kernel@vger.kernel.org,
 linux@ew.tq-group.com, Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
Date: Mon, 13 Jul 2026 09:51:38 +0200
In-Reply-To: <67187ee8-bfed-46e0-a9b5-ab88e024b420@ti.com>
References: 
	<aaec2ddf7cecb58ca0af37d4f03afec571804757.1783348781.git.nora.schiffer@ew.tq-group.com>
	 <a03189aa138f74955a03b9fe6018a17bf7e2ce8c.1783348781.git.nora.schiffer@ew.tq-group.com>
	 <67187ee8-bfed-46e0-a9b5-ab88e024b420@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.3-0ubuntu1.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/28058/Sun Jul 12 08:25:26 2026)
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=default2602];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325252-lists,devicetree=lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:vigneshr@ti.com,m:nm@ti.com,m:kristo@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux@ew.tq-group.com,m:Alexander.Feilke@ew.tq-group.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tq-group.com:url,tq-group.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ew.tq-group.com:from_mime,ew.tq-group.com:dkim,ew.tq-group.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A9AC3748612

On Mon, 2026-07-13 at 13:06 +0530, Vignesh Raghavendra wrote:
>=20
> On 06/07/26 20:13, Nora Schiffer wrote:
> > From: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
> >=20
> > Add missing ti,pa-stats syscon phandle. In addition to providing
> > additional ethtool stats, this avoids a "icssg-prueth icssg1-eth:
> > couldn't get ti,pa-stats syscon regmap" error message.
> >=20
> > Signed-off-by: Alexander Feilke <Alexander.Feilke@ew.tq-group.com>
> > [Nora Schiffer: edited commit description]
> > Signed-off-by: Nora Schiffer <nora.schiffer@ew.tq-group.com>
>=20
> Does this need a Fixes tag then?

I don't think so - the message was introduced in commit 550ee90ac61c ("net:=
 ti:
icssg-prueth: Add support for PA Stats"), which was then fixed up in commit
9e70eb4a9a8e ("net: ti: icssg-prueth: Make pa_stats optional") to avoid bre=
aking
existing Device Trees. There is no commit that this patch meaningfully "fix=
es",
and backporting it to stable kernels does not seem necessary to me.

If anything, the message in the driver might be downgraded from "error" to
"warning" in another patch, but I'll leave that decision to you.

Best,
Nora


>=20
> > ---
> >=20
> > v2: update commit message to correctly describe the error message this
> > avoids.
> >=20
> >  arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts | 1 +
> >  1 file changed, 1 insertion(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts b/a=
rch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> > index 46be6824dd163..b9e52d8bc8524 100644
> > --- a/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> > +++ b/arch/arm64/boot/dts/ti/k3-am642-tqma64xxl-mbax4xxl.dts
> > @@ -110,6 +110,7 @@ icssg1_eth: icssg1-eth {
> >  		ti,mii-g-rt =3D <&icssg1_mii_g_rt>;
> >  		ti,mii-rt =3D <&icssg1_mii_rt>;
> >  		ti,iep =3D <&icssg1_iep0>,  <&icssg1_iep1>;
> > +		ti,pa-stats =3D <&icssg1_pa_stats>;
> > =20
> >  		ethernet-ports {
> >  			#address-cells =3D <1>;
>=20

--=20
TQ-Systems GmbH | M=C3=BChlstra=C3=9Fe 2, Gut Delling | 82229 Seefeld, Germ=
any
Amtsgericht M=C3=BCnchen, HRB 105018
Gesch=C3=A4ftsf=C3=BChrer: Detlef Schneider, R=C3=BCdiger Stahl, Stefan Sch=
neider
https://www.tq-group.com/

