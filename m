Return-Path: <devicetree+bounces-311084-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9xQbBPg3LGqHNwQAu9opvQ
	(envelope-from <devicetree+bounces-311084-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:46:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6345C67B0CD
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 18:46:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Q+Kqjm9I;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311084-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311084-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A813630530CC
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 16:46:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12BFB403E9C;
	Fri, 12 Jun 2026 16:46:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E9640314F;
	Fri, 12 Jun 2026 16:46:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781282792; cv=none; b=jQQ0bCbVCgTjq+TzPm0dzTQh48STiH08rlHokbpdHANOlH8+O1vyT2G7j6fBT2oywffSplcyxfqRRYpqLHrvZ+bB+9eNk/OpgYx0WB8VLjUqr5AvVCOv0NsdrtSZuhEdkSDAAjJtqTX2Ty/HloapTduJZTeXLJ+VYOyFEAMEfZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781282792; c=relaxed/simple;
	bh=Yy2lCgISqpnQTrnW6pmiqUrBIUzjvmyKJkkaXXSl9/0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qK5n8yDvcFGSspBsczOI3IAEFx6BjTR1d5H5Wioncttr37znNyL/iGzU02PT40m6EcrQal7bxi+T1U8gk7BTMM6RETUvxwJJf2etQv0ZKDhNdUpXEssdGujbciIz4Mf2Rqa3kHemdSwokFL8sNYWnJEtJYl2GDA6ZnT+YZkFdzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+Kqjm9I; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 813CC1F00A3A;
	Fri, 12 Jun 2026 16:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781282789;
	bh=Kj4H4TJLjJ3q+MHqoxZVHAqkhVs9/S62Wt4MB8njM8M=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Q+Kqjm9I81wRQho1EmOFnPEBAQpHPyryt+ovFdb7GIpq1retK3DptD+P6ej8sjNGo
	 xFOPk6v3pOl1fxUmj/7dSKCSdmF24GMP+euhd25VYrP+pBjdqfqIuxeADA6BMSiQWF
	 FC0sWbkH0vWeB08F7b0I+zi0aLespJTcpiSkgF4hthRR/1DYmL3DU/pPLCsAeqtF+Q
	 NbqI/QnEdMNgcxXeWp58bhOZ0rnAEkOaMeR6QMfxXlQcRruakkLkv9W4oWdv4FxcVi
	 NLfuMOumaaGT6/MUQJrdaX0xHFOsEmfL9YR20mSj/QJoldo2DfPRmGLdrF+3YR8R95
	 TU4149vINS5ZA==
Date: Fri, 12 Jun 2026 17:46:25 +0100
From: Conor Dooley <conor@kernel.org>
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
	linux-spi@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/2] dt-bindings: spi: snps,dw-apb-ssi: Add support
 for snps,dwc-ssi-2.00a
Message-ID: <20260612-mute-aqueduct-029ac227314e@spud>
References: <20260612125856.8530-1-changhuang.liang@starfivetech.com>
 <20260612125856.8530-2-changhuang.liang@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="acw58VbrQU5q/tux"
Content-Disposition: inline
In-Reply-To: <20260612125856.8530-2-changhuang.liang@starfivetech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-311084-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:changhuang.liang@starfivetech.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:broonie@kernel.org,m:linux-spi@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,spud:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6345C67B0CD


--acw58VbrQU5q/tux
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jun 12, 2026 at 05:58:55AM -0700, Changhuang Liang wrote:
> Add a new compatible string "snps,dwc-ssi-2.00a" for the Synopsys
> DesignWare SSI controller version 2.00a.

Two things. Firstly, driver patch suggests a fallback to 1.01a is
possible. Why haven't you added one?
Secondly, I am going to expect that when your starfive user for this
appears in my inbox that it has a device-specific compatible, so you may
as well add that now.

pw-bot: changes-requested

Cheers,
Conor.

>=20
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
> ---
>  Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml b=
/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> index 8ebebcebca16..fb74243d4bdf 100644
> --- a/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> +++ b/Documentation/devicetree/bindings/spi/snps,dw-apb-ssi.yaml
> @@ -41,6 +41,7 @@ properties:
>          enum:
>            - snps,dw-apb-ssi
>            - snps,dwc-ssi-1.01a
> +          - snps,dwc-ssi-2.00a
>        - description: Microchip Sparx5 SoC SPI Controller
>          const: microchip,sparx5-spi
>        - description: Amazon Alpine SPI Controller
> --=20
> 2.25.1
>=20

--acw58VbrQU5q/tux
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaiw34QAKCRB4tDGHoIJi
0hMNAP9W880zwSMN5uujgT/owp9UHTexLLhZrT4hsC0nvS0xHQEA3Q4P82QTK1bK
6kmefaYG62U5ZwzpYdIGRc1H6F/CewU=
=lyV/
-----END PGP SIGNATURE-----

--acw58VbrQU5q/tux--

