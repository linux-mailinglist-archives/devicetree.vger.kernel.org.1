Return-Path: <devicetree+bounces-304546-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OJMODdJTGmpE3AgAu9opvQ
	(envelope-from <devicetree+bounces-304546-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 05:04:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C1160B083
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 05:04:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8B89F30210F7
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 03:03:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BB2A31690E;
	Sat, 30 May 2026 03:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFeFMKOU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6741175A66;
	Sat, 30 May 2026 03:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780110202; cv=none; b=b1V3CHYK1HlOJ8eyYYskjoPqLitOF2jZkFbU4gCsMvKYAbpY84Gf/GnygKpqxQiu9RTilk4OfNugmCw9jrM7EnpePnNxs0j03333Dv/+h3V8/9rfnwmK2+xuDHmhSB3gyIVWdJY1RAD5qUpG5KwxPrAuRxVfGgv1OqqCBWcxrE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780110202; c=relaxed/simple;
	bh=9O2tdNxdzKqtSSFxKwCQqUXPKygGm77hCPN/2gyL7UI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UnoG+WN+aGiyhNzAQpQS3N5z18i/g7sCwcAWze6vECJyqDX4m0IVzmCEgNQkFdfOmK3CUrd4p94Ej+PMUOSx3/gtA8LGeUI9mpSrMJ1iH+bWkeF7J7AIqm6rnKef0CjriXzXfUq+eK2CRxyFKWkZA2unT+pLjUSXKBKoK24/AC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFeFMKOU; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9F831F00893;
	Sat, 30 May 2026 03:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780110201;
	bh=lV76AH1HBmgcxLbMccze3T0BHd4sPS3mDORlT8NSVC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=oFeFMKOUmBDgQJ/Ers8G0P8ui1p3EETlX5hPRVKl4gC71fHeFzNm8vb3L043SmcnB
	 ZVVGpL6Whb92ngsvTjlxMUg8GAceD/BSN5NqaUaIvktbKWa4T8mhsh3kkSIik51sN9
	 WSyK4SG6HYO2V7cfdvioFDeU95fc4kgDk3gmDWfA1EzJ8wJ3kUxO9FPVi8oLGZowMW
	 TZg2bXVWxRJh0Mnp+PXzVohL7MgQ237ydtk/549EJLhn3MfvfpUh9b3oHW33YmCi4z
	 z2ErPhNqkBBBxv93YMWq27/Oy7p4YY2xrLKEWbqNWume/HhjLAu9DKUvM84SkYf9fQ
	 D6x+Qf21+wV1w==
Date: Sat, 30 May 2026 03:03:19 +0000
From: Yixun Lan <dlan@kernel.org>
To: Guodong Xu <guodong@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org,
	Guodong Xu <docularxu@outlook.com>
Subject: Re: [PATCH] riscv: dts: spacemit: k3: Add Ziccrse extension for X100
 cores
Message-ID: <20260530030319-GKG3748271@kernel.org>
References: <20260526-k3-ziccrse-v1-1-c759792ca3a3@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260526-k3-ziccrse-v1-1-c759792ca3a3@riscstar.com>
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-304546-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,dabbelt.com,eecs.berkeley.edu,ghiti.fr,vger.kernel.org,lists.infradead.org,lists.linux.dev,outlook.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlan@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,riscstar.com:email]
X-Rspamd-Queue-Id: 86C1160B083
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Guodong,

On 15:22 Tue 26 May     , Guodong Xu wrote:
> Add the Ziccrse ISA extension to all eight X100 cores. Ziccrse
> provides a forward progress guarantee on LR/SC sequences in main
> memory regions with cacheability and coherence PMAs.
> 
> The SpacemiT X100 core supports it per the SpacemiT K3 hardware
> specification.
> 
> Signed-off-by: Guodong Xu <guodong@riscstar.com>

Looks good, I will queue it, thanks

Reviewed-by: Yixun lan <dlan@kernel.org>

-- 
Yixun Lan (dlan)

