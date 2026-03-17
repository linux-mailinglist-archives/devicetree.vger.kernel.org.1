Return-Path: <devicetree+bounces-276509-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCiAKnAFuWmEnAEAu9opvQ
	(envelope-from <devicetree+bounces-276509-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:40:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0524F2A4F4F
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 08:40:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A39B43018ADA
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 07:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F379D39183F;
	Tue, 17 Mar 2026 07:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CXwVjQuh"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0E09391828;
	Tue, 17 Mar 2026 07:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773733229; cv=none; b=AJP0BkoUiIjfbbAtfjgGkBcaAsmYEuBCtSN7Pw0edUpjNBkkprTxUDggRt9fdl1y5tr6ha1CJKN6fbeAf22AvU0Q90N40OAQxW2lATeV/Yrguw4cXg1v5iGMnYDx1fpjG8NRvO62ELA2q3OhW7SUWCdP3P66zs+LRaERt6gAzr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773733229; c=relaxed/simple;
	bh=HSM1mqZ60fsrIPA8vhvonH7caBlWD6pJ/37Voo8FQRU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SGXpWbKGrQxIuQSPnVLHJsXtmR4q5YAmeCBGGoad+7DulxNYTqdj+phsvRo6j9UjHfablpHnjsyhmmzj+uGFsdzpChzbDAcHNTY+1IYEWGeel5c92UAvIxTH9BeFivrPHBe9G/tvE864GVnu71O13Fn+WEyV23lADY1I8gDD2JQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CXwVjQuh; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E401FC4CEF7;
	Tue, 17 Mar 2026 07:40:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773733229;
	bh=HSM1mqZ60fsrIPA8vhvonH7caBlWD6pJ/37Voo8FQRU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CXwVjQuh+z/pNt5yjO/MJnRfqXCpwmvPve+OpkL9gmp19ezPb8PIQBImoz4RV1u/K
	 72F03OpIR5q7dHLHVMdqWE7iGqJSv/WbJ1y3uhmVRhml+MW3pvYO89ddC0xYl1mdkk
	 VI45j0FMMlqF7vZ8KSs26reL1V7ZF2ZCmLp32iPOX4aFY1WfU+4KQgbToLD7g1ZTBe
	 fNz1E4Dq054ALb8RcsXzu324ATDmjwmeabC8nO8we/HC9/aRQluI5WDQZvlx1ofzrE
	 wX4FSVJT6YMeVHXILnI3zQ1q7etNMUAqV5W56WLA/rF/s7z3kUPQ2u4xUhyvY0ctnk
	 EqI+RReBMIX+w==
Date: Tue, 17 Mar 2026 08:40:27 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Daniele Briguglio <hello@superkali.me>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Subject: Re: [PATCH 1/3] dt-bindings: clock: rockchip,rk3588-cru: add I2S
 MCLK output to IO clock IDs
Message-ID: <20260317-maize-peacock-of-teaching-d8ab90@quoll>
References: <20260316-rk3588-mclk-gate-grf-v1-0-66fb9a246718@superkali.me>
 <20260316-rk3588-mclk-gate-grf-v1-1-66fb9a246718@superkali.me>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260316-rk3588-mclk-gate-grf-v1-1-66fb9a246718@superkali.me>
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
	TAGGED_FROM(0.00)[bounces-276509-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: 0524F2A4F4F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 16, 2026 at 02:06:31PM +0100, Daniele Briguglio wrote:
> 
> The following gate clocks are defined:
>   - I2S0_8CH_MCLKOUT_TO_IO (bit 0)
>   - I2S1_8CH_MCLKOUT_TO_IO (bit 1)
>   - I2S2_2CH_MCLKOUT_TO_IO (bit 2)
>   - I2S3_2CH_MCLKOUT_TO_IO (bit 7)

We see that in the diff. No need to repeat, because it makes your small
change unnecessarily big. There is no benefit in writing tons of obvious text.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


