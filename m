Return-Path: <devicetree+bounces-269540-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id Q2BzFU7UomkL6AQAu9opvQ
	(envelope-from <devicetree+bounces-269540-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:41:02 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5455A1C2979
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 12:41:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BF9C8300E4A6
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 11:40:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB15426D2A;
	Sat, 28 Feb 2026 11:40:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b="bs/sXo+V"
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FF72517AF;
	Sat, 28 Feb 2026 11:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.11.138.130
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772278854; cv=none; b=bBFOFJvO5v0o6JlK+hOqz7poJKQ6078tHADF5di76dy4+PSuGxW9PSldYm7eM3tyOB+Jkd2guXfC9N8KUwSahQAWsJf8MQA4lWLLjEjfX5zsYIVJnk/+EZN3YLoYlW+67qXrCp+s+qzY7v6eloFkY6P48Wkx2tSu05cIu9iXYyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772278854; c=relaxed/simple;
	bh=qVTRg6iUppNyjbfU3qRxgu5rSjKzDLMhSzONG0SQP3o=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=kYvuUUbPn9kow1aeraGrOHnSX4uRGab83MgemSpkzfzG4Sy1Jf6P8ItLOelcAUUY7DElwXtpHl5vfOYj/Sf1lc4sgQi3AOSNpJ7OMEd//yztGANSCZaDXvMgKtNyncz6nF7plQvCiXZVviEKrVL8/trNCkqwO7B9nhEzdEnTm8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de; spf=pass smtp.mailfrom=sntech.de; dkim=pass (2048-bit key) header.d=sntech.de header.i=@sntech.de header.b=bs/sXo+V; arc=none smtp.client-ip=185.11.138.130
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=UTE9c1BHJn1ZjTSBIvzmfFexOwAmFAsdMAjNupz4+Oo=; b=bs/sXo+VvGB98Gvl510BWT5k1j
	FvkeFhe5euRSGn/P77K9Pl7DhCM0iUDUxjlo6ix77WjWZirFv2mCtgiXECRjgt5Et5O05dRVrRndm
	okDku3G2feFdUL31Wqk9SlBhSl7WOLOxKor3h4CAKgOfL9CUWxmSAO5+865EydyU7Bd73GF6msuPR
	jYh3GGxUH/memvqDatrno/74P87IkL5yTSyCgqXS8Simn0y4vg+Lq0Gv+h7+UhaIowIpAFl0hXv6D
	M84y7rtVz5C6TTKuEdBUlv3S4tbOXfeCHrQfyW8dmkJCNw0VsPd7KmK1XolFcbI5sFKUZ0Keweo3a
	h3EEauJw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Fabio Estevam <festevam@gmail.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Fabio Estevam <festevam@gmail.com>
Subject:
 Re: [PATCH 1/2] ARM: dts: rockchip: rk3036: Move PHY reset to ethernet-phy
 node
Date: Sat, 28 Feb 2026 12:40:36 +0100
Message-ID: <2819870.mvXUDI8C0e@phil>
In-Reply-To: <20260228013257.256973-1-festevam@gmail.com>
References: <20260228013257.256973-1-festevam@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[sntech.de,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[sntech.de:s=gloria202408];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269540-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[3.147.135.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[heiko@sntech.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[sntech.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: 5455A1C2979
X-Rspamd-Action: no action

Hi Fabio,

Am Samstag, 28. Februar 2026, 02:32:56 Mitteleurop=C3=A4ische Normalzeit sc=
hrieb Fabio Estevam:
> According to rockchip,emac.yaml, 'phy-reset-duration' and 'phy-reset-gpio=
s'
> are not valid properties.
>=20
> Use the valid 'reset-gpios' and 'reset-assert-us' properties under
> the etherne-phy node.
>=20
> This fixes the following dt-schema warning:
>=20
> Unevaluated properties are not allowed ('phy-reset-duration',
> 'phy-reset-gpios' were unexpected)
>=20
> Signed-off-by: Fabio Estevam <festevam@gmail.com>


please don't send patches that "simply" fix devicetree warnings.

As you can see in [0] the driver uses these properties currently.
So while this fixes schema warnings, it will break the actual boards.

So first of all you'll need to adapt the driver to handle the "official"
properties and also provide a fallback in the driver for old devicetrees.

Only then can we think about modifying the actual devicetrees for
the future.


Thanks
Heiko

[0] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree=
/drivers/net/ethernet/arc/emac_mdio.c#n153


> ---
>  arch/arm/boot/dts/rockchip/rk3036-evb.dts   | 4 ++--
>  arch/arm/boot/dts/rockchip/rk3036-kylin.dts | 4 ++--
>  2 files changed, 4 insertions(+), 4 deletions(-)
>=20
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-evb.dts b/arch/arm/boot/dt=
s/rockchip/rk3036-evb.dts
> index becdc0b664bf..c8100dc4c7ce 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-evb.dts
> @@ -16,8 +16,6 @@ memory@60000000 {
> =20
>  &emac {
>  	phy =3D <&phy0>;
> -	phy-reset-duration =3D <10>; /* millisecond */
> -	phy-reset-gpios =3D <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&emac_xfer>, <&emac_mdio>;
>  	status =3D "okay";
> @@ -28,6 +26,8 @@ mdio {
> =20
>  		phy0: ethernet-phy@0 {
>  			reg =3D <0>;
> +			reset-gpios =3D <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
> +			reset-assert-us =3D <10000>;
>  		};
>  	};
>  };
> diff --git a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts b/arch/arm/boot/=
dts/rockchip/rk3036-kylin.dts
> index ae2f84a4e922..bc6e6468fcc4 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> +++ b/arch/arm/boot/dts/rockchip/rk3036-kylin.dts
> @@ -102,8 +102,6 @@ &acodec {
> =20
>  &emac {
>  	phy =3D <&phy0>;
> -	phy-reset-duration =3D <10>; /* millisecond */
> -	phy-reset-gpios =3D <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>; /* PHY_RST */
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&emac_xfer>, <&emac_mdio>;
>  	status =3D "okay";
> @@ -114,6 +112,8 @@ mdio {
> =20
>  		phy0: ethernet-phy@0 {
>  			reg =3D <0>;
> +			reset-gpios =3D <&gpio2 RK_PC6 GPIO_ACTIVE_LOW>;
> +			reset-assert-us =3D <10000>;
>  		};
>  	};
>  };
>=20





