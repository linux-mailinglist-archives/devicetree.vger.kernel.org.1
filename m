Return-Path: <devicetree+bounces-265588-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aHeaEqbdkGnodQEAu9opvQ
	(envelope-from <devicetree+bounces-265588-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:40:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FA113D289
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 21:40:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BB7523013846
	for <lists+devicetree@lfdr.de>; Sat, 14 Feb 2026 20:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D6C92853E0;
	Sat, 14 Feb 2026 20:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9bDlOLd"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CEB3B28D;
	Sat, 14 Feb 2026 20:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771101601; cv=none; b=ct1ZP4RS0Chs97LZ26rcTBm5iiW4hSJy5ZvvXDhdjhCSium3Kff8ST7R4Y8wa0yrYukX9FcPtm0rgQFJosHLXii74SUIwCCTnnoO39F0ey/RWzGhCNWH4xQbfhnp/FAo3zjl0SgHsQkwntcO0Ws0iPg6Bt/oB4wzAkmpZcEV67Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771101601; c=relaxed/simple;
	bh=uR9B4ebgelLywAoG/46ok9n3fnFnuoidR+Wpv1gOhNY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SmCuyMOlJHV8kWgXRjBnVUwLkEI/qqOtEMjc3fHavr90fpUIG8er6J5fvuBTa9rdN2ViVGV4oxjYpxPh8gi84cNYe1uLiiV+AiRs+vAMX7Cv42jXzLl4JeBy8k7p3VOI28Eu8rnHqUIAbNsGKZJ+mMix7nSLPTepK4igMVGRG7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9bDlOLd; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC9FC16AAE;
	Sat, 14 Feb 2026 20:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771101600;
	bh=uR9B4ebgelLywAoG/46ok9n3fnFnuoidR+Wpv1gOhNY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=X9bDlOLdPKAoVeoLZchi1xERAHSh/HMGPvw2WhoicijUrpcuTvj/Fjo35OWZJkku1
	 gWBZLG/B0nqvtsGp0DatuSJokeroE0I0qXddcdYamghyj7T/ljUwd2ZhTFuOqrE+m3
	 o6/V/X2jucd/a/5txApq7bCgHIkx+gnwSD3BdSR9ezFoAVyp3Gs3O9+AJnF4WHT2Q6
	 Lh0eAxiQ1yO01RKjyPWPAM9335XTKnbGxIlIu54m1GUy8BjcRru+riYQUsM8qpbYpq
	 uswaw2YEYBfIH7SFm0dCcCs07olVWlnn1fXiJZFwtLd42p+1aHlO45HMCK528WYZIX
	 Rih/3aZ24+SxQ==
Date: Sat, 14 Feb 2026 21:39:58 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Harry Austen <hpausten@protonmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michal Simek <michal.simek@amd.com>, Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 1/2] dt-bindings: clock: xilinx: add description of
 user monitor interrupt
Message-ID: <20260214-daffy-roadrunner-of-inquire-babdce@quoll>
References: <20260214180933.42143-1-hpausten@protonmail.com>
 <20260214180933.42143-2-hpausten@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260214180933.42143-2-hpausten@protonmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-265588-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,protonmail.com:email]
X-Rspamd-Queue-Id: C9FA113D289
X-Rspamd-Action: no action

On Sat, Feb 14, 2026 at 06:10:16PM +0000, Harry Austen wrote:
> This Xilinx clocking wizard IP core outputs this interrupt signal to
> indicate when one of the four optional user clock inputs is either
> stopped, overruns, underruns or glitches.
> 
> This functionality was only added from version 6.0 onwards, so restrict
> it to particular compatible strings.
> 
> Signed-off-by: Harry Austen <hpausten@protonmail.com>
> ---
> v3 -> v4: Slight rework and rebase, removing Krzysztof's R-b tag

What exactly changed that you removed the tag? Rebase is not a reason.
You MUST be here specific about the reason, otherwise why would I like
to review if next time any rebase and slight rework will drop my tag?


> v2 -> v3: Add Krzysztof's R-b tag
> v1 -> v2: Fix binding errors by moving interrupts up front, restrict later
> 
>  .../bindings/clock/xlnx,clocking-wizard.yaml  | 24 ++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> index b497c28e8094f..7688601f1f31b 100644
> --- a/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> +++ b/Documentation/devicetree/bindings/clock/xlnx,clocking-wizard.yaml
> @@ -38,6 +38,14 @@ properties:
>        - const: clk_in1
>        - const: s_axi_aclk
>  
> +  interrupts:
> +    items:
> +      - description: user clock monitor interrupt
> +
> +  interrupt-names:
> +    items:
> +      - const: monitor
> +
>    xlnx,static-config:
>      $ref: /schemas/types.yaml#/definitions/flag
>      description:
> @@ -66,12 +74,24 @@ required:
>    - xlnx,speed-grade
>    - xlnx,nr-outputs
>  
> +if:

Why isn't this in allOf? Code is fine, but why changing it?

Best regards,
Krzysztof


