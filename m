Return-Path: <devicetree+bounces-303078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6EGPHt+6FWrKYQcAu9opvQ
	(envelope-from <devicetree+bounces-303078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 17:23:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4865D89BF
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 17:23:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C28533043EAE
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 15:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9E140F8C4;
	Tue, 26 May 2026 15:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cO4b7eaq"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E32409627;
	Tue, 26 May 2026 15:03:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779807832; cv=none; b=MZfxZ3VSxvCnrWYIwYSYxoDJJjNogx3JtWpXjMExtF5XafghY2qe8EHm+j2Wvu3hepowFEonj7hAf+mZ2nMMJ/LHF7EvJQVa/xgRTCgLEXB5HhD02cd7xZhhQzQNFyt0zGhZOW0Bk07jpjrCns2X3OPEBzG1vmMqj106uLptEYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779807832; c=relaxed/simple;
	bh=7WY9SpLgKNoK6SbB2sNnWTouW3Gpclt2bWosMYonSCU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P5xizaliv/Fy8RHRisT85KH33KGkq2zXw6g/1uy43w7YpcI/Bk4+Jg/sB6FJmaqp1CxfZ7wW7fJ5VekZvqLZSFseBwrqW9uGJejKjkE9Uq8qy+0rYFiAGnVNDu2uc4w+bOpKhoVlHj9ba/FT9jO0SCzPYb0xMwrGdBDAwqAsnFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cO4b7eaq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 42FDB1F000E9;
	Tue, 26 May 2026 15:03:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779807830;
	bh=+rZSJLBmdmQ5TDTNTam+3vDjLLn8hPQyVj5Ex2NgWpw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=cO4b7eaqhuJSwFhFXIFYHnMi76Y8H3sGhZDVaUcsmkOYUyMqBED38lkmdSuEKh3zz
	 EMWV7LG7KJ7bHCeRYWAZsOeouwNgBKsYICl9VbvcXbVkfvBG2SPey9xrSniSFyFM2n
	 G9sznW4hAkIXHwTM/4Od3VwZLm989KZ6UNO/GE8n2wUfGOUN/gjjPDm+3kxGAUUxM6
	 ULZetA2zNTYrQir5+BrLadNXo+HlyPBZDIymhVqrflbROtpmNcYraHwmuuoVQgAlmq
	 PfxGVWGPnXE6n5MW3gVPYCOP0K+pV0VohphikWECT3t6ho7f8C1BPdtK09I56uQG2/
	 cCEgaIJORcN1A==
Date: Tue, 26 May 2026 17:03:47 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Hongliang Wang <wanghongliang@loongson.cn>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, 
	Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wolfram Sang <wsa+renesas@sang-engineering.com>, linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
	loongarch@lists.linux.dev
Subject: Re: [PATCH v4 1/2] dt-bindings: i2c: ls2x-i2c: Add clocks and
 clock-frequency properties
Message-ID: <20260526-inquisitive-sambar-of-wholeness-22f99d@quoll>
References: <20260526031021.32662-1-wanghongliang@loongson.cn>
 <20260526031021.32662-2-wanghongliang@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260526031021.32662-2-wanghongliang@loongson.cn>
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303078-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,loongson.cn:email]
X-Rspamd-Queue-Id: 1D4865D89BF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, May 26, 2026 at 11:10:20AM +0800, Hongliang Wang wrote:
> From: wanghongliang <wanghongliang@loongson.cn>
> 
> clocks property describes the i2c bus reference clock from APB clock.
> clock-frequency property describes i2c bus speed.

Not rally relevant to your code. We know what clocks and clock-frequency
are.

> 
> Signed-off-by: wanghongliang <wanghongliang@loongson.cn>

Please do not use login name as actual name. Your email has different
Latin transcription than above.

> ---
>  Documentation/devicetree/bindings/i2c/loongson,ls2x-i2c.yaml | 3 +++
>  1 file changed, 3 insertions(+)

Best regards,
Krzysztof


