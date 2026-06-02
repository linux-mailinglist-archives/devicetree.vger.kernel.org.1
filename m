Return-Path: <devicetree+bounces-305662-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mAMhC5bYHmrsVwAAu9opvQ
	(envelope-from <devicetree+bounces-305662-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:20:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A0C62E6B6
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 15:20:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=DR2RnATH;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305662-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-305662-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 011B2301ECC9
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 13:19:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C53213126DA;
	Tue,  2 Jun 2026 13:19:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6FD2D1F44
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 13:19:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780406363; cv=none; b=i78hUVp2UczLTx9wI/GFuP0Fvk8eE07GAMpziKzLyp4sDOto7Y3EkETLVQjBoHO69b69OOYxKDwz6CiGw0aRvMncHB8Y94Kwr3E1QZazbQ37YzTcr3+7JEVlxRWttxv0PKlzt8YZvxU01UUU9ofFslrh7YYf46OcZCmIxVhAryA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780406363; c=relaxed/simple;
	bh=v0m/zuqbPoYxKiRLTBZbODE3baEmJRAicAIi54L93pY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B+UOHZVOk2R0d4hqgbCJhDvh92sCmOXomQtUev+3aRy4jlsPCnqTUmrqNObcJBuC9uBlrTND3WgiVa9CrPjOPaeGt/TfUdLaKYUuLQ8vkEHYaf662hi9qcNgwEvbOwbuRBBpfMNvaMs8ZegK2cJ9junDJNvemg9PPQJgkgzge0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DR2RnATH; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 267AF1F00899;
	Tue,  2 Jun 2026 13:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780406362;
	bh=gfEUxPEJEIDJ+z9btBGOz6DxW2x6A+IbH4WWndYW6tM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=DR2RnATHjcTlY8hx0aPWhMVypXFr6GRyZNASnyk41Lo28KVOqRomir/GUWs+tplUS
	 YyDFKzomyqBtttBZLCBYdknr0ZG7GJgJC8yQzMbbALQ4/GVdeZhzNNd4/Wz0AKnc+I
	 X9B89Z69cnxZcOi5snTsY1PjR2DGvH/3b6G5TyT9UiUAfnnveC21T+BnoxBd4bEGed
	 YA1L2T+w/q1AIxwQYUPLxRZ/Sp0N/wTq9oaRFnmt+xVU/5zaTFUsD0uLWfAsi3Wr0J
	 PZNQpoGRSb6hVUNM9iimG4bcje+I9/hnWv3nsQWaY8tdd9StFo4zKjJMgZx1Zphn8E
	 SggI+20D6ceXw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] arm64: qcom: ipq5018: Add GEPHY RX and TX clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "George Moussalem via B4 Relay" <devnull+george.moussalem.outlook.com@kernel.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260601-ipq5018-gephy-clocks-v1-2-2df8287712c3@outlook.com>
References: <20260601-ipq5018-gephy-clocks-v1-2-2df8287712c3@outlook.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 02 Jun 2026 13:19:21 +0000
Message-Id: <20260602131922.267AF1F00899@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-305662-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+george.moussalem.outlook.com@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,george.moussalem.outlook.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,outlook.com:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 67A0C62E6B6

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Critical] DeviceTree ABI breakage due to requiring newly introduced cloc=
k properties on an existing PHY.
- [High] Unbalanced clock enable/disable calls in link state change notific=
ations lead to enable count underflows and kernel warnings.
--

commit 6e2b942b1bf7f7a0247513729082526ff6e92c6c
Author: George Moussalem <george.moussalem@outlook.com>

arm64: qcom: ipq5018: Add GEPHY RX and TX clocks

This commit adds rx and tx clocks for the IPQ5018 GEPHY in the device tree
to enable the datapath. It specifies the clock handles and their correspond=
ing
names for the ethernet phy node.

> diff --git a/arch/arm64/boot/dts/qcom/ipq5018.dtsi b/arch/arm64/boot/dts/=
qcom/ipq5018.dtsi
> index 6f8004a22a1ff..60c27a6f2b10c 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5018.dtsi
> @@ -229,6 +229,9 @@ ge_phy: ethernet-phy@7 {
>  				compatible =3D "ethernet-phy-id004d.d0c0";
>  				reg =3D <7>;
> =20
> +				clocks =3D <&gcc GCC_GEPHY_RX_CLK>,
> +					 <&gcc GCC_GEPHY_TX_CLK>;
> +				clock-names =3D "rx", "tx";

[Severity: Critical]
Can requiring these clock properties cause a device tree backward compatibi=
lity
regression?

Looking at ipq5018_probe() in drivers/net/phy/qcom/at803x.c:

	priv->rx_clk =3D devm_clk_get_enabled(dev, "rx");
	if (IS_ERR(priv->rx_clk))
		return dev_err_probe(dev, PTR_ERR(priv->rx_clk),
				     "failed to get and enable RX clock\n");

The driver uses devm_clk_get_enabled() to acquire the new rx and tx clocks,
meaning these properties are strictly mandatory for the probe to succeed.

Since this phy was already supported in the kernel, existing device trees
do not contain these newly introduced clock properties.

When booting the new kernel with an older device tree, devm_clk_get_enabled=
()
will return -ENOENT, causing ipq5018_probe() to abort.

Should the driver gracefully handle missing clocks on older device trees by
using devm_clk_get_optional_enabled()?

[Severity: High]
Will gating these clocks based on link state result in an enable count unde=
rflow?

Looking at ipq5018_link_change_notify() in drivers/net/phy/qcom/at803x.c:

	if (phydev->link) {
		clk_enable(priv->rx_clk);
		clk_enable(priv->tx_clk);
	} else {
		clk_disable(priv->rx_clk);
		clk_disable(priv->tx_clk);
	}

Since phydev->link can be false in multiple consecutive states (like PHY_NO=
LINK
and PHY_HALTED), won't clk_disable() be called multiple times in a row with=
out a
matching clk_enable(), causing the clock enable count to underflow and trig=
gering
a kernel warning?

Also, transitioning to link up increments the count to 2. If the device is
unbound while the link is up, devres cleanup only reduces the count by 1.

Could this lead to a clock reference leak?

>  				resets =3D <&gcc GCC_GEPHY_MISC_ARES>;
>  			};
>  		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601-ipq5018-ge=
phy-clocks-v1-0-2df8287712c3@outlook.com?part=3D2

