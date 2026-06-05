Return-Path: <devicetree+bounces-307445-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lARoHkPbImrneQEAu9opvQ
	(envelope-from <devicetree+bounces-307445-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:20:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id E6181648CAF
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 16:20:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jQ5qFcv9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307445-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-307445-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9E21C302E0E4
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 14:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88399383C99;
	Fri,  5 Jun 2026 14:20:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12DE6382361;
	Fri,  5 Jun 2026 14:20:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780669223; cv=none; b=Bax9CXzU+2f7EHEj5TTV58FXqTQaS/i58YUjNRmJawbrhd8gy29O4yqa0+iAcQKaYi7xagVGdS233UOOihkNddmcNid3mAXDCsuroZeFFRbSljxJkrY0jpe8FfVHe+AaXWllh/hwMKtJN0E2r/Yo+5gus6gpGI66qRFCVbY9T5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780669223; c=relaxed/simple;
	bh=pDx1/G8ZYOcUKTOmsRidQLTb0hxM7jQ+i738NgKeizw=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=XekFbaZVskwbsGpAj1h/GzATX2wPEsrJXAh8vRz2peX8Ble+iQgGgOQNm1hVkEvlmTwlE0bTImlH2YPqbwDz7+A+Xo8VVf/4/Q+VwXvCmDmFFc7HIa4hINI6MhXa1zOoMDEwgSotJzR2gQdB9Tvq8/QgjZ/xc9ALPh76uBnwq6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jQ5qFcv9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B990D1F00893;
	Fri,  5 Jun 2026 14:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780669215;
	bh=HgVBt5hB/cB9fifRQqctexQyLLTrMia8NOV3hyAOvnc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=jQ5qFcv9GiAAziFNmdjTDRibQDynnyaJszCzJqLwXfmYJ4iPRYJj8lVGFsPcUmDpr
	 FplohwBIdOZSSd2JQMKVj7FhX5OGd0/7YQk770nW+Zr/ZyNG8YYpkzRKKcMiV3zILK
	 iv+T2HeQdfYwd76NDw5tbgXcy4wvcboA70HbEwiz1ch2DBGb6nlZF2LeiOP2bR5HaO
	 C+p2g6fCjxO0BoFUKtPPXLmNzMioTPeUy0dj6fnUZvRdfG9FxfV8cxQ1XZD3L7dGGc
	 ezd6yZJndVuVHdxl00fsRgOL7IUzYcP0gpC7aijj/FG3Tk4kpAjyYukGYtmIG+SY0r
	 ChKt7TmUWb8sg==
Date: Fri, 5 Jun 2026 15:20:05 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Romain Gantois <romain.gantois@bootlin.com>
Cc: Puranjay Mohan <puranjay@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Thomas
 Petazzoni <thomas.petazzoni@bootlin.com>, Wil Stark
 <wil_stark@keysight.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: iio: ti,tmp117: add binding for the
 TMP119
Message-ID: <20260605152005.4d888f6b@jic23-huawei>
In-Reply-To: <ft-705oeTSiaftSGNjv94A@bootlin.com>
References: <20260605-tmp119-v1-0-349f45f17d12@bootlin.com>
	<20260605-tmp119-v1-1-349f45f17d12@bootlin.com>
	<20260605125332.151b92f8@jic23-huawei>
	<ft-705oeTSiaftSGNjv94A@bootlin.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:romain.gantois@bootlin.com,m:puranjay@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:thomas.petazzoni@bootlin.com,m:wil_stark@keysight.com,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-307445-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,bootlin.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E6181648CAF

On Fri, 05 Jun 2026 14:24:45 +0200
Romain Gantois <romain.gantois@bootlin.com> wrote:

> Hi Jonathan,
> 
> On Friday, 5 June 2026 13:53:32 CEST Jonathan Cameron wrote:
> > On Fri, 05 Jun 2026 11:01:35 +0200
> > 
> > Romain Gantois <romain.gantois@bootlin.com> wrote:  
> > > The TMP119 has the same register layout as the TMP117, and a better local
> > > sensor accuracy.  
> > 
> > Sounds like (and the driver changes pretty much confirm) that this could
> > use a fallback compatible to the tmp117.
> >   
> 
> What do you mean by "fallback compatible" in this case? Do you mean we should 
> do something like this in the bindings:
> 
> ```
> enum:
>        - ti,tmp116
>        - ti,tmp119
> const:
>        - ti,tmp117
> ```
Something like (I can never remember the syntax so this is modified from
another binding doc and untested)

    oneOf:
      - enum:
          - ti,tmp116
          - ti,tmp117
      - items:
          - enum:  #enum here because once we have one we tend to get more ;)
              - ti,tmp119
          - const: ti,tmp117

> 
> But wouldn't this invalidate existing device trees which only have:
> 
> `compatible = "ti,tmp116";`
> 
> > The second patch then just resolves the print that would happen on older
> > kernels using that fallback due to ID mismatch.  That's fine but nice
> > if older kernels can work with this part.  
> 
> Sorry I don't quite understand: since this is a feature patch, I don't expect 
> it would get backported onto older kernels. Therefore why would the second 
> patch resolve the print happening on older kernels?
> 
The point of a fallback compatible is that we don't have to backport anything.
New device tree comes along that lists

compatible = "ti,tmp119", "ti,tmp117"

will just work. Older kernel will think it has a tmp117 which is fine as they
are register interface compatible.  It will print a message to say that it
found an unknown ID but then assume it is what the firmware told it, here the
tmp117 fallback.  With your second patch in place, that harmless message will
disappear for new kernels.

Jonathan


> Thanks,
> 


