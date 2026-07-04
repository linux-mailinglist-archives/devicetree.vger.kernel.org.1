Return-Path: <devicetree+bounces-320523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id +OMHECyTSWop3QAAu9opvQ
	(envelope-from <devicetree+bounces-320523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:11:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D2A708981
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 01:11:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=KhVrkwZZ;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320523-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-320523-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E918030055FA
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 23:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A433C383C96;
	Sat,  4 Jul 2026 23:11:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C8C4383983;
	Sat,  4 Jul 2026 23:11:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783206681; cv=none; b=kxQTc3JrA1fcH7UK4/nHFa7ZktsJyanCSLae4lqu453/kSF8byV+cQeBxs4uNQ+7M9jcdBTkdBvzffzuFJTYNR62U/V8bNrvMGj6cS98ffTGCdUSzpObuyqNec+tTlTs2CYg+L7Z3VAW4fOYxi22SLxXJbmbqSCfR63EDg3VkyU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783206681; c=relaxed/simple;
	bh=BWMwg86y4Qtm5l2ihXUwQ6XXeVKjcQWJ4UDKqw6LOnk=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=bFkh2Ht+1y+3hFSEM4s6qhHgTg7dI4MO9B9OLSgQXsb/YhwNHRJ6OQq/R++2fs1P1JubltB896PLGNapy1LUq187Syb4nBEgpSsjIsaWjVKRbwgdmMEo05WC2D+xxLN/7tZ5Id9Mkmu3KHiFzXfJvZKDy/XVAfUlRerUfEp3Mbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhVrkwZZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA6DD1F000E9;
	Sat,  4 Jul 2026 23:11:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783206680;
	bh=ZK7hdK4JxNEIWDMhWF8wt1BdSCQrujjfDtHMidvegmM=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=KhVrkwZZ+PwuA6+hnHI4wEoctvkRooVeUzOPqN4paoZaAmWapg/gqopj3LSgaYnbe
	 hyWUzCMZWn4I29HtVrgFd+VYkIIBeSTNo6xurPV0yBi7baPzp8r/xzT7Lh23+lhLGP
	 wh9f/zNRm/Y04FJ2u+JnxRwfzcfKX7mPHDvDVLnGc67GP0ZBCr90cuevIOG/cIHd7a
	 7BgKNfuc5DocTKAWATuqIFQPFmu7tvz663dKsGyE3d9IGB9tAAQPo+dDXceJtwOVU+
	 lqoxv4e//34DNAtve6mWLJRLJRuVkICKo3pFh7z36Vr7OTbue97bcmHp2CKevDgRhf
	 c8NOJuo6dmu5A==
Date: Sun, 5 Jul 2026 00:11:13 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Marcelo Schmitt <marcelo.schmitt1@gmail.com>
Cc: sashiko-reviews@lists.linux.dev, Marcelo Schmitt
 <marcelo.schmitt@analog.com>, robh@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-iio@vger.kernel.org
Subject: Re: [PATCH v5 1/4] dt-bindings: iio: adc: Add ltc2378
Message-ID: <20260705001056.65e18318@jic23-huawei>
In-Reply-To: <akfrs7OtamEIoVxE@debian-BULLSEYE-live-builder-AMD64>
References: <cover.1783028033.git.marcelo.schmitt@analog.com>
	<fa15b8fe33541fa2e8c7a3f124b2482872fdcf26.1783028033.git.marcelo.schmitt@analog.com>
	<20260702215235.517FC1F000E9@smtp.kernel.org>
	<akfrs7OtamEIoVxE@debian-BULLSEYE-live-builder-AMD64>
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
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:marcelo.schmitt1@gmail.com,m:sashiko-reviews@lists.linux.dev,m:marcelo.schmitt@analog.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:linux-iio@vger.kernel.org,m:marceloschmitt1@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320523-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 37D2A708981

On Fri, 3 Jul 2026 14:04:51 -0300
Marcelo Schmitt <marcelo.schmitt1@gmail.com> wrote:

> On 07/02, sashiko-bot@kernel.org wrote:
> > Thank you for your contribution! Sashiko AI review found 1 potential issue(s) to consider:
> > - [Low] Compatible strings with required fallbacks are incorrectly allowed as standalone strings.
> > --
> > 
> > commit fff47614872c95c6a481f63da8b14dfcedd0bb53
> > Author: Marcelo Schmitt <marcelo.schmitt@analog.com>
> > 
> > dt-bindings: iio: adc: Add ltc2378
> > 
> > Document how to describe LTC2378-20 and similar ADCs in device tree.
> >   
> > > diff --git a/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml b/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml
> > > new file mode 100644
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/iio/adc/adi,ltc2378.yaml  
> > [ ... ]  
> > > +properties:
> > > +  compatible:
> > > +    oneOf:
> > > +      # Single compatible string match.
> > > +      - enum:
> > > +          - adi,ltc2338-18
> > > +          - adi,ltc2364-16
> > > +          - adi,ltc2364-18
> > > +          - adi,ltc2367-16
> > > +          - adi,ltc2367-18
> > > +          - adi,ltc2368-16
> > > +          - adi,ltc2368-18
> > > +          - adi,ltc2369-18
> > > +          - adi,ltc2370-16  
> > 
> > [Severity: Low]
> > Does this standalone enum allow devices that should require a fallback
> > to pass schema validation with only a single compatible string?
> > 
> > Because parts like "adi,ltc2370-16" and "adi,ltc2367-16" are listed here in
> > the single enum match, a device tree node specifying only
> > compatible = "adi,ltc2370-16" will satisfy this block and successfully pass
> > schema validation.
> > 
> > This seems to bypass the fallback requirements defined below in the items
> > blocks:
> > 
> > [ ... ]  
> > > +      # Low sample rate fallback for 16-bit unipolar sensors.
> > > +      - items:
> > > +          - enum:
> > > +              - adi,ltc2370-16 # 2 MSPS
> > > +              - adi,ltc2368-16 # 1 MSPS
> > > +              - adi,ltc2367-16 # 500 kSPS
> > > +          - const: adi,ltc2364-16 # fallback (250 kSPS)  
> > 
> > Should the parts that require a fallback be removed from the single
> > compatible string enum so the schema correctly enforces the fallback?  
> 
> Why? Should users be prevented to specify a single specific compatible string?
Yes we should. They should always use the double string to provide a fallback.

In practice the driver will work just fine with only a single entry irrespective
of what the binding doc says - that doesn't change that we insist on it in the binding
doc.

Jonathan

