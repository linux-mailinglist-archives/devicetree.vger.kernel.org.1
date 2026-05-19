Return-Path: <devicetree+bounces-300243-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eJxMJnCcDGq8jwUAu9opvQ
	(envelope-from <devicetree+bounces-300243-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:22:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A3E582FAD
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 19:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5E6B83006002
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 17:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE1D33DB335;
	Tue, 19 May 2026 17:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s1JHUYFt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB27B3DB332;
	Tue, 19 May 2026 17:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779211315; cv=none; b=BVttrneoFOwEj01OfwVKoJlhGABGJ6LVM0GTb93I80EYBge0aAfZXrTpK3jIeGL93W6bVdePBOcfY0/PBMRl0OPpaNwigK8beElESNXEOqiEvcAuLGN1O3zDAu/1CxwMV8yDJdTDuUAjQnYaXw5uwYJhIFD9zLkTn6eEsmsuuYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779211315; c=relaxed/simple;
	bh=Ia3/QcXqzSymaJJ8l6fAmOGDHX35UkO1yPopuOfh8PE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F3GixHMwGAJPTH5YKYuXA6B4kJy/dETDMrJ/uAfg494E4b99LLGnEj+tuO3vnOj3l4YiOa4gY52WD4m/GFFZcg+M+dQXh7bbA01EUi1U+l9lk6STk+/XBtmOkEyxTQTv/D0lXct28vHAvv/2F/vwW6S+u2CPH8IggMIV9DqXRlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s1JHUYFt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5DFA8C2BCB3;
	Tue, 19 May 2026 17:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779211315;
	bh=Ia3/QcXqzSymaJJ8l6fAmOGDHX35UkO1yPopuOfh8PE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=s1JHUYFt/ryA5ujSO53Gh+Bvqwq00n3D+IfYOKgWQpOuJhHd3JNU8XhBCkyLFf3Mf
	 mjcy5AYiUsahNWwurebRahxCXNURXQ5cYK3yIDeoqcocdwFpaE2gTqs86Kr9HWjaIe
	 4hhaVwc2RgYrgQyG68sOtl8Mqr6aiZhx0jpbtYUbkKM1PEsARdfne6FpFw20p/cLSM
	 sVgMZd0lS1EIpUP7hyWzSz4Fjv9FA0q0A6c4gUIk0+aJMg+1wlP3cuuiyPe0Gl7gWT
	 JP0Z0BSzCHkMtIXo9XPWkFsZ8jGGRQp3e84JRMA24f500lGAkAfpkpqm1oUOMF8PbX
	 i28R1Wj8DKCvg==
Date: Tue, 19 May 2026 18:21:52 +0100
From: Conor Dooley <conor@kernel.org>
To: sashiko-reviews@lists.linux.dev
Cc: Piyush Patle <piyushpatle228@gmail.com>, robh@kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org
Subject: Re: [PATCH v9 04/11] dt-bindings: iio: adc: hx711: add HX710B support
Message-ID: <20260519-cherisher-trouble-e72d6c6d5c38@spud>
References: <20260518220228.63322-5-piyushpatle228@gmail.com>
 <20260518221101.A38E9C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mfTuUQjY6TrG/bcM"
Content-Disposition: inline
In-Reply-To: <20260518221101.A38E9C2BCB7@smtp.kernel.org>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300243-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,vger.kernel.org];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 87A3E582FAD
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--mfTuUQjY6TrG/bcM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, May 18, 2026 at 10:10:54PM +0000, sashiko-bot@kernel.org wrote:
> Thank you for your contribution! Sashiko AI review found 1 potential issu=
e(s) to consider:
> - [Low] The newly added `dvdd-supply` property is described as HX710B-spe=
cific but is not forbidden on HX711 nodes in the schema.
> --
>=20
> commit e277e4c3f21226be9f52ecf29adbdc5f6f73f38d
> Author: Piyush Patle <piyushpatle228@gmail.com>
>=20
> dt-bindings: iio: adc: hx711: add HX710B support
>=20
> This commit adds support for the HX710B ADC chip. It adds the avia,hx710b
> compatible string, documents the HX710B-specific dvdd-supply and vref-sup=
ply
> properties, and updates the schema constraints.
>=20
> > diff --git a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml =
b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > index 9134bbe413796..b2b5c7bdf05e6 100644
> > --- a/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
> > +++ b/Documentation/devicetree/bindings/iio/adc/avia-hx711.yaml
>=20
> [ ... ]
>=20
> > @@ -53,6 +69,21 @@ properties:
> >      maximum: 2500000
> >      default: 400000
> > =20
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          const: avia,hx710b
> > +    then:
> > +      properties:
> > +        vsup-supply: false
> > +        rate-gpios: false
> > +      required:
> > +        - vref-supply
> > +    else:
> > +      properties:
> > +        vref-supply: false
>=20
> The commit message mentions documenting the HX710B-specific DVDD and VREF
> supplies. While vref-supply is explicitly forbidden on HX711 nodes in this
> else branch, dvdd-supply is not.
>=20
> Does this schema unintentionally allow the dvdd-supply property on avia,h=
x711
> nodes? Should dvdd-supply: false also be added to this else branch?

No.

https://lore.kernel.org/all/20260512-frantic-finch-2b268bed4e15@spud/


--mfTuUQjY6TrG/bcM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCagycMAAKCRB4tDGHoIJi
0iiqAQDEL7f9fP5DR0zuRQCfEE1KsOBfkhWa5RZe2o2FXLDC6wD+MEeM5nDcT/or
+QsdkzJKZbZGTo03ozjHh4i3fw3YlAM=
=l2f8
-----END PGP SIGNATURE-----

--mfTuUQjY6TrG/bcM--

