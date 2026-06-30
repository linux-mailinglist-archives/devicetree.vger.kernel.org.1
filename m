Return-Path: <devicetree+bounces-317437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 3s0QJc9sQ2rvYAoAu9opvQ
	(envelope-from <devicetree+bounces-317437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:14:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DBD3A6E1033
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:14:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bd7WVLu3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317437-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317437-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6C9D63018BEA
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 07:13:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95D583C10AB;
	Tue, 30 Jun 2026 07:13:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0B240D598;
	Tue, 30 Jun 2026 07:13:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782803590; cv=none; b=iIo0DP1BDWHqn5m1DkdmAHPX7erjTyK0pj8QOozMjxND6Dzun71Yd7LGwd2qGIqwOKMXQO98sDkfS5jIQIBalaVT/2MHDeNaejt1XaAUvpuCoNoQK+c7UO1COeP5U2fUWWFPVbHyMXWoROM7O703X95/DxmPCFGoAZVZYA0r/Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782803590; c=relaxed/simple;
	bh=4aBUYteHZHPQcO06KCfqu9ZgKzj73V3n+m0Dp5Q5FzE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MIvS+uAHqQdKryCSa+zgyU03B+cxYwAzIHja+Vf2RPn7UMlS5vSVD6k9LOLQ+tGbvvsfeIQUVtcKLe2z3zF1hF5L+xHFq+M4Xr0Ti95GrX4UA+IbqpZ/eTIifaD0K3UpfhRAIMI5CSfjVHUPcEoWIAHP1Gwf7o8SCSxFkdxIDog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bd7WVLu3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F346D1F000E9;
	Tue, 30 Jun 2026 07:13:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782803589;
	bh=L/GHRXz3XUJsuDxreK6JmNSmv1iFcyXn6ceJJiVlqfE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=bd7WVLu32WVH9mOzZskDQ3kz2T62lDKqd9TogpBG+Z9CmeuAMRr6sCWFDPpvmP3vF
	 OU4T3aMlaWCFag7YhPaeiQwpeKaG5TqF6rp97DRTm+exIYS89NL5MleGLExa7gcpYS
	 WmayawxsZPBVqLRMrBXWd0TPS9ClYArt6tUBrE8A1mXtIyyw6vI3q8L7l0cFfYiWqe
	 SsTVeLsGgoOAltI386PPg/47M4jybDihA+FZ0rxoa2DNp4MQfUo9+yCzl7cacShsQc
	 KZisQA9I61RLhE4AMYqHmG94P+bKjmTOSjNQCNewdt6Z2aqyCDfQDozuR68B/9eDp9
	 HcWy5hN36Wv5w==
Date: Tue, 30 Jun 2026 09:13:04 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Santhosh Kumar K <s-k6@ti.com>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/2] Fix OSPI DMA corruption via FSS_FSAS driver
Message-ID: <20260630-advanced-passionate-fossa-6beec0@quoll>
References: <20260629072055.896322-1-s-k6@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260629072055.896322-1-s-k6@ti.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-317437-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DBD3A6E1033

On Mon, Jun 29, 2026 at 12:50:53PM +0530, Santhosh Kumar K wrote:
> On TI K3 SoCs, DMA transfers from OSPI produce corrupted data when the
> source address is only 4-byte aligned (not 4K-aligned). The root cause
> is XIP read prefetch in the FSS_FSAS_GENREGS wrapper (SYSCONFIG.DISXIP,
> bit 7), which is enabled by default.
> 
> This series adds a dedicated FSS_FSAS platform driver that disables XIP
> prefetch at probe, plus the respective DT binding.
> 
> Testing:
> This series was tested on TI's
> AM62Ax SK with OSPI NAND flash and
> AM62Px SK with OSPI NOR flash:
> 
> Test log: https://gist.github.com/santhosh21/3ac2a0273065e86315a9b442327c9599
> Repo: https://github.com/santhosh21/linux/commits/fsas

Three versions within one day that's way too much. And b4 diff does not
work:

b4 diff 20260629072055.896322-1-s-k6@ti.com
Looking up https://lore.kernel.org/all/20260629072055.896322-1-s-k6@ti.com/
Grabbing thread from lore.kernel.org/all/20260629072055.896322-1-s-k6@ti.com/t.mbox.gz
Checking for older revisions
Grabbing search results from lore.kernel.org
  Added from v1: 6 patches
---
Analyzing 14 messages in the thread
WARNING: duplicate messages found at index 2
   Subject 1: memory: ti-k3-fsas: Add TI FSS_FSAS driver
   Subject 2: memory: ti-k3-fsas: Add TI FSS_FSAS driver
  2 is not a reply... assume additional patch
WARNING: duplicate messages found at index 1
   Subject 1: dt-bindings: memory: Add TI FSS_FSAS binding
   Subject 2: dt-bindings: memory: Add TI FSS_FSAS binding
  2 is not a reply... assume additional patch
Preparing fake-am for v1: dt-bindings: memory: Add TI FSS_FSAS binding
ERROR: v1 series incomplete; unable to create a fake-am range

If you want to make it difficult for maintainer to review, your patches
will be moved to the end of the queue.

Best regards,
Krzysztof


