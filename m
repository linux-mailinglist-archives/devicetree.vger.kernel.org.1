Return-Path: <devicetree+bounces-303691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aAFPBtz0F2rNXQgAu9opvQ
	(envelope-from <devicetree+bounces-303691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 09:55:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C3E85EE116
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 09:55:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 546253029E50
	for <lists+devicetree@lfdr.de>; Thu, 28 May 2026 07:49:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFCA533D4FB;
	Thu, 28 May 2026 07:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn8fajq4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB0D3438AF;
	Thu, 28 May 2026 07:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779954578; cv=none; b=acOST65v98nrQ9Tk1foNp+ntdFvmZVewjsoM2Qf6t7LMcH4gMZqaN9fN19FU321cj8bOhGbX1epXs/fL0zlTbAZ+rj8q5Hd+Z31K2Y7KtpJ800Ai0oUBjOqNjunsSrd3Cdsy4ABMj0CJSZEYd9x3rwGx/zaZTVVxTX4KAjxfpSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779954578; c=relaxed/simple;
	bh=pjdhvqSiNhvy7Qy/b6UmRx9J1B580W+nvc/BWlCeJFA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=awtLP1k/tmjmAAP9t5XKVhhnkHDTQfQ93ejvde8mOn1UWpJd/F9kSZmBFG0nsyLDZYIZ1yVt1YO7qHdndViVW3MNqESApiHMyAVSnOraUnsxoZ5hGXc0Ns9ycvGsAvS2+oB8ufyoQ18TSawzXTT/psEQDdawhatpo/gMKFzhfwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn8fajq4; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AEE6B1F000E9;
	Thu, 28 May 2026 07:49:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779954577;
	bh=ku00qaicxZefmnje9SkxWtMUgvb2Vl4elij8jTv31fI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=Vn8fajq4rrGBfOzzXS5P/YIxcunbyso+GFTWEKmLWETN8PyBnTHwan0mddYSQ3vF1
	 AsV9kTuCnQy7WiEkNQ5saEonR1XA7o73d8l2fcu9o/g79jQTqWrtjGnqfe8a9IkmYu
	 MPIKJ18GoYi3Whdx0Uiy/aMseZREwOniS9L92lUjySUa079yDBArUB/ILacxT3yMzD
	 p4byqhqBh40HOci4WLzCFYIXw98geeizc7r2OyH3CxGyEV79/usXq7B4I2dG3e6/8b
	 Jmxq8Qckf3J39Pvtovam7jbd7YGhkGzSFsS2phg7x3wgS3eLhiGy1QlJ06kIdKRDhc
	 4Ay/Y8/EEGdZA==
Date: Thu, 28 May 2026 09:49:34 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geetha sowjanya <gakula@marvell.com>
Cc: linux-perf-users@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, mark.rutland@arm.com, 
	will@kernel.org, krzk+dt@kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: perf: marvell: Add CN20K DDR PMU
 binding
Message-ID: <20260528-unbiased-affable-bobcat-0adec6@quoll>
References: <20260527154118.12884-1-gakula@marvell.com>
 <20260527154118.12884-2-gakula@marvell.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260527154118.12884-2-gakula@marvell.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-303691-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:email,marvell.com:email]
X-Rspamd-Queue-Id: 7C3E85EE116
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 27, 2026 at 09:11:17PM +0530, Geetha sowjanya wrote:
> Marvell CN20K SoCs integrate a DDR Performance Monitoring Unit (PMU)
> associated with the DDR controller. The block provides hardware counters
> to monitor DDR traffic and performance events and is accessed via a
> dedicated MMIO region.
> 
> The CN20K DDR PMU is functionally equivalent to the CN10K DDR PMU, with
> minor register offset differences.
> 
> Signed-off-by: Geetha sowjanya <gakula@marvell.com>
> ---
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


