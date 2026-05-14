Return-Path: <devicetree+bounces-297720-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GIFXFHb3BWpVdwIAu9opvQ
	(envelope-from <devicetree+bounces-297720-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:25:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0C3544A3A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 18:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1E4E430378B7
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 16:20:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 739FB33893D;
	Thu, 14 May 2026 16:20:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fj70pcx0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFAD322C88
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 16:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778775610; cv=none; b=Tomk/vOmIJQgC6sEGg5hj972m1MCGpe0drtoufN850tWcEar++203kJkf6qCTd95kGCezW6XayLbQjMdVbbfx8We1pjUGw+eNyge4Yp3+vJ5JGng0jY/uNT2wy7ijNDmlz7sdUFdGyqzKZTUgw+7ASL2hMqIvHrxeLGBGq5Aeig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778775610; c=relaxed/simple;
	bh=0rQPA8qjE6ICixfxUUoagENaw8882jE82NAIz6pGqFQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DB6sHnRqC1r7UAVh3f7GdRXfonqP3TTtc5tmXehP3plGF+TFClw8KALia5T76F4xPSrMhd1J7bvN6NEqehP4p3YPjBK0ZKhxPElG93LEBrp3o4t/be9zhAI/YPHEivOTZTESMeQ+XEGrbagD8NHcbPK/WOutum4KkGI3PzfVH04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fj70pcx0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3BBE6C2BCB3;
	Thu, 14 May 2026 16:20:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778775609;
	bh=0rQPA8qjE6ICixfxUUoagENaw8882jE82NAIz6pGqFQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=fj70pcx03G+Nvg+uaJnkGTg4Q3Q5UxIq5ayHVpjlZSY6VCeqP7F/iKT/kLiiJ+K/8
	 /vtmq0xlGlb/TWKwPkQ18lt4vkMa003cylVj2zpBJujFsScGN8d+Yc9km01U+DEqYe
	 Ak8yw/7N91+ZoEoALXJD7WWZzNxDJOUZi+JfpGVoiUwplNf+u8Sv8uEJbay7DKXhCR
	 5W95c4hY355Ec2n42eziWjuNfcTx/bNt7UfiTmyu3qepP0BcZk6SqJLea2hKxUcsD3
	 JdXjADPaYpGQngESn307mH79JWn2wvGrHWOhgI4PY1YbVS4MtdGRpsg5rJFXyAFoKI
	 SIrTYIFNyPQng==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 1/3] dt-bindings: display: rockchip: analogix-dp:
 Expose inherited properties
Reply-To: sashiko-reviews@lists.linux.dev
To: "Damon Ding" <damon.ding@rock-chips.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260514070133.2275069-2-damon.ding@rock-chips.com>
References: <20260514070133.2275069-2-damon.ding@rock-chips.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 16:20:08 +0000
Message-Id: <20260514162009.3BBE6C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CE0C3544A3A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297720-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,rock-chips.com:email,sashiko.dev:url,lists.linux.dev:replyto];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Redefining inherited properties as `true` is a redundant schema =
inheritance anti-pattern that weakens future validation.
--

commit 6cdf876f78b231fc30c12abedc12fb6b25fa8e18
Author: Damon Ding <damon.ding@rock-chips.com>

dt-bindings: display: rockchip: analogix-dp: Expose inherited properties

The commit adds true values to several properties in the Rockchip Analogix
DP binding schema. The commit message states this is necessary to expose
inherited properties to satisfy unevaluatedProperties constraints.

> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,=
analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockc=
hip,analogix-dp.yaml
> index d99b23b88cc59..4118b87b8dc53 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogi=
x-dp.yaml
> @@ -49,6 +49,13 @@ properties:
>    aux-bus:
>      $ref: /schemas/display/dp-aux-bus.yaml#
> =20
> +  reg: true
> +  interrupts: true
> +  phys: true
> +  phy-names: true
> +  force-hpd: true
> +  ports: true
> +

Is it necessary to redefine these inherited properties to satisfy
unevaluatedProperties constraints?

The base schema analogix,dp.yaml already defines these properties. Properti=
es
evaluated by a $ref within an allOf block are automatically annotated as
evaluated, which should satisfy the unevaluatedProperties: false constraint=
 in
the leaf schema.

Could redefining these properties locally as true introduce a validation
regression if the base schema changes in the future?

Setting them to true translates to allowing any value without constraints.
While the allOf intersection currently enforces the base schema's constrain=
ts,
if the base schema is later refactored or removes one of these properties,
this leaf schema might silently accept malformed device trees instead of
failing validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514070133.2275=
069-1-damon.ding@rock-chips.com?part=3D1

