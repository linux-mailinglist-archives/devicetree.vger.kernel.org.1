Return-Path: <devicetree+bounces-323921-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id URSNJeXDT2otoAIAu9opvQ
	(envelope-from <devicetree+bounces-323921-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:53:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFD573322D
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 17:53:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=YwClcfqy;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323921-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323921-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 10E2A305C938
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 15:52:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5EE2F42B756;
	Thu,  9 Jul 2026 15:52:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BBC42B324;
	Thu,  9 Jul 2026 15:52:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783612326; cv=none; b=Yz8H/fVpc2OH3XToC02Istx2fzf/9mIzkRTaoIYkwqnnwaYtZpTDRxrTh9P7hvLk2tuyaBT/FwupZi3SswV9/xY1R6+GV/IC40LCzsOr9OxoH4096AeaI4oOCb8EEoVDhnwEj9+7LkOo8thBN/1J7dxlmj17q/6GmtPnA+CPCUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783612326; c=relaxed/simple;
	bh=QgoiG6IPX5YsMyUlVzmh9MgMADCFITLbf9l1isOTDOc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rBt2YMtxPxnucmojJWG4E6D2ZXZVBPLJ/VjzskSj9H5KIhMoG9VYTN+oyWChpf11Z9qNpYBztH8QFgh6eUEen1OM8yRKhN4ysZOcfBjn9duYv0y07IE22ZOtZjzx7SaNcSiWmU8ycMXGmsJzLlZo4D2GNlWCZpHVzzQIJDakYnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwClcfqy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0D8F1F000E9;
	Thu,  9 Jul 2026 15:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783612324;
	bh=GRMlo223WK1vJhCGy8/PE42NkVsYFCsHmCK+AI0l5aI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=YwClcfqy+EI0om3wSR+FTT1nFgfjpWkF5h/T1GEs2Hwem8VlfwtaZT1QNgHljZDAW
	 hipWaCyRmHExw0KqSNv/DEr/yLqjSScHHShaYXoLCEbXeMIIj+Aqs4O9iJP7uWLJrk
	 AxD0I3bINYSMttjJ51Ryh5aKOd7sAt7uBRwhghu20uMYKW5WnpcJoKdRgm3FEeNjce
	 jPV4MVNrJp4jz/JLFpD5KL5Ppm5AmP8zte4zGC+yyiRtCNYhZsUAyoFYBNxfPJbzr/
	 gnyt7BrYYpctTlbIIhJaXsAkkugU6Ep2yVX3ZIZ7V1dAOJjimxGQQqNViFMw3LaZsy
	 BAtoaebdIc8gQ==
Date: Thu, 9 Jul 2026 16:51:59 +0100
From: Conor Dooley <conor@kernel.org>
To: "Praveen, Gokul" <g-praveen@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org, neil.armstrong@linaro.org, nm@ti.com,
	robh@kernel.org, sjakhade@cadence.com, kristo@kernel.org,
	vigneshr@ti.com, vkoul@kernel.org, yamonkar@cadence.com
Subject: Re: [PATCH v5 net-next 1/2] dt-bindings: phy: cadence-torrent:
 Update property values to support multilink SERDES configuration
Message-ID: <20260709-unvalued-washtub-d024d21f5624@spud>
References: <20260708083725.66777-1-g-praveen@ti.com>
 <20260708083725.66777-2-g-praveen@ti.com>
 <20260708-purifier-subside-667f32244c09@spud>
 <18b1c832-d0ba-4465-90c8-09e7c48becde@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="mqzgQ8eCWAJGP231"
Content-Disposition: inline
In-Reply-To: <18b1c832-d0ba-4465-90c8-09e7c48becde@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-6.76 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:nm@ti.com,m:robh@kernel.org,m:sjakhade@cadence.com,m:kristo@kernel.org,m:vigneshr@ti.com,m:vkoul@kernel.org,m:yamonkar@cadence.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-323921-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,ti.com:email,spud:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0AFD573322D

--mqzgQ8eCWAJGP231
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 09, 2026 at 03:37:15PM +0530, Praveen, Gokul wrote:
> Hi Conor,
>=20
> On 08-07-2026 22:09, Conor Dooley wrote:
> > On Wed, Jul 08, 2026 at 02:07:24PM +0530, Gokul Praveen wrote:
> > > Update the maxItems value of clocks parameter as 3 clocks
> > > (refclk,pll1_refclk,phy_en_refclk) are supported.
> > >=20
> > > Update the clock-names parameter to support mutilink SERDES configura=
tion
> > > as the existing enum configuration of the clock-names parameter does =
not
> > > allow both pll1_refclk and phy_en_refclk to be used at the same time,
> > > hence preventing the support for the configuration  (refclk,pll1_refc=
lk,
> > > phy_en_refclk), which is neeed for multilink SERDES usecases.
> > >=20
> > > For multilink SERDES configurations where the links require different
> > > clock speeds, all 3 clocks(refclk, pll1_refclk and phy_en_refclk)
> > > are needed.
> > >=20
> > > For example,considering the USXGMII+SGMII multilink SERDES configurat=
ion
> > > usecase, having only 1 reference clock(refclk) fails because USXGMII
> > > requires a clock speed of 156.25 Mhz and SGMII protocol requires an
> > > clock speed of 100 Mhz.
> > >=20
> > > Since one reference clock(refclk) alone cannot cater to the 2
> > > different clock speed requirements of these protocols, the second
> > > input reference clock(pll1_refclk) along with phy_en_refclk
> > > is also needed.
> > This binding supports 2 devices and the generic compatible. Do all these
> > devices have the new refclk?
>=20
> Not all of these devices have the new refclk(pll1_refclk), Conor, which is
> is why the enum was kept as it is and in these devices multilink serdes
> configuration will not be possible due to the limitation of not having the
> new refclk(pll1_refclk).

In that case, please restrict 3 clocks to only the devices which have
them.

pw-bot: changes-requested

Thanks,
Conor.

>=20
> However, The intent of this patch is to add multilink serdes support for =
the
> devices which have the new refclk because the
>=20
> earlier clock-names configuration could not support having all the 3
> clocks(refclk, pll1_refclk, phy_en_refclk) in the clock-names, which is
> needed for mutlilink serdes configuration configuration.
>=20
> Also, Please feel free to ask if you have any other queries, Conor and th=
ank
> you for this query .
>=20
> Thanks and Best Regards
>=20
> Gokul Praveen
>=20
> > Thanks,
> > Conor.
> >=20
> > > Signed-off-by: Gokul Praveen <g-praveen@ti.com>
> > > ---
> > >   Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml | 3 =
++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torren=
t.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> > > index 9af39b33646a..ac0f625cd76d 100644
> > > --- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> > > +++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
> > > @@ -34,7 +34,7 @@ properties:
> > >     clocks:
> > >       minItems: 1
> > > -    maxItems: 2
> > > +    maxItems: 3
> > >       description:
> > >         PHY input reference clocks - refclk (for PLL0) & pll1_refclk =
(for PLL1).
> > >         pll1_refclk is optional and used for multi-protocol configura=
tions requiring
> > > @@ -48,6 +48,7 @@ properties:
> > >       items:
> > >         - const: refclk
> > >         - enum: [ pll1_refclk, phy_en_refclk ]
> > > +      - const: phy_en_refclk
> > >     reg:
> > >       minItems: 1
> > > --=20
> > > 2.34.1
> > >=20

--mqzgQ8eCWAJGP231
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCak/DnwAKCRB4tDGHoIJi
0n4XAQC5MnC2I5YXHC52d+ueIJB+UAs57axUxbMswrRVlQ4JpgEA/wgE2WC9Nhgs
VMzI4rhMq6Yy6RqGA/Uoy3fwULsBgQM=
=t+xa
-----END PGP SIGNATURE-----

--mqzgQ8eCWAJGP231--

