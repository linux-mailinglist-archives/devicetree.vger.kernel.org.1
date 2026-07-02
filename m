Return-Path: <devicetree+bounces-319526-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VeKkKL2wRmrEbgsAu9opvQ
	(envelope-from <devicetree+bounces-319526-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:41:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E8EE06FC324
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 20:41:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oNnJhEf1;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319526-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319526-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DF6823344B5B
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 18:06:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3B27388E5B;
	Thu,  2 Jul 2026 18:06:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9341B346FB3
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 18:06:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783015566; cv=none; b=IKV0tMAPN/3MgZasc0K0hRvsvHtUvw9jyE08HBKOl572NeJP/VLX+4r2DpXDIQm1VLBvDbJXXnI05j8+ZgHQOYW3httDvvwwDHZfp8RJoOTDftESPjUrVQidblYTfXCwPm9EXlMD9nvY0lHAnyQ6OChnDYg7MUlMnscmJJPahA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783015566; c=relaxed/simple;
	bh=HT10q5fJgKUMNXqN76EVpxpKgfEkOR4JDKG+bEvqtN8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=Fm/bxwfpGuOG+qHGm1+oQfJWxCTqG+ZPL5ApfV/8Jwd+tI8I0KjiGM9p0zSWSnitTws54kCrDP1AF0awTbscgRcEZDwPclqXpRVfXyss2cN7iZHC6qZHT8fDqEs5VHfejE59POpYhs84dsxOA1jBUejGpGG9sBP2Oqv5RciJpsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oNnJhEf1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 30F501F00A3A;
	Thu,  2 Jul 2026 18:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783015565;
	bh=I7u/cxqIiMW72vnkXw+uBzYYIkdogT/9JMpgEfrR2Ec=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oNnJhEf1/vO+eaowWC1Gh3HU6uaDcVnckhW4V4ysfvMqZCXaz/oaVxZREYZ93P8aU
	 9yBaergiGmuaOT/SSo/LSlh+HJhwhriPoEwATZ/6/JSV0FmAiIoxqLMkJ8JDDhqWRR
	 i81sMnxbsY0Wt0eQpuRHmt85bG6F4Iize9h243Z63lUJVE5SrCRmXhGrEQo1jUxrxO
	 +6LQuXWa7mjYMaA2oC81oHLZYrcsbhwxJypSrbHllte9ad8OA0zG7a2ttJhLp+XcPR
	 lScEY8W3PH136sCjeGZWiE8Smpq8JcrAu8m/HUWiqyU2gZCSV6fzdARbPz0krz34u1
	 wCtCnnafz5MKg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 05/15] dt-bindings: clock: mediatek: Add MT8189 clocks
Reply-To: sashiko-reviews@lists.linux.dev
To: "Louis-Alexis Eyraud" <louisalexis.eyraud@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260701-mt8189-clocks-system-base-v1-5-2b048feea50a@collabora.com>
References: <20260701-mt8189-clocks-system-base-v1-0-2b048feea50a@collabora.com>
 <20260701-mt8189-clocks-system-base-v1-5-2b048feea50a@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 18:06:04 +0000
Message-Id: <20260702180605.30F501F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319526-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:louisalexis.eyraud@collabora.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,vger.kernel.org:from_smtp,collabora.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E8EE06FC324

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `else` clause meant to disallow `#reset-cells` contains a ty=
po, specifying `reset-cells: false` instead of `'#reset-cells': false`.
- [Medium] The conditional blocks for `#clock-cells` and `#reset-cells` inc=
orrectly use `enum:` instead of `contains: enum:` to match the `compatible`=
 property.
--

commit 0801644b64f2bb225fa62c5b58a27baad9d2d00e
Author: Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>

dt-bindings: clock: mediatek: Add MT8189 clocks
   =20
Add dt schema and IDs for the clocks of MediaTek MT8189 SoC.
The MT8189 clock IP provide clock control for main system
(apmixedsys, topcksys and vlpcksys) and subsys (eg. peri, scp,
ufs...).
   =20
Also, add compatible for frequency hopping and spread spectrum clock
functionality and reset controller header file for MT8189 UFS reset
controller support.

> diff --git a/Documentation/devicetree/bindings/clock/mediatek,mt8186-cloc=
k.yaml b/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml
> index 84e602c7d3266..e30ed16f321d7 100644
> --- a/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml
> +++ b/Documentation/devicetree/bindings/clock/mediatek,mt8186-clock.yaml
[ ... ]
> @@ -145,6 +158,19 @@ allOf:
>              - mediatek,mt8188-vencsys
>              - mediatek,mt8188-wpesys
>              - mediatek,mt8188-wpesys-vpp0
> +            - mediatek,mt8189-dbg-ao
> +            - mediatek,mt8189-dem
> +            - mediatek,mt8189-dvfsrc-top
> +            - mediatek,mt8189-iic-wrap-e
> +            - mediatek,mt8189-iic-wrap-en
> +            - mediatek,mt8189-iic-wrap-s
> +            - mediatek,mt8189-iic-wrap-ws
> +            - mediatek,mt8189-scp-clk
> +            - mediatek,mt8189-scp-i2c-clk
> +            - mediatek,mt8189-ufscfg-ao
> +            - mediatek,mt8189-ufscfg-pdn
> +            - mediatek,mt8189-vlpcfg
> +            - mediatek,mt8189-vlpcfg-ao
>      then:
>        required:
>          - '#clock-cells'

[Severity: Medium]
Does the if condition for this block incorrectly use enum: instead of
contains: enum: to match the compatible property?

Because the device tree compatible property is an array of strings, enum:
will attempt to match the entire array against a single string, which fails.
This causes the schema to silently skip enforcing the required #clock-cells
property for the listed compatibles, including the newly added mt8189 varia=
nts.

[ ... ]
> @@ -163,6 +189,8 @@ allOf:
>              - mediatek,mt8188-imgsys1-dip-nr
>              - mediatek,mt8188-imgsys1-dip-top
>              - mediatek,mt8188-ipesys
> +            - mediatek,mt8189-ufscfg-ao
> +            - mediatek,mt8189-ufscfg-pdn
>      then:
>        required:
>          - '#reset-cells'

[Severity: Medium]
This block has the same matching issue for #reset-cells. Should this also u=
se
contains: enum: instead of enum:?

Additionally, looking just below this block at the else clause:

    else:
      properties:
        reset-cells: false

Is there a typo in the property name here? It specifies reset-cells: false
instead of '#reset-cells': false.

This allows schema validation to pass even if device nodes incorrectly defi=
ne
#reset-cells when they are not reset providers, because the constraint
targets a non-existent property.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701-mt8189-clo=
cks-system-base-v1-0-2b048feea50a@collabora.com?part=3D5

