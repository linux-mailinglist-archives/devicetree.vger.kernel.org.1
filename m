Return-Path: <devicetree+bounces-307144-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J9EiG/s2ImquTwEAu9opvQ
	(envelope-from <devicetree+bounces-307144-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:39:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D493F644B6C
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:39:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=JM7Svhiv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307144-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307144-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D490A3035A93
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 02:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 351083EB819;
	Fri,  5 Jun 2026 02:38:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C443BFE38
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 02:38:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780627125; cv=none; b=lcOsFDbXqnTl4u/GqNMPJC+qC0M/VT7bGh5/9jaXUyEHk/s4s1sHHoG+IB7i6JdAVvsdIPW3L2WZ/+kVR1giRg57DROcqTnryoE8NNkUndi3goE7swmNdKA/QBymAxNY1HsKYvGxsaC36zAatAsysOqqNkE0/FdOJrLc7Bgfi0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780627125; c=relaxed/simple;
	bh=KJJ91VtR76aev5sg0mmlv0Bg7ug6NZzG/9LXShbFgvs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DORn5h70NOJHQdyy2cvpitSSxxQ43Y/SEVbrcNXC0f7xI3mc0r0gw7w8EQ6fKmALgsADUDhVF2/W22Bw7zSG+y7CDDPaBDwC7h/vzh99Ntx7Y4bNLEQw73uWAwoezbge9nHJ9MgdNrG1WA/LbQhPwxlIozmv9WgWOZPELbEM5u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JM7Svhiv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B99E51F0089A;
	Fri,  5 Jun 2026 02:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780627117;
	bh=4GnsV9O6Rdij5b/EPcx79wjcKhjuJQSjqf1MjrueHp4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=JM7Svhiv4/+N98VzbcHR3uOzfv/eIZRaNghXvyjpgo95J3z1R4ByMsWU/5nftMO7h
	 15tIlLaVOzUqntyds21R+lKOFuqGBG79MZeC9qYDU4nbovnxh+D1/4O1B3OcdU4xb8
	 sF6dkdqIhfDIXniPIZ+sY9LKYb8EuOuHysU+ELIFq0ennYmxaI+DwY3kmIZCkgU2JG
	 wI3iGO9YJuYC5TXF+5YD/xcr5ScEEsS6PKfLPP9UzC0Yjr6xlXZXJ8FiyKZyNHRory
	 DlFPcVwMOr+iau+Serad6V5OnEKlrvZO+o4KkpvLGJ2WLzHfRnX/+gTZzQs7Xhu9ut
	 zzrbd5ottrVtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 1/3] arm64: dts: rockchip: Add missing hclk for
 RK3588 eDP0
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260605022305.3058853-2-damon.ding@rock-chips.com>
References: <20260605022305.3058853-2-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 02:38:36 +0000
Message-Id: <20260605023836.B99E51F0089A@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307144-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:damon.ding@rock-chips.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,rock-chips.com:email,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D493F644B6C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The patch adds the `HCLK_VO1` clock to the `edp0` node but incor=
rectly names it `"hclk"` instead of `"grf"`. This violates the `rockchip,an=
alogix-dp.yaml` DT schema, which strictly mandates the third clock to be na=
med `"grf"`. Furthermore, it causes the driver's explicit clock management =
to silently fail: `analogix_dp-rockchip.c` requests the clock using `devm_c=
lk_get_optional(dev, "grf")`. Because the DT name (`"hclk"`) does not match=
, the driver receives `NULL` and its explicit `clk_prepare_enable()` calls =
become no-ops.
--

commit 1f0c2ce9ff98f7230f0fe6e03686f09557a50f13
Author: Damon Ding <damon.ding@rock-chips.com>

arm64: dts: rockchip: Add missing hclk for RK3588 eDP0

This commit adds the HCLK_VO1 clock to the RK3588 eDP0 node. This is
intended to allow the eDP controller to correctly access the video output
GRF, transitioning from implicit enablement to explicit definition.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/b=
oot/dts/rockchip/rk3588-base.dtsi
> index 4fb8888c281c8..24a5ccbac08cb 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
> @@ -1712,8 +1712,8 @@ hdmi0_out: port@1 {
>  	edp0: edp@fdec0000 {
>  		compatible =3D "rockchip,rk3588-edp";
>  		reg =3D <0x0 0xfdec0000 0x0 0x1000>;
> -		clocks =3D <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>;
> -		clock-names =3D "dp", "pclk";
> +		clocks =3D <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO1>;
> +		clock-names =3D "dp", "pclk", "hclk";

[Severity: Medium]
Does naming this third clock "hclk" conflict with the driver's expectations
and the device tree schema?

The rockchip,analogix-dp.yaml schema expects the third clock to be named "g=
rf".
Additionally, looking at rockchip_dp_of_probe() in the analogix_dp-rockchip=
.c
driver, it explicitly requests "grf":

drivers/gpu/drm/rockchip/analogix_dp-rockchip.c:rockchip_dp_of_probe() {
    ...
    dp->grfclk =3D devm_clk_get_optional(dev, "grf");
    ...
}

Because the name is specified as "hclk" here instead of "grf", will
devm_clk_get_optional() return a NULL pointer? This would cause the driver's
subsequent explicit clk_prepare_enable() calls for this clock to become
silent no-ops, bypassing the intended explicit clock management.

>  		interrupts =3D <GIC_SPI 163 IRQ_TYPE_LEVEL_HIGH 0>;
>  		phys =3D <&hdptxphy0>;
>  		phy-names =3D "dp";

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605022305.3058=
853-1-damon.ding@rock-chips.com?part=3D1

