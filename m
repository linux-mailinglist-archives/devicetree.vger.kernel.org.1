Return-Path: <devicetree+bounces-314034-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id rOCGMLP0NmoWHAcAu9opvQ
	(envelope-from <devicetree+bounces-314034-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:14:43 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34FE16A9AA8
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 22:14:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=joo94QOs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314034-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314034-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1F4F3300E3DB
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2026 20:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76D3F368D66;
	Sat, 20 Jun 2026 20:14:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A9232F0C79;
	Sat, 20 Jun 2026 20:14:40 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781986481; cv=none; b=hYxM1Dopu5LGu+FQUoeiMs832nwfQcqbm9mEDQKHYNLURts75uF4F39pyjC9JoSmJgR8sYNqtErH7IpCOPFt3abY+08p19MLRgGgGoppYvIvmuAvSm4OWCQz+E8MyMMJLR9V5CZBIXnb343o4hlwgYjeJ4dD983o6YJ6ibvfyvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781986481; c=relaxed/simple;
	bh=F+EN5Y3nKzy6JWDkS+yuDu3549N3lJQvlvk/K3YeMLs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZBF5PWgFxE73YHKPqNJlG88xOEQpvSqZkm4e73epjwudO200lhvLo86UrMDdP/eISjNY5dmHmQwvJvNS+ToRjMLVGm0svGXu9/WLxeddVtNTP2grmJilAd198W2dpW9S1sX1T+dopmVwR9hN6S5H8XqrCX6oz2YpG0bihg8+EV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=joo94QOs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B7FE11F000E9;
	Sat, 20 Jun 2026 20:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781986480;
	bh=ZhubLF7WcHBRFO0mFVHeOIbcfKIuhljCVHmOrYd+EJo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=joo94QOs6N9f98PbWcqQCgNFKnQmsTXtwcrROw1k4YX2F1hZlIFBFVuGObbhBMptS
	 +b8UfEbucp8NFPD5wvMBqe/1djb4+XaAiH0B4gqkaVwmaIF9Xk2lim13NRduWNvPLH
	 rBF33D/BrgSrGworE21HPdOy04Te183UZZWNIeplFyFybT6sOrrs+qmm+YgSW+FnCI
	 OJ7PZmpDJhBYHh4KwZ2GTJ0rCvi7vIc3EHg37uW/qLmzM48FIp3uaq+qqutjsQDmbb
	 ZzY+0UQ39i3p4h5Jk8CoRSa7rTdX9AsCe6Kd14J0E8N/a7Tdd/ZkYdVM6XcseDzWeL
	 dimA8YVLeQYwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/9] dt-bindings: mfd: mt6397: Add MT6392 PMIC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Luca Leonardo Scorcia" <l.scorcia@gmail.com>
Cc: conor+dt@kernel.org, linux-input@vger.kernel.org, robh@kernel.org, dmitry.torokhov@gmail.com, devicetree@vger.kernel.org
In-Reply-To: <20260620200032.334192-2-l.scorcia@gmail.com>
References: <20260620200032.334192-1-l.scorcia@gmail.com>
 <20260620200032.334192-2-l.scorcia@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 20 Jun 2026 20:14:39 +0000
Message-Id: <20260620201439.B7FE11F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:l.scorcia@gmail.com,m:conor+dt@kernel.org,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:dmitry.torokhov@gmail.com,m:devicetree@vger.kernel.org,m:lscorcia@gmail.com,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-314034-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 34FE16A9AA8

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing required header for input macros in device tree example
--

commit 17d3dfc19cdb75b35edbf6c7f6fe9a12ac08651b
Author: Luca Leonardo Scorcia <l.scorcia@gmail.com>

dt-bindings: mfd: mt6397: Add MT6392 PMIC

Describe the MT6392 PMIC and its RTC and regulator devices. This device
is mostly based on MT6323 with some similarities to MT6397 and is usually
found on boards using the MT8516/MT8167 SoC.

> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> index 3cbc0dc12c319..927df823d640b 100644
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml

[ ... ]

> @@ -663,3 +672,68 @@ examples:
>              compatible =3D "mediatek,mt6397-rtc";
>          };
>      };
> +
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    pmic {
> +        compatible =3D "mediatek,mt6392", "mediatek,mt6323";
> +
> +        interrupts-extended =3D <&pio 28 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells =3D <2>;
> +
> +        keys {
> +          compatible =3D "mediatek,mt6392-keys";
> +
> +          key-power {
> +            linux,keycodes =3D <KEY_POWER>;

[Severity: Low]
Does this example miss the <dt-bindings/input/input.h> include for the
KEY_POWER and KEY_HOME macros?

Although the dt_binding_check tooling extracts and concatenates all examples
into a single file (meaning it will inadvertently compile successfully beca=
use
a previous example includes the header), omitting the header in this specif=
ic
standalone example block might cause compilation failures if copied by
developers for standalone use.

> +            wakeup-source;
> +          };
> +
> +          key-home {
> +            linux,keycodes =3D <KEY_HOME>;
> +            wakeup-source;
> +          };

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260620200032.3341=
92-1-l.scorcia@gmail.com?part=3D1

