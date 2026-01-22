Return-Path: <devicetree+bounces-258651-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OHsAEBC0cmn5ogAAu9opvQ
	(envelope-from <devicetree+bounces-258651-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:34:40 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF40B6E8B3
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 00:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C153B3014657
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 23:34:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5947264A74;
	Thu, 22 Jan 2026 23:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="To2BIOxp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F18EB376466;
	Thu, 22 Jan 2026 23:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769124870; cv=none; b=gBZm0saj0B28k9uALUEZsfkVd7lbf7Rf4so16NCJkSYyazeq+lgx5c9/LEEGeQvU6E8s7QzbS4oBLwiCAxFkhNLw0CfWFCqn/UBU2mYEO/QQykuZCmGk1/QO0Wx7Aoliq4nv71PAL+X8V+mN3Z6MXgsHogThhqXLpi8L7XqGznI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769124870; c=relaxed/simple;
	bh=rNQf3DpBiV3O2Svpla5gmFJqhAWFhhspthXwmrRKxV4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZTdKpjTCHtEC4zxir+sLrN5Q4c3A1QSzXNNfZF4FQvh72veM30CkBn34xmoCdfUoSndyAYEaZXMYUogds01aNK0ziAB4U0yPlMRauc70abM/Tvm9/8hlD5OGUSwcKuJjEdZ/dxjPSbR7pU7Jq68RXqMLH7nsXLbYMvxO778JK48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=To2BIOxp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3D579C116C6;
	Thu, 22 Jan 2026 23:34:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769124868;
	bh=rNQf3DpBiV3O2Svpla5gmFJqhAWFhhspthXwmrRKxV4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=To2BIOxp+r6+KCWnNkscREHhz7ptYuPm7YUL+FZyXdJBAPMAYlbSyWSjjHZRU97rt
	 CHpvae4Cb5d13a0wFjz3Dq/INscKBpRZyQv02R8K1iaoAATSjBSbWVc1fdpiGYlZmr
	 PZbEoCl7HjK7d2sCWMaAqewvZf7xCRqHJ4HsL4nBAZ4ZzAQoln83nMECr9ZE0SzqWd
	 7S/UUwi3lEakH2zh4nffmRcwtT3cvqrb94IgQdoLc6PdGH/FeG6pg3cnPqENX8AEBT
	 +ugQXjbj14U//sNc3y8vyrFzOjybQKKpFPKcljqp5eH5q4/2QtqjHE/sCBOdaUXcDR
	 29TGsT/VwNU8g==
Date: Thu, 22 Jan 2026 17:34:27 -0600
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Fabio Estevam <festevam@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v1 1/1] dt-bindings: input: touchscreen: tsc2007:
 document '#io-channel-cells'
Message-ID: <176912486691.3737985.15173538694059115500.robh@kernel.org>
References: <20260122193549.29858-1-clamor95@gmail.com>
 <20260122193549.29858-2-clamor95@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260122193549.29858-2-clamor95@gmail.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[gmail.com,kemnade.info,kernel.org,nxp.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-258651-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.985];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF40B6E8B3
X-Rspamd-Action: no action


On Thu, 22 Jan 2026 21:35:49 +0200, Svyatoslav Ryhel wrote:
> The tsc2007 can be used not only as resistive touchscreen controller but
> also as a ADC IIO sensor. The second use case requires '#io-channel-cells'
> property, hence add it.
> 
> Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> ---
>  .../devicetree/bindings/input/touchscreen/ti,tsc2007.yaml      | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


