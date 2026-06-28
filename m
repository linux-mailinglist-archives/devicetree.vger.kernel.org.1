Return-Path: <devicetree+bounces-316508-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lmr9AoJzQWrTqwkAu9opvQ
	(envelope-from <devicetree+bounces-316508-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:18:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D692E6D4C05
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 21:18:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316508-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316508-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7B4373002B52
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 19:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36574317150;
	Sun, 28 Jun 2026 19:18:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35178316189;
	Sun, 28 Jun 2026 19:18:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674291; cv=none; b=QQJlKJDuyLHrZC0402n5ZTvQGBz7ZAIu9RLEdWsgKqEhx/jTZYwfrFM0PDfo3pcwUwvwdZvoBT4tlef0OmLc0idmf2vHrt+QVe04KQpCN0BnEF/eu7+FdiCiT99GvET2Q98Wk1Zi1QZaRrqQNVm0rUY1TvCuFfjLuASF9OO85WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674291; c=relaxed/simple;
	bh=9F9T4Qc2f7NN+GD7OTc67Hyr4j82QNJZSo2NHYq/i0s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j708kzt5GRUKADrAF6blcXrhtcnPnNYxh+5o07b/mlWs/JIcFXIJm1Arta8CBfdoHxOGxEKuPL5wxPaGzJ+fqR5QtjauUnmp1zqDtDJV/UO40ZrIZEIZXopEDsvzo0m3g2dvgEEgQnlLMv0+lw1NCqZmMjGXMl6VQkNtCTSqYzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F02211F000E9;
	Sun, 28 Jun 2026 19:18:07 +0000 (UTC)
Date: Sun, 28 Jun 2026 20:17:36 +0100
From: Conor Dooley <conor@kernel.org>
To: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
Cc: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>, linux-bluetooth@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: bluetooth: broadcom: add BCM43752
Message-ID: <20260628-shakable-spooky-e75e410f20f5@spud>
References: <20260628095500.29810-1-hugo@whynothugo.nl>
 <20260628095500.29810-2-hugo@whynothugo.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GIS6OSUvjj09OaDl"
Content-Disposition: inline
In-Reply-To: <20260628095500.29810-2-hugo@whynothugo.nl>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.06 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316508-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hugo@whynothugo.nl,m:marcel@holtmann.org,m:luiz.dentz@gmail.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linusw@kernel.org,m:linux-bluetooth@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:luizdentz@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[holtmann.org,gmail.com,kernel.org,vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[whynothugo.nl:email,vger.kernel.org:from_smtp,spud:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D692E6D4C05

--GIS6OSUvjj09OaDl
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Jun 28, 2026 at 11:55:00AM +0200, Hugo Osvaldo Barrera wrote:
> Document the compatible string for BCM43752.
>=20
> Signed-off-by: Hugo Osvaldo Barrera <hugo@whynothugo.nl>
> ---
>  .../devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml        | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetoo=
th.yaml b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.ya=
ml
> index 95501e858e6f..04e8a968548d 100644
> --- a/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
> +++ b/Documentation/devicetree/bindings/net/bluetooth/brcm,bluetooth.yaml
> @@ -29,6 +29,7 @@ properties:
>            - brcm,bcm43438-bt
>            - brcm,bcm4345c5
>            - brcm,bcm43540-bt
> +          - brcm,bcm43752-bt

This new compatible uses no match data. Why is a fallback compatible not
suitable?

Thanks,
Conor.

>            - brcm,bcm4335a0
>            - brcm,bcm4349-bt
>            - cypress,cyw4373a0-bt
> --=20
> 2.54.0
>=20
>=20

--GIS6OSUvjj09OaDl
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakFzUAAKCRB4tDGHoIJi
0qxeAP9I/YzcS7X4Kb1SEdN2ok37jc0bsuqul4pWpjf4jI5h4gD8Dbohj3RpNhsD
IcWEyvxML+jBYY9GWwci6RbXntzyFAw=
=x9HD
-----END PGP SIGNATURE-----

--GIS6OSUvjj09OaDl--

