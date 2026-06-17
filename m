Return-Path: <devicetree+bounces-313091-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +s1oKWLEMmoC5QUAu9opvQ
	(envelope-from <devicetree+bounces-313091-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:59:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 607AC69B313
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 17:59:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b2+XOHcO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313091-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-313091-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E08FA307B89C
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 15:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B7204ADD81;
	Wed, 17 Jun 2026 15:54:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB14494A02;
	Wed, 17 Jun 2026 15:54:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781711671; cv=none; b=CD7Mdc1A4mpqTQyrwGTIZpBDFgbpS8SEopYWD219JYpJDFyK0BNrGltd91VSaOBylKdnrfC1uMC5uDlryWEXZ7VYR9parrERZXrxrYlyNdaEkO5VehOXdOHG6r+MohzivdrP7Z+r2GVkQMu47kE2hdEw4L54QmVfhqXTcUFhTdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781711671; c=relaxed/simple;
	bh=KLAiCJQYRYw3YB5wtwnFKsDPwx4WIc0cUEw3knmOc5U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IK/sBnI0GSpGAUN628FiHE8uFPtRXoEYL2T5x8r8uQblbtO49eqb1e/5xRoj5rdB/meDt9XfuCVpS1Y9pwcfRPiWGB544OIwj2DmwRMa9nlkwGPB0z4eeALs6K6eGxDhPUzYHJjLoBLrPpsrgnvhi7++0Tj+ZmipJxkst+P+wxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2+XOHcO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F050A1F000E9;
	Wed, 17 Jun 2026 15:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781711657;
	bh=opUxdvmK1Et6y5WUWvpU9uzBkwAJJgHLgmimVcvo5b0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=b2+XOHcOo2Klgcfi2veVilYT6I6na3TgNB3e4dWz8oSs1nkgL4C5dhKBcQWTBRgQE
	 +gtI6841po3OD26ssrj7OqHQTs9VtpoCEaLmZsyCSZMvmBOnnIbeeDLRqtMxBuOfB9
	 bkUEvG5oFmtDRbYe4beJ0HNYnk4jdunes+5GWGQJTPI6+qAdf+T8jvkwduPg/Puub9
	 LJ7mvUUMUjHeka+p8/bKPrfMbZ3yoGtnFCUpJlLZB6N4mEeUffY8gX7lAUiZEwZxad
	 PkmXVANKAyIX9XcGCnMeSBGAPX+cUN4g0+YohVOI8nFpuvUfZ4e3iG8Y2Owpl1HZKj
	 bHbIH9N1KHUCQ==
Date: Wed, 17 Jun 2026 16:54:12 +0100
From: Conor Dooley <conor@kernel.org>
To: joakim.zhang@cixtech.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	p.zabel@pengutronix.de, gary.yang@cixtech.com,
	cix-kernel-upstream@cixtech.com, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/5] dt-bindings: soc: cix,sky1-system-control: add
 audss system control
Message-ID: <20260617-chummy-automatic-6c11e9958bbf@spud>
References: <20260617060437.1474816-1-joakim.zhang@cixtech.com>
 <20260617060437.1474816-2-joakim.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8ZYS5gijymMBUHHL"
Content-Disposition: inline
In-Reply-To: <20260617060437.1474816-2-joakim.zhang@cixtech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-5.26 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-313091-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,cixtech.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 607AC69B313


--8ZYS5gijymMBUHHL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 17, 2026 at 02:04:33PM +0800, joakim.zhang@cixtech.com wrote:
> From: Joakim Zhang <joakim.zhang@cixtech.com>
>=20
> The Cix Sky1 Audio Subsystem (AUDSS) groups audio-related clock, reset
> and control registers in a dedicated CRU block. Software reset lines are
> exposed on the syscon parent via #reset-cells, following the same model
> as the existing Sky1 FCH and S5 system control bindings.
>=20
> A clock-controller child node is required under the audss syscon. It has
> no reg property of its own and accesses the parent register block for mux,
> divider and gate fields.
>=20
> The AUDSS is also controlled by one power domain and reset part.
>=20
> Signed-off-by: Joakim Zhang <joakim.zhang@cixtech.com>
> ---
>  .../soc/cix/cix,sky1-system-control.yaml      | 48 +++++++++++++++++++
>  .../reset/cix,sky1-audss-system-control.h     | 25 ++++++++++
>  2 files changed, 73 insertions(+)
>  create mode 100644 include/dt-bindings/reset/cix,sky1-audss-system-contr=
ol.h
>=20
> diff --git a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-co=
ntrol.yaml b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-cont=
rol.yaml
> index a01a515222c6..5a1cd5c24ade 100644
> --- a/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
> +++ b/Documentation/devicetree/bindings/soc/cix/cix,sky1-system-control.y=
aml
> @@ -19,6 +19,7 @@ properties:
>        - enum:
>            - cix,sky1-system-control
>            - cix,sky1-s5-system-control
> +          - cix,sky1-audss-system-control
>        - const: syscon

