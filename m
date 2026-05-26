Return-Path: <devicetree+bounces-303142-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CGFeJNDiFWpYdwcAu9opvQ
	(envelope-from <devicetree+bounces-303142-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 20:13:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC4BB5DB3CC
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 20:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C339B303F7F1
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 18:05:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E010403155;
	Tue, 26 May 2026 18:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SI632JkX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C12414AD20;
	Tue, 26 May 2026 18:05:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779818739; cv=none; b=ExKDmwrBlXXM9rATDfuipD7SUXH/+GVAjMdIKewfoAPYWaWxFhrRLInwcOyuAExAv/Pblp+XXrZJRciAiB9fxLMBQfuGcL37J202jAKkQR5DxIV4C9S0kC717RmjTlb3tpzIU3eW3n6/OH7ls0XcyXBI0fAAMRMkOm1IjtJuhH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779818739; c=relaxed/simple;
	bh=tNLQPpMxwSVDe0J+tco5LiqKAvef0fVIjGezPXgxYPg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ix1wjHSulbjLxpiYtpaaQdzkpqDTx8vJESBIwJJ51l25JH9ai0s06etBZV2a4GM5WMWAaEoY6GN4x6mIQErVnP8NKSVk5GZLwFNWb9yvZ8CJvhmYzzoL7DkdrVhkXjGKIQGc/2j1nvLRBEXxkmLkSD9fPuby9+cg3bR18gpXQUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SI632JkX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C1A31F000E9;
	Tue, 26 May 2026 18:05:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779818738;
	bh=dIxt4LUx2QHdUF7hI6tAEcJbjIny3W5BNJ48rwpxwXM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=SI632JkX/m7eeKXBrmyHNNYv5hWm8LU8kIuz7ZWCosgHiAdOGfWnZDq2PVCRfgH4R
	 a48/5Joz9AAZ34qDgYtW8yRmUz/0aviCPhqYxtYfg415/mYM4hbrNc1QVDeNLXn+k4
	 tsqQEWwM2SifwdzBqRmOvrjxCbeXv78kbC2a965SbLmCK2FTv2dxbc7engMcn9+CUh
	 JNmOdXollYFtZX1s5kwfBzGkxcK3wM5UTetQf3rM+zhjjEi2X1/+E0bO3EsZ8T8dBe
	 wY8PoK1PU7FNH1LLkkKZerPSNRHQADd76DCwB/gTOy5UC8j/fKeGuVHuY+nxFUyis5
	 nSWw96p/OwTUg==
Date: Tue, 26 May 2026 19:05:28 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Rishi Gupta <gupt21@gmail.com>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Matti Vaittinen <mazziesaccount@gmail.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/4] iio: light: add support for veml6031x00 ALS
 series
Message-ID: <20260526190528.0efe80c6@jic23-huawei>
In-Reply-To: <20260526185933.0084679f@jic23-huawei>
References: <20260524-veml6031x00-v3-0-29165609b2b5@gmail.com>
	<20260524-veml6031x00-v3-2-29165609b2b5@gmail.com>
	<20260526185933.0084679f@jic23-huawei>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-303142-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,gmail.com,baylibre.com,analog.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Queue-Id: EC4BB5DB3CC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, 26 May 2026 18:59:33 +0100
Jonathan Cameron <jic23@kernel.org> wrote:

> On Sun, 24 May 2026 23:53:56 +0200
> Javier Carrasco <javier.carrasco.cruz@gmail.com> wrote:
> 
> > These sensors provide two light channels (ALS and IR), I2C communication
> > and a multiplexed interrupt line to signal data ready and configurable
> > threshold alarms.
> > 
> > This first implementation provides basic functionality (measurement
> > configuration, raw reads and ID validation) and defines the different
> > register regions in preparation for extended features in the subsequent
> > patches of the series.
> > 
> > Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>  
> 
> A few things inline.  Biggest one is that device driver specific state needs
> local well documented locking. Here the whole complex gain handling means there
> are a bunch of register field where the accesses to each set of them need
> to appear atomic.
The sashiko comment on underflowing pm counters also looks plausible
so check that as well.

