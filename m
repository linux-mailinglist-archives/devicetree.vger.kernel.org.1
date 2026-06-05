Return-Path: <devicetree+bounces-307513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Fp8GFWAbI2pYigEAu9opvQ
	(envelope-from <devicetree+bounces-307513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:54:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4801D64AC3C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 20:54:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=pm.me header.s=protonmail3 header.b=l+FIJSoX;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307513-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307513-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=pm.me;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 015A130A6F0A
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 18:39:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B1C3D7D9B;
	Fri,  5 Jun 2026 18:37:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-24418.protonmail.ch (mail-24418.protonmail.ch [109.224.244.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4CD3C98B5
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 18:37:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780684641; cv=none; b=Ti15WByghlxELK4nPqh2bM+qS77Sta3zw5qKuh6jFeUneDjD2+dQc69yiX9t37597F/7h1SjcUC/vM0lGFPXVA0sjhaIJaqBxj78OtTUpIx95DayB0bdg4UNs5giB8VmAoD3lDvGMMljkofIDfqkflf+n7EL1X4bkkkLnsrep6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780684641; c=relaxed/simple;
	bh=+TpvU/R0Io7brKOuQMO4MbPS134eFVMpmzHUVQzaxDw=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=VGKA7ccsFRE2zrlBJcNVNKb/5Xsb8boM03DDFYLy9K5PWt1CsN340lMJTQJVUCWPUTe1lVtu14eVDe+IU2EXhLhlhHDBLMr45hJ/pvTpt1WhKAO66TXxTjkYMYAO/imjmc+ISTRdPWSSe00c/3Gxs8D41eEsXgcs9tr0jWe3tYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=pm.me; spf=pass smtp.mailfrom=pm.me; dkim=pass (2048-bit key) header.d=pm.me header.i=@pm.me header.b=l+FIJSoX; arc=none smtp.client-ip=109.224.244.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pm.me;
	s=protonmail3; t=1780684638; x=1780943838;
	bh=HnEAjbYdrwt2ZUBl5XxwHoVRcBJydiwq0iDN1d+q7u8=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=l+FIJSoX5x3n1UATFHj8/Ype1pLqIadVPMTkCkyWat6I/v0T/WyhWzUrpcFT/Uz2K
	 EREYc4rF8m2XTLPaoFwO3L1MDC8mJLS7zJ9XM7u9NHqrPNQfATchTq53w5FtLOn9Uy
	 DkROlaYwsgBi76MPt90uBHED51wNNWoCJNDc69GADAMR3xcfeK5adRfrNa6VrZDZVx
	 HINt51xDCuxaoUkB/E9Fq6jDaEKyRRS+FOZletyxtjzwCSV4/JJYQztBnk2JlJX/YZ
	 PGbvgbjKkKgQ6okNMxrq2sjL5HW1TffD+cKHmytwso0cM3xuTV6fqD2Lr9qKXJkris
	 dSCBWQGZC0Cpg==
Date: Fri, 05 Jun 2026 18:37:11 +0000
To: sashiko-reviews@lists.linux.dev
From: Alexander Koskovich <akoskovich@pm.me>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Document Raydium RM69220 DDIC
Message-ID: <bz9vWgofmc_257MBAJFRETCchlU3NkTiEkOl-ADSbDOR0ncCQTluKglcHRQgL8ojI8yXSPPbYzCwnMyaBZQAGSEOWL0DBHXqpfUR9eKbg3w=@pm.me>
In-Reply-To: <20260605183434.273CE1F00893@smtp.kernel.org>
References: <20260605-asteroids-panel-support-v2-1-44b96c6eca91@pm.me> <20260605183434.273CE1F00893@smtp.kernel.org>
Feedback-ID: 37836894:user:proton
X-Pm-Message-ID: 28cb9d9c2537be9b600771d9e8ce5df823ee51d2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[pm.me,quarantine];
	R_DKIM_ALLOW(-0.20)[pm.me:s=protonmail3];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307513-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:sashiko-reviews@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[pm.me:+];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akoskovich@pm.me,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,pm.me:mid,pm.me:dkim,pm.me:from_mime,pm.me:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4801D64AC3C

On Friday, June 5th, 2026 at 2:34 PM, sashiko-bot@kernel.org <sashiko-bot@k=
ernel.org> wrote:

> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Low] The newly added DT binding schema introduces a dtbs_check regress=
ion for an existing dummy panel node in `arch/arm64/boot/dts/qcom/milos-not=
hing-asteroids.dts`. The existing device tree uses `compatible =3D "boe,bf0=
68mwm-td0"` for a simple-framebuffer dummy node, but lacks the strictly req=
uired properties mandated by the new schema.
> --
>=20
> commit 6315e592e65e15de511f78a600454fa1ddbaf9e2
> Author: Alexander Koskovich <akoskovich@pm.me>
>=20
> dt-bindings: display: panel: Document Raydium RM69220 DDIC
>=20
> Document the Raydium RM69220 DDIC and the BOE BF068MWM-TD0 6.77"
> 1080x2392 AMOLED display panel used in the Nothing Phone (3a).
>=20
> > diff --git a/Documentation/devicetree/bindings/display/panel/raydium,rm=
69220.yaml b/Documentation/devicetree/bindings/display/panel/raydium,rm6922=
0.yaml
> > new file mode 100644
> > index 0000000000000..7423b192d892c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/panel/raydium,rm69220.y=
aml
> [ ... ]
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - boe,bf068mwm-td0
> > +      - const: raydium,rm69220
>=20
> [Severity: Low]
> Will this strict compatible requirement trigger dtbs_check failures for t=
he
> existing dummy panel node in
> arch/arm64/boot/dts/qcom/milos-nothing-asteroids.dts?
>=20
> That file currently uses this compatible string for a dummy node:
>=20
> =09=09=09/* Dummy panel for simple-framebuffer dimension info */
> =09=09=09panel: dummy-panel {
> =09=09=09=09compatible =3D "boe,bf068mwm-td0";
> =09=09=09=09height-mm =3D <157>;
> =09=09=09=09width-mm =3D <71>;
> =09=09=09};
>=20
> Since the new schema mandates a two-item array with "raydium,rm69220" and
> several other required properties like dvdd-supply, reg, and port, valida=
ting
> the existing dts against this schema appears to cause validation failures=
.
>=20
> Should the dummy node's compatible string be updated to avoid conflicting=
 with
> the actual hardware schema, or should the dts update be included in this
> series?

The dummy node is being dropped here:
https://lore.kernel.org/linux-arm-msm/20260603-asteroids-drop-simplefb-v1-1=
-34d73477c9d4@pm.me

>=20
> --
> Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-asteroid=
s-panel-support-v2-0-44b96c6eca91@pm.me?part=3D1
> 

