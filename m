Return-Path: <devicetree+bounces-297256-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UFWOHEQzBWonTQIAu9opvQ
	(envelope-from <devicetree+bounces-297256-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:28:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 123E553D075
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:28:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id F391E30182D3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:28:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 085932E1C4E;
	Thu, 14 May 2026 02:28:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QK34Dw8C"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D909A5C613
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 02:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778725697; cv=none; b=V6t6bUpP0cdOLKYFvl1/Nn4NqgFfK7sPFCRKnjqqnF2xg032sb5WIqnqhT4KIHI2oYpIP+Y7iwmWx7nHCKmO4ccIP4wV1dJjsYZu4f8oGXW+OJR43KvLaY9j7DGsS6E180vKvYjRrE7f9GeJDik3SrjSMR/sOgSwiEkZT3kc5Mo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778725697; c=relaxed/simple;
	bh=nnHudenjuSEGPyitNi65Tcf0PTHqH3TpWM0Mi7MEChw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AIKmHIKLu6onzJPw2We5Epi4OKKQ65h9Kl1uRls6Y0FWyfwU4tEXVCYSKHj55hiOD4ZMKh+ffuY4ax5QXqwusRNSyxr73wi6kkw4CMbVQH/0MEhCdNmDvA7x1WraRssPiDkQTAtd96CCUPbYawmblVTYWMtj3Gx3CGXVejXR/sQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QK34Dw8C; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2FCF8C2BCB3;
	Thu, 14 May 2026 02:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778725697;
	bh=nnHudenjuSEGPyitNi65Tcf0PTHqH3TpWM0Mi7MEChw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=QK34Dw8C+aC7/2in1+BKGBMcyiCoPDwnmkw32/vluO+97XknR/57+N+/+/NIA7+LQ
	 hH6gmjv5FRVrBuu/cJ8OLW2bLEGR1bL98DnMdGJI7FsS1lbubTj0kY5JWKqrAzKjrP
	 L9kqIen4HKd8v1cbi35wE1iQRBHBmQkdOfzJZu/tZu1lt4AobiK5iE4Fww/q/fhTaY
	 6Jcw9hOujbW3G2QceBHEZ0qd+aibpGN7PLaFeiEtAJz+vv9chh0zaFrP6sZOra7P4s
	 hAnNIcaBDgwf0eV8AILs5otE3AS5lSOrp2qnmO7Bp3oUv86Yt5+i2D8Hpn0bmonS5U
	 tIvNNg2renN4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/6] riscv: dts: spacemit: k1-musepi-pro: add PMIC
 and power infrastructure
Reply-To: sashiko-reviews@lists.linux.dev
To: "Andre Heider" <a.heider@gmail.com>
Cc: krzk+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260513071958.29574-2-a.heider@gmail.com>
References: <20260513071958.29574-2-a.heider@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:28:16 +0000
Message-Id: <20260514022817.2FCF8C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 123E553D075
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297256-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid,0.0.0.41:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Regulator minimum voltage constraints are set too loosely on fix=
ed board rails, risking hardware brownouts.
--

commit 823adf1d7b0f1286cdd0e228119b713b02c36d2e
Author: Andre Heider <a.heider@gmail.com>

riscv: dts: spacemit: k1-musepi-pro: add PMIC and power infrastructure

This commit enables i2c8 and adds the connected SpacemiT P1 PMIC with its
related regulators for the board's power infrastructure and voltage
regulation support.

> diff --git a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts b/arch/riscv/=
boot/dts/spacemit/k1-musepi-pro.dts
> index 29e333b670cf0..e0b585c50014b 100644
> --- a/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
> +++ b/arch/riscv/boot/dts/spacemit/k1-musepi-pro.dts
[ ... ]
> @@ -72,6 +82,130 @@ &pdma {
>  	status =3D "okay";
>  };
> =20
> +&i2c8 {
> +	pinctrl-0 =3D <&i2c8_cfg>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +
> +	pmic@41 {
> +		compatible =3D "spacemit,p1";
> +		reg =3D <0x41>;
> +		interrupts =3D <64>;
[ ... ]
> +		dldoin1-supply =3D <&buck5>;
> +		dldoin2-supply =3D <&buck5>;
> +
> +		regulators {
[ ... ]
> +			buck3_1v8: buck3 {
> +				regulator-min-microvolt =3D <500000>;
> +				regulator-max-microvolt =3D <1800000>;

Should these minimum bounds be restricted to match the exact hardware layout
of the board?

The labels buck3_1v8 and buck4_3v3 indicate these rails are wired for fixed
1.8V and 3.3V usage, but the regulator-min-microvolt allows them to scale
down to 0.5V. Could this loose constraint risk hardware brownouts if a driv=
er
attempts dynamic voltage scaling on these rails?

> +				regulator-ramp-delay =3D <5000>;
> +				regulator-always-on;
> +			};
> +
> +			buck4_3v3: buck4 {
> +				regulator-min-microvolt =3D <500000>;
> +				regulator-max-microvolt =3D <3300000>;
> +				regulator-ramp-delay =3D <5000>;
> +				regulator-always-on;
> +			};
> +
> +			buck5: buck5 {
> +				regulator-min-microvolt =3D <500000>;
> +				regulator-max-microvolt =3D <3450000>;

Since buck5 is used as the parent supply for the DLDOs (dldoin1-supply and
dldoin2-supply), could the wide 0.5V minimum constraint allow the OS to drop
its voltage below the necessary headroom needed to power the downstream
DLDOs?

> +				regulator-ramp-delay =3D <5000>;
> +				regulator-always-on;
> +			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513071958.2957=
4-1-a.heider@gmail.com?part=3D1

