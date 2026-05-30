Return-Path: <devicetree+bounces-304728-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cE1+KO0jG2rO/QgAu9opvQ
	(envelope-from <devicetree+bounces-304728-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 19:52:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F33246108FF
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 19:52:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7FF0A301466B
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 17:46:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29468351C2F;
	Sat, 30 May 2026 17:46:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UxmAi2xO"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272AD3AB482
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 17:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780163169; cv=none; b=IeSkOljwxy7icBxeU4RGq8n04D1pggmq+LOvvE+FFiQbw0ZvJ5nOs4GOUL4Ad4j6bP1p1ATL0pTjMkbUceN1da+tOzSAJFniGQHfvNbMyouGJuB/0o86If8hmJ4XESpaP5mHZUWZViDnl0fJz4mSqcrdsnywgKhTXn7o60VToGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780163169; c=relaxed/simple;
	bh=UOuQrPTmH+s4+UrMogh2qBK6J7N2chfgdwA7SeCyTBg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=thxsrLe8pvnuHQLDoGaXuwihGtra1m3mTjqVCEgvpuX0Ist2b3jaZMQSCi7BgkYKMLffKOE5w63lh2TuSF0ubeRhfur+zJOm6MafLJkYivEMDmwJ0jNujI7y37cEtPCHK2pSIZOHoeixx+i6xxnNhaz9QRSOb0fXA7tvVY3rAhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxmAi2xO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BE5AD1F00893;
	Sat, 30 May 2026 17:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780163168;
	bh=hhNKpfIopQbnQGWcr1jZLOhw5byzac0k/fu2j6DrRjc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UxmAi2xOJri/i5ww0UP92JPDsDFmpMiQKPNflJCyYHrK5mlYhtwxBrh2b1jG9HIjB
	 2MXgjdF9WHodCl2dLSo4MCXIPx5MprW45TzDfh2N6L1esH8unKluOsvmyMwYcZxm7D
	 B1t83ucQ8TeMUC5EqJ4DCmvV6w0nUh93Nj/FpiVje/FIe26/xddqb6e+gSrl5TJdvK
	 qK7aAeF1PlC/cQh3B498EQAQT3uewFzgdiBhUSEh59NYwlefVCX7cRu+loKyqbFyd9
	 BpLpsrEEMwJucQJHU1DwQfNfYhQrcbjOPqSgpSoa+My1DodbCYECBJISn7ms0anH68
	 kCU0GChtP6y4g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 RESEND 2/5] arm64: dts: sophgo: add initial Milk-V
 Duo S board support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joshua Milas" <josh.milas@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260530173347.33533-3-josh.milas@gmail.com>
References: <20260530173347.33533-3-josh.milas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 17:46:07 +0000
Message-Id: <20260530174607.BE5AD1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304728-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: F33246108FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree enables several hardware peripherals (emmc, gmac=
0, i2c4, mdio, sdhci0, sdhci1, spi3, uart0) without defining or assigning t=
heir required pinctrl configurations.
--

commit 562d6189b640dfe9eda31b9948bcc49d22497758
Author: Joshua Milas <josh.milas@gmail.com>

arm64: dts: sophgo: add initial Milk-V Duo S board support

Adds initial arm64 support for the Milk-V Duo S board making it possible
to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

> diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm=
64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> new file mode 100644
> index 0000000000000..8632470f43ab0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts

[ ... ]

> +&dmac {
> +	status =3D "okay";
> +};
> +
> +&emmc {
> +	bus-width =3D <4>;
> +	no-1-8-v;
> +	cap-mmc-hw-reset;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	status =3D "okay";
> +};

[Severity: Medium]
Should these hardware peripherals have their pinctrl configurations defined?

Several nodes are enabled here (emmc, gmac0, i2c4, mdio, sdhci0, sdhci1,
spi3, uart0) without pinctrl-0 and pinctrl-names properties assigned.

Without these properties, the kernel will not initialize the pin
multiplexing and relies entirely on the bootloader to have set up the
pinmux correctly.

If the bootloader behavior changes, or if a driver attempts to manage power
states by suspending and resuming the device, these peripherals might fail
to function.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530173347.3353=
3-1-josh.milas@gmail.com?part=3D2

