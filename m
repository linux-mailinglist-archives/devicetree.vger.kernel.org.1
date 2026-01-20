Return-Path: <devicetree+bounces-257641-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GFz1E94OcGlyUwAAu9opvQ
	(envelope-from <devicetree+bounces-257641-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:25:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E31464DC12
	for <lists+devicetree@lfdr.de>; Wed, 21 Jan 2026 00:25:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2BFC08CF26E
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 22:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87A3C3ED134;
	Tue, 20 Jan 2026 22:22:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FudbGwBz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F35D3ED12D;
	Tue, 20 Jan 2026 22:21:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768947718; cv=none; b=CYkF54xsCrJsXk9wi5FXpT8jVnvBOf/V73m5g8BnH+MfKFnP2kDYR07UVeEQ2Am/kbOt1AmGIuJMzhn3Lfc8EkXj87gT1ERmu3zSaR5Nzod2/RdXP7OZBF+mQqFNQxnSQMNtd0/7ZkKA8LYN2yjlMhCxgujLcDQRI7zyEmM2mpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768947718; c=relaxed/simple;
	bh=IK8D8Xv+ONqo3RFJ8AxmFWNLYJpqQieh7wCmB+tul8k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rl6iz6MBCc86INnz7QP70r1a7qK6FdSk2S2OscJZb/VJWpRP2xG8AJ5NEM+St6mw6kQ5NAa0n4ZfFHw4LmHVklTQtlD0lQ2ocYfABh2T8jydYRXVr9SrSbkwukUsB3vOBn/hkTVng7W3ulTmNAhjt+F44sETlScrL45Rk4n1fDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FudbGwBz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66A4CC19422;
	Tue, 20 Jan 2026 22:21:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768947716;
	bh=IK8D8Xv+ONqo3RFJ8AxmFWNLYJpqQieh7wCmB+tul8k=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FudbGwBzYou7nHD9nWyUjG4fZSf4nlql2SX73XBIqVKCIt6rMNRPktAcgX9USwozu
	 zOcA2H+hyeaApk51SoOURjzYDVc9zmchSiIbwdz2j1jriH7BvTQyrzykm6Eo53s8Hp
	 zrF0eUN+yWM3hF/aYMaarnv7Co4qqlfrvImW2p7LzQwMrzsJswiKZkv1FnBxbs093U
	 WFsF7iPDRNFWgE/J4HmkPgM9Jnb9gsGhPkPlfGXXHUAYB4mgWqFhodWexGCxg9bEDy
	 bBw74pex+ej3GL4JFL1MFwnCUkicIbxuh8D1PlnEyGeFtjQDK62SQE3OoZp3X20fA0
	 ivUPkiBE5dpKQ==
Date: Tue, 20 Jan 2026 16:21:55 -0600
From: Rob Herring <robh@kernel.org>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Saravana Kannan <saravanak@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Alexis Czezar Torreno <alexisczezar.torreno@analog.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH 1/5] of: Add of_property_read_[u32,s32]_default
Message-ID: <20260120222155.GA1226342-robh@kernel.org>
References: <20260119-add_dt_default-v1-0-db4787ea7a9e@nxp.com>
 <20260119-add_dt_default-v1-1-db4787ea7a9e@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-add_dt_default-v1-1-db4787ea7a9e@nxp.com>
X-Spamd-Result: default: False [-0.96 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,analog.com,vger.kernel.org,nxp.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-257641-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	DKIM_TRACE(0.00)[kernel.org:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	R_SPF_SOFTFAIL(0.00)[~all:c];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7979, ipnet:142.0.200.0/24, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[dfw.mirrors.kernel.org:rdns,dfw.mirrors.kernel.org:helo]
X-Rspamd-Queue-Id: E31464DC12
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jan 19, 2026 at 10:02:54AM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> Introduce new helper functions of_property_read_u32_default() and
> of_property_read_s32_default() to simplify reading optional device tree
> properties with a default value.
> 
> A very common pattern in drivers is to provide a default value and let
> of_property_read_*() override it when the property is present, e.g.:
> 
>     Y = Y_DEFAULT;
>     of_property_read_u32(np, "prop", &Y);

This is how defaults were intended to be handled.
> 
> or equivalently, checking the return value explicitly:
> 
>     ret = of_property_read_u32(np, "prop", &val);
>     if (ret)
>         Y = Y_DEFAULT;
>     else
>         Y = val;

This is usually only needed if the variable type is different. Probably 
the better fix is fix the type difference.

> Both forms express the same intent: the property is optional and a
> well-defined default should be used if it cannot be read.
> 
> With the new helper, this can be expressed more directly as:
> 
>     Y = of_property_read_u32_default(np, "prop", Y_DEFAULT);
> 
> The helpers intentionally ignore the error code and return either the
> parsed value or the supplied default. They are meant for optional
> properties only. Callers that need to handle or propagate errors should
> continue using of_property_read_*() directly.

What about u8, u16, etc. and device_property_read_*? I'm really on the 
fence whether this is all worth it...

We may also want to do something like of_property_read() implemented 
using C11 _Generic(). Not sure if that's worth the churn either. It 
would make doing some type checks harder. For example I could extract 
all property names from of_property_read_u32() calls and check their 
size against the schemas. (I have the first half of that already.) Using 
_Generic() would make that harder or impossible.

Rob

