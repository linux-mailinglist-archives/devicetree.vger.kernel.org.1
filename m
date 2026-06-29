Return-Path: <devicetree+bounces-317136-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VyZRGEKPQmoB9wkAu9opvQ
	(envelope-from <devicetree+bounces-317136-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:29:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EC16DCABD
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 17:29:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HEmZvJtK;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317136-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317136-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1507D3013D4B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 15:19:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52835425CE1;
	Mon, 29 Jun 2026 15:19:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F27A265CC2;
	Mon, 29 Jun 2026 15:19:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782746353; cv=none; b=UgZ245KGHyAJrqcX+Orw3vpze5RU+x0wQG9qctNWxIB+c+weErFOXDscRilEdYGYh18yVteq4Y8+6gPnR4t0RsT7PiCZBWGy7AvBDLECzuaEsCgmuM0JMF1acR1/8LmzAYUo2PxaYu802KbjAFsp82X+j6d/LngL31r/J0CLcPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782746353; c=relaxed/simple;
	bh=iv/fiKg3EuQ2jv4GyHWtObJl/Zd75MjEvho8+pDnZ1E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U/FprdJp79rslOJ4JhSvBETXkc1dm5bn29cRPHJIXKJ6kxxuAevr4iBEchdftyucO4gVz8gzcMF1+WcjUOW4NnzXNAJ69k4O1+jV/bkgqjg1oi1idTQj1/eb23T4+oHYWyDC4WclLzl2iT/4qg++p/rclyh6dgSootKkBPonJyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEmZvJtK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 079AD1F000E9;
	Mon, 29 Jun 2026 15:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782746351;
	bh=6FUFc8VbJurEpSDevgOvU/4VEZEQWETJDf8GR/IYV3w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HEmZvJtKwhfG6+2u9YMDRUtu8arFt06cJRcwTdMJHDbr2BHORKFUmM8gzS6+Nuf59
	 JYOhNUCmlBBHYF4/8GdQhH8elDIxldPzftRRCbyQdOym90+G3RJsaxiTmlJsRPMyXw
	 cmHFhugQ3ScY89DeGqRHL0sT3Pa2VJZbvS578kDJ2rES6+ZhkK2iWFbxB9SjZEnRze
	 cYG9qds5ZcxWY1O9CXAb4WrhnjMiTNVfz0VLe0pimYobJ+lyt7cdzICzOD3zsrBLoc
	 Z6VNlufBJhg7Y9FhKrBdhGHPxBAiOT1o6kA/lutHXLf0sYWPInSBvkRrdiU73lP/MU
	 zApxhoY6JGLbA==
Date: Mon, 29 Jun 2026 16:19:07 +0100
From: Conor Dooley <conor@kernel.org>
To: Wayne Chang <waynec@nvidia.com>
Cc: mathias.nyman@intel.com, vkoul@kernel.org, neil.armstrong@linaro.org,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	gregkh@linuxfoundation.org, thierry.reding@gmail.com,
	jonathanh@nvidia.com, linux-usb@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: phy: tegra-xusb: Add support for
 Tegra264
Message-ID: <20260629-baffling-gag-05e20c9d925b@spud>
References: <20260629093406.1118594-1-waynec@nvidia.com>
 <20260629093406.1118594-2-waynec@nvidia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="ZivZHyQiMsJs/gWz"
Content-Disposition: inline
In-Reply-To: <20260629093406.1118594-2-waynec@nvidia.com>
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
	FORGED_RECIPIENTS(0.00)[m:waynec@nvidia.com,m:mathias.nyman@intel.com,m:vkoul@kernel.org,m:neil.armstrong@linaro.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:gregkh@linuxfoundation.org,m:thierry.reding@gmail.com,m:jonathanh@nvidia.com,m:linux-usb@vger.kernel.org,m:linux-tegra@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,m:thierryreding@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-317136-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[intel.com,kernel.org,linaro.org,linuxfoundation.org,gmail.com,nvidia.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[spud:mid,nvidia.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 58EC16DCABD

--ZivZHyQiMsJs/gWz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 29, 2026 at 05:33:59PM +0800, Wayne Chang wrote:
> Add the compatible string for the Tegra264 XUSB PHY.
>=20
> Signed-off-by: Wayne Chang <waynec@nvidia.com>

Why is a fallback compatible not suitable here?


Thanks,
Conor.

> ---
>  .../devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.yaml     | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-p=
adctl.yaml b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-pad=
ctl.yaml
> index d8de900a4fce..f6fe3c90b5b0 100644
> --- a/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.y=
aml
> +++ b/Documentation/devicetree/bindings/phy/nvidia,tegra194-xusb-padctl.y=
aml
> @@ -45,6 +45,7 @@ properties:
>      enum:
>        - nvidia,tegra194-xusb-padctl
>        - nvidia,tegra234-xusb-padctl
> +      - nvidia,tegra264-xusb-padctl
> =20
>    reg:
>      items:
> --=20
> 2.25.1
>=20

--ZivZHyQiMsJs/gWz
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCakKM6gAKCRB4tDGHoIJi
0kBcAQCrqgOOerZugKKmjKtKayBzITE7zLM1L51QJ4kOU8RpIQEA2dvPt7Nwz6Xi
yE/Bh7l6FDgrHCL0xL46jpuiCDlmugU=
=iSW+
-----END PGP SIGNATURE-----

--ZivZHyQiMsJs/gWz--

