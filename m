Return-Path: <devicetree+bounces-309723-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ksRNO0NIKWovTgMAu9opvQ
	(envelope-from <devicetree+bounces-309723-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:19:31 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B774668A9C
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:19:31 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kfQa8djy;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309723-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309723-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CF6023060335
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 968FF3093DB;
	Wed, 10 Jun 2026 11:19:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54DDE3624DE
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 11:19:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781090368; cv=none; b=hxtb0BVe+rgJbTKCJRpTtkQChdtfC/lvwIBtl2cqpX7jXuiYB+uqvUnIVmlvtpcjJoSHhW8ekTLts7cZLVa6fCW17sQKdUy4ekLVMVDz/w/9nL+ul276fUTVwVDtS3FGk8b7MTOsiuxCzk3p1h0oINFUpWU9bd0S5B9X6xHoh8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781090368; c=relaxed/simple;
	bh=D4pdTQ0M7OtzPCyF6Od/Q0aa3o2L1ktk1ypsgyrydRA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=TpR9DmwIfDGihe1VHLUvfQhChl7TFhtJNy/n1nEuJ3jUtGB4rXVzlYTWxbIGEFfINGSwTbw4IzgUWgb3zW06g1q2XjbQWJJuR+kE4evp7Hdis1Hs0IxUcNjOxpgqEHdayQQm9HVmxxwpHpU+ilmFRzNvrVghboKbdjXZhyEaUqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfQa8djy; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B596E1F00893;
	Wed, 10 Jun 2026 11:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781090367;
	bh=k8KbHJ8LO54nRskpwG0IjXtWB6ylJwaMU1w0EHunO2U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kfQa8djyC3glTg7ekzD/IUollSayklaF0rvK8BdB6OcJl2qHCb/szqDIf3umY28Aa
	 IR1ANRYMmioz27sU7qMlAtVu4+GbRvRw4ev/xqe9yGMd9KIWmxS0z2fZQFTjvdEUDW
	 /6Ax7oa2IVMee7KswOVQZdFFn3B3YsqrKINfFSKbInfneuKXWcIW5mqIV0gEg4fQLO
	 wj5apnYrIBt4M2eI40fjGsQpv5KQPpDpcOffHNxpZArADUU+pP97C+yaGeODmaht2U
	 GuPGjhFywkyTw9vSK1N+S2cxPktGSv56G1VHEThNUIe9pE2OIYHa0Qbl6CETuORWwv
	 EDHOgk5wW+KtQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/2] riscv: dts: sophgo: Add Milk-V Duo 256M board
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Yeh" <chenyou910331@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610111136.1514155-2-chenyou910331@gmail.com>
References: <20260610111136.1514155-2-chenyou910331@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 11:19:26 +0000
Message-Id: <20260610111926.B596E1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-309723-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:chenyou910331@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B774668A9C

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Low] The device tree references a non-existent `&porte` phandle, which w=
ill cause a fatal `dtc` compilation error.
- [Low] The device tree references a non-existent `&usb` phandle, which wil=
l cause a fatal `dtc` compilation error.
- [Low] An unnecessary trailing blank line is added to the Makefile.
--

commit 789d472cb56d573e2ba1106b883551407093dd43
Author: Chen-Yu Yeh <chenyou910331@gmail.com>

riscv: dts: sophgo: Add Milk-V Duo 256M board support

This commit adds basic device tree support for the Milk-V Duo 256M board,=20
based on the Sophgo SG2002 SoC. It configures the UART console, SD/MMC=20
controller, USB host, and a status LED.

> diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/so=
phgo/Makefile
> index 6f65526d4193b..e49c8233ae1ff 100644
> --- a/arch/riscv/boot/dts/sophgo/Makefile
> +++ b/arch/riscv/boot/dts/sophgo/Makefile
[ ... ]
> @@ -2,7 +2,9 @@
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D cv1800b-milkv-duo.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D cv1812h-huashan-pi.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2002-licheerv-nano-b.dtb
> +dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2002-milkv-duo256m.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2042-milkv-pioneer.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2042-evb-v1.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2042-evb-v2.dtb
>  dtb-$(CONFIG_ARCH_SOPHGO) +=3D sg2044-sophgo-srd3-10.dtb
> +

[Severity: Low]
This isn't a bug, but is this trailing blank line intended? It adds
unnecessary whitespace at the end of the Makefile.

> diff --git a/arch/riscv/boot/dts/sophgo/sg2002-milkv-duo256m.dts b/arch/r=
iscv/boot/dts/sophgo/sg2002-milkv-duo256m.dts
> new file mode 100644
> index 0000000000000..882fba441396b
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2002-milkv-duo256m.dts
[ ... ]
> +	leds {
> +		compatible =3D "gpio-leds";
> +
> +		led-blue {
> +			label =3D "milkv:blue:status";
> +			gpios =3D <&porte 2 GPIO_ACTIVE_HIGH>;

[Severity: Low]
Will this compile successfully? It appears the porte phandle is not yet
defined in the parent dtsi files, which would cause a fatal dtc compilation
error.

[ ... ]
> +&uart0 {
> +	pinctrl-0 =3D <&uart0_cfg>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +};
> +
> +&usb {
> +	dr_mode =3D "host";
> +	status =3D "okay";
> +};

[Severity: Low]
Similar to the porte phandle above, is the usb label defined in the
parent SoC dtsi files? Overriding an undefined label will also cause a
dtc build failure.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610111136.1514=
155-1-chenyou910331@gmail.com?part=3D2

