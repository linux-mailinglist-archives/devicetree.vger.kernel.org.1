Return-Path: <devicetree+bounces-275642-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CG4MGYkntWkSxAAAu9opvQ
	(envelope-from <devicetree+bounces-275642-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:16:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A3628C50A
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 10:16:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8E08F303DD1E
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 09:16:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E806A1D5CC6;
	Sat, 14 Mar 2026 09:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPM+6IBK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4ACC35966;
	Sat, 14 Mar 2026 09:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773479814; cv=none; b=f1dudtF/3ueLfabBpmnbJCFKhSv9q1tCd/bF0/VnbKuYyU45e7W+VRJQ30t3Ku2QfjtGQ3yFPJimVrHmowT9gmeftaaANEklBk8/HSzp30eErwl9qQ86i/tYTVq8leWeAXPR8MyXRe+Y/Pvssqvn76wxKPILfbOW5vBDXlV+8+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773479814; c=relaxed/simple;
	bh=MfVQas0gCiKFS/zlSycX8J2HuTRWGxZqHMSgUvBEb8Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c+6vBWx0oKi+9p/jZAKQ82NY0nK1veKVTHta99AuYSlAsWcStr474rnYOpyMKXkDnCnOSEDGu/RFgYSHBR5v8PcsdfKY3IujAD3u804eBBX2a5nt5xSdvnvjFyYQ6iAXQ2wBK4qs0kBry5fSm+0tbAjSEx8dX9CBQwekbJ+G4Ow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPM+6IBK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 93AEEC116C6;
	Sat, 14 Mar 2026 09:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773479814;
	bh=MfVQas0gCiKFS/zlSycX8J2HuTRWGxZqHMSgUvBEb8Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=lPM+6IBKxNwbUxmav30nSkqJywJRYZv8V2Rl211p0UlXMRTQM4F3GIhYHDkMOajT7
	 BUYhgeUWorLmRIDcTIEZIL85QVQD4HogCq487uuYyAzHEiKeDhU5ORky6HDXixl0xz
	 QwvSBIWYUPpSVYz2ByTuqu/FX21LkW0xoRoHu6YcoHAk7HESrAgkqa04q6cqcDkIkM
	 wodlHcEWq2yiHt8n8RJxiooJ58TvHi2AJGL221X5v0PSbWRui6S8DEPOdVX1ASwtju
	 zyh8LFLOhAubAdIhXuIH2g++sTy7ypBdvJ0Af6eVlTsShvNxdf05DEw2kJQjf1d0Fh
	 0efnjaHMKlfUA==
Date: Sat, 14 Mar 2026 10:16:50 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Yu-Chun Lin <eleanor.lin@realtek.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de, cylee12@realtek.com, 
	afaerber@suse.com, jyanchou@realtek.com, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-realtek-soc@lists.infradead.org, james.tai@realtek.com, 
	cy.huang@realtek.com, stanley_chang@realtek.com
Subject: Re: [PATCH v4 01/10] dt-bindings: clock: Add Realtek RTD1625 Clock &
 Reset Controller
Message-ID: <20260314-orange-foxhound-of-felicity-997667@quoll>
References: <20260313081100.596224-1-eleanor.lin@realtek.com>
 <20260313081100.596224-2-eleanor.lin@realtek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260313081100.596224-2-eleanor.lin@realtek.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275642-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1A3628C50A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, Mar 13, 2026 at 04:10:51PM +0800, Yu-Chun Lin wrote:
> +#endif /* __DT_BINDINGS_RTK_CLOCK_RTD1625_H */
> diff --git a/include/dt-bindings/reset/realtek,rtd1625.h b/include/dt-bindings/reset/realtek,rtd1625.h
> new file mode 100644
> index 000000000000..e69b5ee14cc6
> --- /dev/null
> +++ b/include/dt-bindings/reset/realtek,rtd1625.h
> @@ -0,0 +1,195 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (C) 2025 Realtek Semiconductor Corp.
> + */
> +#ifndef __DT_BINDINGS_RTK_RESET_RTD1625_H
> +#define __DT_BINDINGS_RTK_RESET_RTD1625_H
> +
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET1     0
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET2     1
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET3     2
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET4     3
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET7     4
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET9     5
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET_BIST 6
> +#define RTD1625_RSTN_REG_ID_DUMMY0          7
> +#define RTD1625_RSTN_REG_ID_DUMMY1          8
> +#define RTD1625_RSTN_REG_ID_DUMMY4          9
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET11    10
> +#define RTD1625_RSTN_REG_ID_SOFT_RESET12    11
> +
> +#define _REG_ID(n) ((RTD1625_RSTN_REG_ID_ ## n) << 5)
> +

Not a binding.

> +#define RTD1625_CRT_RSTN_MISC      (_REG_ID(SOFT_RESET1) | 0)
> +#define RTD1625_CRT_RSTN_DIP       (_REG_ID(SOFT_RESET1) | 2)
> +#define RTD1625_CRT_RSTN_GSPI      (_REG_ID(SOFT_RESET1) | 4)

None of these are really bindings. Register offsets is hardware data,
not a binding.

Drop all of this above and further - actually nothing in this header
look like a binding, since you called these "REG".

Best regards,
Krzysztof


