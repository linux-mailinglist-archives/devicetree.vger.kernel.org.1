Return-Path: <devicetree+bounces-300249-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLbPOTGfDGq8jwUAu9opvQ
	(envelope-from <devicetree+bounces-300249-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:34:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D8D583252
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 356A330F872D
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 746B3367B7E;
	Tue, 19 May 2026 17:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BJuRGtQK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395D83EA968;
	Tue, 19 May 2026 17:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779211709; cv=none; b=EmJ+JdhtfV+7nWE+dPalIC4fMOF/q2seoDRQX4OwQDb1pvNP4j1J9kUMIIU5+2aeE5sDMHgnpdo6xjF8pAUi2iskntB+qkvB2BmB8PHPnj8n6/uVTZuCSnwdpTwJgFkMNnM+CohuyZFQFsYEGllEXYZuIUbxaI9ySk9C4j6Aa54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779211709; c=relaxed/simple;
	bh=RKWyZbPWuUpHMpEcmcrxpzeWRj5dXSA2zi3P0zxJu/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kLUBDAkSriGCdE5Fnr/8O78NCCbo/lRUu7G+wj5Qq38a86pM73V3YdscYpOPsn6/olyQc3ZcEa66c2qyK5V5iOv5u1m+kTwigwN7GI5erNMqlXFfcOm1pzO4Zy0J9Q0Z6/dQIBiyFFNTpCwRhACZQKrQ4Zewfj97W801W10k6ek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BJuRGtQK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8B08C2BCB3;
	Tue, 19 May 2026 17:28:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779211709;
	bh=RKWyZbPWuUpHMpEcmcrxpzeWRj5dXSA2zi3P0zxJu/4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BJuRGtQKyZi73Wx4x0AwbHwbeuM1v8TFWCVdbGub3SpzOoAC+nWgpHQCp6rranABl
	 cefUmDkKcZ2ZEmNt7kPW6heuhYP/HWQETszrLHMHG/pztV12SYAWqc7hbgwrTijoXV
	 0klQROwLPaRty8oMG8aSQAcZOCGfAPPwB76xSDB/P6nFUm76HYRC9yvswDgN7LFe0w
	 puAHthp7SqWQtteHG8FJaquFtTERX+gSBc8wlVfUVJPkaDtY5uqhyXWsQA+Fm/9BaJ
	 EtLBKzgSgCeTNePqwan9m3wfmnuEqDL8+NlpTVkIxEunBGHgAkp4yr8rzRNBopQDux
	 BkKBRVCAPIl3g==
Date: Tue, 19 May 2026 18:28:24 +0100
From: Conor Dooley <conor@kernel.org>
To: Otto =?iso-8859-1?Q?Pfl=FCger?= <otto.pflueger@abscue.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/3] regulator: dt-bindings: Add Unisoc SC2730 PMIC
Message-ID: <20260519-grazing-although-18c95489592f@spud>
References: <20260519-sc2730-regulators-v3-0-5bf0e02507e3@abscue.de>
 <20260519-sc2730-regulators-v3-1-5bf0e02507e3@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qwknFIGc4u/T29dv"
Content-Disposition: inline
In-Reply-To: <20260519-sc2730-regulators-v3-1-5bf0e02507e3@abscue.de>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300249-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Queue-Id: 38D8D583252
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--qwknFIGc4u/T29dv
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 19, 2026 at 02:06:11PM +0200, Otto Pfl=FCger wrote:
> Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
>=20
> Signed-off-by: Otto Pfl=FCger <otto.pflueger@abscue.de>
> ---
>  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 47 ++++++++++++++++=
++++++
>  1 file changed, 47 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2730-regu=
lator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regula=
tor.yaml
> new file mode 100644
> index 000000000000..5b91c7b7f3ee
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.y=
aml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/sprd,sc2730-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc SC2730 Power Management IC regulators
> +
> +maintainers:
> +  - Otto Pfl=FCger <otto.pflueger@abscue.de>

How is this binding meant to apply without a compatible?
pw-bot: changes-requested

Thanks,
Conor.

> +
> +patternProperties:
> +  "^dcdc-(core|cpu|gen[0-1]|gpu|mem|memq|modem|sram)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +  "^ldo-avdd(12|18)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +  "^ldo-vdd(18-dcxo|28)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +  "^ldo-vdd(emmccore|kpled|ldo[0-2]|sd(core|io)|sim[0-2]|usb33|wcn|wifip=
a)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +  "^ldo-vddcam(a0|a1|d0|d1|io|mot)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +  "^ldo-vddrf(1v25|18)$":
> +    type: object
> +    $ref: regulator.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +...
>=20
> --=20
> 2.51.0
>=20

--qwknFIGc4u/T29dv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagyduAAKCRB4tDGHoIJi
0uAPAQDtUHuNV+i3gtG9IAQN3k9nSRDZ3fLf6SiQ707974lffgEAkXLH/ab3RmlR
u3bxaEdpNEUMUMbw8fKKCs6KfdofJgk=
=s5oH
-----END PGP SIGNATURE-----

--qwknFIGc4u/T29dv--

