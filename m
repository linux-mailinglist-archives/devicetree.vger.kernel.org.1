Return-Path: <devicetree+bounces-324561-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ScNgIVoiUWoR/wIAu9opvQ
	(envelope-from <devicetree+bounces-324561-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:48:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E504E73CB33
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:48:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SJaBmO7t;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324561-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-324561-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 471953040C7D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BC1543B492;
	Fri, 10 Jul 2026 16:43:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F812D1303;
	Fri, 10 Jul 2026 16:43:45 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701827; cv=none; b=VTe9ZKWbKAFI4t1NWd/rPceQm9ZOm7+fj0aj0BMAIArNX34AAiokHiAxCo3UvAvb+LwM28GdHJhPHRCnAII3rBGycFIycUh/MTNkym0rnhn7H/KkPKGNEKpLdEwezB7KJEKSbdSr0d9+EwtXKqsfZogHn/dxwDD7OdN0SbnymhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701827; c=relaxed/simple;
	bh=a0izDYQoThGK2KONJQmc8Z1OqN4YhnGbQqsbYLPXrXU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=am7p9nVzeyXp1x+BIsR6TSkMW5Fz6XESaWr5Jz6ypBqIxhZcETe+Xj307d0KmsO6X7JuRv5TI9bVJACfoNc6+D4ZCOhPEXAQStE11Myy5sFSkPyKI3GEagXIH5Ji1G+kTRPaNQ2Dn0Y9LuvGU5K+eDzycamtRLW1hVoZ75OY8oo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJaBmO7t; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A902D1F000E9;
	Fri, 10 Jul 2026 16:43:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783701825;
	bh=LO42XwNP83w3z5CFc+s0wvS8JJ79+rDi2PXVCc38KOM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=SJaBmO7tVG7y2hCdLEUg7YkQ2jQBkq+GVDN8ZQwA14XKU17rc/JYBGmTsLG5IL9D8
	 VZpyTOUzDzqfHR3nS5KE0cdIFlYKIXHjg5i+XA7zEOkYiclD5c83ByteDqLWXpRgs8
	 fovLd01f78SO/8ray2y7oRQdXMPVWDsXDPeTtvEi3i/Fl34hhPk2C/YgOE6WCi76Gi
	 Vox3g/oLJNF1t3H+oubRINiCCqp66X4g0Yh64jsa0zOBSdTCePlEOyjqemc4HNNcJo
	 +nAMNas8rTshaxKl+aK+iclCjFEEUfZav18ukel5e314LaMITfxCZW02mf8O+k0W3g
	 u+CN08jyxL7Mw==
Date: Fri, 10 Jul 2026 17:43:40 +0100
From: Conor Dooley <conor@kernel.org>
To: Haoning.CHENG@cn.bosch.com
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] dt-bindings: thermal: imx: Document calibration
 offset property
Message-ID: <20260710-diocese-gentleman-ec8fcff76398@spud>
References: <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-0-db9fc2947c55@cn.bosch.com>
 <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-1-db9fc2947c55@cn.bosch.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YxTcWEGVuS17YjL2"
Content-Disposition: inline
In-Reply-To: <20260710-b4-symana21-11221-imx-thermal-support-upstream-6-18-v3-1-db9fc2947c55@cn.bosch.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_RECIPIENTS(0.00)[m:Haoning.CHENG@cn.bosch.com,m:rafael@kernel.org,m:daniel.lezcano@linaro.org,m:rui.zhang@intel.com,m:lukasz.luba@arm.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:shawnguo@kernel.org,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324561-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,intel.com,arm.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,microchip.com:email,spud:mid,bosch.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E504E73CB33

--YxTcWEGVuS17YjL2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 10, 2026 at 10:50:40AM +0800, HaoNing Cheng via B4 Relay wrote:
> From: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>
>=20
> Some boards need a small per-design correction to align the reported CPU
> temperature with board-level measurements.
>=20
> Document the optional fsl,temp-calibration-offset-millicelsius property,
> a signed offset in millicelsius that is added to the calculated sensor
> temperature. The property is optional and the existing behaviour is kept
> when it is omitted.
>=20
> Update the binding example to show its usage.
>=20
> Signed-off-by: HaoNing Cheng <Haoning.CHENG@cn.bosch.com>

Acked-by: Conor Dooley <conor.dooley@microchip.com>
pw-bot: not-applicable

> ---
>  Documentation/devicetree/bindings/thermal/imx-thermal.yaml | 10 ++++++++=
++
>  1 file changed, 10 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml b=
/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> index 949b154856c5..704bf2fa48cf 100644
> --- a/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> +++ b/Documentation/devicetree/bindings/thermal/imx-thermal.yaml
> @@ -59,6 +59,15 @@ properties:
>    clocks:
>      maxItems: 1
> =20
> +  fsl,temp-calibration-offset-millicelsius:
> +    maxItems: 1
> +    description:
> +      A signed calibration offset, in millicelsius, added to the calcula=
ted
> +      sensor temperature to compensate for board-level measurement
> +      differences. When absent, no offset is applied.
> +    minimum: -28580
> +    maximum: 28580
> +
>    "#thermal-sensor-cells":
>      const: 0
> =20
> @@ -109,6 +118,7 @@ examples:
>              nvmem-cells =3D <&tempmon_calib>, <&tempmon_temp_grade>;
>              nvmem-cell-names =3D "calib", "temp_grade";
>              clocks =3D <&clks IMX6SX_CLK_PLL3_USB_OTG>;
> +            fsl,temp-calibration-offset-millicelsius =3D <(-6400)>;
>              #thermal-sensor-cells =3D <0>;
>          };
>      };
>=20
> --=20
> 2.43.0
>=20
>=20

--YxTcWEGVuS17YjL2
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCalEhPAAKCRB4tDGHoIJi
0uLeAQDJi0oIsUXiFpOhsENkrPOBOVbkTK9/+jwt4V/Avu8pfgEAlx56YdWYvhF3
9fxQ5FOYGhVzjS0m80NhMCm/S1Z06Ak=
=pItJ
-----END PGP SIGNATURE-----

--YxTcWEGVuS17YjL2--

