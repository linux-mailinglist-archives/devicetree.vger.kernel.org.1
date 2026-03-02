Return-Path: <devicetree+bounces-269930-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IFNgHRhwpWmSBAYAu9opvQ
	(envelope-from <devicetree+bounces-269930-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:10:16 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB50D1D73EB
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:10:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E437304E833
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:08:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C1A43603C3;
	Mon,  2 Mar 2026 11:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="Ksmu/jun"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC17935F61C;
	Mon,  2 Mar 2026 11:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772449702; cv=none; b=oM/UtV3apjrCs2j94MBGMFISomZdSCpz03XMWTaCY0yANRMnHiZLPTJEJ2wqggniCyv3aw3KixG/que1jQF/aeu9EQmO1YIM4OG/MOK5Q0z/Zo2ssyuto6vwSnL/CBFRfRlWvyKqh3qLGRYvNq6HszJ542pZiHcpNORl++d1gZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772449702; c=relaxed/simple;
	bh=yDMWWLMS1/nTjcOgzviWbOPuhhO4mzc+lfRfkF+W9Uk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=tqujRavzsYBpMeSMjaVKX5p6mfBzTV6PMB73c4oO5Z3fOJZYbq9GPT6yN4jLwXlp0muWKHIN7dMmHL9kT0uCypaHkfd9M5oMzYGK/XkmpdIf/mBpZSZIalp44u8++eAgrwYxGe7w6zpcm2HBftDXnT9Y3q+Ci8vSeXx1JvlG7oE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=Ksmu/jun; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=WJ6Fp+6ND9bT9YLc0KTOaJB8aEFzkS2JdOdry7EMlC0=; b=Ksmu/junNI891rI+Ldwlu8ZOJY
	USTaEE9SRmuxDtB7tw1boBq1aKDP9VOpYkyP1KF8JJ8W0bsTfqSl+oFOoYEeT7netLIqrKUViXeOg
	s/WIYF7opi46e4TX8s0ltxDLp42GZL1CIygKM1hHpk2ksDaxM3hjdpjDRH/zQkuuOwB1QBmNKF2V3
	xuh33WUrtEjXPVYQ7V014Qpx1ssy/hUE3qPNvnjNSsWrSMJZnw/x1gvTr8+rjaQ0+vMcJGncIGLKp
	fms8+QIHeP7QE3LBFcXiCgZ1Jxnq0YwXUaZnhZ/FOO8gtFWVz68oy1alLKIHf/iWkFq2GHrTkvQhv
	Zcc/KD4Q==;
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, david@ixit.cz
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Martin Filla <freebsd@sysctl.cz>, David Heidelberg <david@ixit.cz>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix PCIe v3 pinctrl for BPI-R2-Pro
Date: Mon, 02 Mar 2026 12:08:14 +0100
Message-ID: <3404271.44csPzL39Z@phil>
In-Reply-To: <20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz>
References: <20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269930-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ixit.cz:email,sysctl.cz:email,diodes.com:url]
X-Rspamd-Queue-Id: CB50D1D73EB
X-Rspamd-Action: no action

Hi David,

Am Sonntag, 1. M=C3=A4rz 2026, 16:54:41 Mitteleurop=C3=A4ische Normalzeit s=
chrieb David Heidelberg via B4 Relay:
> From: David Heidelberg <david@ixit.cz>
>=20
> Add missing pinctrl for PD4 (PI6C PCIe clock enable,
> PCIE_CLKEN_H_GPIO0_D4) and set output high.
>=20
> This does fix freeze at initialization due pinctrl being in input
> state.
>=20
> Reported-by: Martin Filla <freebsd@sysctl.cz> # reported by private messa=
ge
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/ar=
m64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> index 4d3ebe50b90ba..b4c8abe37d1f3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
> @@ -121,6 +121,8 @@ vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
>  		regulator-max-microvolt =3D <3300000>;
>  		enable-active-high;
>  		gpios =3D <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 =3D <&pi6cpcie_enable_h>;
> +		pinctrl-names =3D "default";

please model hardware not how you want to use it.

The pi6c in the pin-name suggests, that this is a Diodes clock-generator
that creates the 100MHz frequency for PCIe [0] .

Please see [1] for one possible variant to model this.


Heiko

[0] https://www.diodes.com/part/view/PI6CG33602C or some variant of it
[1] http://lore.kernel.org/all/20260210080303.680403-1-heiko@sntech.de




