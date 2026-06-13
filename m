Return-Path: <devicetree+bounces-311271-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NYXwD/YiLWpVcQQAu9opvQ
	(envelope-from <devicetree+bounces-311271-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:29:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 846EF67E3AB
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 11:29:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KASI+IYH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311271-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311271-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 096E030799C9
	for <lists+devicetree@lfdr.de>; Sat, 13 Jun 2026 09:29:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A38368D51;
	Sat, 13 Jun 2026 09:29:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73EBA32E729
	for <devicetree@vger.kernel.org>; Sat, 13 Jun 2026 09:29:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781342963; cv=none; b=SHBTKESTgXdCH1lJOzn0u1chw4IhzmKZPtq483huUTnw5l1xqxsPmWHiwTdk6rhoC8z6owUM/t0EOafgImyi+q+3epDgHB4TErN7kIlp5i5vV349Xs9VRR1PqIfHlUQHicpfVWsSgk230mU0GUwIAGEpSfZ/R7LpjqK/qP8AuOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781342963; c=relaxed/simple;
	bh=CCmjQxnd7y1Tj4gmiRY+TJDgFhgK290WlcNeO/4S9LQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UAWcEwC/2dUMRLn41UcSCnB3A8r40SNAQRTCsyEeR6C9hTzDLqAZp+FB0eV2A9qI9xBI1yOtqRNp0A6eBYWXrAJomEzx8LDBCHDX9jwvsVBYUOLh4L8FymQpSEypKGY3phcWif4uGw17WKQCgtu8WA3UnaH2xh1+1MxYUFUyvTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KASI+IYH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BF6EF1F000E9;
	Sat, 13 Jun 2026 09:29:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781342962;
	bh=mwYRGZiTykNozvc9GiGMcyiZSR0iA2x4jtKyZgmX3jI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KASI+IYH4UKLcTrAq9W12gaEOyeVdt2CJV1GjoHMx6VJW5dttOlL+CYbWC2vchBIA
	 W97UwvV0KBlP6ZlgoP7vltTCahWnYgOD3mwhehMkJAFrgT/og9Taaz2bT1XjqNHQLc
	 jXzWXOb5tNPTDiYOqrudA50A3Y/+TAiufUBI7ytQ9z3TN6jrfL4/nHfXGsN1TdxOMA
	 18wyIfWCpD7OQg+5oeC9P1Xcqf1VoA52/YqqwJ4Jd3udhy7tUQVd67IaZMvGAimOn2
	 W1RPkXu2CReqBU6NMC0Xu6g40q62DRfjkB3AZBreKhCLOxfTJelwkVVqbEWa5GP612
	 RIvDgCtofv1DA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net-next v2 1/3] dt-bindings: ptp:
 renesas,rcar-gen4-gptp: Add R-Car Gen4
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?TmlrbGFzIFPDtmRlcmx1bmQ=?= <niklas.soderlund+renesas@ragnatech.se>
Cc: wsa+renesas@sang-engineering.com, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612092851.2141782-2-niklas.soderlund+renesas@ragnatech.se>
References: <20260612092851.2141782-2-niklas.soderlund+renesas@ragnatech.se>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 13 Jun 2026 09:29:21 +0000
Message-Id: <20260613092921.BF6EF1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-311271-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,ragnatech.se:email,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:niklas.soderlund+renesas@ragnatech.se,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:niklas.soderlund@ragnatech.se,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 846EF67E3AB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The device tree changes introduce a standalone node for the gPTP t=
imer which maps the exact same physical memory region already mapped by the=
 existing Ethernet controller, leading to a resource conflict during probe.
--

commit b3e38755e98012153ce2a29973eff93cb0cf332d
Author: Niklas S=C3=B6derlund <niklas.soderlund+renesas@ragnatech.se>

dt-bindings: ptp: renesas,rcar-gen4-gptp: Add R-Car Gen4

This commit adds device tree bindings for the R-Car Gen4 gPTP timer. The
timer enables system-wide clock synchronization and is shared by different
Ethernet devices across Gen4 platforms.

> diff --git a/Documentation/devicetree/bindings/ptp/renesas,rcar-gen4-gptp=
.yaml b/Documentation/devicetree/bindings/ptp/renesas,rcar-gen4-gptp.yaml
> new file mode 100644
> index 0000000000000..3edd64d400387
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/ptp/renesas,rcar-gen4-gptp.yaml
> @@ -0,0 +1,64 @@

[ ... ]

> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - renesas,r8a779f0-gptp # S4-8
> +          - renesas,r8a779g0-gptp # V4H
> +          - renesas,r8a779h0-gptp # V4M
> +      - const: renesas,rcar-gen4-gptp
> +
> +  reg:
> +    maxItems: 1

[Severity: High]
Will this standalone reg mapping conflict with the existing Ethernet TSN
node?

The device tree bindings introduce a standalone node for the gPTP timer
which maps the exact same physical memory region (e.g. 0xe6449000) already
claimed by the existing renesas,ethertsn device node via its gptp reg
resource.

At runtime, the new ptp_rcar_gen4 driver maps this with:

drivers/ptp/ptp_rcar_gen4.c:ptp_rcar_gen4_probe() {
    ...
    priv->base =3D devm_platform_ioremap_resource(pdev, 0);
    ...
}

And the existing rtsn driver does the same:

drivers/net/ethernet/renesas/rtsn.c:rtsn_probe() {
    ...
    ptpaddr =3D devm_ioremap_resource(&pdev->dev, res);
    ...
}

Since devm_ioremap_resource() internally calls request_mem_region(), which
claims exclusive access to the physical memory, the second driver to probe
will be rejected with -EBUSY and fail to load.

Should shared hardware registers be modeled using a provider-consumer
pattern with phandles instead of duplicating reg mappings across distinct
nodes?

> +
> +  clocks:
> +    maxItems: 1

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612092851.2141=
782-1-niklas.soderlund+renesas@ragnatech.se?part=3D1

