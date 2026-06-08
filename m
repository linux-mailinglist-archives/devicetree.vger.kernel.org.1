Return-Path: <devicetree+bounces-307981-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id roltM7VIJmqAUQIAu9opvQ
	(envelope-from <devicetree+bounces-307981-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 06:44:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD5A6529F7
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 06:44:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b6mg0bkt;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307981-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307981-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 48741300AEE9
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 04:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42DCB34EF11;
	Mon,  8 Jun 2026 04:44:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBDF0134CF
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 04:44:32 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780893874; cv=none; b=YoADYHSvTLrFmc+/5sSUsy8n+xSESFUODXY9iVKTkdaORo9r6B2/Wi7vc5+ilAF6yqiXWWeu0Pm1kAD70eg87LqsRrqr4Sl4capk3aJ6B9ZQvgSEH2XSisdPQR7/gAmRVvlwf4UQ3pe7BLwsXP69Sfb8auziLMrZ/TbZiFsnmN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780893874; c=relaxed/simple;
	bh=7h0T3CboW2ugI58WbOY0+g4e+4gDR53zpFUkOKa6mCo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QnYYy1AcXuTesvv/nLOhic74YFHGUbIcE9HL6pcZnJEA5pIM5/HK1LAHplFjAAtJwWT15CZkFaCCez9uUNf4Ar6XK8iBxVdG9j9r3Wm3Mwf4bmrute+cpQsghXtBSsVuHZlwwoSPHwu9G4jaCEWEh5a2EOXWJys4XYoSJGyiE60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6mg0bkt; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4360C1F00893;
	Mon,  8 Jun 2026 04:44:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780893872;
	bh=8UE6+iN+FAPEJBsTAlOS9VQZmkDWg1BrZCcG6elw5FU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b6mg0bktJzu0I3sXDHrjvqz021DZtnv6RT/kmV4A+GAzWbJ56C41BNXqlzUoFz9qH
	 E2wV/Bha2aU0eAo+B4TGzYuuMXdoWojbhjtzbkSOKD/wJzqWNBCLtUPnwlv5ofH0I4
	 dTN8kbMvYTEXuBksoLiiMVaxr8hAdoaIrlDGTWdn1x1zs2JFTwejS7wD06b24CTuvJ
	 aW4N7Fe8iuGgS/Q6jl284Q1HfaJKPXEeCYVhUPylWXPLdwm4QxgK9HKdYEw75O3PTD
	 Ky80gI+Q3KX4uAiDWfgjIWU6M1Wtrh7bPLv8VyD++UWTwnt9s6YZ7Nj0hi3vr5Gheo
	 S9Vw6qSED5AWw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: qcom,q6apm-lpass-dais:
 Document DAI subnode
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mohammad Rafi Shaik" <mohammad.rafi.shaik@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608023011.942228-2-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20260608023011.942228-2-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 04:44:31 +0000
Message-Id: <20260608044432.4360C1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307981-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mohammad.rafi.shaik@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,qualcomm.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3FD5A6529F7

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The schema uses an invalid regex `^dai@[0-9]+$` that rejects valid =
hex unit addresses containing `a-f`, and the example incorrectly uses the d=
ecimal unit address `dai@16` instead of the expected hexadecimal `dai@10`.
- [Low] The `clock-names` and `clocks` properties define a strictly ordered=
 array sequence, preventing developers from defining subsets of clocks (e.g=
., omitting `bclk` while supplying `eclk`).
--

commit 3b274d792c2aeffee37c0e3a9b1930eed072c203
Author: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>

ASoC: dt-bindings: qcom,q6apm-lpass-dais: Document DAI subnode

This commit extends the qcom,q6apm-lpass-dais device tree binding to
explicitly describe DAI child nodes. It adds address and size cells,
along with a dai pattern property to define interface IDs and clocks.

> diff --git a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dai=
s.yaml b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> index 2fb95544db8b5..4c4c73778e238 100644
> --- a/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,q6apm-lpass-dais.yaml
[ ... ]
> +# Digital Audio Interfaces
> +patternProperties:
> +  '^dai@[0-9]+$':

[Severity: Low]
Does this regex pattern incorrectly block valid hexadecimal device tree unit
addresses?

Device tree unit addresses are typically expected to be lowercase
hexadecimal. This pattern rejects valid hex addresses containing alphabetic=
al
characters like a-f.

> +    type: object
> +    description:
> +      Q6DSP Digital Audio Interfaces.
[ ... ]
> +      clock-names:
> +        minItems: 1
> +        items:
> +          - const: mclk
> +          - const: bclk
> +          - const: eclk

[Severity: Low]
By using a strict array sequence here, does this prevent developers from
defining flexible clock subsets?

The driver retrieves clocks individually by name and appears to handle
omitted clocks gracefully. If a hardware design omits bclk but uses eclk,
this strict sequence constraint would cause schema validation to fail.

[ ... ]
>  examples:
>    - |
> +    #include <dt-bindings/sound/qcom,q6afe.h>
> +
>      dais {
>          compatible =3D "qcom,q6apm-lpass-dais";
>          #sound-dai-cells =3D <1>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        dai@16 {
> +           reg =3D <PRIMARY_MI2S_RX>;

[Severity: Low]
Should this example use a hexadecimal unit address instead of decimal?

PRIMARY_MI2S_RX evaluates to decimal 16, which means the unit address
should be formatted as dai@10 to match the reg property and avoid
unit_address_vs_reg warnings during dtc checks.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608023011.9422=
28-1-mohammad.rafi.shaik@oss.qualcomm.com?part=3D1

