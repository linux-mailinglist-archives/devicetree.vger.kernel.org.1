Return-Path: <devicetree+bounces-312734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hHxsKbcGMmqGtwUAu9opvQ
	(envelope-from <devicetree+bounces-312734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:30:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FC269622F
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 04:30:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=AauKwA7c;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312734-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312734-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 764CB30151A8
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 02:30:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15C2A2EDD40;
	Wed, 17 Jun 2026 02:30:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB29E2DCF45;
	Wed, 17 Jun 2026 02:30:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781663407; cv=none; b=mBsMABO2l+DSpJw07jwYpZM2/Jwg/FGWzWjdBvtepeI76LzDF6zbfHMSTHPsWqdkz0Y3Fn/o+vVI2RNga1dXBXI/XNRVDVF3dSUW+7Vb/6bkk9k0xgWz1aDR4O6CHUAvSewonTxsYIppGThQnKT3/6KN1CrCt4xZ5I3524HHGds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781663407; c=relaxed/simple;
	bh=GI+Q1G3oSoarLrOKE4bFbAyALBZMLwWPZjg5zK8Trc8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f2m3CHr9qnkLH1VHy+o80dxcU95V/6RbqEI0MtGl/4Wm8n7O4FHidz5zKhZmLn9MSFW5FnKA9KzU04sL5X7xBXXKmfwbKXV4pkI6qgSoi3ifVY/UbL9QmmmK7Emrr9y+LUgYs7aXu4kbIS+7OnxEKTUTVBJtV9bdWJvIdIJt7ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AauKwA7c; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5692C1F000E9;
	Wed, 17 Jun 2026 02:30:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781663405;
	bh=ZTSJ9iepdr64svjsCaE5LolI7ATuKISE2YZner16UK0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=AauKwA7cOlttIpcHtf51aEs4uJSb5e2WtlFjFTEAui5CBkkB+Mksz3WdxUsiEOw3+
	 LIG4dUpr3Ze46FxeSkcHeFebqURYQ5M5tJh3y2zwwjfdIKeberKvSgxRAsZK/fmy6o
	 Qt0d+7dMfpGbtCi1sRe663ZaCYqStCH/XCLpk179kjDVYYXd7/1xWCvWThUoZFA9Su
	 A1LczKeYn0Ei5ezWegmkaSlv/cXqyzjjC5ecUYJLJ44yFM81qNcTF9fr8BgdGz9SCM
	 e7tKEAO+qDZVha3Y8HDefPVi3MqFhcy9RxBGWrKdueciftGXWDFxDaxBgYOrwrcUqc
	 srWLtQEpgRwCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] ARM: dts: mediatek: mt8127: Add watchdog support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zakariya Hadrami via B4 Relay" <devnull+zkh1.proton.me@kernel.org>
Cc: robh@kernel.org, linux-watchdog@vger.kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-mt8127-amazon-ford-basic-v1-2-d02ad15ac359@proton.me>
References: <20260617-mt8127-amazon-ford-basic-v1-0-d02ad15ac359@proton.me>
 <20260617-mt8127-amazon-ford-basic-v1-2-d02ad15ac359@proton.me>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 17 Jun 2026 02:30:04 +0000
Message-Id: <20260617023005.5692C1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-312734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,proton.me:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+zkh1.proton.me@kernel.org,m:robh@kernel.org,m:linux-watchdog@vger.kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,zkh1.proton.me,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B5FC269622F

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Device tree nodes are not sorted by unit address.
--

commit 7452ca22e20f1d82f0774e2f81b86b3196a78313
Author: Zakariya Hadrami <zkh1@proton.me>
ARM: dts: mediatek: mt8127: Add watchdog support

This commit adds the watchdog node to the mt8127 device tree. It is
disabled by default since it was not present initially.

> diff --git a/arch/arm/boot/dts/mediatek/mt8127.dtsi b/arch/arm/boot/dts/m=
ediatek/mt8127.dtsi
> index bd61ec7e70c0c..1855dda42710f 100644
> --- a/arch/arm/boot/dts/mediatek/mt8127.dtsi
> +++ b/arch/arm/boot/dts/mediatek/mt8127.dtsi
> @@ -159,5 +159,12 @@ uart3: serial@11005000 {
>  			clocks =3D <&uart_clk>;
>  			status =3D "disabled";
>  		};
> +
> +		watchdog: watchdog@10007000 {

[Severity: Low]
Should this node be sorted by its unit address?=20

It looks like watchdog@10007000 is being placed after serial@11005000 at the
end of the soc node. Device tree styling conventions usually require sibling
nodes to be sorted in ascending order of their unit address, which would
place this earlier in the file (likely before timer@10008000).

> +			compatible =3D "mediatek,mt8127-wdt","mediatek,mt6589-wdt";
> +			reg =3D <0 0x10007000 0 0x100>;
> +			interrupts =3D <GIC_SPI 88 IRQ_TYPE_LEVEL_LOW>;
> +			status =3D "disabled";
> +		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-mt8127-ama=
zon-ford-basic-v1-0-d02ad15ac359@proton.me?part=3D2

