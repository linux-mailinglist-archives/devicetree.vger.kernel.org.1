Return-Path: <devicetree+bounces-263583-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cEvAJJMZh2nBTQQAu9opvQ
	(envelope-from <devicetree+bounces-263583-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:53:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1FE7105A87
	for <lists+devicetree@lfdr.de>; Sat, 07 Feb 2026 11:53:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0F7013002D1C
	for <lists+devicetree@lfdr.de>; Sat,  7 Feb 2026 10:53:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BF8433E37A;
	Sat,  7 Feb 2026 10:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cCAxDyCg"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592AB2D8364;
	Sat,  7 Feb 2026 10:53:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770461580; cv=none; b=AQ2mMaaGILG4AnA9cHa1kV5Qhk94Sln+rooYszMhdGBvXOYCeD7VqpjRw4bRkgIZ1DFNQ4SfJPN41ZrT7upe6uVKLgUzz6o5XsfVaGGH/+Ud/OFl9DBVR9HWoy/yD1ab0j3obpRAq4akyPr4J7vU8yp7J53ZLt2lVrdwum+vEu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770461580; c=relaxed/simple;
	bh=XCZqKVxb6H//ti+xRu9sfwEBs1xH3wPJHOUGSrvRHCM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mnGfJERj6lN9CurNlltSqcorakMEIvfugrykiwBYF700XfUW10S8tZJSI6xY1pQsQ8bBx+UsLgvZWcXotAtg9OJ6EbPyj+nMadjIajRTuB9PLL5z7a8GNf11XJGbpvpxxgDSwmT+Zn6AOS9RjGLmEBfhfYRbGrBzVAuXGnSkKkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cCAxDyCg; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7061EC116D0;
	Sat,  7 Feb 2026 10:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770461580;
	bh=XCZqKVxb6H//ti+xRu9sfwEBs1xH3wPJHOUGSrvRHCM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cCAxDyCg6syDxtkgkOXfJRH++rJTkG1mPkAfLg8YGvmOwLfkO90QuA5Odnch66AI5
	 KIkt548Ch6ni5VSypwbxfyOqSU2uRfdDGbgbFDwmt63pkrWRyHnRtDfaiBguukledY
	 km0GmNee/sTMhX7baC4v5J+51imTi530cTTpIWLumkPaSDaghy3wXwUC73wEtc838A
	 vy2aIzPNjmwKX5znClSoOE9f0Jmnzb8wroiJ59KF8jOsLIJI4PsI6GsdJh49iO4U8V
	 r/ChXOZv1m7/moYGa5J+7xkAqPYbZNfjxuL2fI7GITcCbe3O7jkoiVys2meJCyPCD/
	 1lBZrzQG8O4gg==
Date: Sat, 7 Feb 2026 11:52:57 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, Nuno =?utf-8?B?U8Oh?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: iio: adc: adi,ad4080: add support for
 AD4085
Message-ID: <20260207-hypnotic-passionate-crocodile-e5be30@quoll>
References: <cover.1770382796.git.antoniu.miclaus@analog.com>
 <e1ef83150eea89864d4bad8d9b43e60503fc5f14.1770382796.git.antoniu.miclaus@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <e1ef83150eea89864d4bad8d9b43e60503fc5f14.1770382796.git.antoniu.miclaus@analog.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263583-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.981];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[analog.com:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: A1FE7105A87
X-Rspamd-Action: no action

On Fri, Feb 06, 2026 at 03:08:22PM +0200, Antoniu Miclaus wrote:
> Add device tree binding support for the AD4085 16-bit SAR ADC.
> Add adi,ad4085 to the compatible enum.
> 
> A fallback compatible string to adi,ad4080 is not appropriate as the
> AD4085 has a different LVDS CNV clock count maximum (8 vs 7), requiring
> different driver configuration.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
>  Documentation/devicetree/bindings/iio/adc/adi,ad4080.yaml | 1 +

Squash the patches. You just added one line, but commit msg is 5 lines.
Exactly copied from previous commit.

Best regards,
Krzysztof


