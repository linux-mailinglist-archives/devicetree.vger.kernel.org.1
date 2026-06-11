Return-Path: <devicetree+bounces-310192-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NjKjI1xoKmp+owMAu9opvQ
	(envelope-from <devicetree+bounces-310192-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:48:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 864BF66F8A0
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:48:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bCp2cWJi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310192-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310192-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ECDAE3005155
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 07:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEE50367F54;
	Thu, 11 Jun 2026 07:42:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5E4367F3D;
	Thu, 11 Jun 2026 07:42:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781163744; cv=none; b=lRRrNo6Opea/V2z7jiyTc1plkk6eLOO0QJNytItNbb+R+X5Ad/N6gdKUpgUJKreBFCWt5Aeb+pI9y6PJk5vdhROfZsxn4iwQoUBpCCDWyymqM6/1YxoqqIQN2eV8Zavso1JksGvlu40X/bmC7YwYeT3ne4HxWge3B5Q4YOBQpv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781163744; c=relaxed/simple;
	bh=Y7KBfZD5DQHBGMMzc6u2sq3+VfCL6Fo7fCWIEQYW7ao=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lG0rbHVWstrSz/Tvf6K9xLXcKKLsTiPJs9OaLhIWT7STyqabsKOLGr6J/Nxcv16s44d15sufPFu15gpy0D+fryhY8Xp8299rfqheldr0KgZ02z514DM6BSVXJwH+hieOr31YdigUzdzm8rudjIWTJgBGpSFZHS9cqC0cJVJwPGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bCp2cWJi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 267111F00893;
	Thu, 11 Jun 2026 07:42:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781163742;
	bh=GfHjmALeSuAk8b8lLGyqi6fhpxEvnN4bOx0UqElVopI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bCp2cWJiqRWgpB/BNvv79HOpoVV4VIpHSU6U7tGRxtVlSVxeckYlbOag//8OLoChE
	 3q8Fqlx4Jr9E5wtUgb7aChD49Uz9Rsq7xxyKfJcZyogIyMjJ04w7zJsA0kJBIewTZl
	 pU2lrXflp414X/EzBFAp9skrggETc2wzK7Ttx94XQBi5H+e9lZERPELsQH4kPqsurZ
	 CkakpoFvSGdg8J5e08ep3IpQqW6KcUewwJlwZ05ipwk9o/7u59XgQNg41LNaINc74i
	 COvSRxZHjiEW+OwWyh9uEpBoxBvV6ms1zGv/cr7mXSTOM0+RtSNt+Ew/lDCJP9n8kW
	 AK62cURfu4lcA==
Date: Thu, 11 Jun 2026 09:42:20 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: joakim.zhang@cixtech.com
Cc: mturquette@baylibre.com, sboyd@kernel.org, bmasney@redhat.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, 
	gary.yang@cixtech.com, cix-kernel-upstream@cixtech.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 3/5] dt-bindings: clock: cix,sky1-audss-clock: add
 audss clock controller
Message-ID: <20260611-numbat-of-unmistakable-excitement-f6cfed@quoll>
References: <20260610075645.3581145-1-joakim.zhang@cixtech.com>
 <20260610075645.3581145-4-joakim.zhang@cixtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260610075645.3581145-4-joakim.zhang@cixtech.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-310192-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:joakim.zhang@cixtech.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:p.zabel@pengutronix.de,m:gary.yang@cixtech.com,m:cix-kernel-upstream@cixtech.com,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 864BF66F8A0

On Wed, Jun 10, 2026 at 03:56:43PM +0800, joakim.zhang@cixtech.com wrote:
> +  '#clock-cells':
> +    const: 1
> +    description:
> +      Clock indices are defined in include/dt-bindings/clock/cix,sky1-audss.h.
> +
> +  clocks:
> +    items:
> +      - description: I2S parent clock for sampling rates multiple of 8kHz.
> +      - description: I2S parent clock for sampling rates multiple of 11.025kHz.
> +      - description: clock feeding most devices in audss (NOC, DSP, SRAM, HDA, DMAC, I2S, and Mailbox).
> +      - description: clock feeding for HDA, Timer and Watchdog, which is a delicated 48MHz clock.
> +
> +  clock-names:
> +    items:
> +      - const: x8k
> +      - const: x11k
> +      - const: sys
> +      - const: 48m
> +
> +  resets:
> +    maxItems: 1
> +    description: Audio subsystem NoC (or bus) reset line.
> +
> +  power-domains:
> +    maxItems: 1
> +    description: Audio subsystem power domain.

Same comments as last time, but let's keep discussion in previous patch.

> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - clocks
> +  - clock-names
> +  - resets
> +  - power-domains
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/cix,sky1.h>
> +
> +    clock-controller {
> +        compatible = "cix,sky1-audss-clock";
> +        power-domains = <&smc_devpd 0>;
> +        #clock-cells = <1>;
> +        clocks = <&scmi_clk CLK_TREE_AUDIO_CLK0>, <&scmi_clk CLK_TREE_AUDIO_CLK2>,
> +                 <&scmi_clk CLK_TREE_AUDIO_CLK4>, <&scmi_clk CLK_TREE_AUDIO_CLK5>;
> +        clock-names = "x8k", "x11k", "sys", "48m";
> +        resets = <&s5_syscon 31>;
> +    };
> diff --git a/include/dt-bindings/clock/cix,sky1-audss.h b/include/dt-bindings/clock/cix,sky1-audss.h
> new file mode 100644
> index 000000000000..033046407dee
> --- /dev/null
> +++ b/include/dt-bindings/clock/cix,sky1-audss.h

Filename must match the compatible.

Best regards,
Krzysztof


