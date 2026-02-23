Return-Path: <devicetree+bounces-267482-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +JvEM5VpnGlnGAQAu9opvQ
	(envelope-from <devicetree+bounces-267482-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:52:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3229917841E
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 15:52:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CB9FD3023538
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 14:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D70242080C1;
	Mon, 23 Feb 2026 14:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="cl3hVtqa"
X-Original-To: devicetree@vger.kernel.org
Received: from bali.collaboradmins.com (bali.collaboradmins.com [148.251.105.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9251339A4;
	Mon, 23 Feb 2026 14:52:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=148.251.105.195
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771858322; cv=none; b=nPbzBYMxqJn9mk5VTJY0Aza3VWmLvVhfaeFGnYUvV0jjqP69vGchIQgCssLLmZZshHNwD2ZK7cUdFiPOH6KtKym2AiKyhOuS6yw+WZeEmKAw4r8y90Biyf+w3aiO4//mApOY6dVns1emRUFlkHnbR4Jg6v/k+u4Nx32aRD7A/Gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771858322; c=relaxed/simple;
	bh=gClOm7NqJCClk7cIbay3EtBTBbjsRKHQNftOviWUJUM=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=PwbrSuiJRNDI4WnP4m6/9zfmNiMntBxQqJRHgMcjQYxZ4aM5z5pO0t8R2sJs+/2Lp5dJb2YqAln0Iwllq98jcWpReGZsqnd4vI9l07Tibs7hLZ0DtwgiGwEl6s1n4iCrsog/My4Ve/yxAH7IbnVrDrpxvCxBPbKBWG2CvCwEA0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=cl3hVtqa; arc=none smtp.client-ip=148.251.105.195
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1771858319;
	bh=gClOm7NqJCClk7cIbay3EtBTBbjsRKHQNftOviWUJUM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=cl3hVtqawzHAY6UykTclc0q0W1+8W5Kx8ePoA1YPF+OLziu1bih33q2Ec6Mul18IE
	 Z+q2pZEWnS391sPmLKQ+1/AQflvTWuNux5/IBxIQIRyRyhFej2/ixsEPIkCrevnpCk
	 bi8f4/f0kMKvsy5KHTEMczChJa75eUwVQ5bA+RlLS7fgMusEFtHNddrtiSf5MNJR1P
	 07ClyROi0HYb8pIbtTKPXpelIS3W9MMPOGM3dToKiadgc3HdxAqRqCWXcWxo5UPanb
	 1rGdJCGllUeNorva9XmKTpjsNKKaQju98mENTcpfo4SxqQ7KHAqP+k4dun4TgMv4Df
	 9aQARpuF6d1SA==
Received: from [IPv6:2606:6d00:15:210e::5ac] (unknown [IPv6:2606:6d00:15:210e::5ac])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nicolas)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 13DBD17E043F;
	Mon, 23 Feb 2026 15:51:57 +0100 (CET)
Message-ID: <edbf38b34e98ee039f45faab5aa5b00a585799ce.camel@collabora.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix vdec register blocks order on
 RK3576
From: Nicolas Dufresne <nicolas.dufresne@collabora.com>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Rob Herring
	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova
	 <detlev.casanova@collabora.com>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Date: Mon, 23 Feb 2026 09:51:55 -0500
In-Reply-To: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
References: <20260223-vdec-reg-order-rk3576-v1-1-560976566bd3@collabora.com>
Autocrypt: addr=nicolas.dufresne@collabora.com; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Organization: Collabora Canada
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-RHGQesk7FfUtbqUrU2bL"
User-Agent: Evolution 3.58.3 (3.58.3-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-4.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=mail];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267482-lists,devicetree=lfdr.de];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nicolas.dufresne@collabora.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:mid,collabora.com:dkim,collabora.com:email,1.168.49.192:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,27b00000:email]
X-Rspamd-Queue-Id: 3229917841E
X-Rspamd-Action: no action


--=-RHGQesk7FfUtbqUrU2bL
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cristian,

Le lundi 23 f=C3=A9vrier 2026 =C3=A0 14:25 +0200, Cristian Ciocaltea a =C3=
=A9crit=C2=A0:
> When building device trees for the RK3576 based boards, DTC shows the
> following complaint:
>=20
> =C2=A0 rk3576.dtsi:1282.30-1304.5: Warning (simple_bus_reg):
> /soc/video-codec@27b00000: simple-bus unit address format error, expected
> "27b00100"
>=20
> Provide the register blocks in the expected address-based order.
>=20
> Fixes: da0de806d8b4 ("arm64: dts: rockchip: Add the vdpu383 Video Decoder=
 on
> rk3576")
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> =C2=A0arch/arm64/boot/dts/rockchip/rk3576.dtsi | 6 +++---
> =C2=A01 file changed, 3 insertions(+), 3 deletions(-)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> index 49ccdf12ef7e..45eb0d053a6f 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> @@ -1281,10 +1281,10 @@ gpu: gpu@27800000 {
> =C2=A0
> =C2=A0		vdec: video-codec@27b00000 {
> =C2=A0			compatible =3D "rockchip,rk3576-vdec";
> -			reg =3D <0x0 0x27b00100 0x0 0x500>,
> -			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x0 0x27b00000 0x0 0x100>,
> +			reg =3D <0x0 0x27b00000 0x0 0x100>,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x0 0x27b00100 0x0 0x500>,
> =C2=A0			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <0x0 0x27b00600 0x0 0x100>;
> -			reg-names =3D "function", "link", "cache";
> +			reg-names =3D "link", "function", "cache";

I have a vague memory it was done on purpose, due to the "items" in the bin=
dings
requiring to follow the same order. I was not enable to run the DT checks t=
oday
(some pythonic version miss-match issue), but wanted to raise the flag.

Nicolas

> =C2=A0			interrupts =3D <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>;
> =C2=A0			clocks =3D <&cru ACLK_RKVDEC_ROOT>, <&cru HCLK_RKVDEC>,
> =C2=A0				 <&cru ACLK_RKVDEC_ROOT_BAK>, <&cru
> CLK_RKVDEC_CORE>,
>=20
> ---
> base-commit: 6de23f81a5e08be8fbf5e8d7e9febc72a5b5f27f
> change-id: 20260223-vdec-reg-order-rk3576-cc2ec6e05e98

--=-RHGQesk7FfUtbqUrU2bL
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaZxpiwAKCRDZQZRRKWBy
9F6GAP9sK3LNgp3i/RTPemPHdl3OCWbtObnfVIAxjEF8QC7QOwD+MUegoEjbLFvL
vLDQK4lHUUSmK7/+64xIuuaw9QZJrQo=
=WXgQ
-----END PGP SIGNATURE-----

--=-RHGQesk7FfUtbqUrU2bL--

