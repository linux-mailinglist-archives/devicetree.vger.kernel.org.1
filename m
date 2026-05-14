Return-Path: <devicetree+bounces-297511-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sKkLNuK7BWpZaAIAu9opvQ
	(envelope-from <devicetree+bounces-297511-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:11:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DDDB54169A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:11:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B93C303ACE3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:11:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7529F3C8713;
	Thu, 14 May 2026 12:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ax0GzLvh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5101E393DDA;
	Thu, 14 May 2026 12:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778760670; cv=none; b=WRRICHBIY1zWTq0SMyOsGR6gld33sdiffXndc9IZ/lBjbQ2ysP4LZtInosQO6Rhh2fSweurTDMciMx9MOt4yv+UTgKHraO3iomwTCR9MnT6ADLMGFdTOjLjn63//hgFejBlczE4eN5EV371+I35bSm3kPERZmU+o6YbdZvr0hFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778760670; c=relaxed/simple;
	bh=9nW2QQRmWeZRagTwX8ss7NBX+bqZPltLBWhvDlxyi+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=C3qYPouGe7GfyDrAPg/YAioP9L8oB5GBvbkc2Xhm8nA8NeNw9lyFuJ4J06ue+/auR956u5pipkYomK3F4KP6FDxNLa+WOl/ep+JZtCKcDtLfaWKwakzfk5ruFjLhBEaLPIxU6J644oEa5Q3snFXIeUiuFGE+2svQXgswi+F82mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ax0GzLvh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 582CFC2BCB3;
	Thu, 14 May 2026 12:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760669;
	bh=9nW2QQRmWeZRagTwX8ss7NBX+bqZPltLBWhvDlxyi+0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ax0GzLvh6WgDzyeWnbb67Ntz9JpzVgVWcK3nMg6sK1ECQXCeqTCJ3DzmUcocAJv9E
	 q8dJ9+SaX+/zzVsZiJY5o5tE9htpPikeTsrOPe5nrHUY1Pt/dqQpAkarv380bRjeeW
	 3Cf2kpg71PajVG4lQN4DlQC1NMg3Q6z85KHzvyCiZf1WDenUhdO6lRx9itQATq81NR
	 qCfxjln7nVv3FayNBdIjvEq4rnjegbcX3llKBOLLRw5XTHotspTesSmNTS14QTr75e
	 3oxu1IlfDqbmW4HGtq35l+F7A/szUfZ740oDduNDgaqrJASak51huIMAT01BXvDKOB
	 GbZnnqHY+2kLg==
Date: Thu, 14 May 2026 14:11:07 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	Vyacheslav Yurkov <uvv.mail@gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: Add GPIO locked fixed clock
Message-ID: <20260514-authentic-meticulous-baboon-a1eeee@quoll>
References: <20260510-feature-clock-guard-v2-0-6c25458d5340@bruker.com>
 <20260510-feature-clock-guard-v2-2-6c25458d5340@bruker.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260510-feature-clock-guard-v2-2-6c25458d5340@bruker.com>
X-Rspamd-Queue-Id: 4DDDB54169A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-297511-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sun, May 10, 2026 at 06:06:23PM +0000, Vyacheslav Yurkov wrote:
> Describe device tree binding for a fixed clock, which state can only be
> determined by the external GPIO. It's similar to gated-fixed-clock, but
> the GPIO direction is inverted.

v1 comments - do not ask us to repeat them.

"Please explain how I would identify this h/w."

> 
> Signed-off-by: Vyacheslav Yurkov <uvv.mail@gmail.com>
> Signed-off-by: Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
> ---
>  .../bindings/clock/gpio-locked-fixed-clock.yaml    | 77 ++++++++++++++++++++++
>  1 file changed, 77 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/gpio-locked-fixed-clock.yaml b/Documentation/devicetree/bindings/clock/gpio-locked-fixed-clock.yaml
> new file mode 100644
> index 000000000000..e0256bbd441d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/gpio-locked-fixed-clock.yaml
> @@ -0,0 +1,77 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/gpio-locked-fixed-clock.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO Locked Fixed Clock
> +
> +maintainers:
> +  - Vyacheslav Yurkov <V.Yurkov.EXT@bruker.com>
> +
> +description: |
> +  Clock controller that aggregates input clocks and/or GPIO
> +  signals and exposes them as a single clock output.

So same comments as before. We gave you multiple comments, multiple
expectations.

I see here no real hardware explanation and I asked for it more than
ONCE.

Best regards,
Krzysztof


