Return-Path: <devicetree+bounces-273597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wDBdEREvsGlHgwIAu9opvQ
	(envelope-from <devicetree+bounces-273597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:47:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1EE252646
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 15:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5992A3032056
	for <lists+devicetree@lfdr.de>; Tue, 10 Mar 2026 14:43:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5FD52FD1B3;
	Tue, 10 Mar 2026 14:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EvLyH4x3"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A32D82F7ADE;
	Tue, 10 Mar 2026 14:42:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773153747; cv=none; b=BIxym3rJ//EfU+6dvR5FzYmcNeCJskxdtkifisNm+LXcDh3uRWfaYRZhht/D911NkVL4OQBN2q8YSBGcpU+c8/hFjygjidXL3vHFxy4sB5tpbD50OULQOMxFA95FlGPKTU9q5MDCfwG57x6eAbuX689YDDWHA+DrSyf6JaHvRvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773153747; c=relaxed/simple;
	bh=XiULlnUWiim4Vd9A51X/VKDwUmDrZT0ZRWTMfVixTIg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XP30LuaH0u7NBrMVow66WGW4EAYIi9EjlqLFo9DPP59Y3aHUOViOMGiLiNi8S7SX/pL6La6bqIcUt2jMWkKaa04wIiUkM0NRr3kArmD1pECzNmwZD1GichCCEo0p6eRQyIfyE3H2UkVF4ftc7OpA6SoCpy8k3d4HnWDJ5kGWQM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EvLyH4x3; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4F3EAC2BC86;
	Tue, 10 Mar 2026 14:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773153747;
	bh=XiULlnUWiim4Vd9A51X/VKDwUmDrZT0ZRWTMfVixTIg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EvLyH4x3NRj+GWhRUEMfJglZC0BEtfO9K3JKhIpVSZK/kCVTQdTdJcKASu89ICTtG
	 SRdvLx++4v9H6yLXmvZiZ3H+bVFgBzmXmEGzb9Wm4lSDS/k34wuaZCBYeURfZ69GsL
	 79Rbah1+taFnPm3C+cem9KOagAhlvF2itC1kmNk95ilZ6wD3Z+AYOoUjnkyTb1a2UD
	 l7C/mtri7bQ3JXtqMcCJH4D9NqTtKLNzF/pmiHwbp8TBhcbxfvWfgR6kq/MnqSIO/O
	 hCRAriBiQk1h+SCpVMeT3jAyyfJG6VJlINPsUquX00g2AVvyhGxOQhUY2Dv3FI5wdC
	 jwx9NxYHXhxzA==
Date: Tue, 10 Mar 2026 14:42:22 +0000
From: Lee Jones <lee@kernel.org>
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <matti.vaittinen@linux.dev>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: bd72720: Add ROHM BD73900
Message-ID: <20260310144222.GM183676@google.com>
References: <6eaa9f08848c27c462e156e31ae5bdfd33bf2fe7.1771938507.git.mazziesaccount@gmail.com>
 <00f4efa9-bdc2-4f10-a3a1-88bd16ac38ad@gmail.com>
 <20260310130725.GL183676@google.com>
 <feb4ac9d-c0b7-4c11-8586-e45f89099c87@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <feb4ac9d-c0b7-4c11-8586-e45f89099c87@gmail.com>
X-Rspamd-Queue-Id: DE1EE252646
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-273597-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lee@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 10 Mar 2026, Matti Vaittinen wrote:

> On 10/03/2026 15:07, Lee Jones wrote:
> > On Tue, 10 Mar 2026, Matti Vaittinen wrote:
> > 
> > > On 24/02/2026 15:11, Matti Vaittinen wrote:
> > > > From: Matti Vaittinen <mazziesaccount@gmail.com>
> > > > 
> > > > The ROHM BD79300 is almost identical to the BD72720. Main differences
> > > > are the initial values for some of the registers. Thus, it appears the
> > > > BD79300 can be handled with same software as BD72720.
> > > > 
> > > > Adding the compatible for the BD79300 enables people to use the real IC
> > > > type in the device-tree instead of claiming it is BD72720. This does
> > > > also help differentiating the ICs if appears it is needed.
> > > > 
> > > > Add own compatible for the BD73900 and mark BD72720 as a fall-back.
> > > > 
> > > > Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> > > Hi dee Ho peeps,
> > > 
> > > I wonder if this should go via MFD tree?
> > 
> > It was missed because of a malformed subject line.
> > 
> > If fixed this up and apply the patch.

It would have been better if I'd proof-read this before posting!

... but you get the idea.

> Thanks Lee :)

NP

-- 
Lee Jones [李琼斯]

