Return-Path: <devicetree+bounces-273093-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLWWD/4lr2kTOwIAu9opvQ
	(envelope-from <devicetree+bounces-273093-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:56:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BABDD240718
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 20:56:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A032A303B14A
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 19:51:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E66063EDACA;
	Mon,  9 Mar 2026 19:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSQ52WVj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1357362131;
	Mon,  9 Mar 2026 19:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773085883; cv=none; b=B6yEfqre2fNzUm1IdcgthbXnW3vtiPlE8P9AQkJIsce4rIkrBpc2OCi1LRGmAv0I7rz4BxJsMF9ots4O9ajhiJ6H0X7bvsrY5g7M6xsZT/s0QyTolVPVXP2xQNkvevP/GBrRBj1Vlenzq8gU/zbkZj9z2XftRuIRl6pA2PsuGoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773085883; c=relaxed/simple;
	bh=tc/hXjaPOs4r7lYuxgCDxoSagD04bxl3JaOq+bwMeZM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=q0i7FIMklFHLdXDPnorVPovK8qTQUCKwO4cfAhRZGPaaU/VenBBiLcgxsx1Pl/ZPhA6ow6jR278nE//WswMJ6IFGa0RTEBK6+PFh8nUljBfK4eBtMxuB+hRQhabw6jHxw4r2GzJxgv8NgZLeXA7slUgtIHbHFVaIwkup2JG0sZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSQ52WVj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24E8AC4CEF7;
	Mon,  9 Mar 2026 19:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773085883;
	bh=tc/hXjaPOs4r7lYuxgCDxoSagD04bxl3JaOq+bwMeZM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bSQ52WVjThj/b4JXmo5ZzqQIQw7aHD/oVdg6NxD3iBrH1hcyu2WlidL5PYBOOyh25
	 SninXDJC3ov4Sr2ZHfBzhyVPgKBMeAuesm/YWDLfZ9DCdhq9n1jLq8/oFccVqWs1JU
	 fzCycZtwsOWkdIkeQ5VSgOfYkw5SoytrXt+ZIUUgkLHlFxgAuaM7j/q3boEISdwqWJ
	 wOJpxGHbCa6TIYlCt6MvnxabaPQ10+IxTBSy54pJCiq2g1OePgHJVHzHbvBCsCT/vZ
	 LUWAebNUzLu7E57fZffMmMltGMlqwoaRh4xEpEEn2hyng9+k0SzSR+aghvWXuxDou1
	 3f66n05QiPUow==
Date: Mon, 9 Mar 2026 12:51:21 -0700
From: Drew Fustini <fustini@kernel.org>
To: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
Cc: Drew Fustini <dfustini@oss.tenstorrent.com>,
	Joel Stanley <jms@oss.tenstorrent.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
	joel@jms.id.au, mpe@kernel.org, mpe@oss.tenstorrent.com,
	npiggin@oss.tenstorrent.com, agross@kernel.org,
	agross@oss.tenstorrent.com, bmasney@redhat.com,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v8 2/3] reset: tenstorrent: Add reset controller for
 Atlantis
Message-ID: <aa8kuXgxfqSWC2Yh@x1>
References: <20260306-atlantis-clocks-v8-0-6c9b14a4aa8e@oss.tenstorrent.com>
 <20260306-atlantis-clocks-v8-2-6c9b14a4aa8e@oss.tenstorrent.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260306-atlantis-clocks-v8-2-6c9b14a4aa8e@oss.tenstorrent.com>
X-Rspamd-Queue-Id: BABDD240718
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-273093-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[fustini@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,tenstorrent.com:email]
X-Rspamd-Action: no action

On Fri, Mar 06, 2026 at 11:12:18AM -0600, Anirudh Srinivasan wrote:
> Adds Atlantis Reset Controller driver, which shares the same regmap as
> prcm ( clock controller).
> 
> This version of the reset controller driver covers resets from the RCPU
> prcm.
> 
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> Acked-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Anirudh Srinivasan <asrinivasan@oss.tenstorrent.com>
> ---
>  MAINTAINERS                                |   1 +
>  drivers/reset/Kconfig                      |  11 ++
>  drivers/reset/Makefile                     |   1 +
>  drivers/reset/reset-tenstorrent-atlantis.c | 173 +++++++++++++++++++++++++++++
>  4 files changed, 186 insertions(+)

Reviewed-by: Drew Fustini <fustini@kernel.org>

