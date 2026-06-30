Return-Path: <devicetree+bounces-317691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hds8DCmvQ2o9fAoAu9opvQ
	(envelope-from <devicetree+bounces-317691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:57:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CD676E3E56
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 13:57:28 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=R6nJYYSx;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317691-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-317691-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 21635305B5B1
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:26:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF42A3EB7E8;
	Tue, 30 Jun 2026 11:26:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C74C31D372
	for <devicetree@vger.kernel.org>; Tue, 30 Jun 2026 11:26:26 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782818787; cv=none; b=TFMNEeJw0YgsiT98SIios3D53csPQG2pufUKrkuwc5vtxo60JnH5MdP2DUsyTedz9py7+WcQ2vSEyJeq5S9K5Wx1ySUE8GGGwzUYrjz8DjIjMvby3/ch/OPZoeaQueAkecVGALmhU3Kv7Y29xRsWYKvnLTSyXGVZhskmQQwdZPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782818787; c=relaxed/simple;
	bh=lB97F5wrbw07ed2Ta+uZmic1Lvo5jhV6jv3gG66Wwhg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ikVvC3SLf96e7TO0zAtjW1bwxY0Vle0BOCBVWR6qnu7dRA+sPcvEP9OAs9vKhwVdu/0hUxdA0VCKW5Orl+ttkWV/VXDF6N+8GyzZMQv6b/gFVKUJ7p7bJaPb5vcKj4EwHiwv1TcrEEWs4DNapkkrwgvA881eGSgQan140/lLoDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R6nJYYSx; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F333C1F000E9;
	Tue, 30 Jun 2026 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782818786;
	bh=DhkGn865KN4kRJ8n2zV4ydWm6Q9GdvXcLszYXD3lkYQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=R6nJYYSxRQ0pfFkum1OIXASEZ/huj7ePq/vqHLF6j4b66SUowtmiMFc5ckrFUfTyD
	 O0YajKUEI/z8PXpaPxEVRIyIXLwkZgTCZHqtipixTT7tIIr76XPMexUEvYHiBUQkIQ
	 D8CwZBkS7KWpFy+Sa7zlgvxqJ8CfV8zenVIyPLEMMBovghJIrOtrl5dJ5X4uFX3QEm
	 M2qH6ZtscAWaq8xrfF4BkJKNTJfrFunQhrXM3RwVKHIg1jZbYcDWxeKiEwkPog1uzz
	 ay3wC3xljp8rH07IrDQoN8fgZTvu2ifR5UlEkUSpWxpidr2uQaj/5YZoxzW1c3hJx1
	 XHalWXZ0Hyfdg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: lx2160a: transition to device-specific
 SerDes compatible strings
Reply-To: sashiko-reviews@lists.linux.dev
To: "Ioana Ciornei" <ioana.ciornei@nxp.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260630110459.516364-2-ioana.ciornei@nxp.com>
References: <20260630110459.516364-1-ioana.ciornei@nxp.com>
 <20260630110459.516364-2-ioana.ciornei@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 11:26:25 +0000
Message-Id: <20260630112625.F333C1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317691-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:ioana.ciornei@nxp.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url,nxp.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7CD676E3E56

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] Unintentional disabling of `serdes_1` on multiple boards.
- [Medium] Consumer phandles for SerDes PHYs were not updated to match the =
new per-lane PHY providers, contradicting the commit message.
- [Medium] The newly added `serdes_3` node is missing the generic fallback =
compatible string `fsl,lynx-28g`.
- [Low] Device tree compilation fails due to incorrect node name in `/delet=
e-node/` directive for serdes_3.
--

commit dcf5b2d58e1afb24aa2ae2829db182c735a1dfc1
Author: Vladimir Oltean <vladimir.oltean@nxp.com>

arm64: dts: lx2160a: transition to device-specific SerDes compatible strings

Align to the modern fsl,lynx-28g.yaml binding, where the SoC and SerDes
instance is present in the compatible string, to allow reliable per-lane
capability detection and per-lane customization of electrical properties.

>     These new bindings have #phy-cells =3D <0> in per-lane PHY providers,=
 so
>     we need to update consumer phandles as well.

[Severity: Medium]
Did we miss updating the consumer phandles in this patch?

The commit message indicates consumer phandles need updating to match
#phy-cells =3D <0>, but they appear to remain unupdated in the device tree,
and #phy-cells =3D <1> is still retained on the parent PHY nodes.

> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi b/arch/arm64/=
boot/dts/freescale/fsl-lx2160a.dtsi
> index 1d73abffa6b72..a687eb3e31904 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2160a.dtsi
> @@ -621,17 +621,163 @@ soc: soc {
>  		ranges;
>  		dma-ranges =3D <0x0 0x0 0x0 0x0 0x10000 0x00000000>;
> =20
[ ... ]
>  		serdes_1: phy@1ea0000 {
> -			compatible =3D "fsl,lynx-28g";
> +			compatible =3D "fsl,lx2160a-serdes1", "fsl,lynx-28g";
>  			reg =3D <0x0 0x1ea0000 0x0 0x1e30>;
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
>  			#phy-cells =3D <1>;
> +			status =3D "disabled";

[Severity: High]
Does this default status =3D "disabled" unintentionally break interfaces
wired to serdes_1 on boards like fsl-lx2162a-clearfog and fsl-lx2160a-half-=
twins?

These boards consume serdes_1 but do not appear to override the status to
"okay" in this patch.

[ ... ]
> +		serdes_3: phy@1ec0000 {
> +			compatible =3D "fsl,lx2160a-serdes3";
> +			reg =3D <0x0 0x1ec0000 0x0 0x1e30>;

[Severity: Medium]
Should serdes_3 include the generic "fsl,lynx-28g" fallback compatible stri=
ng
here, similar to what was added for serdes_1 and serdes_2?

> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			status =3D "disabled";
> +			#phy-cells =3D <1>;
[ ... ]
> diff --git a/arch/arm64/boot/dts/freescale/fsl-lx2162a.dtsi b/arch/arm64/=
boot/dts/freescale/fsl-lx2162a.dtsi
> new file mode 100644
> index 0000000000000..b9629e074d943
> --- /dev/null
> +++ b/arch/arm64/boot/dts/freescale/fsl-lx2162a.dtsi
> @@ -0,0 +1,24 @@
[ ... ]
> +&soc {
> +	/delete-node/ serdes@1ec0000;
> +};

[Severity: Low]
Could this /delete-node/ directive fail at build time?

In the base fsl-lx2160a.dtsi, the node is defined as phy@1ec0000 rather
than serdes@1ec0000.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260630110459.5163=
64-1-ioana.ciornei@nxp.com?part=3D1

