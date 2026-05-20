Return-Path: <devicetree+bounces-300366-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0FfqOGNcDWrBwQUAu9opvQ
	(envelope-from <devicetree+bounces-300366-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:01:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8718B588981
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 09:01:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 66F1430AAE48
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 06:53:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF63351C09;
	Wed, 20 May 2026 06:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G61aUJR1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4260364E98;
	Wed, 20 May 2026 06:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779260012; cv=none; b=Q8oHlLycARGyZBTVbCln4xEjU9fudDeu10hNEJHYbcX+ayULBOv70PDLgxZiRdAvd8CL8/PnM4r4Ggh5CEf40ifQG7bltMga3AEDjY8+GjMmVApuKeJMTcqgD1mli6926LzQbvMMOFtxIqZKAf/UmWfR0oC1ueOuTEb0EQQpFws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779260012; c=relaxed/simple;
	bh=X7b+6v1X2akx1xIdl3Uu5vbrQPmzxhHW7qmSP9UaNiI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SzyIu9coXRbTkECNsQQfMlgJDYuq4R0s74zlkgD/upm4lCHCdW85gsdGc49u3Dpbcuiu5xCGoj5Z+OGwGcFsZ4+N9cggU22aeOUkH5Bqcm305Q8LhmwRukDl7HB0H1B6SfSewBLcgF+SCZykSgZ0HOc3w+mkqyI5gcW8RchNz9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G61aUJR1; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with UTF8SMTPSA id D56F71F000E9;
	Wed, 20 May 2026 06:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779260011;
	bh=yQ7iIKGL0BGLyRSKSjNnDs/7mUwI6/ERAzpdHSV1fgc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=G61aUJR1cx0mQolYLl+yLbzPUScb5mYq3Gmp0PAMJ3pNpCvyaRIvr+wg0/Oc6SeT5
	 65ga2GQ82m5NUhagstnAh+5uaAU91srRTH2SWRgAMBwBw5WzLqfya2gaR/LLXdfx48
	 Zjr2AWKO/qdtsU6CM6HFNIL0E3/uD8bUvekDAJdW2Xo5kuyirbupqTxQNNC9U4tXAW
	 zBPuXl7vs3+t7bHj461XKTr8snyao/EQ481P1DSJpFKJZwR2O+kjgT0OhPaC2pwnFl
	 v99WoGfyqkEzmONXpeOmsqzwZ3RLaAGCpoEb2tM5bA3iezfyTzaPof+WPY9aPvwAgx
	 f5N2RSz4ir6Eg==
Date: Wed, 20 May 2026 08:53:28 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Christian Marangi <ansuelsmth@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v7 2/6] dt-bindings: clock: airoha: Add PHY binding for
 Serdes port
Message-ID: <20260520-prudent-merry-chachalaca-6cbae2@quoll>
References: <20260519220813.28468-1-ansuelsmth@gmail.com>
 <20260519220813.28468-3-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260519220813.28468-3-ansuelsmth@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300366-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RSPAMD_EMAILBL_FAIL(0.00)[ansuelsmth.gmail.com:query timed out];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 8718B588981
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 12:08:07AM +0200, Christian Marangi wrote:
> Add PHY cell property for Serdes port selection. Currently supported only
> for Airoha AN7581 SoC, that support up to 4 Serdes port.
> 
> The Serdes port can support both PCIe, USB3 or Ethernet mode.
> 
> The available Serdes port can be selected following the dt-binding header
> in [2].
> 
> [2] <include/dt-bindings/soc/airoha,scu-ssr.h>
> 
> Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> ---
>  .../devicetree/bindings/clock/airoha,en7523-scu.yaml     | 9 +++++++++

The bindings header should be squashed here as I asked previously.

Best regards,
Krzysztof


