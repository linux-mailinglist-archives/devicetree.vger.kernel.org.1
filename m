Return-Path: <devicetree+bounces-267159-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id avDJH3kBm2nPpgMAu9opvQ
	(envelope-from <devicetree+bounces-267159-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:15:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C215616F219
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:15:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 206C1300FEE6
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 13:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 904FF7081E;
	Sun, 22 Feb 2026 13:15:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="DuNpd7Zh"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7182849C
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 13:15:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771766134; cv=none; b=XYL2qQqAILL5zLT8PuYhEfCAm2T4Z2k8RYCTQ21YfjrCYlLkYbmCOoER2H024x6OIpTXaCxLkwtPI7FIkZalq6kHeQnyq2P/Ct7v5nq5PjBzt6Wq30h86f/uqhvQZCCUbNWbiWn3kdXIPW50IY6/fuPi+lxMZ7JnN9C7ylYgQuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771766134; c=relaxed/simple;
	bh=waAa254VlJMqj/IZlq7U60s0AllnP5k2s/qzwgh/LwQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=YrqVESOfLO168PGXtLLZWguML1ygQtXJZ60R5haEpVR/dMk1XkuoXimEeQ3aDk2Ch28mioV0nlZU0gk2cR2lVCFJkY1jmTFpozmZy8B2Q7QfVjQrzGkvrfJl1DkXljPH8Nyxa7UWf0DvhZfu8+YSYeTxpYs4UmdaGcBDYcF0W1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=DuNpd7Zh; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=gNr1BH1ncB6E4X8VLYgEUnRPPNRKypjHb80+TAJpXII=; b=DuNpd7ZhMvT4/9iYrvA1Uwk5Zr
	2HDXtDLIGTeWNxTM5B0lOkm+LZaTuPcEj/MIjSqmfyTxdN6Sk+eeAZXMu2wXx8qm81PpE+mBqZlqz
	WG6xAdbu2rRkFIae0f7X6QlBOFg5nsYlZWhEe1ddGrrL+4DWNEqNVp9m/S9P+PH8e5O7ASierrjwy
	TN7OFVs5HRNZzanepQOhTbwDTDn6tT+7I9MdlXAsqUoUt/wdxum9rpczyaTwTb75Vj/aKCJXL/Q3i
	X/V6TpbcQlokmv4YMK/taipUte3EYEHYo2+8RJMp4rqVpqMy3CzR9BxGKW7KMMGj0rZq8XZnqBoYI
	DeM4j7Hg==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for pd_rkvdec0/1 and
 pd_venc0/1
Date: Sun, 22 Feb 2026 14:15:28 +0100
Message-ID: <3596120.QJadu78ljV@phil>
In-Reply-To: <1849787.VLH7GnMWUR@phil>
References:
 <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
 <1849787.VLH7GnMWUR@phil>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267159-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sntech.de:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C215616F219
X-Rspamd-Action: no action

Am Sonntag, 22. Februar 2026, 14:11:26 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Heiko Stuebner:
> Hi Shawn,
>=20
> Am Freitag, 13. Februar 2026, 03:42:07 Mitteleurop=C3=A4ische Normalzeit =
schrieb Shawn Lin:
> > =E5=9C=A8 2026/02/13 =E6=98=9F=E6=9C=9F=E4=BA=94 10:35, Shawn Lin =E5=
=86=99=E9=81=93:
> > > The power domains pd_rkvdec0/1 and pd_venc0/1 depend on two voltage s=
upplies,
> > > vdd_vdenc_s0 and vdd_vdenc_mem_s0. These supplies might be missing or=
 cause probe
> > > deferral. Since the Rockchip power domain management code currently s=
upports managing
> > > only one power supply, and both supplies belong to the same PMIC (mak=
ing it highly
> > > unlikely for one to be available while the other is not), a practical=
 solution is
> > > implemented.
> > >=20
> > > Both supplies are configured with the boot-on and always-on propertie=
s. Only one
> > > of them is assigned as the domain-supply for pd_rkvdec0/1 and pd_venc=
0/1. This allows
> > > the power domain code to perform a nominal enable operation on this s=
ingle supply,
> > > thereby successfully acquiring a reference to both supplies (as they =
are from the same
> > > PMIC). The system then relies on their boot-on and always-on flags to=
 maintain the
> > > correct state.
> > >=20
> > > Crucially, this approach handles cases like probe deferral correctly:
> > > if the PMIC is not yet ready, enabling the power domain will be defer=
red until the
> > > necessary supplies become available.
>=20
> just as a question, does the board have problems without these supplies?
> Aka, is this a fix for a problem, or "just" future proofing the board?

Ah, I take everything back. The pmdomain patch in
   https://lore.kernel.org/r/1770891364-52147-1-git-send-email-shawn.lin@ro=
ck-chips.com
is the actual fix.

With that patch applied all board should work correctly by deferring
the vdec probe until each board adds its domain-supply.

To not cause too much disturbance, this then counts as feature :-)

Heiko



> > > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > > ---
> > >=20
> > >   arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts  | 16 ++++++++++++=
++++
> > >   arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts | 17 ++++++++++++=
+++++
> > >   2 files changed, 33 insertions(+)
> > >=20
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/=
arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > > index c9d284c..09bc7b6 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > > @@ -568,6 +568,22 @@
> > >   	domain-supply =3D <&vdd_gpu_s0>;
> > >   };
> > >  =20
> > > +&pd_rkvdec0 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_rkvdec1 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_venc0 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_venc1 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > >   &pinctrl {
> > >   	audio {
> > >   		hp_detect: headphone-detect {
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch=
/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > > index f820505..25d80b6 100644
> > > --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > > @@ -381,6 +381,22 @@
> > >   	domain-supply =3D <&vdd_gpu_s0>;
> > >   };
> > >  =20
> > > +&pd_rkvdec0 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_rkvdec1 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_venc0 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > > +&pd_venc1 {
> > > +	domain-supply =3D <&vdd_vdenc_s0>;
> > > +};
> > > +
> > >   &pinctrl {
> > >   	audio {
> > >   		hp_detect: headphone-detect {
> > > @@ -580,6 +596,7 @@
> > >   			vdd_gpu_mem_s0: dcdc-reg5 {
> > >   				regulator-name =3D "vdd_gpu_mem_s0";
> > >   				regulator-boot-on;
> > > +				regulator-always-on;
> >=20
> > Oops, I sent the wrong version. Should remove the this line change.
> > Will fix it if v2 needed.
> >=20
> > >   				regulator-min-microvolt =3D <675000>;
> > >   				regulator-max-microvolt =3D <950000>;
> > >   				regulator-ramp-delay =3D <12500>;
> > >=20
> >=20
>=20
>=20





