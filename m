Return-Path: <devicetree+bounces-316163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v7gcGBSqPmrBJwkAu9opvQ
	(envelope-from <devicetree+bounces-316163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:34:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6D06CF23C
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 18:34:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oMl9EVuO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316163-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316163-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D1AEE30B8386
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 16:26:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49D5A3E2AD1;
	Fri, 26 Jun 2026 16:26:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAB23F9F26
	for <devicetree@vger.kernel.org>; Fri, 26 Jun 2026 16:26:51 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782491212; cv=none; b=k9DyouDcM7RBWRq4Sh8LGH5dDrbHNqTQFBlB0b23G3dd+E/LlKma/zeCo6Ri0dO9BTYlKgUPeWzF1FVYlc9Y1Wot1a4Nmibr2yzeJNscd8ZHhK7oS1DFngIlNxmFtG4HsxHuIrfzkUHTropKhizQuB/SmrFumfqtUQAF0q+rTtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782491212; c=relaxed/simple;
	bh=CBHbJwUUhkWobFTs3c4qWPM3ffsC0az4FbWqJEZ7sE0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ue2PFJtPKmsrVab42IWZU4Jdsq8eWBuUPsfiahCTzpJV8IAruAPl+0BFBqty6aFuVwHPCH049zD9X0Rg0ghZsm+N6O1cApm82ZUxczoUCHB9B5ZhkUagzqnjq2M+NQeve6gYBttgLHdf8NuNjRIYBHDd8WrddLnDwiN9QomdMEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMl9EVuO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE68F1F000E9;
	Fri, 26 Jun 2026 16:26:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782491210;
	bh=zuzUZqxlSqMnYViZyXspk/Ji/qH5cMD2Dwss+G2Vtyg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oMl9EVuODzDpJ70zQY39s+ykD6FCKMBC6rQVZij0mlkdL+Se0AzFEOVDWYurTY4gN
	 UmCr59YXdQZzDW3uzZrbCy02IQ/QSeHQVxg8r3a+eekXQNLFjUiLN3o00ZW4s6qLrf
	 cu3+GKhJFt13Y7gw9PgoiAAaibBaHFYq4JFekHHLEVXdlRMeNiq6LcVCUwVBZdpisZ
	 X6Q53qJ6q2WSlRd2IA10LbdI/0oh3TvOCr13HLHVSCpgdOzHGSLglcn47h+1JQoLyj
	 vc9DD8l8Ud6vO9lqbgTqR760Ia9pCCVjn7A9yJRfFOGv8GUv5CFSvKaVNAjM1KA/1q
	 NcN1vxSYdiFIQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: ti: Add support for the
 phyCORE-AM67x
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nathan Morrisson" <nmorrisson@phytec.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626161014.1146128-2-nmorrisson@phytec.com>
References: <20260626161014.1146128-1-nmorrisson@phytec.com>
 <20260626161014.1146128-2-nmorrisson@phytec.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 16:26:50 +0000
Message-Id: <20260626162650.BE68F1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	URIBL_MULTI_FAIL(0.00)[tor.lore.kernel.org:server fail,smtp.kernel.org:server fail,phytec.com:server fail,vger.kernel.org:server fail,lists.linux.dev:server fail,sashiko.dev:server fail];
	TAGGED_FROM(0.00)[bounces-316163-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:nmorrisson@phytec.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[phytec.com:url,phytec.com:email,lists.linux.dev:replyto,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CD6D06CF23C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The external PCIe reference clock generator `pcie_refclk0` is neve=
r selected as a clock parent, leaving the oscillator permanently disabled.
--

commit d9846b20b72a17d0a0d8f41ab892c88f00f2de4e
Author: Nathan Morrisson <nmorrisson@phytec.com>

arm64: dts: ti: Add support for the phyCORE-AM67x

Add support for the PHYTEC phyCORE-AM67x SoM and the corresponding
phyBOARD-Rigel carrier board. Features include audio playback, CAN,
PCIe, USB, eMMC, Ethernet, and various sensors.

[1] https://www.phytec.com/product/phycore-am67x/
[2] https://www.phytec.com/product/phyboard-am67x-development-kit/

> diff --git a/arch/arm64/boot/dts/ti/k3-am6754-phyboard-rigel.dts b/arch/a=
rm64/boot/dts/ti/k3-am6754-phyboard-rigel.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am6754-phyboard-rigel.dts

[ ... ]

> +&serdes1 {
> +	status =3D "okay";
> +
> +	serdes1_pcie_link: phy@0 {

[Severity: High]
Will pcie_refclk0 remain disabled here since assigned-clock-parents isn't
overridden?

The base SoC device tree configures the serdes1 node with
assigned-clock-parents =3D <&k3_clks 280 1> (the internal core_ref_clk).
While the board DTS provides pcie_refclk0 in the serdes_wiz1 clocks array
below, it doesn't appear to override assigned-clock-parents on &serdes1 to
actually select it.

Because the clock framework might retain the SoC's default internal clock,
the physical PCIe reference clock oscillator's GPIO gate is never asserted,
which could cause PCIe link training to fail.

> +		reg =3D <0>;
> +		cdns,num-lanes =3D <1>;
> +		#phy-cells =3D <0>;
> +		cdns,phy-type =3D <PHY_TYPE_PCIE>;
> +		resets =3D <&serdes_wiz1 1>;
> +	};
> +};
> +
> +&serdes_wiz1 {
> +	clocks =3D <&k3_clks 280 0>, <&k3_clks 280 1>, <&pcie_refclk0>;
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626161014.1146=
128-1-nmorrisson@phytec.com?part=3D2

