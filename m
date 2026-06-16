Return-Path: <devicetree+bounces-312547-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xBQUBiFMMWr4gAUAu9opvQ
	(envelope-from <devicetree+bounces-312547-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:14:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E14C68FCBB
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 15:14:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bONSh5pF;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312547-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312547-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 191B13007B9A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 13:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0F0837649C;
	Tue, 16 Jun 2026 13:14:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF8036D4E4
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 13:14:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781615646; cv=none; b=RSg237QqS/S4zhICQdHjpqx2tC1A5BoitnlnmuoWnp3XHMsfybJ1WEx40BoTcUGO7qgGkx1fyqRdNi0eKwkNILU5pMVrs9IkZ7iTDqB9DsA1Pk8uUSpgQrW7EjPhdXZiuX+w2rtQB6t0cdvwsanUYlKgv4+7QfuRO+K3fvQaX/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781615646; c=relaxed/simple;
	bh=PBE/cyn9Z9vso2G57hxFEULu9p/RYA6uvv2xoD0duok=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ngzKTve/sTWW5qlWnmUQlVqUK9QpDjpWBh6CtjZyYH3EY0RWhXdTKneAuxQZSxqmOuz/dWFVB8OveRXPiRJ32FDrxDs6CHkrRDxSJ+6QWj2pyu6RAJgDwlF5DuJJ6xqUVO1/s++O6t0WcRU39D6BX7rcNyJAWZEkUvVNMF21hHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bONSh5pF; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 448371F000E9;
	Tue, 16 Jun 2026 13:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781615645;
	bh=2HEtjbWxHZrTbUwOM9Xq8+JazCgQfMjUHkr+pYYgjIM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bONSh5pFl7X9dx7bhwyTHrJ31TojgMWJz+KPEXlUtGaWvUGKQTjMqoHtaOM2E1uJw
	 +o/qUMCAlbpQ+t6jSF2/9MsJtqbBSSlAYe1pjArsUaa51JfXuECb9UDyzr/PXbiRso
	 smXtA8GLnzg3/mSU0W9TW4LTtkuxbuTFRkysXVtyGNKwygwyudpkmUFA6AWdYglzGd
	 yKCjr3CFU9PKHjQy9fnHOsv8odmch5sXxKlEITk2pQfafez0NQwNtwmYIgDABJfE+2
	 6+aiw3bn6ixfAlnmcmtzR7nQuH4lqYeMBnE0aEJ8qe8CV7w4fNNnUq5QOv4hBkQfIX
	 EnZf+aI7k/qVQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V2 1/3] arm64: dts: qcom: monaco: Move eMMC CQE support
 from SoC to board DT
Reply-To: sashiko-reviews@lists.linux.dev
To: "Monish Chunara" <monish.chunara@oss.qualcomm.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260616130347.3096034-2-monish.chunara@oss.qualcomm.com>
References: <20260616130347.3096034-2-monish.chunara@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 13:14:04 +0000
Message-Id: <20260616131405.448371F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312547-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:monish.chunara@oss.qualcomm.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sashiko.dev:url,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 9E14C68FCBB

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Incomplete genericization of `sdhc_1` leaves conflicting eMMC-spec=
ific properties in the SoC DT, breaking SD card compatibility.
- [Medium] Removing the `supports-cqe` property from the SoC-level `monaco.=
dtsi` without explicitly adding it back to all eMMC-based boards causes a s=
ilent performance regression by disabling Command Queue Engine (CQE) suppor=
t.
--

commit 05fd7920ab031fea94cd493a589a30892353cf08
Author: Monish Chunara <monish.chunara@oss.qualcomm.com>

arm64: dts: qcom: monaco: Move eMMC CQE support from SoC to board DT

This commit removes the supports-cqe property from the generic Monaco SoC
device tree and moves it to the qcs8300-ride board device tree. The stated
goal is to allow SD card compatibility in the base SoC definition, since the
Command Queue Engine conflicts with SD card operation.

> diff --git a/arch/arm64/boot/dts/qcom/monaco.dtsi b/arch/arm64/boot/dts/q=
com/monaco.dtsi
> index 7b1d57460f1e6..e5f316897706b 100644
> --- a/arch/arm64/boot/dts/qcom/monaco.dtsi
> +++ b/arch/arm64/boot/dts/qcom/monaco.dtsi
> @@ -4828,7 +4828,6 @@ &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
>  			qcom,dll-config =3D <0x000f64ee>;
>  			qcom,ddr-config =3D <0x80040868>;
>  			bus-width =3D <8>;
> -			supports-cqe;

[Severity: Medium]
Removing supports-cqe from the SoC DT without adding it back to all
eMMC-based boards appears to cause a performance regression by disabling the
Command Queue Engine for those boards.

For example, arch/arm64/boot/dts/qcom/monaco-monza-som.dtsi and
arch/arm64/boot/dts/qcom/monaco-evk.dts both configure sdhc_1 as an eMMC
device (using no-sd and non-removable). Since they rely on the SoC DT for
the supports-cqe property, won't omitting it from this patch silently degra=
de
their performance?

[Severity: High]
The commit message states the goal is to ensure the SoC definition remains
generic for SD card compatibility by removing supports-cqe. However, does
leaving the other eMMC-specific properties in the SoC DT defeat this purpos=
e?

Properties like bus-width =3D <8>, mmc-hs400-1_8v, mmc-hs400-enhanced-strob=
e,
qcom,dll-config, and qcom,ddr-config remain in the base monaco.dtsi. Since
device tree overlays do not automatically delete base boolean properties or
override tuning parameters unless explicitly redefined, won't these
incorrectly inherit to SD card configurations and cause the MMC core to
misconfigure the interface?

Should these properties be moved to the eMMC-specific board files as well?

>  			dma-coherent;
> =20
>  			mmc-ddr-1_8v;
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/=
dts/qcom/qcs8300-ride.dts
> index e9a8553a8d821..3090eba0317ac 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -719,6 +719,7 @@ &sdhc_1 {
>  	vmmc-supply =3D <&vreg_l8a>;
>  	vqmmc-supply =3D <&vreg_s4a>;
> =20
> +	supports-cqe;
>  	non-removable;
>  	no-sd;
>  	no-sdio;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616130347.3096=
034-1-monish.chunara@oss.qualcomm.com?part=3D1

