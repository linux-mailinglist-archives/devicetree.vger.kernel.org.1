Return-Path: <devicetree+bounces-323276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VQdqO+UZT2pLagIAu9opvQ
	(envelope-from <devicetree+bounces-323276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 05:47:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A51F72C6CD
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 05:47:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bHnIQgWm;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323276-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323276-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2960314DA78
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 03:40:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA072397347;
	Thu,  9 Jul 2026 03:38:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB76238E8CA
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 03:38:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783568312; cv=none; b=Brt0mpMeSXKcaxWXhsZrNBGK7hhkwXny9Nlo3XvBiKnxjNvRt1A6DeOCv+DJdJQN+GBy3ODRnP+MWt0nBxGKrLriOHUOVsTMJz0x/V2LW2u9TuX8jzQBvugmWoUgNEWYcv93nxsJPvQwcg3h8Ue0HzpiqKeMOc9NAoy2tl7z0V8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783568312; c=relaxed/simple;
	bh=kEloHjmC+IytcCOuqZ0syj583967gUaFRBnasNS+roc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=a65itDYGUcClNPrKzsW126QV3FfCKwdmCzMa8ZqCaoAIx4mC9l4GxLhM2NRCg/jIcQlv5qW2q4rUznESnF1MRBkjfCOvSrwDvKqGssyx94pS51910FzO0fikazgwT+dscHz2gqmLc+fCwePq3qCmjqNsET6PYs9zYAr6kN9N2cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHnIQgWm; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 669391F000E9;
	Thu,  9 Jul 2026 03:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783568311;
	bh=5xw2NXP8gLC/6h3mrgb/z+e7e2QmwnP6KpdPeV7f1mw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bHnIQgWmG6BYYDfq188PYtH2A40UFKV2lgv7RWxYrJGiuLF2V+fBnsD4znTogo7Dd
	 o2Ks9CpU9ukza7AAB8ADd8k8my08kNznGcvHK+5vSSGo9NKKTAz7eHYuiISLsIEyk+
	 UF+h6pc23NlOeWCpNbjwGOEgFlIBNWUUzsH+KGc21ZdDPbgDxGqXLK1BnJhVGD6dYT
	 Vjmn7O1JGCm1Sa2+HuEwOZ1kZ2b8210vcZ/to2lTgZZ/eaDyN2E/F697j5j4hD5qHQ
	 4NwiGj06yE0R5iEGWX3+2QKwHVJW+/GdZnTe7R1V2wjoktI7w0xa9VKsESFSB1a28W
	 HBSfl9MNdO8BQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: amlogic: a9: Add IR controller
 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xianwei Zhao" <xianwei.zhao@amlogic.com>
Cc: conor+dt@kernel.org, robh@kernel.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org
In-Reply-To: <20260709-a9-ir-v2-2-42c21d7a6ffc@amlogic.com>
References: <20260709-a9-ir-v2-0-42c21d7a6ffc@amlogic.com>
 <20260709-a9-ir-v2-2-42c21d7a6ffc@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 03:38:29 +0000
Message-Id: <20260709033830.669391F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-323276-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,amlogic.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:xianwei.zhao@amlogic.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:linux-amlogic@lists.infradead.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A51F72C6CD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect indentation in the newly added `func-ir-in` DT node.
--

--- Patch [2]: [PATCH v2 2/2] arm64: dts: amlogic: a9: Add IR controller su=
pport ---
commit 170115242b4dcc46e2461f78dbc3a0882a8e80f1
Author: Xianwei Zhao <xianwei.zhao@amlogic.com>

arm64: dts: amlogic: a9: Add IR controller support

This commit adds the IR controller node for the Amlogic A9 SoC and describes
the remote input pin configuration. It also enables the IR controller on the
Amlogic A9 A311Y3 BY401 board with the appropriate pinctrl settings.

> diff --git a/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi b/arch/arm64/boo=
t/dts/amlogic/amlogic-a9.dtsi
> index b0e0fadeed820..aa89b31bfe30d 100644
> --- a/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi
> +++ b/arch/arm64/boot/dts/amlogic/amlogic-a9.dtsi
[ ... ]
> @@ -241,6 +241,13 @@ test_n: gpio@c0 {
>  					#gpio-cells =3D <2>;
>  					gpio-ranges =3D <&aobus_pinctrl 0 (AMLOGIC_GPIO_TEST_N<<8) 1>;
>  				};
> +
> +				func-ir-in {
> +						remote_input_ao_pins: group-remote-input-ao-pins {

[Severity: Low]
This isn't a bug, but does this indentation align with standard device tree
formatting? It looks like the remote_input_ao_pins node is indented with an
extra tab compared to the surrounding nodes and its own internal properties.

> +						pinmux =3D <AML_PINMUX(AMLOGIC_GPIO_D, 5, 1)>;
> +						bias-disable;
> +					};
> +				};
>  			};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-a9-ir-v2-0=
-42c21d7a6ffc@amlogic.com?part=3D2

