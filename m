Return-Path: <devicetree+bounces-290137-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qN8SOCCt62nfQAAAu9opvQ
	(envelope-from <devicetree+bounces-290137-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:49:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 387F04621B8
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 19:49:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7F3FA30214C9
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 17:45:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6763E717C;
	Fri, 24 Apr 2026 17:45:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RdMYwEFf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03FEE340A6C;
	Fri, 24 Apr 2026 17:45:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777052730; cv=none; b=LY2rni1sOKr9f+ihEKx3LYoGlJsmG4mdQ3V8VSmr4Z7YNK3UVe+MEaFZ+G/0Ksam4uWqdCkZ7Q9c8MuffwPex+jqtlihPfz2+ViEfJnmru7bxlKMjewJS6kBH57Lo7S3wzblg6EuuSXhjRN2Lnvt99+1BctcNrLBwqhLoeEfTf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777052730; c=relaxed/simple;
	bh=0pUcwKSaN2IYoAKf9yaef1dDw3E3dJewVX2FK3HvAvo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=dCtgKJpF3JwhV4nKd/cW14dj3XVLzgAgD/tH64zVSAZfUVlD7HjTnUQxzb/uYc0pufO/6ArOzrzgMf73VSCFBdRs06upO7Ju0JVsACeAAS8fa4VatduZnywjiviFXW5Im+jjKZXaRVE6BOxqOcgIPWk5+oTrqayXkiZMwLMz6ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RdMYwEFf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7D3D0C2BCB0;
	Fri, 24 Apr 2026 17:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777052729;
	bh=0pUcwKSaN2IYoAKf9yaef1dDw3E3dJewVX2FK3HvAvo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=RdMYwEFf3sDsXtWov4Tuf2dfpF3K4OTF/kZItHcKtMU2HW5MoGcA5XhCBhDQEAOeM
	 TGRzaQCkGhYFMlEJpNR/fkWTc43pqCCvfMov8aBE2iLf8jKpr158uBnJESeEt5DqXu
	 K5P52UmOxeIpki1M0AsUa49R2hJPo+GpBcfJdhYi9TTU5y9BbsWMbY00oqkxMWQtje
	 M6lVspguo/NeNwaPInyH7r730sZ4VifYvUmaBsGBGY/vBxZU2iLKzrrSGbWw+KalJ/
	 PQTe3w9tsos83VIXWLnN2xTrJ1SsUlhTD70Zvg3bUmN/aAQOnc/bzxLe0ZlvJS4zHa
	 sPFRCcznHj0Ww==
Date: Fri, 24 Apr 2026 18:45:19 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Conor Dooley <conor@kernel.org>
Cc: Ariana Lazar <ariana.lazar@microchip.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Conor
 Dooley <conor.dooley@microchip.com>, Jonathan Cameron
 <Jonathan.Cameron@huawei.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: iio: dac: mcp47feb02: fix reg property
 value bounds
Message-ID: <20260424184519.41fdbf60@jic23-huawei>
In-Reply-To: <20260422-hull-naming-2d7e822976a0@spud>
References: <20260422-mcp47feb02-fix5-v3-1-e742cbab1dad@microchip.com>
	<20260422-hull-naming-2d7e822976a0@spud>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 387F04621B8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-290137-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[]

On Wed, 22 Apr 2026 17:55:55 +0100
Conor Dooley <conor@kernel.org> wrote:

> On Wed, Apr 22, 2026 at 02:53:14PM +0300, Ariana Lazar wrote:
> > Replace minItems/maxItems with minimum/maximum to describe the reg
> > property as a single channel number with 8 possible values (0-7)
> > 
> > Signed-off-by: Ariana Lazar <ariana.lazar@microchip.com>
> > ---
> > Changes in v3:
> > - Replace minItems/maxItems with minimum/maximum reg property value bounds
> > - Link to v2: https://lore.kernel.org/r/20260417-mcp47feb02-fix5-v2-1-6592ea499cce@microchip.com
> > 
> > Changes in v2:
> > - keep just maxItems value update in this patch
> > - remove Reported-by from commit message
> > - Link to v1: https://lore.kernel.org/r/20260416-mcp47feb02-fix5-v1-1-9656c2fed6d2@microchip.com  
> 
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> pw-bot: not-applicable
Applied. before the space adding patch.

