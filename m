Return-Path: <devicetree+bounces-297293-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EAprKqRMBWoIUgIAu9opvQ
	(envelope-from <devicetree+bounces-297293-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:16:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A96753D9C6
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 06:16:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 713B8304D268
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:15:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13F0E3A8759;
	Thu, 14 May 2026 04:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xl9EstBj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E597A35E952
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 04:15:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778732106; cv=none; b=Y+UAVat76MNLFimXMXYHQ8m55YPWItz3nErS8xTI6Y0xaXxNu+zk2YkbjhVsiuv9TrcYirFwFkL5PLRfEOWEjz5EeRleXAKYo4GTID1m61lFM4i4JK5qHbrBEB6/lqqXUa7IE2/UcG6eQ//rQsBbE+GFO0F+eyoPXC5+JREfLG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778732106; c=relaxed/simple;
	bh=SgFoT9A5AIjh/MyKN4pGQELt/AGGtOnhU1aeQ7Ornzw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=p57c78miBL5p/Y/BvSJJ1jr9JneKy9LYXhJ3vhemOfGScj4tstcKEpC1cTvQJ+tYhN+/MXsbZIZFWZWyvyWSJgYNkFQuX38TI43RAuhEjet0JzCuv/BskWseR6kq7+1us1vBKuVIqRDyUhSSpHidAJPxWNGPwcC3yxmm73j0l1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xl9EstBj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F94FC2BCB7;
	Thu, 14 May 2026 04:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778732105;
	bh=SgFoT9A5AIjh/MyKN4pGQELt/AGGtOnhU1aeQ7Ornzw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=Xl9EstBj7OhRpZIjA7ji1fSrNiVtiqWQfgu7ltUENJOk7+FlGmSqOrz5Y8yLFNcol
	 devvOQR0KmSYs0D6f2/xggBsZREtI+1wFs7MNKk3HWsBi5hhveVrTrMisXJEM7oB9p
	 CML7T24D2PB3W4EN43tax0LgApeKl0stOrH9/D3zLLdNt+eKpQ1cywKNDjTkLisEhA
	 5kcVwfcrs82PMG+MnnqejnOQajFM0ZLMSWu9udHgfcU+R7+1QGR+WpO97m8Q/V2gn8
	 2SbjNXZmg85NkIz1NbajCuCHSWgHGMawsfk4t89gYog5Q78I/ZYggILsUJuXbn//ga
	 PMgRbrJCwplxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: cache: qcom,llcc: Document Eliza
 LLCC block
Reply-To: sashiko-reviews@lists.linux.dev
To: "Abel Vesa" <abel.vesa@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-eliza-llcc-v2-1-27381ae833d5@oss.qualcomm.com>
References: <20260513-eliza-llcc-v2-1-27381ae833d5@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 04:15:04 +0000
Message-Id: <20260514041505.3F94FC2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 0A96753D9C6
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297293-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,qualcomm.com:email,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `reg` and `reg-names` properties for `qcom,eliza-llcc` incor=
rectly skip `llcc1_base` and define `llcc2_base` as the second base registe=
r region.
--

commit b822a325e6d0b593e6e849500133d7b473e7127e
Author: Abel Vesa <abel.vesa@oss.qualcomm.com>

dt-bindings: cache: qcom,llcc: Document Eliza LLCC block

This commit documents the Last Level Cache Controller (LLCC) for the Eliza
SoC. It specifies that the Eliza LLCC block has 2 base register regions
and an additional AND/OR broadcast region.

> diff --git a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml b/Doc=
umentation/devicetree/bindings/cache/qcom,llcc.yaml
> --- a/Documentation/devicetree/bindings/cache/qcom,llcc.yaml
> +++ b/Documentation/devicetree/bindings/cache/qcom,llcc.yaml

[ ... ]

> @@ -341,6 +342,27 @@ allOf:
>              - const: llcc_broadcast_base
>              - const: llcc_broadcast_and_base
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,eliza-llcc
> +    then:
> +      properties:
> +        reg:
> +          items:
> +            - description: LLCC0 base register region
> +            - description: LLCC2 base register region
> +            - description: LLCC broadcast OR register region
> +            - description: LLCC broadcast AND register region
> +        reg-names:
> +          items:
> +            - const: llcc0_base
> +            - const: llcc2_base

The commit message mentions that Eliza LLCC has 2 base register regions,
but the names here skip to llcc2_base. Should this be llcc1_base instead?

Looking at the upstream LLCC driver (drivers/soc/qcom/llcc-qcom.c), it
maps base register regions by their sequential index and generates internal
regmap names sequentially.

If the driver fetches the second region at index 1, it will internally
name it llcc1_base, which creates a semantic mismatch with the device
tree's llcc2_base designation.

Could this also lead to an out-of-bounds mapping if the hardware
dynamically reports 3 banks?

> +            - const: llcc_broadcast_base
> +            - const: llcc_broadcast_and_base

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-eliza-llcc=
-v2-0-27381ae833d5@oss.qualcomm.com?part=3D1

