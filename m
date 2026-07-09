Return-Path: <devicetree+bounces-323455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xphpEPBeT2p2fQIAu9opvQ
	(envelope-from <devicetree+bounces-323455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:42:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 840E572E69A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 10:42:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NcxAmuWJ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323455-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323455-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CB9573014135
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 08:35:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1511C3F0AA4;
	Thu,  9 Jul 2026 08:35:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E88E53F0AB8
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 08:35:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783586151; cv=none; b=RklSdgip89rWSdZNDcr/fgtiPEw3eIhw9JUHk7Sn+ncraHd2j5eWdZtwQE4CX+iE7PFvvKU4bEN6DgyqImuVFHaN1fVZrTALwXSxnjLJb95LYlQJvp7NcQVO59houO10zuMVkllO8AnenNUXSL/3y9vcGwx4EpOZJdKHv7LRxHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783586151; c=relaxed/simple;
	bh=cRv+7ONcpi/eNJpNZ75QXQQ7JvHQwcsxRQFxMTCl3qI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=IUWFgYxhxGSWvi1O8q96X7bp/GzpTFkNzhTDLO8JPtwDkT5Qv5GaE9Gy2ZA0G6lEhHQ7M0xtCc+FHpzltYkzGyCy3CrA0gGZ3swyRYWO1gyDeIcz1sKLVrrCUyjvxCZwg6AeROq7wMOTGBxVrBEgDJwdcsC+/BgVxbXtw1G564Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NcxAmuWJ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 403D61F000E9;
	Thu,  9 Jul 2026 08:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783586150;
	bh=idAOatRzGXp+QemK2en22gUSP+GVJMTDmEsRhDWMKL8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NcxAmuWJbwJV07VmQIEv/UVRmlMcnUkR2aOviXR0/FKq45xuXTgKRNBFr6BohejvI
	 abQYbh3qsNyqXYkPUlyCgjLty1dEhyC4HqgE3uRa/AxTlmTeP9ujd/cD32w1wl7KhT
	 RqOqyTjqRYeFqa5jjElr6n831dGXA0QnZrJcvjvQHPHZf9r5gWdStGC1PbckqZ5t3A
	 5hpYOCIjozS6GpEkWElAee0Nh2dRJwin+4vVOw6+IJPIExm5Rm0MCoiTQDQ2j2fFmh
	 Kbo2tYx0RtQsTDH5YYC7ixi368dkFZsvGu66ZpHGtpG1YSdKHU/3DQyq61DiVQPElg
	 Noh1LE40X6UGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/3] arm64: dts: amlogic: a9: Add reset controller
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xianwei Zhao" <xianwei.zhao@amlogic.com>
Cc: conor+dt@kernel.org, robh@kernel.org, linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260709-a9-reset-v1-3-fd7cf039b853@amlogic.com>
References: <20260709-a9-reset-v1-0-fd7cf039b853@amlogic.com>
 <20260709-a9-reset-v1-3-fd7cf039b853@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 08:35:49 +0000
Message-Id: <20260709083550.403D61F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323455-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[amlogic.com:email,smtp.kernel.org:mid,vger.kernel.org:from_smtp,sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xianwei.zhao@amlogic.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-amlogic@lists.infradead.org,m:devicetree@vger.kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 840E572E69A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The AO reset controller node uses a non-generic name 'ao-reset-cont=
roller@2000' which fails standard schema validation.
--

--- Patch [3]: [PATCH 3/3] arm64: dts: amlogic: a9: Add reset controller su=
pport ---
commit 0f045fcc683de25785c6ca1a6df4d983c07bc9b4
Author: Xianwei Zhao <xianwei.zhao@amlogic.com>

arm64: dts: amlogic: a9: Add reset controller support

This commit adds reset controller descriptions for the Amlogic A9 SoC.
It includes the corresponding reset IDs header and device tree nodes for
both the main and ao reset controllers.

[ ... ]

> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi b/arch/arm64/boo=
t/dts/amlogic/amlogic-a9.dtsi
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi

[ ... ]

> @@ -204,6 +212,12 @@ aobus: bus@ffa00000 {
>  			#size-cells =3D <2>;
>  			ranges =3D <0x0 0x0 0x0 0xffa00000 0x0 0x100000>;
> =20
> +			ao_reset: ao-reset-controller@2000 {

[Severity: Low]
Could this node use the generic name reset-controller@2000 instead? Standard
device tree schema validation expects reset controllers to match the generic
pattern ^reset-controller(@.*)?$. Using ao-reset-controller@2000 will likely
trigger a validation warning when running make dtbs_check.

> +				compatible =3D "amlogic,a9-ao-reset";
> +				reg =3D <0x0 0x2000 0x0 0xc>;
> +				#reset-cells =3D <1>;
> +			};
> +
>  			aobus_pinctrl: pinctrl@4000 {
>  				compatible =3D "amlogic,pinctrl-a9";
>  				#address-cells =3D <2>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-a9-reset-v=
1-0-fd7cf039b853@amlogic.com?part=3D3

