Return-Path: <devicetree+bounces-307145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RlGdFSY3Imq2TwEAu9opvQ
	(envelope-from <devicetree+bounces-307145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:40:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E4AAF644B78
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 04:40:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=P4D9C3z+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307145-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307145-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0144B303AC36
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 02:39:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BCA832B107;
	Fri,  5 Jun 2026 02:38:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CA63E0752
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 02:38:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780627128; cv=none; b=koMCtOiSl9zTReijRwTYDSkgt1A/lCHFImvSMdadJDU0rNwWQ5Clzbb+/2dNk+DPL6k0Gtmg77yF6Sk1vx/dOzmfCVeuF98AaPSvcoHLCLhpgRWoUY3dzSF9CYEQVZGzrH8swJa01/lVZOrpsmbZEBTBomkI1zEje73Mhf560Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780627128; c=relaxed/simple;
	bh=IkrJCouyKBu8b6+raSJt6DmdTV0ZFT/WkO7boEIqbIU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=AlESfdo9eqMQdoYtOs4Bw/VPfBWWQCtfQb0UC+0V6rLwCifnZ7CDKAVjFKx9tZq3O7vN0LzuKujppPseSAWTyPbZAo3S+JnjOX3VUPNGFxOeazWp7WINJhle0bWnzKzVJgGMzAAZ6XIcUQI0uqPlZPADrEFxBFiXnEwcSMYkY8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P4D9C3z+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 716251F0089C;
	Fri,  5 Jun 2026 02:38:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780627117;
	bh=2a0zvNVeReHvvfOfNxf8zdsJcAYvxcv/YbDysjZv1BI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=P4D9C3z+1bgOMSv1Hj3yZaggRP7oyDysHzTQO9r/xLq3g6gnHk6jcihJm6gW7CZCA
	 E0C1he1rmLgLr46OtLm/OAgKvIv6lBZW/QmbxxhrQXvT7dM//vGUFMYSG8iqPGHEGF
	 k4ll/rlzj0ZH/O6VVwF41e68PP0fPIPS0m0rwv0kF2erVPIf05u1kBwvVQ6jYVfTxb
	 Rc+nTRvAIk3ZggwAMXCltxYzVvxx12fgFW6Z4iwpjaa2ZR2abhvqXE4tM/j5ij0ShB
	 Pnx1b/1wYJnhYKWqMh0btf9HB6uCeWh+VQpTNqw90stZ+IRdLjIL7R5z4k4aaTcZ85
	 HfSJfv8JTGgSg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v11 3/3] arm64: dts: rockchip: Add eDP node for RK3576
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260605022305.3058853-4-damon.ding@rock-chips.com>
References: <20260605022305.3058853-4-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 02:38:37 +0000
Message-Id: <20260605023837.716251F0089C@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307145-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:damon.ding@rock-chips.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[rock-chips.com:email,lists.linux.dev:replyto,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4AAF644B78

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing dt-binding documentation and driver support for 'rockchi=
p,rk3576-edp' compatible string.
- [Medium] Device tree schema violation and unmanaged clock due to incorrec=
t clock-names mapping.
--

commit e47ec8c7e8e01e5a72a889c3a37a5a2d40321b07
Author: Damon Ding <damon.ding@rock-chips.com>

arm64: dts: rockchip: Add eDP node for RK3576
   =20
Add full device tree definition for the integrated eDP controller
on RK3576, following the existing RK3588 hardware layout.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/d=
ts/rockchip/rk3576.dtsi
> index 28175d8200d57..733449cb88b15 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
[ ... ]
> @@ -1496,6 +1496,34 @@ hdmi_out: port@1 {
>  			};
>  		};
> =20
> +		edp: edp@27dc0000 {
> +			compatible =3D "rockchip,rk3576-edp";

[Severity: Medium]
Will this trigger a schema validation error during make dtbs_check?

The new compatible string is declared here without a fallback string like
"rockchip,rk3588-edp". If this string is not documented in the device tree
bindings (rockchip,analogix-dp.yaml) and lacks a match in the Rockchip Anal=
ogix
DP driver, the driver might not probe successfully.=20

Should a fallback compatible be provided if the hardware is fully compatibl=
e,
or do the binding and driver need to be updated alongside this patch?

> +			reg =3D <0x0 0x27dc0000 0x0 0x1000>;
> +			clocks =3D <&cru CLK_EDP0_24M>, <&cru PCLK_EDP0>, <&cru HCLK_VO0_ROOT=
>;
> +			clock-names =3D "dp", "pclk", "hclk";

[Severity: Medium]
Does naming this third clock "hclk" violate the device tree schema and
prevent the driver from managing it?

The dt-binding schema for rockchip,analogix-dp.yaml explicitly restricts the
third clock name to "grf". The eDP driver attempts to fetch the third clock
using devm_clk_get_optional(dev, "grf").=20

With the name set to "hclk" here, will the driver silently fail to find it,
causing the HCLK_VO0_ROOT clock to be ignored and left unprepared?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605022305.3058=
853-1-damon.ding@rock-chips.com?part=3D3

