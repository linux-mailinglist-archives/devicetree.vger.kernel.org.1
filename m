Return-Path: <devicetree+bounces-297112-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QH4aO8rZBGq8PwIAu9opvQ
	(envelope-from <devicetree+bounces-297112-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:06:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E25553A54E
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 22:06:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E4098300DE06
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 20:04:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 442313A782F;
	Wed, 13 May 2026 20:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJsnyGRv"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221F23A3E7F
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 20:04:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778702647; cv=none; b=Kqt91/b6YF77OjdqWDiZPFisKAhAPmAtsnvgx8MZs5dinPUrUvKTslrYTU+yK2/evKU+3Axx4o1Dsu7QRmJvrYEbBOiMuUDf272Una86UQx1VdbKGjC8tBvH1b94hAsNcW3uD5qTBl2hF/lE6tFDhlEt3ZrpXa6k7FlFRIOOM1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778702647; c=relaxed/simple;
	bh=NFOmNBEt7hUkxilaTuwZD4pt0hY2SYuGknYl3FyObak=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SXr442L7pSwc5jxlmWO3/vl3rqdhBJ7vywCNfhJrBJsfBUD2euFFj7tNUi4M/PmHCItDNdKRIIaoCym13kazQvJkJFQGDn7BxamwmQh9ramwu8Alspr0cWE+JZBvRZiWJIxkZjX4/hlBPE88IYLQfYDhzWKSYI6TvGQ6CjGeeCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJsnyGRv; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 883D8C19425;
	Wed, 13 May 2026 20:04:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778702647;
	bh=NFOmNBEt7hUkxilaTuwZD4pt0hY2SYuGknYl3FyObak=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=UJsnyGRvpngCSIPqCr5bsDO61ZoFT0i5i3+ahWpa7FFpFzwC3/TsGhgqGacUtSWv6
	 1OdpACQpJIcC1Guj1YKwhZ7c6Uf7ByH/qmhOAFX+N5QQ7ADB1SzzlxKuMR5+85JPeA
	 E3Uope0FezFLHC+USB1OcgvYTPyO2tsXMs68xR1aJfUA3KQa7+evZXM7xv0DfRvOUH
	 n6t/R87o8mDRxvsHw22HOpbRDRrmeRzaZ0FueOhoQsBqr/16lf3xJ2U+NRFMM0DylE
	 2N5K+wX2A3XprI5tg3oACNG1swZCCO0/94nUmOo63E45TGqy8JWCe6MXh+Jv5bRoYy
	 jD06AwGkUMsGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 01/10] dt-bindings: display: rockchip: analogix-dp:
 Allow hclk as third clock
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512095644.1946084-2-damon.ding@rock-chips.com>
References: <20260512095644.1946084-2-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 20:04:05 +0000
Message-Id: <20260513200406.883D8C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 7E25553A54E
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
	TAGGED_FROM(0.00)[bounces-297112-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,rock-chips.com:email];
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
- [Medium] Missing SoC-specific constraints for the 3rd clock name allows i=
nvalid device trees to pass validation.
--

commit 0bc96bc26fc1f3dd540199a17da2a7642320b4c1
Author: Damon Ding <damon.ding@rock-chips.com>
dt-bindings: display: rockchip: analogix-dp: Allow hclk as third clock

This commit expands the clock-names property to allow hclk as a third
clock for the RK3588 eDP controller. This explicitly defines the video
output bus clock requirement instead of relying on implicit clock
enablement from the GRF phandle.

> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -26,7 +26,9 @@ properties:
>      items:
>        - const: dp
>        - const: pclk
> -      - const: grf
> +      - enum:
> +          - grf
> +          - hclk

The commit message notes that grf is used for older SoCs and hclk is used
for RK3588.

Does updating the top-level items list without adding SoC-specific
constraints allow older SoCs to pass validation when using hclk, and
allow RK3588 to pass validation when using grf?

If an RK3588 device tree incorrectly uses grf, would it silently pass schema
validation, even though the driver explicitly looks for hclk?

Could the existing conditional block for rockchip,rk3588-edp (and correspon=
ding
constraints for older compatibles) be updated to enforce which clock name is
valid for each SoC?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512095644.1946=
084-1-damon.ding@rock-chips.com?part=3D1

