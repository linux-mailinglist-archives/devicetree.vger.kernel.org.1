Return-Path: <devicetree+bounces-297265-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6MfRMq44BWq6TQIAu9opvQ
	(envelope-from <devicetree+bounces-297265-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:51:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44EE253D2D1
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:51:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 406FB3004590
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DC7C2BEC4E;
	Thu, 14 May 2026 02:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYFZTNEB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B2563F4133
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 02:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778727084; cv=none; b=JIP2lZd0gzpwzphgXFm+ietgbtGU4uQ4FKbESv4tAvFZ8vA3FFvC7Xo++05Pv1CMp+XOf9dUOBnVYqGfgu6sng4ybDaEpi+5zm6B0cJD6nFYyTaFuKS1nTMuquQsEdsinMJgEBkxzcHOc5sHZ5u+emPzLzGqjdvm6giBNFY3Ddw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778727084; c=relaxed/simple;
	bh=KEtaCZr/c7+y0s/PMt3W49/TY0jULzfEc5bKQFQjRUI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GS9qEan9JbY+XUnIC10NV4GPxlS2UV4yxlbvsTsYEWeLHVyCwiCacNt88uUT69kGEuBARNE34zoVP9p7k53QptQvGN/5pwLrENXA5xwdtebx2s5nj0QW3NmT7mVPdPmwzQdU8Cz7wqAE//gHa4OV7kMJlzvVvkMfkTTBr1FefWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYFZTNEB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D758DC19425;
	Thu, 14 May 2026 02:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778727084;
	bh=KEtaCZr/c7+y0s/PMt3W49/TY0jULzfEc5bKQFQjRUI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YYFZTNEBrSvpUvaRSEEkIXwE2pleeNeaRCea8lZFffYx9XkYW1kmFFyUysngUPFpg
	 BLWXE1r1ugLVzdcfCJTmXv9p4nDIIb88bsOF3l4aU32pPKcmJCEzrS92qyJsrotRyQ
	 +qOsa+TevJvRLYwwMKnN+EVFXBmFvFWDgRAjMu2MSe7K2DxUg/jlYE/hzLcWyqkjNy
	 Ku5E9YNoGYyKxPuClVg6TztJBV2pNEM5e+kQSTqzbXcz9m5DpgkP5XtdKD8Cs0FIaj
	 ucQiAnfDWKjlhs0sb+4N0Zm6gZfFevrguOY25O4uPbS58Iz7MOUdQGPaPABb0m3Bsr
	 Tw7VBt6F+bGPg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 01/10] dt-bindings: display: rockchip: analogix-dp:
 Fix hclk as third clock for RK3588
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260513074414.2053435-2-damon.ding@rock-chips.com>
References: <20260513074414.2053435-2-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:51:23 +0000
Message-Id: <20260514025123.D758DC19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 44EE253D2D1
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297265-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The device tree schema fails to correctly enforce the required n=
umber of clocks in the conditional blocks by omitting `minItems` and `maxIt=
ems` constraints.
--

commit 1eeef10904ab6c1e09008c1f85fab2353dd23f79
Author: Damon Ding <damon.ding@rock-chips.com>

dt-bindings: display: rockchip: analogix-dp: Fix hclk as third clock for RK=
3588

This commit enforces a third clock name on a per-compatible basis for
the analogix-dp driver. It removes the implicit clock enablement from
the GRF phandle and explicitly defines the clocks required for each SoC.

> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index d99b23b88cc59..8001c1facf986 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml

[ ... ]

> @@ -60,6 +57,33 @@ required:
>  allOf:
>    - $ref: /schemas/display/bridge/analogix,dp.yaml#
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3288-dp
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: dp
> +            - const: pclk

Should this block include maxItems: 2? The top-level schema defines
maxItems: 3, which might allow a device tree with an extra unvalidated=20
third clock string to silently pass validation here.

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - rockchip,rk3399-edp
> +    then:
> +      properties:
> +        clock-names:
> +          items:
> +            - const: dp
> +            - const: pclk
> +            - const: grf

Does this block need minItems: 3 to ensure the grf clock is actually
enforced? Because the top-level schema allows minItems: 2, a device tree
omitting the third clock might still pass validation.

> +
>    - if:
>        properties:
>          compatible:
> @@ -68,6 +92,11 @@ allOf:
>                - rockchip,rk3588-edp
>      then:
>        properties:
> +        clock-names:
> +          items:
> +            - const: dp
> +            - const: pclk
> +            - const: hclk

Similarly, does this block also require minItems: 3? Without it, the=20
hclk requirement might not be strictly enforced if the schema validation
falls back to the top-level minItems: 2 allowance.

>          resets:
>            minItems: 2
>          reset-names:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513074414.2053=
435-1-damon.ding@rock-chips.com?part=3D1

