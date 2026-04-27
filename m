Return-Path: <devicetree+bounces-290735-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eB9ZDw3A72mLFQEAu9opvQ
	(envelope-from <devicetree+bounces-290735-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 21:59:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF0A479A01
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 21:59:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8D841300F94F
	for <lists+devicetree@lfdr.de>; Mon, 27 Apr 2026 19:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 571FD37E303;
	Mon, 27 Apr 2026 19:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+rD1ZAW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FB27E056;
	Mon, 27 Apr 2026 19:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777319946; cv=none; b=UzrQa6Hz5MRNYZsoBNk+OrSNAB8t/7v18k0oCjBVb+y7/j2dEitvanXTqcCfe3p8HR4JAvNai6KHZ/9bRODG78K/oRlljcPX90ptXtuDgarzVy+IqVsLNy0TSLNqT13uPur1WiGik0frI2xOIZazdUI7fdwHnUP23d94vlMBNNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777319946; c=relaxed/simple;
	bh=oEcOC5cvNUEtSV7iMdf1PqDE2EXE436h4SjAoVjGcDw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ge5RAdMuvoHx/bShj0hO+ce/MJNx/U6EPHtcvNQo7UtXew2hafMviuPHP30GT6xT4+/Qlo65oueZtflPo+dRqAJCewxyJtzbF2ME3jG1gXvQTgrdotZpINFo56goKwNohQ3XVFK7w6DKFbW/rfTVJPEcX8eFDQklQ25xIU0wreo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+rD1ZAW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 10823C2BCB6;
	Mon, 27 Apr 2026 19:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777319945;
	bh=oEcOC5cvNUEtSV7iMdf1PqDE2EXE436h4SjAoVjGcDw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=C+rD1ZAWnqwLviGN437Hq0DXr7++Rki6Py9ZYQNDJjCQndOcgyt2V0La8Wkb6Hekr
	 gwuQNoqprtQUpftiP/2GQZXeeebn3rSD1N/CDe3kVKMwCma6E8Gnhl+BFXUsCflGY7
	 u2SIKOliLNuiNVgW1VKgCLdNKBAGszBGjftdS8GuHfxVXf1PTNyPsfsRIpbYdRz4bw
	 di5JUWHve7KPtMhZ3xw6zz/QfTaSqT3KEfSZEFPXv2rDPfzyc4NK0YBt5CIw0pvqGe
	 c4kUp1XFwj3upSIk6kGq3Ojcr0jYhGogyOZTi/7gSd2xRT4u7HsTNnQ++Efz+9wz50
	 3MOJi2Y3/eecQ==
Date: Mon, 27 Apr 2026 20:59:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] dt-bindings: regulator: fcs,fan53555: Remove vsel-gpios
 property
Message-ID: <20260427-dodgy-anything-0afc388d2c6d@spud>
References: <20260427115443.3224840-1-eagle.alexander923@gmail.com>
 <20260427-smartly-sullen-509e3d5e1967@spud>
 <CAP1tNvRHqoq==tehB5vKxH41BXG54Y9s+JMZt66o__SMTekHeg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="UnM/SpiIratDrHmH"
Content-Disposition: inline
In-Reply-To: <CAP1tNvRHqoq==tehB5vKxH41BXG54Y9s+JMZt66o__SMTekHeg@mail.gmail.com>
X-Rspamd-Queue-Id: AAF0A479A01
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-290735-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,kernel.org,sntech.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]


--UnM/SpiIratDrHmH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 27, 2026 at 10:09:53PM +0300, Alexander Shiyan wrote:
> Hello Comor.
>=20
> > On Mon, Apr 27, 2026 at 02:54:43PM +0300, Alexander Shiyan wrote:
> > > The vsel-gpios property is currently documented in the binding but
> > > is not used by the driver. The FAN53555 family of regulators supports
> > > two voltage selector registers (VSEL0/VSEL1), and the selection betwe=
en
> > > them is intended to be controlled by an external hardware pin (VSEL).
> > > However, the driver does not support dynamic toggling of this pin via
> > > a GPIO, it only uses the fcs,suspend-voltage-selector property to
> > > statically assign which register is used for runtime voltage and which
> > > for suspend voltage.
> > > Remove the vsel-gpios property from the binding to prevent incorrect =
DT
> > > usage and to reflect the actual hardware description supported by the
> > > driver.
> >
> > From the wording/justification here, I disagree with this patch. The
> > binding should document what the hardware can do, not what the driver
> > can.
> >
> > Maybe instead you should make fcs,suspend-voltage-selector mutually
> > exclusive with vsel-gpios?
>=20
> The main problem here is that this feature (vsel-gpios) was never
> implemented in the driver. So, the patch consists solely of removing a
> non-existent property.

I'm not disputing that, but if the functionality is supported by the
hardware the existence of the property is fine. Bindings should be
complete, even if the driver in linux doesn't use something.

Rob's 2023 patch that added the property even says "Add the undocumented
'vsel-gpios' property used to control the VSEL pin.", so having it was
an intentional decision by the main binding maintainer!

--UnM/SpiIratDrHmH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCae/ABQAKCRB4tDGHoIJi
0rlBAQD9fQ9PKN3eWi/OKDtabpYZvG3P482NLP+uBbCZ3YAPugEAg7Ko/ByK0cGx
An4zzZxxekucCL1txAZre2Uw8isUAg4=
=1elL
-----END PGP SIGNATURE-----

--UnM/SpiIratDrHmH--

