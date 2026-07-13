Return-Path: <devicetree+bounces-325477-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YA30LV7QVGq7fAAAu9opvQ
	(envelope-from <devicetree+bounces-325477-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:47:42 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D6BA74A7FB
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:47:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KxnzeJpQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325477-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325477-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 78B0F300B3E4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC8C23E866B;
	Mon, 13 Jul 2026 11:47:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B343D25A6;
	Mon, 13 Jul 2026 11:47:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943257; cv=none; b=QbnW15VLqrOeSalsrP7a2s6A+9j+VtPymuTt5B4tVlQ1/ToznRd6N1p7FcjD2A46M0a4Lz5DVdfI+yW34l1deIQdODGap9dv7/kV/gw+srIXqkQZgVjVVbLL9sBBt4NwQ++82emL5WQU9aSGsyX6F7IGh/bffBMC+tfMHOEykWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943257; c=relaxed/simple;
	bh=hZsFy3J3zBB4p0j7stGGT/IYXHD6ynLk8hBXL03BRo0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ECI3dwr+NXZKUuxAblDEfO3pz6B18Tgh5748MZa+IVhRYiJC3CtN3gyLGtpS5Pal9RsoISmzRVnfDAiJfBHUKyhIZQs329i0zxuCQFzHtWF9Mj0R7vT5/dWHN9FFNOomZJiquPAe/rNfQt1sOJfIDdQZxZtLs1g4y90MrNmL6mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KxnzeJpQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 312E61F000E9;
	Mon, 13 Jul 2026 11:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783943256;
	bh=1aNX9aTuAy+YnrQ5BLaK+DJuhNtlJKYpJzyGuCkckaI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=KxnzeJpQ6zxMKfqfMnz32EeHw6EM91dtk0vovaF/ddnIT1av6JBv2zKsJraSLf060
	 h89UGCEyZfc16QeGnrpb8p/7pddu9Y5Lgh7bg7YdL6GBL2qWPyAbCWPWURJcGG2cm1
	 DOhfrZd+7i3iP/VwRQRp1rUPSM+RB52zEbeYzqsOoUPD4q0+zMiR+9MwWrEzOjmPWM
	 kT80YLjVsLY/QuJrpVz9DqMPURk2ql8VPMbooMQzniLOu5KfrV1t0dOQOj+jY6WvAd
	 OC3SghP5EVBY9LqOb9BKEIPtwW/3RMxjxetz9enhcVwsEeTueiJbbotO+0kOIO2Oin
	 PlO8es86BYadg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 11/18] arm64: dts: ti: k3-am68-sk: Add overlay for
 dual Arducam V3link fusion
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: imx@lists.linux.dev, Frank.Li@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713113423.2310443-12-y-abhilashchandra@ti.com>
References: <20260713113423.2310443-1-y-abhilashchandra@ti.com>
 <20260713113423.2310443-12-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:47:35 +0000
Message-Id: <20260713114736.312E61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325477-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,ti.com:email,arducam.com:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:imx@lists.linux.dev,m:Frank.Li@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1D6BA74A7FB

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing space around '=3D' in property assignment.
--

--- Patch [11]: [PATCH v2 11/18] arm64: dts: ti: k3-am68-sk: Add overlay fo=
r dual Arducam V3link fusion ---
commit f16de548646cfb8ded4d412b513b2b6f314dbb9d
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-am68-sk: Add overlay for dual Arducam V3link fusion

This commit adds a device tree overlay supporting two Arducam V3Link mini
fusion boards, each connected to one of the two CSI RX inputs on the AM68-S=
K.
The overlay configures the DS90UB960 deserializers to aggregate inputs from
up to four cameras over a single CSI-2 connector.

Link: https://www.arducam.com/downloads/datasheet/Arducam_V3Link_Datasheet.=
pdf

> diff --git a/arch/arm64/boot/dts/ti/k3-am68-sk-v3link-fusion.dtso b/arch/=
arm64/boot/dts/ti/k3-am68-sk-v3link-fusion.dtso
> new file mode 100644
> index 0000000000000..b293deede6380
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am68-sk-v3link-fusion.dtso
[ ... ]
> +&cam1_i2c {
> +	#address-cells =3D <1>;
> +	#size-cells =3D <0>;
> +
> +	deser@30 {
> +		compatible =3D "ti,ds90ub960-q1";
> +		reg =3D <0x30>;
[ ... ]
> +		deserializer_1_ports: ports {
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +
> +			port@0 {
> +				reg =3D <0>;
> +				status =3D "disabled";
> +			};
> +
> +			port@1 {
> +				reg=3D <1>;

[Severity: Low]
This isn't a bug, but there is a missing space before the equals sign here.
The v2 changelog mentions fixing minor DTS styling and whitespace
inconsistencies in port definitions, so was this one missed?

> +				status =3D "disabled";
> +			};
> +
> +			port@2 {
> +				reg =3D <2>;
> +				status =3D "disabled";
> +			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713113423.2310=
443-1-y-abhilashchandra@ti.com?part=3D11

