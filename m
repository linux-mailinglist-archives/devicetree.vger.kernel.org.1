Return-Path: <devicetree+bounces-294573-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WHcOCRj7/WnYlQAAu9opvQ
	(envelope-from <devicetree+bounces-294573-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:02:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 938304F83F6
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 17:02:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40545306E671
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 14:58:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14E6B3F0765;
	Fri,  8 May 2026 14:58:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHZc6wPe"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F0327FB37;
	Fri,  8 May 2026 14:58:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778252337; cv=none; b=Jq6mJCiG3VbCU9jmwYRWGusrhyVp2/+EoFdouWIEZAq88SJkfeP/32AgR6ZyxF08Rboe7hzMk5xIuVhnRjyrmJsBhLSSVtuKPQo+fYuP6JcTHu1NEHJadaCoHYBynE6PxILQp7JB51WHGMk7HwU2aYkyjB+Vm2GjIrck5wty7J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778252337; c=relaxed/simple;
	bh=iU8xvemEPvi13FOszxkwNqtqWHubaRoaKkMRSG+6ycA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Qc1H/fMhefUojrn07UPzoU6AnQpRLeh/oVR1gHQ096MFPLwds+uwmjF0sty0+sz9fO0OMEKQveUGIaZuJ++3VBPNQfm/PJ1va7Bq7oyoVuh7h+LkqGqPYx4hMMnONhH9mf/eywXGvBO6UMLReixT1RVfsSrSS/s0mRcLQq753AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHZc6wPe; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5E094C2BCC7;
	Fri,  8 May 2026 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778252336;
	bh=iU8xvemEPvi13FOszxkwNqtqWHubaRoaKkMRSG+6ycA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nHZc6wPeiZFMKCv3PPNH/MsE9nhhIcWtz8SLdXtZFdiQSGW0KCJ7ntCNcdeTt8hst
	 VXPAm2llVXvR8ObNmmTXsD7762ZhjI/Iyv5dMGfbv3YAEaigSXhsNAZBKv8q3y5acF
	 XWQ+LoLWePEVaan/qddmPNfWzUIPFyrQ1iUJ8ub38XT8KL+7RneMLiKfhA37KEAUqc
	 mEpY3G+/+SSfxTJQPfNQ3uMtKDG3yFkl6ZalpNBYdHOx1VwRSHGmL5yO6X88Te/Qwx
	 8ofX4rUQlFdho6YTjU+uiqNVxl6rEtQyksap4yoOqS6Z2Uo370sMEE/QkLpkPT6IGW
	 G2yqqGUPTEqJg==
Date: Fri, 8 May 2026 15:58:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Gregor Herburger <gregor.herburger@linutronix.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>,
	Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v4 1/5] dt-bindings: raspberrypi,bcm2835-firmware: Add
 bcm2712-firmware compatible
Message-ID: <20260508-lasso-catcall-393c97e3a258@spud>
References: <20260508-rpi-otp-driver-v4-0-cf8d725d8821@linutronix.de>
 <20260508-rpi-otp-driver-v4-1-cf8d725d8821@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="89dAeV3S41oOtMTA"
Content-Disposition: inline
In-Reply-To: <20260508-rpi-otp-driver-v4-1-cf8d725d8821@linutronix.de>
X-Rspamd-Queue-Id: 938304F83F6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-294573-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:email,microchip.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--89dAeV3S41oOtMTA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 08, 2026 at 04:42:44PM +0200, Gregor Herburger wrote:
> Add a compatible string for the bcm2712 firmware. The bcm2712-firmware
> is compatible with the bcm2835-firmware so allow the bcm2835-firmware as
> fallback.
>=20
> Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> ---
>  .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml        | 11 +++++=
+++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm283=
5-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm=
2835-firmware.yaml
> index 983ea80eaec9..a3a5243b9170 100644
> --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmw=
are.yaml
> +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmw=
are.yaml
> @@ -21,9 +21,14 @@ select:
> =20
>  properties:
>    compatible:
> -    items:
> -      - const: raspberrypi,bcm2835-firmware
> -      - const: simple-mfd
> +    oneOf:
> +      - items:
> +          - const: raspberrypi,bcm2835-firmware
> +          - const: simple-mfd
> +      - items:
> +          - const: raspberrypi,bcm2712-firmware
> +          - const: raspberrypi,bcm2835-firmware
> +          - const: simple-mfd
> =20
>    mboxes:
>      maxItems: 1
>=20
> --=20
> 2.47.3
>=20

--89dAeV3S41oOtMTA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaf36KwAKCRB4tDGHoIJi
0ny3AP4uWOY9MtPYzPYsTZvAtLSYdIfWpcZzL4yudt7quTegjQEAwzBXfuk5eRM3
cvjo/yvG+jikUFJNznNFJlR/HjTKpwI=
=mT8k
-----END PGP SIGNATURE-----

--89dAeV3S41oOtMTA--