If the only thing these share are being a reset controller and having a
syscon fallback, I think it should be in a different file.

pw-bot: changes-requested

Cheers,
Conor.

> =20
>    reg:
> @@ -27,6 +28,38 @@ properties:
>    '#reset-cells':
>      const: 1
> =20
> +  power-domains:
> +    maxItems: 1
> +
> +  resets:
> +    maxItems: 1
> +
> +  clock-controller:
> +    type: object
> +    properties:
> +      compatible:
> +        const: cix,sky1-audss-clock
> +    required:
> +      - compatible
> +    additionalProperties: true
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: cix,sky1-audss-system-control
> +    then:
> +      required:
> +        - clock-controller
> +        - power-domains
> +        - resets
> +    else:
> +      properties:
> +        clock-controller: false
> +        power-domains: false
> +        resets: false
> +
>  required:
>    - compatible
>    - reg
> @@ -40,3 +73,18 @@ examples:
>        reg =3D <0x4160000 0x100>;
>        #reset-cells =3D <1>;
>      };
> +  - |
> +    audss_syscon: system-controller@7110000 {
> +        compatible =3D "cix,sky1-audss-system-control", "syscon";
> +        reg =3D <0x7110000 0x10000>;
> +        power-domains =3D <&smc_devpd 0>;
> +        resets =3D <&s5_syscon 31>;
> +        #reset-cells =3D <1>;
> +
> +        clock-controller {
> +            compatible =3D "cix,sky1-audss-clock";
> +            #clock-cells =3D <1>;
> +            clocks =3D <&scmi_clk 0>, <&scmi_clk 2>, <&scmi_clk 4>, <&sc=
mi_clk 5>;
> +            clock-names =3D "x8k", "x11k", "sys", "48m";
> +        };
> +    };
> diff --git a/include/dt-bindings/reset/cix,sky1-audss-system-control.h b/=
include/dt-bindings/reset/cix,sky1-audss-system-control.h
> new file mode 100644
> index 000000000000..aabdce60b094
> --- /dev/null
> +++ b/include/dt-bindings/reset/cix,sky1-audss-system-control.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * Copyright 2026 Cix Technology Group Co., Ltd.
> + */
> +#ifndef DT_BINDING_RESET_CIX_SKY1_AUDSS_SYSTEM_CONTROL_H
> +#define DT_BINDING_RESET_CIX_SKY1_AUDSS_SYSTEM_CONTROL_H
> +
> +#define AUDSS_I2S0_SW_RST	0
> +#define AUDSS_I2S1_SW_RST	1
> +#define AUDSS_I2S2_SW_RST	2
> +#define AUDSS_I2S3_SW_RST	3
> +#define AUDSS_I2S4_SW_RST	4
> +#define AUDSS_I2S5_SW_RST	5
> +#define AUDSS_I2S6_SW_RST	6
> +#define AUDSS_I2S7_SW_RST	7
> +#define AUDSS_I2S8_SW_RST	8
> +#define AUDSS_I2S9_SW_RST	9
> +#define AUDSS_WDT_SW_RST	10
> +#define AUDSS_TIMER_SW_RST	11
> +#define AUDSS_MB0_SW_RST	12
> +#define AUDSS_MB1_SW_RST	13
> +#define AUDSS_HDA_SW_RST	14
> +#define AUDSS_DMAC_SW_RST	15
> +
> +#endif
> --=20
> 2.50.1
>=20

--8ZYS5gijymMBUHHL
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCajLDJAAKCRB4tDGHoIJi
0n08AP9FWdFnJlmy1XpwpZm5ueHB+dzRSkWhJiBjANCLE5sYsgD8CiHLbLKAAkrG
yx7JaPmoV1fjFVuKjaMyF6IIA/HASwI=
=HsU8
-----END PGP SIGNATURE-----

--8ZYS5gijymMBUHHL--

