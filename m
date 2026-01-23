Return-Path: <devicetree+bounces-258656-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MCgJEkPQcmnKpgAAu9opvQ
	(envelope-from <devicetree+bounces-258656-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:34:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A34AD6F216
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:34:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1C793304B03F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 01:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E7F36215A;
	Fri, 23 Jan 2026 01:24:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQFwwSK5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B98B2DF6F4;
	Fri, 23 Jan 2026 01:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769131456; cv=none; b=uQqfOvXtEl7myfI+TCsb2MD04BBDl9gvhnVn+k0fQwawAd4XH1RwBrQntstxQ+PZrMrWOM1hFcooQY5YBC8HBtbjCh+F0sgNtL6QXzCRzmEwpDuuMD5d/tdf/S0V6/v39GZ6tBlarwwNJPpnKeXxK7Y+2fvRkGF+W9zumqQLrqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769131456; c=relaxed/simple;
	bh=/UCYbgTfvHqzeFToJOfvHYkGR2P9KrAkiNHmRMcwnsk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e7hFuzUB34b1JU+7Ai053wuwy5CjDrvnYdgq3eLUjR4bbhkLNyT3bJMMYjrbBLcZKl0+I+wLTAkk2OPoX0GvtpMLeb7xHBgYtP1eFBqCoNYNOwyFgN/NYa490PrQvlNntYneUFhSJ3WxbdcOOMVigjSPhXFwXn8421+o4aQks7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQFwwSK5; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC3B3C116C6;
	Fri, 23 Jan 2026 01:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769131455;
	bh=/UCYbgTfvHqzeFToJOfvHYkGR2P9KrAkiNHmRMcwnsk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tQFwwSK5R5L4zJP22A9CMJaT1uLiAkkw/ScNxv+0agEIKGejgWBOWyfm/RjgHRrfo
	 j1OWBZWTFTcQv8j/jJhhMPclAkZuHLPRfQZTf2+k2LqE5D6Mjxh47Qs5snlURgbzbE
	 dH8jnsdt3RG0g4yC8eMuS78GrKRGWR4OzboBfLAgZ6RTm8aRjoSz49NoEFDy++e7XZ
	 LDrui+/w4MvmAKHLNHg7MrGZRpkuwJleBBqmYBT0M6tADiEJmrO6AABMNuipcJmah9
	 lYLwY8o2lxk2THQogWbVIl/hqP25PHt0ocPYKT4S8Dn080s0O8exsVS3dqwncCP/mS
	 EyWQTfclzXJyg==
Date: Fri, 23 Jan 2026 09:24:13 +0800
From: Yixun Lan <dlan@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Haylen Chu <heylenay@4d2.org>, Alex Elder <elder@riscstar.com>,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: Re: [PATCH v3 0/4] reset: spacemit: Add support for SpacemiT K3 SoC
Message-ID: <20260123012413-GKA71138@kernel.org>
References: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120-k3-reset-v3-0-effe87f4bdbe@riscstar.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-258656-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A34AD6F216
X-Rspamd-Action: no action

Hi Philipp Zabel,

On 19:10 Tue 20 Jan     , Guodong Xu wrote:
> This series adds support for the reset controller found on the SpacemiT
> K3 SoC.
> 
> The clock driver changes, which defined new auxiliary device name
> patterns for reset on K1 and K3, have been applied to the clock tree.
> To facilitate merging, Yixun Lan has created an immutable tag
> (spacemit-clkrst-v6.20-3) within his pull request to the clock
> subsystem [1]. Hence, the dependencies mentioned in v2 have now
> been deblocked, making the reset driver ready to be applied, if it
> gets approval from review.
> 
> In this version (v3), the entire series has been rebased and tested
> on top of the linux-next tag: next-20260119.
> 
> General informaiton about the series:
> 
> The K3 reset controller shares the same architecture as the K1. To
> facilitate support for both and future SoCs, the existing K1 reset
> driver is refactored with the following changes:
> 
> 1. The existing K1 driver is moved to a dedicated 'drivers/reset/spacemit/'
>    directory.
> 2. Common reset operations are extracted into reset-spacemit-common.{c,h}
> 
> The K3 driver is implemented using this common infrastructure.
> 
> Link: https://lore.kernel.org/linux-clk/20260114060410.3340540-1-yixun.lan@gmail.com/ [1]
> 

Just want to ping this with my SpacemiT maintainer position, the reset
driver is the last piece that I hope can be accepted during this merge
window (target the v6.20 release), it would help other drivers since it
is a fundamental dependency..

The clock PR which is a dependency for reset has been pulled by Stephen[2],
and the driver also has been tested for a while locally
https://lore.kernel.org/r/176902257445.4027.5972559722832621691@lazor [2]

Reviewed-by: Yixun Lan <dlan@kernel.org>

-- 
Yixun Lan (dlan)

