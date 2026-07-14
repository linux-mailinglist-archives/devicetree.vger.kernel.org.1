Return-Path: <devicetree+bounces-326025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id d2FdCLr2VWoZxAAAu9opvQ
	(envelope-from <devicetree+bounces-326025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:43:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 1674F75288B
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 10:43:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WzvhgkBs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326025-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-326025-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DA20830217FE
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 08:41:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6515C3F822A;
	Tue, 14 Jul 2026 08:41:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB5E3E9F95
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 08:41:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784018509; cv=none; b=uGFupffTtfPXSzNX0Eh+KzH2w8feEuXBGIaNOykN7j+zSMKZA49vaYI0GOWiYaL8UdM2Wxu8trlwRafTpxsJcvHe8zqrWWOhQvTIEDXkQHnVy8e7IFzDY+X3NnXR3FT4qr3eizRRHkp8YFlS7ujRKCZqoiqSGbxYwzFfsftgqNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784018509; c=relaxed/simple;
	bh=BRLGpqiMHO9di+iyrpc3GE7wsUgvcIxBQ5Cek3Lic5c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tx5gkmt9Xlqnv7zWrb2FllgPRaqX0iS9hZlKMT+8uWbop8lfagwBBgHJx6vZhsdTWt76da9AYkfqydkLY5MjET5CYqMv43VF8JdOb93eBVr3b6KiDSUKQ0acopvf8efu4yg2R9Mos39zwpObIF8DFNIlwkxSo1fVGsiGYGJevHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WzvhgkBs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36D541F000E9;
	Tue, 14 Jul 2026 08:41:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784018502;
	bh=lAr65BSD9qdDBH6oQuhsNjgxWWz5SnPW3g1cpwBnscE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WzvhgkBsFkHH/xebRoPCNiCTocbRKaCo60s7UDU7QrI7JIgMb8G97pOW2i1XfqLXg
	 FnVyG/d7qjEAJ6zUOpvRgVwTg2BDuwDU4n7KcSp69PSocmgPyYzqrccPOvyv80iTqn
	 ISEgCb8xH1cvTVVUjGmNT0cJjwu/f/tWv/YRJxdPkxCql9eZYWIr3CklCjSk+fzNra
	 J/XtUFzUw/t4VXvwpIxWFhKY8pieC+D1CaxsdO/TGZ9yFqa68jfMEUM4dw++o3oFAd
	 YNUg5fammYshjgsdAg/PVHFX8/2K0keDoEoN/p6hMb5PtTmyp6ARBpUkLqHMY+inE7
	 Wqe8/+rO2N9Aw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RESEND v6 2/2] arm64: dts: ti: Add audio overlay for
 k3-j721s2-evm
Reply-To: sashiko-reviews@lists.linux.dev
To: "Moteen Shah" <m-shah@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260714082206.501922-3-m-shah@ti.com>
References: <20260714082206.501922-1-m-shah@ti.com>
 <20260714082206.501922-3-m-shah@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 08:41:40 +0000
Message-Id: <20260714084142.36D541F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326025-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:m-shah@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,ti.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1674F75288B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [Medium] The commit message claims to 'Add GPIO hogs to route I2C3 lines =
and McASP serializers', but I2C3 routing is implemented using a dynamically=
 managed gpio-mux (mux-controller) rather than a static GPIO hog.

Pre-existing issues:
- [High] Adding the `mux-states` property to the `main_i2c3` node triggers =
a preexisting bug in the `i2c-omap` driver where the multiplexer control st=
ate is deselected twice on driver unbind, corrupting the multiplexer's sema=
phore lock.
--

--- Patch [2]: [PATCH RESEND v6 2/2] arm64: dts: ti: Add audio overlay for =
k3-j721s2-evm ---
commit b8739eb8a1b6fedb5e3ae2312559bc8686123be2
Author: Jayesh Choudhary <j-choudhary@ti.com>

arm64: dts: ti: Add audio overlay for k3-j721s2-evm

This patch adds a device tree overlay to enable analog audio support on the
J721S2-EVM. It configures the sound-card, audio codec, I2C3, and McASP4
along with their respective pinmux and signal routing settings.

> - Add GPIO hogs to route I2C3 lines and McASP serializers

[Severity: Medium]
Is this commit message description accurate for the I2C3 routing?

Looking at the added overlay, I2C3 routing is implemented using a
dynamically managed gpio-mux (mux-controller-2) rather than a static
GPIO hog.

> diff --git a/arch/arm64/boot/dts/ti/k3-j721s2-evm-audio.dtso b/arch/arm64=
/boot/dts/ti/k3-j721s2-evm-audio.dtso
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-j721s2-evm-audio.dtso
[ ... ]
> +&main_i2c3 {
> +	status =3D "okay";
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&main_i2c3_pins_default>;
> +	clock-frequency =3D <400000>;
> +	mux-states =3D <&i2c_mux 1>;

[Severity: High]
This is a pre-existing issue, but adding this property exposes a latent
double-deselect bug in the i2c-omap driver during unbind.

The devm_mux_state_get_optional_selected() API registers a devres action
that automatically calls mux_state_deselect(). However, the unbind path
explicitly calls it again:

drivers/i2c/busses/i2c-omap.c:omap_i2c_remove() {
	...
	if (omap->mux_state)
		mux_state_deselect(omap->mux_state);
	...
}

Because mux_control_deselect() unconditionally executes up(&mux->lock),
would this double deselect increment the binary semaphore past 1 and
break mutual exclusion for the multiplexer?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714082206.5019=
22-1-m-shah@ti.com?part=3D2

