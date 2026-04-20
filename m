Return-Path: <devicetree+bounces-288806-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SL+jNqpR5mkDuwEAu9opvQ
	(envelope-from <devicetree+bounces-288806-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:17:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D6142F44E
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 18:17:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 800903013BB2
	for <lists+devicetree@lfdr.de>; Mon, 20 Apr 2026 16:11:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A90393446B7;
	Mon, 20 Apr 2026 16:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZXTUL14u"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8420D34402B;
	Mon, 20 Apr 2026 16:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776701494; cv=none; b=OCTXjhwyIU+mlxxFhU2Cspt0YEtYvXfbkC5gZ7HIZnaX3dfyBJ4dCWex1JhEnqxNn8RRb9YGgI2BrLuU8ot3Kpikp31cFeu/gZ2qS7eKbEQoTg3FP2TNezaw6y+btiF5LtZLtqairzfSb3JUr3lyp6+pdJRnSBSN7GSCDhAZy08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776701494; c=relaxed/simple;
	bh=FF6uudnGlPUPvb2FQizL4UweHN3ZaNOrWAjfmCj8T48=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ktz3XezaLiwKxFua/SvblMWj95JMFGu77mtt1/wJHwKmvUeZOWS8lOB+XA6meKiq/NQQyNG0ZTymjbPYwSJLZBT+aRMPF12xgBLRPfAjPek6AUnEHwU/tytKyHpwiQmr21LIppfrjy9Yzm7i6hhBm0tgd+/2KbxGQkH9tj2mgSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZXTUL14u; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D7680C19425;
	Mon, 20 Apr 2026 16:11:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776701494;
	bh=FF6uudnGlPUPvb2FQizL4UweHN3ZaNOrWAjfmCj8T48=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ZXTUL14uffU2HofT4HKpTFjiGL67NRAWrh5o8/RckQDoTYncj4G1aF/H51j1u8AhA
	 564J3k2ZRziJ0a7rAR+MOFjlJhyJjWqWqUoPfaRZ3DNyLSow6ka1h3KO/r9fEiLuZK
	 dtAsphvKDLYkFnizr/RrnN6YjogSaA9sgSPngrGSlQmEGBfww9hDTRJYfrUw0P8kfI
	 QzKVZF0ieXoXtLZSScbsA3RCHJ6oTh260G5BIELmXjsqcewRTZnYUIQVzqmow1MDHn
	 yyYanQV7e1kRKn2j/qbLDnx1oznGb8I/doqp+2gXcReJZhe4+O19icNabubHuvcrDy
	 id+vXcS87nvsA==
Date: Mon, 20 Apr 2026 17:11:29 +0100
From: Conor Dooley <conor@kernel.org>
To: christian.koever-draxl@student.uibk.ac.at
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	neil.armstrong@linaro.org, khilman@baylibre.com,
	jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
	funderscore@postmarketos.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: amlogic: add X98Q compatible
Message-ID: <20260420-mahogany-unscathed-633b67317ad1@spud>
References: <20260420061854.5421-1-christian.koever-draxl@student.uibk.ac.at>
 <20260420061854.5421-2-christian.koever-draxl@student.uibk.ac.at>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liOBZr7AzZIB+4ny"
Content-Disposition: inline
In-Reply-To: <20260420061854.5421-2-christian.koever-draxl@student.uibk.ac.at>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-288806-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FREEMAIL_CC(0.00)[kernel.org,linaro.org,baylibre.com,googlemail.com,postmarketos.org,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[13];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 88D6142F44E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--liOBZr7AzZIB+4ny
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 20, 2026 at 08:18:53AM +0200, christian.koever-draxl@student.ui=
bk.ac.at wrote:
> From: Christian Stefan K=F6v=E9r-Draxl <christian.koever-draxl@student.ui=
bk.ac.at>
>=20

Even if a patch is simple, you still need a commit message.

pw-bot: changes-requested

Cheers,
Conor.

> Signed-off-by: Christian Stefan K=F6v=E9r-Draxl <christian.koever-draxl@s=
tudent.uibk.ac.at>
> ---
>  Documentation/devicetree/bindings/arm/amlogic.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documen=
tation/devicetree/bindings/arm/amlogic.yaml
> index a885278bc4e2..82671d58d1da 100644
> --- a/Documentation/devicetree/bindings/arm/amlogic.yaml
> +++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
> @@ -254,6 +254,13 @@ properties:
>                - khadas,vim1s
>            - const: amlogic,s905y4
>            - const: amlogic,s4
> +     =20
> +      - description: Boards with the Amlogic Meson S4 S905W2 SoC
> +        items:
> +          - enum:
> +              - amediatech,x98q
> +          - const: amlogic,s905w2
> +          - const: amlogic,s4
> =20
>        - description: Boards with the Amlogic S6 S905X5 SoC
>          items:
> --=20
> 2.53.0
>=20

--liOBZr7AzZIB+4ny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaeZQMQAKCRB4tDGHoIJi
0omFAPoDH5KiAybZREj6lTcK/1DjW034j6NJgBrkPg+Eq2ZqlwEA66+UEajeAGRR
cVCROz2N0TrTtS58/D6XZeC8XmpKRQw=
=gb9O
-----END PGP SIGNATURE-----

--liOBZr7AzZIB+4ny--

