Return-Path: <devicetree+bounces-296346-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8CeONs9cA2qf5QEAu9opvQ
	(envelope-from <devicetree+bounces-296346-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:01:03 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DF83525517
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 19:01:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 32D083050172
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 16:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E1C3B5F5D;
	Tue, 12 May 2026 16:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeqpcs+R"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 943192C1788;
	Tue, 12 May 2026 16:44:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778604285; cv=none; b=JBr1lFAF/lGM63PR+GrUcJ6YHrRUMXvCuIXWLsSg2kGudnHYh2dCWoOFG7ISe7HmBT/9XJ+lHlXcsGg9uvLOVMBd10xVQMJQ83oyCkVg23Wa9Aju2HF57HawooPUqMtE8RnWuJ4D6aRB5/uDpO4p2S7Dahe4ggVrVdOtLimloIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778604285; c=relaxed/simple;
	bh=qBe780EEoSq3WZerOuuNcvFvJd92SdQMTIiqjoeOExI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lK0DUei5GPL7x3pRZN9WzrtajoNKZIjLhlS+0i0HBLdQm7GhzN+meKe+4rvN1Ynnm6HuH2pS8YsARJ7lRpXdZtELPNQ9fUZ29U5g9uREfwVO1RdSSNEvqnYzbtrW5JAB1HCjxq6jhkxMhe2UT5nt+0A3nJhePikOtvssqKINl7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeqpcs+R; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2C487C2BCB0;
	Tue, 12 May 2026 16:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778604285;
	bh=qBe780EEoSq3WZerOuuNcvFvJd92SdQMTIiqjoeOExI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oeqpcs+R8iZWKIGzlAcstWBARRoWir7QtKFUuyKk+V2A0pGr8ZActyrvOgr9sU5cB
	 C6OjnBdxr4nG9VSXnHX1G19T9sUXUPzzgp8d27QxxxiWFNW9SqeNXvecxnNkCBISRQ
	 HiJ+cI6GPDQY/OeW/BCrb8BIg4SARBjSDZLp8gBRlHwmth2u+KYhHQQCI2UpX9gT73
	 kTzY1i2jGrRMOp05AYDq9AfAlEApNha9ljolv7w8VpZXZ4kYdk8hfqZGrrHuGzBHcC
	 oIXcg3t0fYnd4q0oI9LEswgCR7kk5K9NFWkcsuh7jk/2wruakbNpN69FGY+2mW2wMr
	 XEiISkaML9N5w==
Date: Tue, 12 May 2026 17:44:41 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko@lists.linux.dev
Cc: Jisheng Zhang <jszhang@kernel.org>, krzk+dt@kernel.org, robh@kernel.org,
	conor+dt@kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 2/3] dt-bindings: i3c: dw: Add apb reset
Message-ID: <20260512-curvy-ashes-bde0e8e8d473@spud>
References: <20260511031945.3228-3-jszhang@kernel.org>
 <20260511230001.1B220C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DryAQInIECRvEhk7"
Content-Disposition: inline
In-Reply-To: <20260511230001.1B220C2BCB0@smtp.kernel.org>
X-Rspamd-Queue-Id: 8DF83525517
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-296346-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action


--DryAQInIECRvEhk7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 11, 2026 at 11:00:00PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Medium] Adding a second item to the `resets` and `reset-names` list wi=
thout specifying `minItems: 1` makes both resets strictly required whenever=
 the property is present, breaking DT schema backward compatibility.
> --
>=20
> commit 0c4b11b6e45b719eb15a1a87171391a4bfb310b9
> Author: Jisheng Zhang <jszhang@kernel.org>
>=20
> dt-bindings: i3c: dw: Add apb reset
>=20
> This commit updates the DesignWare I3C master binding to support an
> optional APB interface reset signal.
>=20
> > diff --git a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.y=
aml b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> > index 613dce7757bc3..2575442b28ff4 100644
> > --- a/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> > +++ b/Documentation/devicetree/bindings/i3c/snps,dw-i3c-master.yaml
> > @@ -38,10 +38,12 @@ properties:
> >    resets:
> >      items:
> >        - description: Reset signal
> > +      - description: APB interface reset signal
>=20
> Does adding this second item inadvertently make the APB reset strictly
> mandatory for validation? In dt-schema, when items are defined as a list,
> minItems implicitly defaults to the length of that list. Without an
> explicit minItems: 1 constraint, device trees defining only the single
> core_rst reset might fail schema validation.
>=20
> > =20
> >    reset-names:
> >      items:
> >        - const: core_rst
> > +      - const: apb_rst
>=20
> Should minItems: 1 be added to both the resets and reset-names properties
> to maintain backward compatibility?=20
>=20
> Since the driver gracefully handles a missing apb_rst by using
> devm_reset_control_get_optional_exclusive_deasserted(), adding the minIte=
ms
> constraint would keep single-reset configurations perfectly valid.

Obviously this is all crap and can be ignored, since the other reset is
added in the series.

--DryAQInIECRvEhk7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagNY+QAKCRB4tDGHoIJi
0ikJAQC7LIxijJWf+xlPboDCs5YDj39wv60+tEqfC2s3l3kC6wD/TXs6yuBmbGkH
S+dgxRcbFt05dFBbleuaebnfXJckbA8=
=vDjU
-----END PGP SIGNATURE-----

--DryAQInIECRvEhk7--

