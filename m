Return-Path: <devicetree+bounces-267158-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jQBUIooAm2lbpgMAu9opvQ
	(envelope-from <devicetree+bounces-267158-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:11:38 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D582116F207
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 14:11:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BF0E3300F9E4
	for <lists+devicetree@lfdr.de>; Sun, 22 Feb 2026 13:11:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2320C1EB5F8;
	Sun, 22 Feb 2026 13:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Znax5x+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8617227BB5
	for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 13:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771765895; cv=none; b=s+AsVWztmoO00cjlDpXBO4yKvUfbE2a9rpiUV4kRttQiYm18I+TYSiBIiuosl0awekbw2NTThgVByz7/bTbbB2FCyBWq2X2BO0qT7jgIvT48X3pnAcha6jcE+QP7TJ2b3xOlDMDR9ELTJgyWi1Tde7P194Ol9/8pdEtPWrTwTFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771765895; c=relaxed/simple;
	bh=Eqt7mgY/hiZNrY/rhkrEYfaDyRFUEYoLhP6UxzfgrJw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=mubnqEtFFQMna94gKraLI8EpqzNiB80y1IIdF+lWu4BXtvuwZomOXNa26B1u4BLmkVGII24yAMeo54yGLLMlPBN5eaVCO1r9qltH4U4/F5U84T2yNIypSnQLttovp/CT34/uSzXE2Blaq6pBK1snXbZkPhkxvILf8mEP5VyzjN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Znax5x+Y; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=JVQ1HvYuj4l7iwcq8/NX4tU7HmBNPxeJhIc4SDEkhro=; b=Znax5x+YKVoO0sIMBG6dytXhS3
	QgHMOC+Olb6d0WkCcaJJzuK58fnB1nKgSM7YXlXgx1qiTKRBPQLNUWDoyovSBCF4kaw1gtHNgllOA
	vLwmirLnhaZ9sPE4CtQQq5DmZfsct3E3ZB3+IQjwABr5caXLXFar9fKANSRWM4vfc1u6mFHbQ73Jf
	m2u6wAk7/EXZcY10LZmoW3TWTzEWdogTl3KJXE5WMQf91F9iALMA444y0wDdwYPl/3oEjbgx79Ny1
	MqOfhmuvOyUNhTaZiWv1pIJlPwOs+9ByMomBRwMpY4+5OuLyLwG3qMKSKlxZirNuA/3Rk6knXk7wV
	nALUasvw==;
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Shawn Lin <shawn.lin@rock-chips.com>
Cc: shawn.lin@rock-chips.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject:
 Re: [PATCH 2/2] arm64: dts: rockchip: Add domain-supply for pd_rkvdec0/1 and
 pd_venc0/1
Date: Sun, 22 Feb 2026 14:11:26 +0100
Message-ID: <1849787.VLH7GnMWUR@phil>
In-Reply-To: <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
References:
 <1770950113-19802-1-git-send-email-shawn.lin@rock-chips.com>
 <1770950113-19802-2-git-send-email-shawn.lin@rock-chips.com>
 <ea9df274-278d-f344-f66d-8821388e6690@rock-chips.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267158-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sntech.de:dkim]
X-Rspamd-Queue-Id: D582116F207
X-Rspamd-Action: no action

Hi Shawn,

Am Freitag, 13. Februar 2026, 03:42:07 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Shawn Lin:
> =E5=9C=A8 2026/02/13 =E6=98=9F=E6=9C=9F=E4=BA=94 10:35, Shawn Lin =E5=86=
=99=E9=81=93:
> > The power domains pd_rkvdec0/1 and pd_venc0/1 depend on two voltage sup=
plies,
> > vdd_vdenc_s0 and vdd_vdenc_mem_s0. These supplies might be missing or c=
ause probe
> > deferral. Since the Rockchip power domain management code currently sup=
ports managing
> > only one power supply, and both supplies belong to the same PMIC (makin=
g it highly
> > unlikely for one to be available while the other is not), a practical s=
olution is
> > implemented.
> >=20
> > Both supplies are configured with the boot-on and always-on properties.=
 Only one
> > of them is assigned as the domain-supply for pd_rkvdec0/1 and pd_venc0/=
1. This allows
> > the power domain code to perform a nominal enable operation on this sin=
gle supply,
> > thereby successfully acquiring a reference to both supplies (as they ar=
e from the same
> > PMIC). The system then relies on their boot-on and always-on flags to m=
aintain the
> > correct state.
> >=20
> > Crucially, this approach handles cases like probe deferral correctly:
> > if the PMIC is not yet ready, enabling the power domain will be deferre=
d until the
> > necessary supplies become available.

just as a question, does the board have problems without these supplies?
Aka, is this a fix for a problem, or "just" future proofing the board?

Thanks
Heiko


> > Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> > ---
> >=20
> >   arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts  | 16 ++++++++++++++=
++
> >   arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts | 17 ++++++++++++++=
+++
> >   2 files changed, 33 insertions(+)
> >=20
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts b/arch/ar=
m64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > index c9d284c..09bc7b6 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-evb1-v10.dts
> > @@ -568,6 +568,22 @@
> >   	domain-supply =3D <&vdd_gpu_s0>;
> >   };
> >  =20
> > +&pd_rkvdec0 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_rkvdec1 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_venc0 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_venc1 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> >   &pinctrl {
> >   	audio {
> >   		hp_detect: headphone-detect {
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts b/arch/a=
rm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > index f820505..25d80b6 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588s-evb1-v10.dts
> > @@ -381,6 +381,22 @@
> >   	domain-supply =3D <&vdd_gpu_s0>;
> >   };
> >  =20
> > +&pd_rkvdec0 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_rkvdec1 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_venc0 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> > +&pd_venc1 {
> > +	domain-supply =3D <&vdd_vdenc_s0>;
> > +};
> > +
> >   &pinctrl {
> >   	audio {
> >   		hp_detect: headphone-detect {
> > @@ -580,6 +596,7 @@
> >   			vdd_gpu_mem_s0: dcdc-reg5 {
> >   				regulator-name =3D "vdd_gpu_mem_s0";
> >   				regulator-boot-on;
> > +				regulator-always-on;
>=20
> Oops, I sent the wrong version. Should remove the this line change.
> Will fix it if v2 needed.
>=20
> >   				regulator-min-microvolt =3D <675000>;
> >   				regulator-max-microvolt =3D <950000>;
> >   				regulator-ramp-delay =3D <12500>;
> >=20
>=20





