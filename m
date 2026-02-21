Return-Path: <devicetree+bounces-267100-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KDISODmPmWlNVAMAu9opvQ
	(envelope-from <devicetree+bounces-267100-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:55:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43CFC16CBAD
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:55:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CD9A301700F
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 10:55:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08207346FB6;
	Sat, 21 Feb 2026 10:55:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DmfEn8JL"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D921424E4A1;
	Sat, 21 Feb 2026 10:55:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671350; cv=none; b=s+Bcp+8Qzzboyc1To7l5Np/s0XVmatEClYvkkzZwQSApTsVZfQffQZmke+b2saKryygiUMeWY5YztDW5b4L+lqYhHMzgJXHZHmCBrc2TqKhYkXfb+Qkil7jUJhh4oC+wcNHgjAgAPh9xrBPWCNQjS5VJi/OvwO5Y8hl+qzBrWPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671350; c=relaxed/simple;
	bh=YasJ72GJxI850+jfXronXF1y2exNJJYq6K16ETHrkNQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d9Ds7uLOfvlFuhv4wFJ9DRp5LSi5cjLahIz4VqyKfp1Bc7KgSvAQrv/i85emY6gCiY5a7bzxPXufQLnO6Qsc1VszFj9aVVbjD64w0EYdeUemHtPovf2oK22/1wpwwU9sxPwMY7nJzdTJXcjJfZOOku29nDGVBRFzwQtTDgzFEhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DmfEn8JL; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED154C4CEF7;
	Sat, 21 Feb 2026 10:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771671350;
	bh=YasJ72GJxI850+jfXronXF1y2exNJJYq6K16ETHrkNQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DmfEn8JL6/R7Fu2W/rux5IGH7Noc0A/Hf6N84fQubnZEs1vsGcx2tkym27jVBrk0s
	 X80x6Og+/TkgK6lmo9Zjbe5kJsNc96iDgvEZdtbjRzishJbxKM/UOWjNdHmenmc7Qb
	 66DMXt7LlLWYXFASVp2puKbLrU26khymgmZjcaQTM5j3XxBoS+FCb3YsTICL9M+yvL
	 y5dJB5zUneUs8Soza5EI4TI5t7XzUVgGOgKhAYRVIoUcaZzeom3f1aRD75kjkRyG8h
	 FJs2K9jixlgYiUTyWgE0FVXn0h1th5GlTyeYq1XodxfMP59GFyUTf6sbqgpffBVzxP
	 a1UYhrTGx1qfQ==
Date: Sat, 21 Feb 2026 11:55:48 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Xilin Wu <wuxilin123@gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: Add AYN Technologies
Message-ID: <20260221-proficient-eggplant-salmon-5544cd@quoll>
References: <20260220-ayn-vendor-v1-1-292cbbb682b3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260220-ayn-vendor-v1-1-292cbbb682b3@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267100-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,ayntec.com:url]
X-Rspamd-Queue-Id: 43CFC16CBAD
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 04:11:11PM -0600, Aaron Kling wrote:
> From: Xilin Wu <wuxilin123@gmail.com>
> 
> Add an entry for AYN Technologies (https://www.ayntec.com/)
> 
> Signed-off-by: Xilin Wu <wuxilin123@gmail.com>
> Signed-off-by: Aaron Kling <webgeek1234@gmail.com>
> ---
> This was originally submitted as part of the original Odin 2 submission
> [0], but that series stalled, so submitting this separately. The prefix
> was renamed to ayntec as per the review comment on that patch.

And why do we want it without the rest? Answering: we don't want unused
binding and nothing in the commit msg explains other options.

Best regards,
Krzysztof


