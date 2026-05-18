Return-Path: <devicetree+bounces-299066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLY3NxBXCmpd0AQAu9opvQ
	(envelope-from <devicetree+bounces-299066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 02:02:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3904F564764
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 02:02:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC44A3007CA1
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 00:02:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 604C3846A;
	Mon, 18 May 2026 00:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9WPQnoW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4AC17BCA;
	Mon, 18 May 2026 00:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779062542; cv=none; b=rOe4ke52PeE7BEKQy03WE3rSxirDFgUjig2UATsyIEVY/RxZeFcCQtJEHJZlbR+2fv6ZKYd3n5Co3OIOoQIUfLHmwxUeDXJnGac00eRvQLT+2SXQ+pKmnvVlhi2IR8fcyXlRZvD/nrnSrcxhKUL/nzsNUNRNNJquzmb+C3Y3kXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779062542; c=relaxed/simple;
	bh=+vdMM0FcJkTIg4Fn+vISqNFY+xMh4Wn90y1BWpGzstM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DSG3sNWrNXEnncvvN/F57StlegmxPeMC+5T97osgJ5hUAtfRziXLsFUCcv2u7xAjZqUj3q2/s5pzqjj1G7Vd5gGUWQWB2pPN+7Lmh8brW0TZ5cFW2m3HXnsCjdQqZyzvkRhDx4185Lnd2dhFdGQUki6Ho1/ocgkjyeRirbiB5Kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9WPQnoW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 985CBC2BCB0;
	Mon, 18 May 2026 00:02:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779062541;
	bh=+vdMM0FcJkTIg4Fn+vISqNFY+xMh4Wn90y1BWpGzstM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=X9WPQnoW440xO9OAbav4UQcCJWrApg8MrfGn4bD1u9fvyj8M7w2zpbsV1EoFOoseh
	 N7JR+LjXnZxIVhix4pNMc/bmkOUv4lnwZmiekZRaJJO6X3CrwsPlJbBzGpX5gAjY6U
	 QYjDIQ1NLMEjjuCY8hKGYlQBiU2RkKsJewV9yFpCa7Z7hf1tmjbP3eHt8s3C5bXIfh
	 PBk4KMg2jGOYqRhaqFzgEGWbtfNNrY9cSgMNU+bcDRZBEYc6qQYIpFW647/Rv31mcf
	 2/01iWu4PMu29wYcscu0S4pWpEKnaoPiZuGsViWryTo22l2D1WAPMpuPm8chCtYi02
	 T2alrbmNeSkjQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 3/5] arm64: dts: allwinner: a100: Add LRADC node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Sverdlin" <alexander.sverdlin@gmail.com>
Cc: conor+dt@kernel.org, linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260517234134.2737320-4-alexander.sverdlin@gmail.com>
References: <20260517234134.2737320-4-alexander.sverdlin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 00:02:21 +0000
Message-Id: <20260518000221.985CBC2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 3904F564764
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.77.95.208:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299066-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.77.94.64:email];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing SoC-specific compatible string for the LRADC device tree=
 node.
- [Low] Non-standard device tree node name 'lradc'.
--

commit 2888476527aa17fae679cf9ed23a85ccc8db7463
Author: Alexander Sverdlin <alexander.sverdlin@gmail.com>

arm64: dts: allwinner: a100: Add LRADC node

This commit adds the Low Rate ADC (LRADC) device tree node for the Allwinner
A100/A133 SoCs. The IP block is primarily used for key applications and
supports various operating modes.

> diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi b/arch/arm64/=
boot/dts/allwinner/sun50i-a100.dtsi
> index b3fb1e0ee796b..2bba13c5d25cd 100644
> --- a/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun50i-a100.dtsi
> @@ -466,6 +466,15 @@ ths: thermal-sensor@5070400 {
>  			#thermal-sensor-cells =3D <1>;
>  		};
> =20
> +		lradc: lradc@5070800 {

Could this node use a more generic name like adc@5070800 or keys@5070800?

Other device nodes in this file adhere to the generic naming convention
recommended by the Devicetree Specification.

> +			compatible =3D "allwinner,sun50i-r329-lradc";

Is the A100-specific compatible string missing from this node?

Other recent Allwinner SoCs utilizing this IP define their own specific
compatible alongside the fallback.

Would including an A100-specific string like "allwinner,sun50i-a100-lradc"
allow handling potential quirks without breaking backward compatibility?

> +			reg =3D <0x05070800 0x400>;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517234134.2737=
320-1-alexander.sverdlin@gmail.com?part=3D3

