Return-Path: <devicetree+bounces-262646-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2Hn0Dh1Ig2mMkwMAu9opvQ
	(envelope-from <devicetree+bounces-262646-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:22:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9758DE6590
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 14:22:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C97DB3009160
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 13:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F8BE27A107;
	Wed,  4 Feb 2026 13:21:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUJc1dy1"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E179A1917F1;
	Wed,  4 Feb 2026 13:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211306; cv=none; b=mp3wSl2FNpg9yOZPn0uPQfmWReg+MEk26zPcemZRnZEJg9UkaaTcymw5foXxNBSz3bOFxxaW/k58ScPR3wtIl8iFkw31lPFqz/7aTL9+CVWCjuiqsPMFxDAY7/JciLWIciBQJj0yzjtXgKGtaXtSmMWxff8qjE7HABAz9QkTmaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211306; c=relaxed/simple;
	bh=FbJa/EfsoWacCr2nE38u27Pj2p6ZtB3rKlGers+EhcE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fXHlMNNvtpiZsuG59i77/M6b82SgvM76d5irnWU6C9RCW8kQyVtKLsZ8UE/tD8si8aPzz4jcPUVCRu556CVoGDJV9jSLW4aRoll+p24BVVVQ389zgXl1I93ZIVgDoHXEEHDr4Nis+Nm8jyysMMuH4a4TxdsQbtQskSl+tbiLZno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUJc1dy1; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 39C84C4CEF7;
	Wed,  4 Feb 2026 13:21:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770211305;
	bh=FbJa/EfsoWacCr2nE38u27Pj2p6ZtB3rKlGers+EhcE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tUJc1dy1pbFyPGDaUgShKAvYzeT8PXQS9gnJ8/H61sz7kpGZRpttgHEGQh+HYkLrq
	 mubsTySxFgphynjGPphcXj/ECWF6qbxH09wv2+ebJuZsPSQ0LyY4bDr0jcIO1xOgfw
	 E80JFwGKrzRVWsqVMziXMO2YiDPxC5ly6TtxnrqXxSxbFWvX/s3wGLaT/f05s+oQTn
	 Sf3Q1IR+1Q1bTcKnCbO8mvyI3M8Obtjjy31f7ii+8Ij75v+FBBamehhX9QqlbY43FJ
	 BA84sHawdDBs7gT2rW709jW+Qq0EcOl2d0WK3TnQ/fQ8M7Z7Hxg0di30rjKZ1l6/Aw
	 jbTsnCmyIiE0A==
Date: Wed, 4 Feb 2026 13:21:40 +0000
From: Lee Jones <lee@kernel.org>
To: linux-kernel-mentees@lists.linuxfoundation.org,
	Soham Metha <sohammetha01@gmail.com>
Cc: shuah@kernel.org, skhan@linuxfoundation.org,
	linux-kernel@vger.kernel.org,
	Support Opensource <support.opensource@diasemi.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH] docs: bindings: da9055: fix dead link to codec
 binding
Message-ID: <20260204132140.GC1169221@google.com>
References: <20260126111309.22097-1-sohammetha01@gmail.com>
 <177021120569.1239607.5629414298206360992.b4-ty@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <177021120569.1239607.5629414298206360992.b4-ty@kernel.org>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262646-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[lists.linuxfoundation.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 9758DE6590
X-Rspamd-Action: no action

On Wed, 04 Feb 2026, Lee Jones wrote:

> On Mon, 26 Jan 2026 16:43:09 +0530, Soham Metha wrote:
> > The simple audio codec bindings were consolidated into
> > trivial-codec.yaml by commit 4acbfcf11cbe ("ASoC: dt-bindings:
> > consolidate simple audio codec to trivial-codec.yaml").
> > 
> > Update the DA9055 binding documentation to reference the new
> > trivial-codec.yaml location.
> > 
> > [...]
> 
> Applied, thanks!
> 
> [1/1] docs: bindings: da9055: fix dead link to codec binding
>       commit: 845776177cf3b75be4e27213425f25dcb630d817

I corrected the subject line for you:

  dt-bindings: mfd: da9055: Fix dead link to codec binding

Please use:

  `git log --oneline -- <subsystem>`

... to figure out expected style in the future.

-- 
Lee Jones [李琼斯]

