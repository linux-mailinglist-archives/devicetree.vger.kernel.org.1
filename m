Return-Path: <devicetree+bounces-260350-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6LupORHzeWnT1AEAu9opvQ
	(envelope-from <devicetree+bounces-260350-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:29:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 78BA1A06B8
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 12:29:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CA187305E773
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 11:27:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51B1734E755;
	Wed, 28 Jan 2026 11:27:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9846934DB4D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 11:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769599667; cv=none; b=OqIk867nXBxQc7usr6lQ2VDR2XwwdoYKLz2nliGj7gmj+hfbL0u4VHwUDpWINs/c0rYQRJkbst3P5c3oEijPAkpL/J/+Me3BauS06afDWgjgCNur4Fw9Vm7jpp6KaA4JJk6bGMX0vcz42u6vTYuCylOZQIT5bUW1nRCcUydVQ6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769599667; c=relaxed/simple;
	bh=iNqann688v2wou4A+MB8Q9Yfd30AKpZAp4uitEqXRLo=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=sujVvtTg1EmMLHLuvv1rO+Y4yTV+lTB8NVctzgtxGHdbFaGM0nXOQt/lr/SEmScMnPRTPYaSZS87Qy9MdE/Yvv02PoZnRq5jgPnVtp+fePy7ge1uOBvXY20RW7qss0Ze6YaTuI2PYnNXBPYcD5vOwQ5nTtG49Bv02Efc2VknOcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vl3hi-00061y-Vb; Wed, 28 Jan 2026 12:27:22 +0100
Received: from lupine.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::4e] helo=lupine)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vl3hi-002uKI-1I;
	Wed, 28 Jan 2026 12:27:21 +0100
Received: from pza by lupine with local (Exim 4.98.2)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1vl3hh-000000009M7-2kXq;
	Wed, 28 Jan 2026 12:27:21 +0100
Message-ID: <c4c546df215cbf4fc42bca58500a94140a5d6bf3.camel@pengutronix.de>
Subject: Re: [PATCH v4 2/3] reset: cix: add support for cix sky1 resets
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Gary Yang <gary.yang@cixtech.com>, lee@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, peter.chen@cixtech.com
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, cix-kernel-upstream@cixtech.com
Date: Wed, 28 Jan 2026 12:27:21 +0100
In-Reply-To: <20260128093611.1932770-3-gary.yang@cixtech.com>
References: <20260128093611.1932770-1-gary.yang@cixtech.com>
	 <20260128093611.1932770-3-gary.yang@cixtech.com>
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
X-Spamd-Result: default: False [-1.46 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:mid,cixtech.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_SEVEN(0.00)[10];
	R_DKIM_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[p.zabel@pengutronix.de,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-260350-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 78BA1A06B8
X-Rspamd-Action: no action

On Mi, 2026-01-28 at 17:36 +0800, Gary Yang wrote:
> There are two reset controllers on Cix Sky1 Soc.
> One is located in S0 domain, and the other is located
> in S0 and S5 domain.
>=20
> Signed-off-by: Gary Yang <gary.yang@cixtech.com>
> Link: https://lore.kernel.org/r/20251124063235.952136-3-gary.yang@cixtech=
.com
> Signed-off-by: Peter Chen <peter.chen@cixtech.com>
> ---
>  drivers/reset/Kconfig      |   7 +
>  drivers/reset/Makefile     |   1 +
>  drivers/reset/reset-sky1.c | 376 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 384 insertions(+)
>  create mode 100644 drivers/reset/reset-sky1.c
>=20
[...]
> diff --git a/drivers/reset/reset-sky1.c b/drivers/reset/reset-sky1.c
> new file mode 100644
> index 000000000000..92e34b48f041
> --- /dev/null
> +++ b/drivers/reset/reset-sky1.c
> @@ -0,0 +1,376 @@
[...]
> +static const struct regmap_config sky1_src_config[] =3D {
> +	{
> +		.reg_bits =3D 32,
> +		.val_bits =3D 32,
> +		.reg_stride =3D 4,
> +		.name =3D "src",
> +	},
> +};

This looks unused.

regards
Philipp

