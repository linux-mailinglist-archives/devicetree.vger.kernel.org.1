Return-Path: <devicetree+bounces-293805-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gECrG5BC/GlYNgAAu9opvQ
	(envelope-from <devicetree+bounces-293805-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 09:43:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3D54E433F
	for <lists+devicetree@lfdr.de>; Thu, 07 May 2026 09:43:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ADBBA300E251
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2026 07:43:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1EDB35C188;
	Thu,  7 May 2026 07:42:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="f5YLVYa0";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="NBzyqdae"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF0230DEBA;
	Thu,  7 May 2026 07:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778139778; cv=none; b=c/SnBsMV2ORTIjLkjfbjC3ExHZPDFjLajdB7Fo39ogrYL5RQ97ocokowCTXJm+3KUL7b7VrAQQHx1vQ1MCHZix1dq31KkfbZRSiYz+xjbdnn3GTFKmt7Ng+HG5LcHQczSlMk589PO6dN+iTWareJult44LEoNMp4Z3vO5T/q4Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778139778; c=relaxed/simple;
	bh=IlK2CYGR/DJ1imoLe9kDwRca1watl8oFx2BqrpWCK2Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZdYX14Oz1NjOpZFD3lDD/UlRav8M9bgAiFWB3sAglhYoVDSt6cGqXC1Wfe5kY7qMV+BY4j5SeL8CAvwJuSrqBpx2cKe3kg3UFZ0zUH28bmGYq/OHcPpgcjq/kmGYTGt6L8dh1cNglhXiVpkp73L6Pg/By7P79rVx5w+lW6VycGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=f5YLVYa0; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=NBzyqdae; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
Date: Thu, 7 May 2026 09:42:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1778139775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3b4b28TuPNj8yn2sDhzaIm3oqnG0shWCKwgFtiocTqM=;
	b=f5YLVYa0cHniVtKvXQOFWqYVDnfXZcUJjfLIvWvKBdSwK9s0oAB1RPyBc7dO+3Blk3NTn4
	GpxT3sR2o/WWELh+5Z5TLZOvRTig7QaWAdNWIJAkR+kp+lO+OfNNmq/UEJE+v3qOiJ7eoJ
	/HriXvxtPG4myHTFYjXaAxD0UxzwlHNUH88l4CoduBO6jrso6AXQEDsWaHiusY/5HozeNJ
	1wY34ut1hOVgyueTriT4jWRL9LYPAXJ4kGGXNx7VlwN8thCRl97fpcX9acKOtRPa23FAgd
	hvb09JSEJORG9aBhD0Ge5LxBM7AWhyoISyscpC+4Ia1MUMEDIx0+Nti552mueg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1778139775;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=3b4b28TuPNj8yn2sDhzaIm3oqnG0shWCKwgFtiocTqM=;
	b=NBzyqdae625W0XACnkcozEF9sHTVppPY8kMo86M30It6Y6Q4f9ZEqS7UvtbRFgvMIMbVgS
	gGCrqTIiiwm/XqBA==
From: Gregor Herburger <gregor.herburger@linutronix.de>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>, 
	Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v3 1/4] dt-bindings: raspberrypi,bcm2835-firmware: Add
 bcm2712-firmware compatible
Message-ID: <7g6bvlp5fs4bkviiyywqu5wb5hndkczcamgtir5ow262cqkmdo@xyj2otywjepn>
References: <20260506-rpi-otp-driver-v3-0-294602663695@linutronix.de>
 <20260506-rpi-otp-driver-v3-1-294602663695@linutronix.de>
 <20260506-unguided-duty-892b11b7c618@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260506-unguided-duty-892b11b7c618@spud>
X-Rspamd-Queue-Id: CA3D54E433F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-293805-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,broadcom.com,anholt.net,gmx.net,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Wed, May 06, 2026 at 05:50:42PM +0100, Conor Dooley wrote:
> On Wed, May 06, 2026 at 02:28:15PM +0200, Gregor Herburger wrote:
> > Add a compatible string for the bcm2712 firmware.
> > 
> > Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
> > ---
> >  .../bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml      | 13 ++++++++++---
> >  1 file changed, 10 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> > index 983ea80eaec9..fbcfa2bc168a 100644
> > --- a/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> > +++ b/Documentation/devicetree/bindings/arm/bcm/raspberrypi,bcm2835-firmware.yaml
> > @@ -21,9 +21,16 @@ select:
> >  
> >  properties:
> >    compatible:
> > -    items:
> > -      - const: raspberrypi,bcm2835-firmware
> > -      - const: simple-mfd
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - raspberrypi,bcm2712-firmware
> > +              - raspberrypi,bcm2835-firmware
> > +          - const: simple-mfd
> > +      - items:
> > +          - const: raspberrypi,bcm2712-firmware
> > +          - const: raspberrypi,bcm2835-firmware
> > +          - const: simple-mfd
> 
> This diff doesn't make sense, either the new firmware is compatible with
> the old one or it is not. It shouldn't appear twice.

Ok. I will change it to:
-    items:
-      - const: raspberrypi,bcm2835-firmware
-      - const: simple-mfd
+    oneOf:
+      - items:
+          - const: raspberrypi,bcm2835-firmware
+          - const: simple-mfd
+      - items:
+          - const: raspberrypi,bcm2712-firmware
+          - const: raspberrypi,bcm2835-firmware
+          - const: simple-mfd

While reading the writing-schema.rst documentation I saw that it says most
bindings shouldn't need a select. Imho the select in this file doesn't add
anything which isn't covered witht the compatible. I wonder if I should drop the
select block?

Regards
Gregor

