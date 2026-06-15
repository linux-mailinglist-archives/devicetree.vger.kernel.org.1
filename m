Return-Path: <devicetree+bounces-311909-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nOHVKzXtL2qoJAUAu9opvQ
	(envelope-from <devicetree+bounces-311909-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:16:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1704468615B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 14:16:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=cCzNE1j+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311909-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311909-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7979D3023A5C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 12:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 657EF379C33;
	Mon, 15 Jun 2026 12:14:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF4D3914F0
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 12:14:52 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781525693; cv=none; b=nmiJvz+iq4rXeY/fPii2rGSXjZhbeI9DK+T0vPFBxVVayQDjZSdlaga/rjr7j+8qgmCmlz3iPrtrp2+Dd4cT8tnhNMULaoJVfXr2j+3QylWO3dSstQ/x0lv+Vm7UW/OJO4viCJ7A/THFvx6RV2nVqigjN41VQxJSgPVmG3k2on8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781525693; c=relaxed/simple;
	bh=FdLuSSHZkVWcZjabLtDOD/nDtljDgpaZ26CfHTFgG7s=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RN+5LSHpvsry5Dp19MH3OXFsn6M1fksZoW6OLMO7sNT3rR36XCPiyfZ7dqGY0nT/rpe6ryWCaH1d0eIQYw3Hr0dprIPimSJwG3oFgG2EGFWbrk20Mxa5e6qmP+BaRMSrykELVAW8nbqzTiAsZgh7y5jl0Cx1Yz469ovd1hfCmD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCzNE1j+; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D41BF1F000E9;
	Mon, 15 Jun 2026 12:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781525692;
	bh=uc+DsrAyS8DeARVhBUxBve2rQ30R+zAM1yEBT5wLam0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=cCzNE1j+lCqv0QyQnv17cmZuYhxmts4J1JW6A6JUzgRfOIz1oJd9ww/FJ8IoGOTNp
	 3SAcuVQG4/t9iMWTp8c6d81ztI4Cq5/eXebv0dbrNEsBbPXVPw00P2rUh+NDj+2E11
	 Ph/0pLysTrldH5fBtW0rCrLafJcDgRFDaU4mRitRksx/Iyn2euYS0hATMtp0vCs4yO
	 NquQwD3jb7gA977d9ZM1Zx2tyA/ddLe7MjEPLbNSMwglkm7ETSAGeexQ4326NmcrUi
	 4D80k/epT5XTiNa/QeE/t+hBUMZqYID+rabmCGxqKyci+VDLfwizEN05bhWZZfYker
	 wExozssaAYcnQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 3/3] riscv64: dts: sophgo: add initial Milk-V Duo S
 board support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joshua Milas" <josh.milas@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615120324.1527881-4-josh.milas@gmail.com>
References: <20260615120324.1527881-4-josh.milas@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 12:14:51 +0000
Message-Id: <20260615121451.D41BF1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311909-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:josh.milas@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:joshmilas@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,milkv.io:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1704468615B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Contradictory eMMC voltage configuration artificially restricts =
eMMC speed capabilities
--

commit 9d652e59c7623b46a5dd7a0a5954061467e5aea7
Author: Joshua Milas <josh.milas@gmail.com>

riscv64: dts: sophgo: add initial Milk-V Duo S board support

This adds initial riscv support for the Milk-V Duo S board
making it possible to boot Linux to the command line.

Link: https://milkv.io/duo-s [1]

> diff --git a/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/ris=
cv/boot/dts/sophgo/sg2000-milkv-duo-s.dts
> new file mode 100644
> index 0000000000000..f56bfddeacc40
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2000-milkv-duo-s.dts

[ ... ]

> +&pinctrl {
> +	emmc_cfg: emmc-cfg {
> +		emmc-rstn-pins {
> +			pinmux =3D <PINMUX(PIN_EMMC_RSTN, 0)>;
> +			bias-pull-up;
> +			drive-strength-microamp =3D <10800>;
> +			power-source =3D <1800>;
> +		};

[ ... ]

> +&emmc {
> +	bus-width =3D <4>;
> +	no-1-8-v;

[Severity: Medium]
Is this contradictory eMMC voltage configuration intentional?

The pinctrl node emmc_cfg explicitly configures the eMMC pins to
operate at 1.8V (power-source =3D <1800>), but the &emmc node here
specifies the no-1-8-v property.

Since the hardware pads are physically configured for 1.8V, the interface
actually does support 1.8V signaling. Specifying no-1-8-v here artificially
restricts the eMMC to legacy, slower modes instead of negotiating
faster modes like HS200.

> +	cap-mmc-hw-reset;
> +	no-sd;
> +	no-sdio;
> +	non-removable;
> +	pinctrl-0 =3D <&emmc_cfg>;
> +	pinctrl-names =3D "default";
> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615120324.1527=
881-1-josh.milas@gmail.com?part=3D3

