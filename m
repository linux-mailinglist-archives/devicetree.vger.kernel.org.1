Return-Path: <devicetree+bounces-258140-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCgrOjRPcWkvCAAAu9opvQ
	(envelope-from <devicetree+bounces-258140-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:12:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 53F9B5E8FC
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 23:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 83BE972417C
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 22:10:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC2B30B50A;
	Wed, 21 Jan 2026 22:10:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3QuRKWu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BB7F2253B0;
	Wed, 21 Jan 2026 22:10:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769033407; cv=none; b=IePVgOQTO8vxCROW3AiDjTPG/irAHUO/8YZUWGQIBbn7xSlyM+9Zr1QTtEG2vysLMUZ5bnQKjCVTQq7xldbCgfdaihZGh6YqrdxswyKjtFucXq7jhjT2wEpD23xH7RmIy5NaraqlKQsvrB318lM1ttREpCFCISKa+ggVyN8mc0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769033407; c=relaxed/simple;
	bh=HabHZvVwJ+bnQvpGNtcIBPQgIUhvIVff0ZI0l9wEe18=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CLAXELK1iTgUCyUzZRgGvDtYI6/7ozksjzDNUU1jZJ9WpAL7GhceH7miQCtm8eEm6DdhgKaVOLdcjZIoI6oQyyRklXoXs334PKX+f1i88Ro+JdazSfFlHP6nPvh+DZZk9z8cofmQ32UbdU8mEu/aXjNn4xXnWMWX0vzhfeSxCkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3QuRKWu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B002C4CEF1;
	Wed, 21 Jan 2026 22:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769033405;
	bh=HabHZvVwJ+bnQvpGNtcIBPQgIUhvIVff0ZI0l9wEe18=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a3QuRKWuAEbFR5HY292kAUNuNV9mgsqshG+6WJTwBgdEmXel0nKt3y2hDeu6pQ1ik
	 xJJx6HkdeKpCQ2dbE1Y+0t3DadAFhHFiOjhtL5nyPAhqCH/zpDVyc3k9ik9y3EDxqr
	 NRhi66jCjqanIREemYfEAqHd1MurrB1LqKp68Zcp5xP1XNoSEBTyVdsEWeiwgtzMkD
	 yIjvfEed+pqeKDiLu1XdSZc/dmVEwObFM0OO7ZGiZOU9guLyvGfH3fYb08yAjvmH7s
	 SJ24esp++DhPRmi+12BhRJlekAg1VvPYuXR6FYvDSg3F9aNyGUvx+Hhn+CL08LQfCF
	 gy0G30U7zT7PA==
Date: Wed, 21 Jan 2026 16:10:04 -0600
From: Rob Herring <robh@kernel.org>
To: Gianluca Boiano <morf3089@gmail.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org,
	krzk@kernel.org, dmitry.torokhov@gmail.com
Subject: Re: [PATCH v2 1/2] dt-bindings: input: novatek,nvt-ts: Add
 nt36672a-e7t-ts compatible
Message-ID: <20260121221004.GA216413-robh@kernel.org>
References: <20260120193600.1089458-1-morf3089@gmail.com>
 <20260121214141.36858-1-morf3089@gmail.com>
 <20260121214141.36858-2-morf3089@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260121214141.36858-2-morf3089@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-258140-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RBL_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[2605:f480:58:1:0:1994:3:14:from];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	DNSWL_BLOCKED(0.00)[10.30.226.201:received,52.25.139.140:received,2605:f480:58:1:0:1994:3:14:from];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DWL_DNSWL_BLOCKED(0.00)[kernel.org:dkim];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	RECEIVED_SPAMHAUS_BLOCKED_OPENRESOLVER(0.00)[52.25.139.140:received,10.30.226.201:received];
	ASN(0.00)[asn:7979, ipnet:2605:f480::/32, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:helo,dfw.mirrors.kernel.org:rdns]
X-Rspamd-Queue-Id: 53F9B5E8FC
X-Rspamd-Action: no action

On Wed, Jan 21, 2026 at 10:41:39PM +0100, Gianluca Boiano wrote:
> Add compatible string for the Novatek NT36672A e7t touchscreen variant
> found on the Xiaomi Redmi Note 6 Pro (tulip).
> 
> This variant uses different chip parameters compared to the standard
> NT36672A, specifically a different wake_type value.
> 
> Signed-off-by: Gianluca Boiano <morf3089@gmail.com>

Missing Krzysztof's Ack.

> ---
>  .../devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml    | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
> index bd6a60486d1f..aaa9976bd65e 100644
> --- a/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
> +++ b/Documentation/devicetree/bindings/input/touchscreen/novatek,nvt-ts.yaml
> @@ -17,6 +17,7 @@ properties:
>      enum:
>        - novatek,nt11205-ts
>        - novatek,nt36672a-ts
> +      - novatek,nt36672a-e7t-ts
>  
>    reg:
>      maxItems: 1
> -- 
> 2.52.0
> 

