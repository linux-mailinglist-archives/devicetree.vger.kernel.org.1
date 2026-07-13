Return-Path: <devicetree+bounces-325473-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4G+mMaXQVGrLfAAAu9opvQ
	(envelope-from <devicetree+bounces-325473-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:48:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE4074A81E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:48:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bmDCn3qV;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325473-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325473-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05098305B3FF
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:45:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 892963EB0EA;
	Mon, 13 Jul 2026 11:45:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BA2F246781;
	Mon, 13 Jul 2026 11:45:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943143; cv=none; b=F9mOjfEXfSYu8tAZmCo6Lm3Ke8LY/Xhq35/MZrxx/xEmDt+OmGE6fScGOe1PRo4Zzyg7vimoDYdMa9EDKYdzl4MoNmnnxmjbzgpz6LBCOQ310LZvSiaTHUamZ17K3N7FpiL/inVwsEhEK8Hl5L3v7oY8vhVwI3LxKQSbqOWtbu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943143; c=relaxed/simple;
	bh=+QDtu5qxsYdl3eWo5lbr2ibteiBPag+Ao0g+v9bMWkU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=fnuNt+j9hLGJjwbmebxq9CxKMs199X8xGD+nvmewmMoTi0Mz+W0jkqnQ309Y3UwIEvyzI2XP5ScdB2C9RHOQ0IdHLPArKchglcRhdgX+nPcxrO35NS4Fd4eZDiMGYDT1Abl9geVXwzw3J5vUX/LbDjeJCo+QK6njnF33Tu1F3iI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmDCn3qV; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A978D1F000E9;
	Mon, 13 Jul 2026 11:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783943142;
	bh=MNHCakZenvlIEghko//B0u+g7LKzf3MMRaWKbCNUvtA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bmDCn3qV80LnDMCd132NWvoz99C5FlZgtgTPZOXaAEGBLb1su9bMDT8PxuU5mhUXE
	 Rx3JwBWVSMYGv04fVjOYSe8bSz9MdmwlJ0Kn5rXDscMRBwi8S60TXiJLf1zfOb9JRM
	 kPJgtHNZybsFJasi4uX3SUN9dkRR49hV9NjvQtw7/hw+jp7iDWyyz0xxVG5VMeEdA+
	 mQA9fVavLOyd2ziSwctu0J9YlbXyhD577L4saxvcMuJNlL9pqNlWvTR18Bw6VA0onY
	 alKK0FSkv6dCyKSlGMJDGMuX0fqQAGhK+uGyh6F21aB1k3yu9KFzvjwDrztk1C0KV1
	 Q7lmPIBAYpu3A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 13/18] arm64: dts: ti: k3-j784s4-evm: Add overlay for
 J7EXPA01EVM Fusion2
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260713113423.2310443-14-y-abhilashchandra@ti.com>
References: <20260713113423.2310443-1-y-abhilashchandra@ti.com>
 <20260713113423.2310443-14-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:45:41 +0000
Message-Id: <20260713114541.A978D1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325473-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ti.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BE4074A81E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The commit message claims to have fixed DTS styling and whitespace =
inconsistencies in port definitions, but these fixes were not applied to th=
e third deserializer ('deser@32').
--

--- Patch [13]: [PATCH v2 13/18] arm64: dts: ti: k3-j784s4-evm: Add overlay=
 for J7EXPA01EVM Fusion2 ---
commit c8270b1db48b4db03ed35600960afc0c87b8b5ff
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j784s4-evm: Add overlay for J7EXPA01EVM Fusion2

This commit adds a device tree overlay to support the J7EXPA01EVM Fusion2
serial capture expansion board on the J784S4-EVM. The board features three
UB9702 deserializers aggregating data over the FPDLink-IV interface.

> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm-fpdlink-iv-fusion.dtso =
b/arch/arm64/boot/dts/ti/k3-j784s4-evm-fpdlink-iv-fusion.dtso
> new file mode 100644
> index 0000000000000..0f95d19ebd175
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm-fpdlink-iv-fusion.dtso

[ ... ]

> +	deser@32 {
> +		compatible =3D "ti,ds90ub9702-q1";
> +		reg =3D <0x32>;
> +		clocks =3D <&clk_fusion_25M_fixed>;
> +		clock-names =3D "refclk";
> +		i2c-alias-pool =3D <0x6a 0x6b 0x6c 0x6d 0x6e 0x6f>;
> +
> +		deserializer_2_ports: ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			port@0{
> +				reg=3D <0>;
> +				status =3D "disabled";
> +			};

[Severity: Low]
This isn't a bug, but the v2 changelog mentions fixing DTS styling and
whitespace inconsistencies in the port definitions. Did these fixes get
missed for the third deserializer (deser@32)?

The first two deserializers correctly use "port@0 {" and "reg =3D <0>;", wh=
ile
these nodes still have missing spaces around the curly braces and equals si=
gn.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713113423.2310=
443-1-y-abhilashchandra@ti.com?part=3D13

