Return-Path: <devicetree+bounces-269167-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BgeOmxzoWkPtQQAu9opvQ
	(envelope-from <devicetree+bounces-269167-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:35:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D39D1B60C7
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:35:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C21B1303981E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 10:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BC4837AA71;
	Fri, 27 Feb 2026 10:35:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0Qt77ek"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC6D28504D;
	Fri, 27 Feb 2026 10:35:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772188508; cv=none; b=WygYKcamkA6pY+ZKcuTM6pQ0AlP0tTVKL9WvjFzsSviHKSH1oLZ83lCQw5ir5ir3x73cJtrvou8ACA5/GHQhoT5hXZGibJUMG6A3ZsBD62pcWPm1G4N5NPIvs88bfFYMCjXr7nEW/m7vB3+ZzhqY60hvnv12SYGbGYh2Sfv5kh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772188508; c=relaxed/simple;
	bh=nHPkftMKcp2cu5SeCi8OGV5lYfuACEfVG0vztbmu9a0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hBJHBvvk7WNPQSFaF1blWUxRnuaYsSxLBSBOYNN39Njg/RHfzTsB4b78UQJgw1jCb6sI2nnMw0YcUeTr3zLJLRjfJHrJyUM0lzXrUdx5nbIwt8VRMRyRQ5I6UNtpiqU1eEFPoli4QAAa+JmxDrLYzKTQx0ZOxhuVW2gKRH54RX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0Qt77ek; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B5AFC116C6;
	Fri, 27 Feb 2026 10:35:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772188507;
	bh=nHPkftMKcp2cu5SeCi8OGV5lYfuACEfVG0vztbmu9a0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u0Qt77ek/n7dkvtIn9T3//XciXi3FBYeaH9xJ5Id9fN7g1QBwcHuegdpnpBLAgWeg
	 kIgna8y0EnBXshVCdam168mwYZVD5mn7E8B+YQNO+3Ug2zDapnLLSKRwbC5ogwNo6L
	 6hYEBm85worzNbDa1wZ7AP/mF1U6DUMOnv8NEWsHWR5WB27GIAjWvzM9kjGRAT93r6
	 +NZXe7AwCG/0BFIyOO2fXFY3oHJ9l7B4YrY/n+B6tvUYFEEX92GC+o7WatgYbpuZNs
	 jMlzhab5pv2ItStNDPaClMtFXEsMoAr6n7jM7qGtDWOUoPALMtE0cqIicnkjstpGdh
	 ff+41Qm5ng8Dw==
Date: Fri, 27 Feb 2026 11:35:05 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Baojun Xu <baojun.xu@ti.com>
Cc: broonie@kernel.org, tiwai@suse.de, andriy.shevchenko@linux.intel.com, 
	13916275206@139.com, shenghao-ding@ti.com, linux-sound@vger.kernel.org, 
	linux-kernel@vger.kernel.org, lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, devicetree@vger.kernel.org, k-yi@ti.com, henry.lo@ti.com, 
	robinchen@ti.com, will-wang@ti.com, jim.shil@goertek.com, toastcheng@google.com, 
	chinkaiting@google.com
Subject: Re: [PATCH v1 1/2] ASoC: dt-bindings: ti,tas2781: Add TAS5832 support
Message-ID: <20260227-aquatic-burgundy-mink-f81cfc@quoll>
References: <20260226075737.405-1-baojun.xu@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260226075737.405-1-baojun.xu@ti.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269167-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,linux.intel.com,139.com,ti.com,vger.kernel.org,gmail.com,goertek.com,google.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,ti.com:email]
X-Rspamd-Queue-Id: 7D39D1B60C7
X-Rspamd-Action: no action

On Thu, Feb 26, 2026 at 03:57:36PM +0800, Baojun Xu wrote:
> TAS5832 is in same family with TAS5827/28/30.
> 
> Signed-off-by: Baojun Xu <baojun.xu@ti.com>
> ---
>  Documentation/devicetree/bindings/sound/ti,tas2781.yaml | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


