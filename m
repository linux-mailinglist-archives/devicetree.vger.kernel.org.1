Return-Path: <devicetree+bounces-299065-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wIM/LGpUCmrxzwQAu9opvQ
	(envelope-from <devicetree+bounces-299065-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 01:51:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AA156470A
	for <lists+devicetree@lfdr.de>; Mon, 18 May 2026 01:51:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B87343024C8B
	for <lists+devicetree@lfdr.de>; Sun, 17 May 2026 23:50:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60CE43D667C;
	Sun, 17 May 2026 23:50:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BIw2+4Sn"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D9F93D4118;
	Sun, 17 May 2026 23:50:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779061807; cv=none; b=CsBFI3pNdQ4yjZ0qwsyigLPtS4VQIfN4LWfUa2Uce27WkHP7msjTyX/RiCDH6tjmGA130N4nJr+hw/g1/cP0LzIUmn/ZFC3Ve2+1fvlch3RgmUU2qMtOvuYlP+aWkqnmhNhkSjV1l9QVHtnNe1NRwswZDu+Wk6l4h7iFab4t+ZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779061807; c=relaxed/simple;
	bh=xhQrY4PuyesfqBKXyFRxpZUr0BD4LXWRygaapoHWwyI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=f4fNJc1vko0UPCcMu0IRfr4VCdZM4hPPcKSOA3yZfhWGtL4sEBCwnbAwlY3YCbKdYqDaLNpHXZqupDslIMJzsTdI6F8mCcfWzV3TMK3lv2SAGP41B0tMw+utoy8btoyXNxdzu4L9m+stXc7LFVtwHehdqsUzYm1ujcaEKihDVuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BIw2+4Sn; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92840C2BCB0;
	Sun, 17 May 2026 23:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779061806;
	bh=xhQrY4PuyesfqBKXyFRxpZUr0BD4LXWRygaapoHWwyI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=BIw2+4Snp+3QPOd+uAmouojEZq2hya6vyG6ZhTjrDV8WxeatZEdPV1l3kGCV8gi6S
	 axGVYOiBx389h8KyJPRyD8xdIovE0BZgv2vPgDnv/zSSWbJIgmyShGO5Hqtc5iTLtX
	 Ng7sxPRWyIdsV2C9iv11RJvss5H+H9m8H3nN0XhrZwRhwiaxpjB14zS9CTxclO6mOO
	 fKgePLhajcnsC2m0Ch6aVGv46W6UJp2G3+x8QO6DYRvUgEo56CpW3P2KkIwzJ8BBDN
	 5zxbhQBIL8rlL/yv135h55rAi4L0sWCr1fwaglp0GZEH4z7Xi8uLHzcRgz5W9UQRSD
	 C1WLwEqKMG5cQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/5] dt-bindings: arm: sunxi: Add Baijie HelperBoard
 A133 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Alexander Sverdlin" <alexander.sverdlin@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260517234134.2737320-3-alexander.sverdlin@gmail.com>
References: <20260517234134.2737320-3-alexander.sverdlin@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 17 May 2026 23:50:06 +0000
Message-Id: <20260517235006.92840C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 12AA156470A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-299065-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Missing standalone compatible entry for the Core board.
--

commit 76fcabeafe7a55386e6089c83f652ab14cf4b7ec
Author: Alexander Sverdlin <alexander.sverdlin@gmail.com>

dt-bindings: arm: sunxi: Add Baijie HelperBoard A133 compatible

Baijie HelperBoard A133 is a development board around their A133 Core
board. Introduce a compatible for both the Core and the development
boards.

> diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documenta=
tion/devicetree/bindings/arm/sunxi.yaml
> index 9e4627f97d7e3..845b5a93686e7 100644
> --- a/Documentation/devicetree/bindings/arm/sunxi.yaml
> +++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
> @@ -96,6 +96,12 @@ properties:
[ ... ]
> +      - description: Baijie Helper A133
> +        items:
> +          - const: baijie,helper-a133
> +          - const: baijie,helper-a133-core
> +          - const: allwinner,sun50i-a100
> +

The commit message states the intent to "Introduce a compatible for both the
Core and the development boards."

Since this items list requires exactly three elements, it correctly validat=
es
the development board, but it appears a device tree written solely for the
standalone Core board would be rejected.

If the Core board were used with a different custom carrier board in the
future, would it need its own standalone compatible entry?

For example:

      - description: Baijie Helper A133 Core
        items:
          - const: baijie,helper-a133-core
          - const: allwinner,sun50i-a100

Does omitting a standalone entry for the Core board limit flexibility for f=
uture
designs based on it?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260517234134.2737=
320-1-alexander.sverdlin@gmail.com?part=3D2

