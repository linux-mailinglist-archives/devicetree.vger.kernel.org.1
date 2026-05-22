Return-Path: <devicetree+bounces-301797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sBBfDS1NEGoJWAYAu9opvQ
	(envelope-from <devicetree+bounces-301797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:33:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 870295B40E6
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 14:33:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 405A7304E6D3
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 12:18:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88A9137C11E;
	Fri, 22 May 2026 12:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lFe03TYA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6439937C0EB;
	Fri, 22 May 2026 12:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779452300; cv=none; b=s9MJmurEYQHm27kn3IH9zHdeHJsqWVmQqkaYOP7W7NgC1cSmfaV9e9jy7n7i6mxis/GbqVoX4QgzgtO+0ygbePop3j0i2Pa9raEiRl/V0q8mcDeevUP/uHPFA1SUqy1MhU0yuk/DGMPZLjfcUoLUC20qxkXCoqiYY1jg+ixs7ZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779452300; c=relaxed/simple;
	bh=EFqTMRBV9fq5tYmJcAt4/MmFKR/7YwY9tBVT73dnn6I=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=HyHj9YqB822/mbhZ6u4BumS6fIwnujnuW+Ojl1yNZqjWuEYU4E9JqcfVbEt1WtHgte4byGzcUe6sTMAdS5QR7fsrBUDn5aBrMy0gQz5qOa4SzYGlQkr8VTxdRPJOpsNM+mXO3JM44AetACl/Ry2bvEkzp3gsr9lNmrm84/PCNy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lFe03TYA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3C891F000E9;
	Fri, 22 May 2026 12:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779452299;
	bh=qiheiti0C4WAH7qF2lXhlekiEPkuhW6mwzjqCjpmvis=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=lFe03TYAa+H+mFn0d2ZAIFGfJvLBP880d6DKzZ1mYlvqSdlJscaYd6S0FQ7aFq5sE
	 xrBbVeZFk1X8e3nomJiHGUEhQB+v4lZwRoPPDfXLVjdkL/HN46H/jpQK7Wha4QedmR
	 d/TSFn1AeisoZeOUzgLukQl421qOduZCZbnDmM055Dg2oPwPQDQcMZpW/fdVVKax37
	 9sV56hX8dFBfhg7ehprJmHYVe4RlNBkSAwekNdVMi/H8RAc3QCMtTVRLZ2sv38jm66
	 l4RWqhD2Hxyh1hKaDNEQ99neWju97IiFOd4X3FLlfUBduMuBv7MRwbIIZNMBIc22gK
	 k9NdR3yx97bzA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/5] arm64: dts: freescale: imx95-toradex-smarc: move
 CM7 node to SoC DTSI
Reply-To: sashiko-reviews@lists.linux.dev
To: "Laurentiu Mihalcea" <laurentiumihalcea111@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, conor+dt@kernel.org, Frank.Li@kernel.org, robh@kernel.org
In-Reply-To: <20260522111849.783-4-laurentiumihalcea111@gmail.com>
References: <20260522111849.783-4-laurentiumihalcea111@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 12:18:18 +0000
Message-Id: <20260522121818.C3C891F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301797-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 870295B40E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The patch implicitly disables the CM7 remoteproc on all Verdin pla=
tforms and leaves a redundant, uncleaned node.
--

commit f431dd9d8aa9dbff4c66eec7fa35574389600cc9
Author: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

arm64: dts: freescale: imx95-toradex-smarc: move CM7 node to SoC DTSI

This commit moves the CM7 remoteproc configuration from the Toradex SMARC
Device Tree to the common i.MX95 SoC Device Tree. It also splits the
mailbox channels into separate array entries.

> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/d=
ts/freescale/imx95.dtsi
> index 3e35c956a4d7a..f8760ac067faf 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -272,6 +272,13 @@ opp-1000000000 {
>  		};
>  	};
> =20
> +	cm7: remoteproc-cm7 {
> +		compatible =3D "fsl,imx95-cm7";
> +		mboxes =3D <&mu7 0 1>, <&mu7 1 1>, <&mu7 3 1>;
> +		mbox-names =3D "tx", "rx", "rxdb";
> +		status =3D "disabled";

[Severity: High]
Does this implicitly disable the CM7 remoteproc on Verdin platforms?

Since imx95-verdin.dtsi includes imx95.dtsi and defines its own
cm7: remoteproc-cm7 node without setting a status property, it appears it
will inherit this status =3D "disabled" property, whereas it was previously
implicitly enabled.

Additionally, does imx95-verdin.dtsi need to be updated to match these
changes? It currently retains the unsplit mboxes array format
(mboxes =3D <&mu7 0 1 &mu7 1 1 &mu7 3 1>;), which will override the split
format introduced here.

> +	};
> +
>  	clk_ext1: clock-ext1 {
>  		compatible =3D "fixed-clock";
>  		#clock-cells =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522111849.783-=
1-laurentiumihalcea111@gmail.com?part=3D3

