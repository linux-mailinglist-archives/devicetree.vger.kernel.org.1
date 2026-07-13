Return-Path: <devicetree+bounces-325474-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 391DEPzPVGqrfAAAu9opvQ
	(envelope-from <devicetree+bounces-325474-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:46:04 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3386574A7D6
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 13:46:03 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="A2yd/R0k";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325474-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325474-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 760043001185
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 11:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C65C3EB7E5;
	Mon, 13 Jul 2026 11:45:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C51A3BE155;
	Mon, 13 Jul 2026 11:45:58 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783943159; cv=none; b=IQEVKwgLL6p5vl5Jdgt/K8B+puufmPECYNNrSSHLxagsTSgANFqAE4SbHbjgffz6JQ2JAD/fhveS7XRk73ZWydhWizcUZzPE4oUUrLKBOL/+U9KQfqoUGbMTsI0r+8BVE5o6Pjw2+5hJ852sfvPiTaQ0CUMPBZUbn2KMIaIY5pM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783943159; c=relaxed/simple;
	bh=diV53gvo3pVHcw17XlnecyT4qe6GUFQCAEA7w4cJoM8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=smLFdio8nQsaf3i9oPJvSTJK80z94wZorf6bAYki0l+fA5UBfeMPhGMFSn/YjVNpGKnRlLwYh4F2d3UrqvRub4xMg+3qPdcns44SsicxYiASpvOA4RBW0zCcht0Y1CA55DSdaNmLCpeHpY1Ueo0Z/9zg9tN4OoN1rqgHAyUODgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2yd/R0k; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A42231F000E9;
	Mon, 13 Jul 2026 11:45:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783943158;
	bh=jSGj6XvmTGD5zYcV9orwLixCxpaV3J54Ftqh6FTVPsg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=A2yd/R0kOPdmgi2Z+bcp1GfyDJhqGv2tQMWqDwugLmseSztYjCSJJhKBCewohg3De
	 TWiY892m4r1HcLXx+v+z81t1yRH0PVu93IExLJQHVegJQE2gN6qhO26XQB/73jduDk
	 Xg2+xZ7/d/O27ycMLHjdiFDkMq09DANRWZH/7fmTUKflMTT5okBxqvp+w4+pAQP4UK
	 LTT8/AoWuE+SCJldAiV2vLbl1JHfh6HMndRQeTNmYLGmI7K+Fuw+uDh0ekOBWKH+Vq
	 e5tNhrWnczRTbthJ1Xq9m+Jl0RSicxsFTKmUyNg7UL1PMSNR3H0hBU8qR4K1elR01Q
	 Hqktyc+g0TUnQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 12/18] arm64: dts: ti: k3-j722s-evm: Add overlay for
 dual Arducam V3link fusion
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yemike Abhilash Chandra" <y-abhilashchandra@ti.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev
In-Reply-To: <20260713113423.2310443-13-y-abhilashchandra@ti.com>
References: <20260713113423.2310443-1-y-abhilashchandra@ti.com>
 <20260713113423.2310443-13-y-abhilashchandra@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 11:45:57 +0000
Message-Id: <20260713114557.A42231F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-325474-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,ti.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:y-abhilashchandra@ti.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3386574A7D6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The v2 changelog claims to 'Fix minor DTS styling and whitespace in=
consistencies in port definitions', but an improperly indented closing brac=
ket remains.
--

--- Patch [12]: [PATCH v2 12/18] arm64: dts: ti: k3-j722s-evm: Add overlay =
for dual Arducam V3link fusion ---
commit aaa6a2127a8b86a7d8034ebb013436530699b645
Author: Vaishnav Achath <vaishnav.a@ti.com>

arm64: dts: ti: k3-j722s-evm: Add overlay for dual Arducam V3link fusion

This commit adds a device tree overlay for two Arducam V3Link mini fusion
boards, connecting them to the two CSI RX inputs on the J722S EVM. Each
board features a single DS90UB960 deserializer capable of aggregating input
from up to four cameras.

> diff --git a/arch/arm64/boot/dts/ti/k3-j722s-evm-v3link-fusion.dtso b/arc=
h/arm64/boot/dts/ti/k3-j722s-evm-v3link-fusion.dtso
> new file mode 100644
> index 0000000000000..b27c53015e6ce
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j722s-evm-v3link-fusion.dtso

[ ... ]

> +	/* CAM1 I2C */
> +	i2c@1 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		reg =3D <1>;
> +
> +		deser@30 {
> +			compatible =3D "ti,ds90ub960-q1";
> +			reg =3D <0x30>;
> +
> +			clock-names =3D "refclk";
> +			clocks =3D <&clk_fusion_25M_fixed>;
> +
> +			i2c-alias-pool =3D <0x5a 0x5b 0x5c 0x5d 0x5e 0x5f>;
> +
> +			deserializer_1_ports: ports {
> +				#address-cells =3D <1>;
> +				#size-cells =3D <0>;
> +
> +				port@0 {
> +					reg =3D <0>;
> +					status =3D "disabled";
> +					};

[Severity: Low]
This isn't a functional bug, but the v2 changelog claims to "Fix minor DTS
styling and whitespace inconsistencies in port definitions". Was this extra
indentation on the closing bracket for port@0 missed during that cleanup?

> +
> +				port@1 {
> +					reg =3D <1>;
> +					status =3D "disabled";
> +				};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713113423.2310=
443-1-y-abhilashchandra@ti.com?part=3D12

