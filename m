Return-Path: <devicetree+bounces-300986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDbyBjRvDmq8+gUAu9opvQ
	(envelope-from <devicetree+bounces-300986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 04:34:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4D359E1CC
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 04:34:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D8793022941
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 02:34:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC7736F8FA;
	Thu, 21 May 2026 02:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OfBbA9fo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEB4931F9B8
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 02:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779330865; cv=none; b=dlWhqsysjbRmny/cOXoLR5r+ShHd0m08zYET8XpNNQOD6fNX6YrUZXhbtgNfDVSQq3L8UTWBf3nvk5oAk2J4kLmBZaWzJQpjvLxltjbTO5qDwOCFMTUqf1tTOd7+y681z/ahbvTC1lKKmV2V2PuZ9ANfiZZ9C6JwXplAJqIOJk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779330865; c=relaxed/simple;
	bh=z5gxcIhRp72LQP/SZDiLChYjW88hgxcuRdAWNflQm6w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qQ9nlxaMkRcRQtWBJOfPh0P59gXhzgnBZP5n88gRv7e+qzcS34B7NOxzH6tY6tuWXxq5icw92ZJadhGTDe66USAxrM1fDhNf+7cC9iRp1JbcMdq2H8arV85Wq5vttSlrw+bepABRDcqB/PFJQEkbYzCiy+YnnCyFSzTPd003USU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OfBbA9fo; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6B8031F000E9;
	Thu, 21 May 2026 02:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779330863;
	bh=2nLteigCSmtJyu5GpEZ64he2yZXeyBoQxJmJtpkFo3A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OfBbA9foz37nhRcwzkxOBiPhMcxZ4Eese9HDp3/ktEqQs+1vQgaMNQe1CHiOgv+g8
	 mchVY5IAXsTU9F7Uifyx24Un/3od7Manb+C4FTvbr6VB09ZWqqEymYuvbuBuRmPH+2
	 NGnj6myIL3WFS+z3kX20arnVVPliIkbOlZIwwjhgZWnXGmPNhuXP00yUehPxEkoGHv
	 +ih70OcjbMoPLTx9mL3eLQagOxJjQthswS8cBN/JKPTgaTBZZm0aekta8P2965RfGN
	 PnjrLVb69azDtRTaqAMf8svmPReB44XsJZbGu4EMnd5ey9Nao6KiE1Yzb64pYP2RvU
	 qQiptkIR1F1ZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] arm64: dts: ti: Add LincolnTech OLDI LCD-185 Overlay
 for AM625-BeaglePlay
Reply-To: sashiko-reviews@lists.linux.dev
To: "Swamil Jain" <s-jain1@ti.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260521020630.816220-1-s-jain1@ti.com>
References: <20260521020630.816220-1-s-jain1@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 02:34:23 +0000
Message-Id: <20260521023423.6B8031F000E9@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300986-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email,lists.linux.dev:replyto,sashiko.dev:url,5d:email,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 6D4D359E1CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing pin multiplexing configuration for the OLDI interface, cau=
sing display signals to not reach the physical pads.
- [Low] Incorrect indentation (spaces instead of tabs) for `pinctrl-0` assi=
gnment in the `touchscreen@5d` node.
--

commit e2feb337dbf24067c54227c036db263d92a14b0a
Author: Aradhya Bhatia <a-bhatia1@ti.com>

arm64: dts: ti: Add LincolnTech OLDI LCD-185 Overlay for AM625-BeaglePlay

This commit adds a device tree overlay for the Lincoln Technology Solutions
LCD185-101CT panel on the AM625-BeaglePlay platform. The panel is a dual-li=
nk
LVDS display supporting WUXGA resolution with a Goodix i2c touch controller.

> diff --git a/arch/arm64/boot/dts/ti/k3-am625-beagleplay-lincolntech-lcd18=
5-panel.dtso b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-lincolntech-lcd18=
5-panel.dtso
> new file mode 100644
> index 0000000000000..e7cadd48d4391
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-beagleplay-lincolntech-lcd185-panel=
.dtso
[ ... ]
> +&oldi0 {
> +	status =3D "okay";
> +	ti,companion-oldi =3D <&oldi1>;
> +};
> +
> +&oldi1 {
> +	status =3D "okay";
> +	ti,secondary-oldi;
> +	ti,companion-oldi =3D <&oldi0>;
> +};

[Severity: High]
The overlay enables the dual-link OLDI interface but does not define or ass=
ign
any pinctrl properties for the OLDI data and clock pins.

Since the base k3-am625-beagleplay.dts does not configure these pins, won't
they remain in their default reset state?

Relying on the bootloader for kernel device tree pin multiplexing can lead
to the display signals failing to reach the physical pads if the bootloader
does not configure them.

[ ... ]
> +	touchscreen@5d {
> +		compatible =3D "goodix,gt928";
> +		reg =3D <0x5d>;
> +		pinctrl-names =3D "default";
> +	        pinctrl-0 =3D <&touchscreen_pins_default>;

[Severity: Low]
This isn't a bug, but this line uses spaces for indentation instead of tabs.

> +		interrupt-parent =3D <&main_gpio0>;
> +		interrupts =3D <39 IRQ_TYPE_EDGE_FALLING>;
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521020630.8162=
20-1-s-jain1@ti.com?part=3D1

