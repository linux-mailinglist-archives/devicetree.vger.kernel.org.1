Return-Path: <devicetree+bounces-299576-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CDVbAztJC2o7FQUAu9opvQ
	(envelope-from <devicetree+bounces-299576-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:15:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A1F571827
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 19:15:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0F0B4300D84F
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 17:10:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96E40376490;
	Mon, 18 May 2026 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="USV5QUc2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73C9B34F474;
	Mon, 18 May 2026 17:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779124256; cv=none; b=gkW32ZhawKfLJo9UXuxcm3ncRHQPhdLoM11PxSiCKBqi1TmZLY6ldOrQJoT3XGS9ru/zgtW/jJg9uVk+KZCKmmPp59IONq8ATS/O+G6Q3k+AbaaWlJKaWWGZ8z0f2XjT93gvBh7bkE24qJ6NVMMLdPctKjITPA9wIRpcqzRnyko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779124256; c=relaxed/simple;
	bh=nF/HU1fjnqUQnaZoipkFcCFRl4r0iGbfmYpcV7+Cd60=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=T94WxymuurW0cZ4CK+i2i1tOT7xDzyJBLIHhYEnX5+uc96aGNJuYnHB3wiCWJMXwwtZezH87LoXT7/3s0oZ9PZeRPOfSxgKXIV0JiDZ21isRJ/NNlIPTOLBstelTMSjvS2rE7GJ0PE/lEoY3QvlU4x0iske1JbGfmK1ZN8r6nu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=USV5QUc2; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8B9DC2BCB7;
	Mon, 18 May 2026 17:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779124256;
	bh=nF/HU1fjnqUQnaZoipkFcCFRl4r0iGbfmYpcV7+Cd60=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=USV5QUc2OEB1Q1Tsbmo+9M8sJSDHjK4k+q77wwWZAaYzchNXndPFW1zD8nxkTwd/G
	 hdJDtj5ao06XusriqbWwb466HyPTIUqlgCz2xQFk5zlyaDW3qNVpYd7yGJ0LqzckBO
	 ZXyOvkHeapJQ1n8MomD5jjooqCJK5PLY0DUsIznGZNo5ikFDK2FnUS7ZCkXmnASKv5
	 ebBC83WcfbWvZiCGasQ4qJa/twypYx0Nu1K5y6WhACwt2KFHiAbj84VddkpfpCh3WN
	 OZDSZ5KdmCYEuFhFlWr+Sin4aLq8QALrj9tbq50+tJyfbKSFwtmaOb8kHbBvLyx5lJ
	 qDE8Jt4j/IMcw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v9 9/9] ARM: dts: sun8i-a83t: Add BananaPi M3 OV8865
 camera overlay
Reply-To: sashiko-reviews@lists.linux.dev
To: "Paul Kocialkowski" <paulk@sys-base.io>
Cc: linux-sunxi@lists.linux.dev, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260518153339.619947-10-paulk@sys-base.io>
References: <20260518153339.619947-10-paulk@sys-base.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 17:10:55 +0000
Message-Id: <20260518171055.C8B9DC2BCB7@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299576-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 61A1F571827
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Fixed regulator node names do not match the required schema pattern.
--

commit 7dbfc9e619262f99c508e48d6adf246ddf875f69
Author: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

ARM: dts: sun8i-a83t: Add BananaPi M3 OV8865 camera overlay

This commit adds a device tree overlay supporting the OV8865 sensor on the
BananaPi Camera v3 peripheral board. It configures the fixed regulators,
clocks, and MIPI CSI-2 endpoints needed for the camera module.

> diff --git a/arch/arm/boot/dts/allwinner/sun8i-a83t-bananapi-m3-camera-ov=
8865.dtso b/arch/arm/boot/dts/allwinner/sun8i-a83t-bananapi-m3-camera-ov886=
5.dtso
> new file mode 100644
> index 0000000000000..4340ca73bfaaf
> --- /dev/null
> +++ b/arch/arm/boot/dts/allwinner/sun8i-a83t-bananapi-m3-camera-ov8865.dt=
so

[ ... ]

> +&{/} {
> +	/*
> +	 * These regulators actually have DLDO4 tied to their EN pin, which is
> +	 * described as input supply here for lack of a better representation.
> +	 * Their actual supply is PS, which is always-on.
> +	 */
> +
> +	ov8865_avdd: ov8865-avdd {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "ov8865-avdd";
> +		regulator-min-microvolt =3D <2800000>;
> +		regulator-max-microvolt =3D <2800000>;
> +		vin-supply =3D <&reg_dldo4>;
> +	};
> +
> +	ov8865_dovdd: ov8865-dovdd {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "ov8865-dovdd";
> +		regulator-min-microvolt =3D <2800000>;
> +		regulator-max-microvolt =3D <2800000>;
> +		vin-supply =3D <&reg_dldo4>;
> +	};
> +
> +	ov8865_dvdd: ov8865-dvdd {
> +		compatible =3D "regulator-fixed";
> +		regulator-name =3D "ov8865-dvdd";
> +		regulator-min-microvolt =3D <1200000>;
> +		regulator-max-microvolt =3D <1200000>;
> +		vin-supply =3D <&reg_dldo4>;
> +	};

This isn't a bug, but do these fixed regulator node names trigger device
tree schema validation warnings?

According to the fixed regulator binding schema, node names should match
the pattern ^regulator(-[0-9]+v[0-9]+|-[0-9a-z-]+)?$.=20

Using arbitrary names like ov8865-avdd falls back to an "Any name allowed"
clause in the schema that is marked as deprecated.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260518153339.6199=
47-1-paulk@sys-base.io?part=3D9

