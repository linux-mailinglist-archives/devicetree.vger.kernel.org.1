Return-Path: <devicetree+bounces-325778-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 2fhQOoFNVWpXmgAAu9opvQ
	(envelope-from <devicetree+bounces-325778-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:41:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B6B274F1B1
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 22:41:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LG6o2J1K;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325778-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325778-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53E1C3010484
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 20:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 900E4357CE0;
	Mon, 13 Jul 2026 20:41:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC7F34C83C
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 20:41:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783975293; cv=none; b=lgQ2vMC69DdWdWr84CWELQSfv8CXoXVRVWkO5W3Im8iUdCS/oaNwFtC4drzdn+YGzXDk7Fo0In3ZfUP8d3gPOrgRA5jrvt8gC4r5Vru/xiTuuUYZo9WkFeBm2+K6O63NlgZ36I6EYeR6JTVNbFTzxYLBQsNsyU8bon0JR+hWDRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783975293; c=relaxed/simple;
	bh=hDw34zVvk19w5qHb9M9MAnt3oIrHDw+zR2/b6i4teVM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D7SMbDeNOAcUtoEwvqzhlVZG7pRHw+prDbQJN4YRNTkgfHquH9OlmolCrI0Lt41HAR530eLMI0xlczwhOhvwcAXC7wwJ3aqwCbqL8Ub3LMUBCfd5OgkHuZaAJfD+boKB8HNug9g8aSVRKag4CY/FyFjz1zsX1IbiAguB38CWOfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LG6o2J1K; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C58091F000E9;
	Mon, 13 Jul 2026 20:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783975292;
	bh=teZZEVclWNNYd7wtnW4Bey3Jh1JUF+6GQ1lGT3IKG7Q=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LG6o2J1KvVbOHSHkX/HyZvWucg/iNEXg8WimphMl2Z7lOcBPUzDnQjWFKw5+RQqE6
	 YA2Sl4Uymym5VBom9t9q0X/zyt2IlEpPGaDurR73vUdugr50Q5+iPqsj1G8lCIzdRx
	 G6zTu38Vj3bb8KEbRkjJm6rb/6h8nPzMw+BCJrDsSBnhoYDNTd/5In7YqzuY/LwOo0
	 HBtafR6aOi/MXJskp8yWY3ZHk2fmshSCd6aLUePDzy39t8EgXEFNWfmeheNI8z3jtY
	 z4+Q+mPpJ13z0dottnNHauS6ZZUWmIhiNrPCM/cx8wxsf+pkcsdMhLGaxOh4jRbkOB
	 UE56yPxndWogw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 11/12] arm64: dts: rockchip: rk3588s-nanopi-r6:
 refactor to support M6 boards
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joachim Eastwood" <joachim.eastwood@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260713-nanopi-m6-v3-11-227567ffc5dc@gmail.com>
References: <20260713-nanopi-m6-v3-0-227567ffc5dc@gmail.com>
 <20260713-nanopi-m6-v3-11-227567ffc5dc@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 20:41:31 +0000
Message-Id: <20260713204131.C58091F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325778-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joachim.eastwood@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:joachimeastwood@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4B6B274F1B1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Unintentional restoration of `regulator-boot-on` for `vdd_npu_s0=
` during refactoring.
- [Low] Dangling phandle reference `&vcc5v0_usb_otg0` in the common `.dtsi`=
 file.
--

--- Patch [11]: [PATCH v3 11/12] arm64: dts: rockchip: rk3588s-nanopi-r6: r=
efactor to support M6 boards ---
commit 056adff75ec08989b96f09adc0efff6c3a5d662f
Author: Joachim Eastwood <joachim.eastwood@gmail.com>

arm64: dts: rockchip: rk3588s-nanopi-r6: refactor to support M6 boards

FriendlyElec NanoPi6 series consists of four distinct boards; R6S, R6C,
M6 and M6V2. Refactor FriendlyElec NanoPi R6 base dtsi in preparation
for adding NanoPi M6 support.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm6=
4/boot/dts/rockchip/rk3588s-nanopi.dtsi
> new file mode 100644
> index 0000000000000..a8e532ad8b7a8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi

[ ... ]

> +&i2c2 {
> +	status =3D "okay";
> +
> +	vdd_npu_s0: regulator@42 {
> +		compatible =3D "rockchip,rk8602";
> +		reg =3D <0x42>;
> +		fcs,suspend-voltage-selector =3D <1>;
> +		regulator-name =3D "vdd_npu_s0";
> +		regulator-min-microvolt =3D <550000>;
> +		regulator-max-microvolt =3D <950000>;
> +		regulator-ramp-delay =3D <2300>;
> +		regulator-boot-on;

[Severity: Medium]
Is the addition of regulator-boot-on here intentional?

This appears to accidentally revert a prior fix that removed the boot-on
property for vdd_npu_s0 to save power during early boot.

> +		vin-supply =3D <&vcc5v0_sys>;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;
> +		};
> +	};
> +};

[ ... ]

> +&u2phy0_otg {
> +	phy-supply =3D <&vcc5v0_usb_otg0>;

[Severity: Low]
Does this create a dangling phandle reference in the common dtsi file?

Since the vcc5v0_usb_otg0 regulator was left in the board-specific
rk3588s-nanopi-r6.dtsi file, it looks like compiling a new board (like the =
M6)
that includes this common dtsi will fail to build if it doesn't also define=
 a
regulator with this exact label.

> +	status =3D "okay";
> +};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-nanopi-m6-=
v3-0-227567ffc5dc@gmail.com?part=3D11

