Return-Path: <devicetree+bounces-315669-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BCWvKRsePWrpxAgAu9opvQ
	(envelope-from <devicetree+bounces-315669-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:24:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C106C588F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 14:24:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=l3XZaZCm;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315669-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315669-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 287CD3037BB9
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 12:21:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82D993E0234;
	Thu, 25 Jun 2026 12:20:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5192F3E022B
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 12:20:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782390008; cv=none; b=LQ3zjYqy9XZmYs20WSDsSUwIkpG/ECaycTPYTnnRVcypN9ka36yYLbqO/JP1KZERBbsWO51ayAZYZWjFxzB4ZSCubF3ZGnRsaL0tMCvr5ewIDJOmxyez1orJdHyEU5FPPXepLKFvLJuQsmQ2nevFuC1++dwGIq8ndEYX6/Ex/9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782390008; c=relaxed/simple;
	bh=OJCmzFlkr7pJHKUvvUvTAs8iMCXjyWBIjLkN1D0ms/k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pRG11U29N9HDIchm2pOrpTL8QTSs8DW4G39bM6s5wjW7z2s4qmKTb5CHhlbxljF5OKvb/OaTJHSeksUX8l0VsmVg+jGE+YrOhprdu+uVOwS3Jxnp1I+5yI9GHiMXdMPxcMaWhuaAgoyXyiIaYIVPTds2pMLb/nQGxrd5QKLzuWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3XZaZCm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A13361F000E9;
	Thu, 25 Jun 2026 12:20:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782390006;
	bh=wVKUBAOc7aY5V56B0lcAw6Bgjk/IjFirKhKfJ9pNzH4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l3XZaZCmz1flHWSSf01TP7p9FFnurSNU4iKlWC/7xz0XzFoIAvMfJ5rNCBfBrHt4q
	 rAA04RPqmayT+viKfw9nfVh1cUV2QpBzPSSq4zq9SyYiHn3iCHRuSzal64gnEueT5x
	 lrwKrkFoQOb8LZJFjrXtJQc8af0kn3Yt/vVR62WW6C8sMj4cXZx4X0i011H/NweVJ/
	 RTXZuWvfHPBhaBopECvHW2G2L9puhyCKtt9fl2scyWg08yrBR7yFt1B7CceS66lIuD
	 VTn426PUMkxg8/K8VLoqAYuxsMfOAT9cPycTMSFmlV/gZCkPAiFR+Sc/GniaEwSGnb
	 8W7o3IjN+okKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: ti: k3-j784s4: Add overlay for dual
 port USXGMII+SGMII mode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Gokul Praveen" <g-praveen@ti.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625120805.28948-4-g-praveen@ti.com>
References: <20260625120805.28948-1-g-praveen@ti.com>
 <20260625120805.28948-4-g-praveen@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 12:20:06 +0000
Message-Id: <20260625122006.A13361F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315669-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:g-praveen@ti.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42C106C588F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Incomplete clock configuration in `&serdes_wiz2` leaves a dangli=
ng `assigned-clocks` element as dead code.
- [Low] The unit addresses in the PHY node names do not match their `reg` p=
roperty values.
--

commit ec16658036ad6f4bdcb6018a15184b9bd2b3c4aa
Author: Gokul Praveen <g-praveen@ti.com>

arm64: dts: ti: k3-j784s4: Add overlay for dual port USXGMII+SGMII mode

The CPSW9G instance of the CPSW Ethernet Switch supports SGMII and
USXGMII mode with MAC Ports 1 and 2 of the instance, which are
connected to ENET Expansion 1 and ENET Expansion 2 slots on
the EVM respectively, through the Serdes2 instance of the SERDES.

Enable CPSW9G MAC Ports 1 and 2 in fixed-link configuration
SGMII and USXGMII mode at 1Gbps and 5 Gbps each.

> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm-sgmii-usxgmii-exp1-exp2=
_board1.dtso b/arch/arm64/boot/dts/ti/k3-j784s4-evm-sgmii-usxgmii-exp1-exp2=
_board1.dtso
> new file mode 100644
> index 0000000000000..553546b281a9e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm-sgmii-usxgmii-exp1-exp2_board1=
.dtso

[ ... ]

> +&serdes_wiz2 {
> +	assigned-clocks =3D <&k3_clks 406 6>,  <&k3_clks 406 5>;
> +	//assigned-clock-parents =3D <&k3_clks 406 9>; /* Use 100 MHz clock for=
 SGMII */
> +	status =3D "okay";
> +};

[Severity: Medium]
The assigned-clock-parents override is commented out here, but the
assigned-clocks array was expanded to two elements.

Because the base device tree only defines a single parent, the clock framew=
ork
will only process the first clock and silently ignore the second element.

Does this leave the second clock unconfigured, and should
assigned-clock-parents be uncommented to resolve this?

> +
> +&serdes2 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	status =3D "okay";
> +
> +	assigned-clock-parents =3D <&k3_clks 406 5>,
> +						 <&k3_clks 406 6>,
> +						 <&k3_clks 406 5>;
> +
> +	serdes2_sgmii2_link: phy@1 {
> +		reg =3D <2>;
> +		cdns,num-lanes =3D <1>;
> +		#phy-cells =3D <0>;
> +		cdns,phy-type =3D <PHY_TYPE_SGMII>;
> +		resets =3D <&serdes_wiz2 3>;
> +	};
> +	serdes2_usxgmii_link: phy@0 {
> +		reg =3D <3>;

[Severity: Low]
Do the unit addresses phy@1 and phy@0 need to match their reg property
values <2> and <3>?

The dtc compiler will generate unit_address_vs_reg warnings when the unit
address and reg property do not match.

[ ... ]

> diff --git a/arch/arm64/boot/dts/ti/k3-j784s4-evm-usxgmii-sgmii-exp1-exp2=
_board2.dtso b/arch/arm64/boot/dts/ti/k3-j784s4-evm-usxgmii-sgmii-exp1-exp2=
_board2.dtso
> new file mode 100644
> index 0000000000000..c98be3bbf2c8b
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j784s4-evm-usxgmii-sgmii-exp1-exp2_board2=
.dtso

[ ... ]

> +&serdes_wiz2 {
> +	assigned-clocks =3D <&k3_clks 406 6>,  <&k3_clks 406 5>;
> +	//assigned-clock-parents =3D <&k3_clks 406 9>; /* Use 156.25 MHz clock =
for USXGMII */
> +	status =3D "okay";
> +};

[Severity: Medium]
Similar to the first overlay, the assigned-clock-parents override is commen=
ted
out while assigned-clocks contains two elements.

Is the second clock intended to be left unconfigured here?

> +
> +&serdes2 {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +	status =3D "okay";
> +
> +	assigned-clock-parents =3D <&k3_clks 406 5>,
> +						 <&k3_clks 406 6>,
> +						 <&k3_clks 406 5>;
> +
> +
> +
> +	serdes2_sgmii2_link: phy@1 {
> +		reg =3D <3>;
> +		cdns,num-lanes =3D <1>;
> +		#phy-cells =3D <0>;
> +		cdns,phy-type =3D <PHY_TYPE_SGMII>;
> +		resets =3D <&serdes_wiz2 4>;
> +	};
> +	serdes2_usxgmii_link: phy@0 {
> +		reg =3D <2>;

[Severity: Low]
Are the unit addresses for these nodes correct?

They are named phy@1 and phy@0, but their reg properties are set to <3>
and <2>. Should they be updated to match the reg properties to prevent dtc
warnings?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625120805.2894=
8-1-g-praveen@ti.com?part=3D3

