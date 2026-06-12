Return-Path: <devicetree+bounces-311047-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cb6kHAoxLGpNNQQAu9opvQ
	(envelope-from <devicetree+bounces-311047-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:17:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E41C67ACCB
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:17:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ojTzO6Gn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311047-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311047-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 254F330028DF
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:17:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCA6738F65D;
	Fri, 12 Jun 2026 16:17:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5BBC3A8FEE;
	Fri, 12 Jun 2026 16:17:02 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781281023; cv=none; b=f5iiBBqpa99x3XvHh1CYHNBaI0wHTmw3WSvtEEY7q8YEBZ/BT+ibyhE0Q/S4mg7vhxvLTsHVQrwj2wj1CfhZzhPOKuWCznGDua6VUYqR9Ws8I4B+kEWKT3SIIXgdP2Cry2qpGRlTL51m7IaPMurf6pJLDM6y3JZuol5U2jUBaxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781281023; c=relaxed/simple;
	bh=S2ZTz/Lo5Tn3INXhm0x0Nw7kBB/WXRAxOiFtwBHf1wI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QBpZNemzJeF93R63ZUfRYegLWBgzBOf0s/mq2gfF0Nyiuex89r9S3LAf96JzoYdAl79IPfD/sAKve7sYaTHy+sLPPHe4hE+EuQ/3MeMKmtvi6t4XhDNCizTEVSewKGHkt8IlcdlzsMR3Z44k+50yiwizf3rfmv2RRy5dYkobeFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojTzO6Gn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 764D91F000E9;
	Fri, 12 Jun 2026 16:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781281022;
	bh=6lcv6smypKBVP/k+IP4v2VpeyRBHll33BUw8mfEK7Rs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=ojTzO6GntM09z9J7v6YDnBnhZx/ZiwgF70b86Iko3vlek1DtVUWYmVKHKh83p+Y6+
	 kqCBw/tdUPAnrJ3Sg81bnAig2ukDfF6w+bFzTdFudH/AumzW+KSGI5zpz0sguzF/il
	 aoYteeggp/cQ/wbatVNobFCqihOac9ZfdKSf70mVIX/0tG7rWEJWPucbAkZbbFjw1O
	 S+0p5pRQAyxkz1ngg8Fi1aPFBeQiLEBuEiHQ7gOo98W2FRf5HsVGn/sd0loeFXyUmg
	 7/q/15M3NzRG+YDeCrJirMRHfl6Ib60pBpmsX+WwTrd/PIrIL/mRdzI7ohD7hWDjFO
	 aN042dQdjigCA==
Date: Fri, 12 Jun 2026 17:16:57 +0100
From: Conor Dooley <conor@kernel.org>
To: Mikko Perttunen <mperttunen@nvidia.com>
Cc: Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-tegra@vger.kernel.org,
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/7] dt-bindings: display: tegra: Changes to support
 Tegra264
Message-ID: <20260612-iphone-racing-c2f1934f3cf1@spud>
References: <20260612-t264-host1x-v1-0-8d934987de67@nvidia.com>
 <20260612-t264-host1x-v1-1-8d934987de67@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Vy/vJYyMUcuk+IsI"
Content-Disposition: inline
In-Reply-To: <20260612-t264-host1x-v1-1-8d934987de67@nvidia.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:mperttunen@nvidia.com,m:thierry.reding@kernel.org,m:jonathanh@nvidia.com,m:airlied@gmail.com,m:simona@ffwll.ch,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-tegra@vger.kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-311047-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,nvidia.com,gmail.com,ffwll.ch,linux.intel.com,suse.de,vger.kernel.org,lists.freedesktop.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,nvidia.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6E41C67ACCB


--Vy/vJYyMUcuk+IsI
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2026 at 03:32:29PM +0900, Mikko Perttunen wrote:
> Add nvidia,tegra264-host1x compatible string. The Tegra264 host1x is
> similar to Tegra234, but with a different set of engines and layout.
>=20
> The engine register range is no longer continuous, so two range entries
> are also needed.

Please restrict the new ranges of 2 to only the new device.
pw-bot: changes-requested


Thanks,
Conor.

>=20
> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
> ---
>  .../devicetree/bindings/display/tegra/nvidia,tegra20-host1x.yaml     | 5=
 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra=
20-host1x.yaml b/Documentation/devicetree/bindings/display/tegra/nvidia,teg=
ra20-host1x.yaml
> index 3563378a01af..5b0e3158aa5b 100644
> --- a/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host=
1x.yaml
> +++ b/Documentation/devicetree/bindings/display/tegra/nvidia,tegra20-host=
1x.yaml
> @@ -25,6 +25,7 @@ properties:
>            - nvidia,tegra186-host1x
>            - nvidia,tegra194-host1x
>            - nvidia,tegra234-host1x
> +          - nvidia,tegra264-host1x
> =20
>        - items:
>            - const: nvidia,tegra132-host1x
> @@ -57,7 +58,8 @@ properties:
>      enum: [1, 2]
> =20
>    ranges:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> =20
>    clocks:
>      description: Must contain one entry, for the module clock. See
> @@ -192,6 +194,7 @@ allOf:
>            contains:
>              enum:
>                - nvidia,tegra234-host1x
> +              - nvidia,tegra264-host1x
>      then:
>        properties:
>          reg-names:
>=20
> --=20
> 2.53.0
>=20

--Vy/vJYyMUcuk+IsI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiww+QAKCRB4tDGHoIJi
0ukTAP9Ty/QIkaqMGAQDKra+VKOj0SXchGyTRNzM0Vu4J+Dp9AD/edCng1nxpXOr
y7wJ5bLWUfsgvcyJ81a7C+uuk2wKOQk=
=sJ4O
-----END PGP SIGNATURE-----

--Vy/vJYyMUcuk+IsI--

