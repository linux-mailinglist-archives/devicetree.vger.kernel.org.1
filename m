Return-Path: <devicetree+bounces-301187-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UNunIrHfDmoVCwYAu9opvQ
	(envelope-from <devicetree+bounces-301187-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:34:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D845A3617
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 12:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BE7D730866D2
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19B539EF2F;
	Thu, 21 May 2026 10:19:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXmBYNJ6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBB09381B17;
	Thu, 21 May 2026 10:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779358745; cv=none; b=U94L3JSjjmCmdsSdhEQQt8SCjw5xeh754xK06CkxahQrqoBpG5AbtTgMzZij63WnMB3r29KaxOS9UBPh42J+S67jolAPckkrpr6ygaC1up5wMa7aYgGhRgTA5h2LpQUcY6Eh8Kqacpvq6XlIacgYY3qvirJE34vqTMyPrXp2yJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779358745; c=relaxed/simple;
	bh=NmfypcCVQY8TvonF7tEogI3zi+QqH919yZENe5lXGbE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bPEC+gTwwohoVouDWb6q0JDm1AjMpEzFCgQs/6O0sLmpuhO8oOwfAuP62ocC+Mm2bBq2JezLzEAOWdwsc2q/VuphOPqMzQ9QE9riU+iuzgBiZxTjRBGEuIatDn7VWgZ+n4tOsmPzZzDNIm3WXOsC/YnLd3IifaznYdwmCmc9638=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXmBYNJ6; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 153361F00A3C;
	Thu, 21 May 2026 10:19:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779358744;
	bh=GiXqB4OhpyrdezPBrS/nLermhq5mZzz1erTlv4A7LJ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=DXmBYNJ6dbNorJpCOOEwwiPok+WtsF/clKyes3WCzJAh+XakJ8z2FJqbBC4MOZQko
	 IH7MCNs4TVLvYWErvAm4SakMVJicdd0T7HIQPPTqjdopOZ3+nshDRbGwS/LxuRwQA7
	 3rUwNUlcTDOKld8GTBNkWBbhYQZPnvrz6HuYNGspgjzx3pUU5XJYoXKyEw8OGKrLQt
	 /TrzW0SnG92Z1YZJuMHUpHh5v0yDYXeJG8c6ApTq3ksvW6r1KfiGZvpjq6Kko5iADn
	 yf4R8uGcwYKaq7BIWIAtc/waaYu+JNjh39qUA3p1w3QKchvbRVYPBwvsul4UibUsxr
	 ijJCTcMz4mAIA==
Date: Thu, 21 May 2026 12:19:02 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Joshua Crofts <joshua.crofts1@gmail.com>
Cc: Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Javier Carrasco <javier.carrasco.cruz@gmail.com>, Rishi Gupta <gupt21@gmail.com>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: iio: light: veml6030: add veml3328
Message-ID: <20260521-tested-nickel-agouti-bd432f@quoll>
References: <20260520-veml3328-v2-0-a57f0d9e28d4@gmail.com>
 <20260520-veml3328-v2-1-a57f0d9e28d4@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260520-veml3328-v2-1-a57f0d9e28d4@gmail.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-301187-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,gmail.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 93D845A3617
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, May 20, 2026 at 11:15:37PM +0200, Joshua Crofts wrote:
> The Vishay VEML3328 is an RGBCIR light sensor that shares similar
> devicetree properties as other existing VEMLxxxx sensors in the
> kernel.
> 
> Signed-off-by: Joshua Crofts <joshua.crofts1@gmail.com>
> ---
>  Documentation/devicetree/bindings/iio/light/vishay,veml6030.yaml | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Best regards,
Krzysztof


