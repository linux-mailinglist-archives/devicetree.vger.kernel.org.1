Return-Path: <devicetree+bounces-276109-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HMpMPzkt2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276109-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:09:48 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B032987F1
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 12:09:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 474953058E2B
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:04:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F805273816;
	Mon, 16 Mar 2026 11:04:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKVsIZQw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F6126D4E5;
	Mon, 16 Mar 2026 11:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773659069; cv=none; b=enKRHu3Ei93e1Ss/MY0Ncid4Hse0KnYNPqtD/1EbQtkFp8hzzeydS78QuYv1MQsWNmTYq3nBMHhV8/2+E6OIgGSKMqwviZ8BJZIQufv+MVEZWe+VM8O0cqDD4LdTAQxufEoPGAUJfMWHAsvD2JnveSTg2hDZzp8DQIv9Xb9nPwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773659069; c=relaxed/simple;
	bh=2DIone3jg6s/bvR9xvorp3oQLfBJ8sNQo4lvx+TrKzY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXYRzxcq8ww7uC2BVQcjCXf8M8mfKusUmuQrLm/SvpP3c9Q5TNItQfk+ZdWBpoDAoQ3mEi928MAlnSkYV8snGrl9dojEZ//fzIkN8husNIUGdTx81Eo1/lRyD5PHa/6d7qt/G4SZ9cRuSUsb6yxerKFNyClXdki1FwKeIRdjQu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKVsIZQw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D827CC19421;
	Mon, 16 Mar 2026 11:04:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773659068;
	bh=2DIone3jg6s/bvR9xvorp3oQLfBJ8sNQo4lvx+TrKzY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=sKVsIZQwQUkISgece+I9dQn2bEqF6SxAOS8CimszXHO3ZXbp/wiOzSLPhYnsjg+7a
	 WXPU0ADwtHw8PqCLm92kwNE4q2rmWW46Rc80FWihrvECJDjVm+UCCQOV2TakQyDDfj
	 4c04rluUfBwrsDec+TRoirdcI8X45mfq49AnY7UICRJK95QROJSh4MCTdq2yDe3uCO
	 NiZtH1VigmmzkLkTICfG2Gee/Smgiwd+HSnxmlCIlG/1orpvNrKCUvcmXNGOzxRBa9
	 aeNZiTW1p44E9yM1hFoRsiK6TmX2O+PUQDcIOiMrII3CTN0hIB9UcUx+DNfzBPKmwZ
	 22HXK/JNG5rgw==
Date: Mon, 16 Mar 2026 11:04:23 +0000
From: Conor Dooley <conor@kernel.org>
To: YH Chung <yh_chung@aspeedtech.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Ryan Chen <ryan_chen@aspeedtech.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
	"maciej.lawniczak@intel.com" <maciej.lawniczak@intel.com>
Subject: Re: [PATCH 1/7] dt-bindings: soc: aspeed: Add AST2600 eSPI controller
Message-ID: <20260316-moustache-sleep-0a355de2fc8e@spud>
References: <20260313-upstream_espi-v1-0-9504428e1f43@aspeedtech.com>
 <20260313-upstream_espi-v1-1-9504428e1f43@aspeedtech.com>
 <3f2d964a-4e82-414c-b373-af0d531b0fcd@kernel.org>
 <KL1PR0601MB4276A4B81C2E2DB02BE8F2059040A@KL1PR0601MB4276.apcprd06.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p0eyabYdCPkKrMr8"
Content-Disposition: inline
In-Reply-To: <KL1PR0601MB4276A4B81C2E2DB02BE8F2059040A@KL1PR0601MB4276.apcprd06.prod.outlook.com>
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276109-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_SENDER_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,aspeedtech.com:email]
X-Rspamd-Queue-Id: 41B032987F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


--p0eyabYdCPkKrMr8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 16, 2026 at 08:17:48AM +0000, YH Chung wrote:
> Hi Krzysztof,
>=20
> > On 13/03/2026 11:07, aspeedyh wrote:
> > > Introduce the device-tree bindings for the Enhanced Serial
> > > Peripheral Interface (eSPI) controller found on AST2600
> > > BMC SoCs.
> > >
> > > The controller operates as the BMC-side eSPI slave and provides the
> > > peripheral, virtual wire, out-of-band, and flash channels used for
> > > host-BMC communication.
> > >
> > > Signed-off-by: aspeedyh <yh_chung@aspeedtech.com>
> >=20
> > Please use your full name. Semi-anonymous contributions are not accepte=
d.
> >=20
> > Best regards,
> > Krzysztof
>=20
> Thanks for the reminder.
> Would you prefer that I resend this series with the corrected sign-off, o=
r would it be fine to update it in the next version?

Next version, when the discussion on the cover letter concludes, please.

--p0eyabYdCPkKrMr8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabfjtwAKCRB4tDGHoIJi
0sE8AP94P3za5WQ9N90Wd1Vz+WrRp0x1izasFrcHhDExJwDpTAEAt7w0yx0NVBph
WxM/X/bio4Z/JwcJG/5q7nB/qMRalgY=
=Oz5W
-----END PGP SIGNATURE-----

--p0eyabYdCPkKrMr8--

