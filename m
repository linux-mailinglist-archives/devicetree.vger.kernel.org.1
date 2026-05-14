Return-Path: <devicetree+bounces-297507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CASKAEa6BWpJaQIAu9opvQ
	(envelope-from <devicetree+bounces-297507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:04:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C05A5415FD
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:04:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A72C130125B9
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 12:04:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F51C3C769D;
	Thu, 14 May 2026 12:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlEa66C4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7C43AEF4F;
	Thu, 14 May 2026 12:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778760254; cv=none; b=S5JLLzH2C5z5W4YZjuAlzFbBohJzNTLzQZFzsv3OkmUcDoZFYJ1hFKf0RLqyX1Ui/zcE4NPx3gepSF9X2cqJukEeZfYkXqTN4A41C171GFrLC5Xl+UUZxP4ZW/rf0Qi9IDpUENgohkHkHq+8BePtZuiczL71n16B1k+jFgCbmBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778760254; c=relaxed/simple;
	bh=3Ophp1rxRSOQOJoDZj+hxZG0S99E1oAe3Jsf1A4VFLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U7CWVfmYG+1N8CfO4kW078VaRBRhdum2i8JQ4zTaIAyue/DwPlp8/Z+VAF8PCP3cmg7awxi1itaHbyxq9xbB6D4QlWsMW0HDe6RFDK9EPFDmvMFdarjD0R4+2wuVuWZ1x0gWvGHUk0wr5lUkxQQNMcCY9czFvK6dLWIxfMeWHTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlEa66C4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 313F8C2BCB3;
	Thu, 14 May 2026 12:04:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778760253;
	bh=3Ophp1rxRSOQOJoDZj+hxZG0S99E1oAe3Jsf1A4VFLg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rlEa66C483gqkdV75Q58miOOP3AEeMxaN8khSI05Hi8O854PezJ3slt0Qx1lOql1s
	 De/Fp3derf8ytHNA6LNqQ8K9NtSan9ij8uu1s+0k0Rc3wYzf5jVdVMS6JcreSTn/8O
	 pLML4huCT3hNRtguQjx6HnGrnGbvWR8+QHAsGdJiQUDw1Dv8663DX40ML+rngtj2mx
	 G9ciTPPXiKoz4nraWCTXQZqTZdap8IJb8WPYqRtu8unwi1IKoUbz0kHtsZABQjGXYQ
	 MVvFm2enwuXzjE2+sxa+js5cjFFMPRixgColVzsmqjtMeYPwH2fSgTij0l2VGuxMK6
	 X6PtaVNlqvjug==
Date: Thu, 14 May 2026 14:04:11 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Jernej Skrabec <jernej.skrabec@gmail.com>
Cc: wens@csie.org, samuel@sholland.org, mripard@kernel.org, 
	maarten.lankhorst@linux.intel.com, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com, 
	sboyd@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 7/8] dt-bindings: display: allwinner: Split H616 DE33
 layer reg space
Message-ID: <20260514-valiant-ape-of-discourse-a4f5a9@quoll>
References: <20260509190015.79086-1-jernej.skrabec@siol.net>
 <20260509190015.79086-8-jernej.skrabec@siol.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260509190015.79086-8-jernej.skrabec@siol.net>
X-Rspamd-Queue-Id: 0C05A5415FD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-297507-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[csie.org,sholland.org,kernel.org,linux.intel.com,suse.de,gmail.com,ffwll.ch,baylibre.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org,lists.linux.dev];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Action: no action

On Sat, May 09, 2026 at 09:00:14PM +0200, Jernej Skrabec wrote:
> From: Jernej Skrabec <jernej.skrabec@gmail.com>
> 
> As it turns out, current H616 DE33 binding was written based on
> incomplete understanding of DE33 design. Namely, planes are shared
> resource and not tied to specific mixer, which was the case for previous
> generations of Display Engine (DE3 and earlier).
> 
> This means that current DE33 binding doesn't properly reflect HW and
> using it would mean that second mixer (used for second display output)
> can't be supported.
> 
> Remove layer register space, which will be represented with additional
> node, and replace it with phandle, which will point to that new, shared
> node. That way, all mixers can share same layers.
> 
> There is no user of this binding yet, so changes can be made safely,
> without breaking any backward compatibility.

There is user. git grep gives me:
drivers/gpu/drm/sun4i/sun8i_mixer.c

which means this is a released ABI. As I understood, the old code was
working fine but just did not support all use cases. Why this cannot be
kept backwards compatible?

Best regards,
Krzysztof


