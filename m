Return-Path: <devicetree+bounces-300603-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCjfHK2mDWqh0wUAu9opvQ
	(envelope-from <devicetree+bounces-300603-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:18:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E465158D802
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 14:18:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 16E4C31136DB
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 12:09:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DED8E3DCDA3;
	Wed, 20 May 2026 12:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0CDiuHT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C67873DCD97;
	Wed, 20 May 2026 12:09:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779278991; cv=none; b=CIpdKs+77tPGZgGdgkwPJqjSipcumI1XKjWeIPisgl2Px2L2BbmJzXypuTFsOlnwb39N9WQk0crwUjv7aseC+qHACgMnnTxqmQ0HosRO1BX98ewsmCrcSulI9fb/3sEcLUYmzi6/Szw867qyaU3vpl4vKXmKA0gGQyC2x7wLhu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779278991; c=relaxed/simple;
	bh=wTzKfJ9/AV8JsUQ4rAySIPrkw4uxy/hrV6gRm4CflSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MZCgvWKaLXvg5nVf8wxM5w9NJvavo4oiHhjk++W+byGYJ8NP4NF36jJkp+rEr49un0PK92t5LyXP5eLq67p84AeTpkAn+HhXVXJCoDCDrggdimHZkv14jvG3cw+vYJ49OpfSqcS0GvrY6JDSHpydvqTktLQ1yhCvvyTEPbsi6ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0CDiuHT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 014961F000E9;
	Wed, 20 May 2026 12:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779278990;
	bh=TaSBu7PS/Ow3nxZoQX6ddArOegPn6w3gky4WSoil6Vg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=J0CDiuHT3XeYEgcM61cpBwzZejq8r7mbtHb/897cdVSLhCxRxmrLcGxMkJrfc3b2V
	 zC/006/MClGk7bq99pL6XujHAj5E9eqyNMQEwWoVQUqfyW9Wd8IP6R4eZSw2sTegP7
	 uxGkYjqq7RkjBibjFmksjV20rbzrHjn9rnO2FsbwXMNXKUJsoO9QMsyB4MNZOdpwuJ
	 Ci9Glkbm/R1empS+UaNQy6H/VQrOKKmxvTGLr/eToXux1SspVFN5LTtmy4x3a5Z/sQ
	 wUwS/cpfI5lIH65erLW4fNswECRYo8TpYH//PtEAIB6UpBA7xHZVf3yjXCFq7h0ioF
	 RW23UPkCl3Whw==
Date: Wed, 20 May 2026 19:50:44 +0800
From: Jisheng Zhang <jszhang@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-i3c@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] dt-bindings: i3c: dw: Describe core reset
Message-ID: <ag2gFB0BSCVUCVg9@xhacker>
References: <20260519055105.13079-1-jszhang@kernel.org>
 <20260519055105.13079-3-jszhang@kernel.org>
 <20260520-cocky-thick-wren-900aa0@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260520-cocky-thick-wren-900aa0@quoll>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-300603-lists,devicetree=lfdr.de];
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
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: E465158D802
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 09:14:44AM +0200, Krzysztof Kozlowski wrote:
> On Tue, May 19, 2026 at 01:51:03PM +0800, Jisheng Zhang wrote:
> > The core reset support has been in the code from day1, but the
> 
> Well, no. There was no "core" reset from day1, so your entire

aha, by "core reset" I mean the reset signal for i3c core. Not the
reset name. But I will update the commit msg.

> explanation makes no sense now. Previous version was correct.
> 

OK, so I will send v4. 

