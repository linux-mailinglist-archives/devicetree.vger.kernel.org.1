Return-Path: <devicetree+bounces-289886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLWgG3Ef62mRIgAAu9opvQ
	(envelope-from <devicetree+bounces-289886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:44:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C93E245AD11
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 09:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E27FD301467F
	for <lists+devicetree@lfdr.de>; Fri, 24 Apr 2026 07:44:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E5DD37187E;
	Fri, 24 Apr 2026 07:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="n98caNP7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC063603D8
	for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 07:44:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777016669; cv=none; b=FismM90BBSZLQ84Bk32fG2pKN5VLHyhsazkmrBTWdXdvk3Q4OiYPllcJoD5/x1nkEiaDySX4Put74JIY5OU0JJzOf2CqMH8syEseOYPBzS5ObxwT1KiR44sjspJssO8m9T/d51eB7H9/RntwbsDNCROB8QcS9jmdq4pwRfXvYZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777016669; c=relaxed/simple;
	bh=tg5RkbWli/IPrfZHKyU24iERKTLpVG/rkUKE6DuIK+k=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PtgKMNvJLq95br2f+0vN6xO14wEUc2TsDR/rahmlivJO20ebZ9v1LUUgtGsGS08kOf3yImqIl9n0ZVejd4DGFbN0o7ydWTQY0KwZmK1OMDri6uEMFKR3rWjFX97CSpTIUyIvGb7YqyZZ17l21CBgFhMHqT48e0nNwcNNKGB5AGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=n98caNP7; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4891f625344so61105115e9.0
        for <devicetree@vger.kernel.org>; Fri, 24 Apr 2026 00:44:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777016665; x=1777621465; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z0Nw3MbQBRl5e4oTEVERCLRkMcH5suU8nH+WToG2Fr4=;
        b=n98caNP7gEdVId9lkNqs8n94NM3jOeTrxB7zoCFHv9BMyVA12eWMT/dDkDsQnD7lo5
         FxNKshhG/2ssX67fLcAJwHkB3meIf+hycoQWV409CstlpnZfwTCczh3jTZHEkW61Xg8w
         iVRCamld1dkT6pkAqXGIoF1b3JUjSQSHnlNtw7/2CIcMdXrEufPA+twSAHIlPWHDDcmt
         PEGrDpJ0ybJPofpnwguS1urrboNP3pN6SzdECLPf4hd1XHaF8qbSz/hseXA81E1zqZLN
         sHwJpdHmYPzVfQgmufVHBMR7o2MRj018KgY1JTzTPSZlJ3gFfe/mx0K79d1bT/q+7BWD
         Ldrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777016665; x=1777621465;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z0Nw3MbQBRl5e4oTEVERCLRkMcH5suU8nH+WToG2Fr4=;
        b=XF2j9s6JBaWXszab29Q17sstUVRXzx0/9kdTE7I35l/Mp13IVnMnsgX5zpIMj6t/4R
         7cOVTDM615rub94r2UWk2KVCvIBeJE1kg0q9yd/l3lMorZD5+ExZlHwYhfrImlopIsQW
         KlUdsg2Ufg1uT+Z3l+QRFjr1ouOvYP41u0GMiWVVm2HFVJzUwqhIA9v9E5MbWid5pDiN
         aAjLhdrRPc5pBhlob06vy1tKAUGw92Yq0qNhMVqe0p39sUqR/EzJI5/qGLP40JzJSVVM
         NcG3JSnAreQdvFt5kvedCwHmjV0a8lGGrLjSnDlwZOfmwYjpvbuzOJKxe1Lu43pCsNby
         G5Rg==
X-Forwarded-Encrypted: i=1; AFNElJ8A9u/NeI57o71PtVpfp+diWd8ZrgLTPTZUwjlDBAE/NNEaQCMwo5DuEXQeV7MoHTPbct458dIIr1gK@vger.kernel.org
X-Gm-Message-State: AOJu0YwqJ4H9Aw1vscU+961hN91YGmr1jZUSUDf3hz2jLQ//g6zYbBEn
	RQKu2rU9uwuA6+FiQ0RtdiyG8BR0wQCjz8p6BCgUAYQNOeBv7eDOWum+iKwdsxk/
X-Gm-Gg: AeBDiesjC+If8MBqvXClptjqOhva5MDJ0azVw7dSJXviL0ecBb1/ljgAxQC0loFnxdZ
	yrRADdfqCKz7vNWAuHQdXBQvMXxm+8HRQyjPvTGrcOlv/CCXG0yxFcfm5i+Jy78V9+R6rcdQJUS
	So7LV0VAmP9VdRj3cJqRbmnjNiP90iAGaoy2ta7D8ga9mAjjqvuMtU+EOGAnPa92kn097WOBeDH
	WdY8Ma2Z0PV11bRttoe5bTEq3ABCLSus/Y0sk0v7plZsAwKETYcXq58YMt/Sp0F2TGDVNbfnnYO
	InNRjFyrIGCCMJqRxDBSSkAq9KEkiV90l/p0c9ERw7H5AGQEPiEiQrU0XYXytZupxohTNqYqvxO
	y1d3Ra3802NstZJjKvCzr9G6bjBty/arisa4uoHmhnnoEnmZOabp2Jd9LpXAy8eprGAyKYL0WHJ
	Tngo1m5+/ddWBHoFfqoMUJ7PKjcQuk8feZnBEE5DBqyUlADbjcjoWYzJP8RHM0aGCBwgVGsAvcP
	gzW3oKLH1TqXQWjibCRfmsApAVe1wOpucFC/z3FmgE2wV88/A1uRPV4hOZILOxInXHR0rE=
X-Received: by 2002:a05:600d:8447:b0:486:f893:56c6 with SMTP id 5b1f17b1804b1-488fb8b18d1mr303468305e9.10.1777016664498;
        Fri, 24 Apr 2026 00:44:24 -0700 (PDT)
Received: from RDEALENC-L01.ad.analog.com (24.206.116.103.netskope-rdns.com. [24.206.116.103])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4891cca5743sm357547225e9.9.2026.04.24.00.44.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2026 00:44:23 -0700 (PDT)
From: Rodrigo Alencar <455.rodrigo.alencar@gmail.com>
X-Google-Original-From: Rodrigo Alencar <rdealenc@rdealenc-l01.ad.analog.com>
Date: Fri, 24 Apr 2026 08:44:21 +0100
To: Jonathan Cameron <jic23@kernel.org>, 
	Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: rodrigo.alencar@analog.com, linux-iio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Michael Auchter <michael.auchter@ni.com>, linux-hardening@vger.kernel.org, 
	Lars-Peter Clausen <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Subject: Re: [PATCH 03/22] dt-bindings: iio: dac: ad5696: rework on power
 supplies
Message-ID: <g5a3zky54agp5juxbpn4yy6abhugazgzbyfau5va6r5bmrebxz@o4c5kf6ki24h>
References: <20260422-ad5313r-iio-support-v1-0-ed7dca001d1b@analog.com>
 <20260422-ad5313r-iio-support-v1-3-ed7dca001d1b@analog.com>
 <20260423184723.54ddbd67@jic23-huawei>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260423184723.54ddbd67@jic23-huawei>
X-Rspamd-Queue-Id: C93E245AD11
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-289886-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	R_DKIM_ALLOW(0.00)[gmail.com:s=20251104];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DMARC_POLICY_ALLOW(0.00)[gmail.com,none];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.987];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[455rodrigoalencar@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	R_SPF_ALLOW(0.00)[+ip4:172.234.253.10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]

On 26/04/23 06:47PM, Jonathan Cameron wrote:
> On Wed, 22 Apr 2026 15:45:37 +0100
> Rodrigo Alencar via B4 Relay <devnull+rodrigo.alencar.analog.com@kernel.org> wrote:
> 
> > From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > 
> > Add supplies for VDD, VLOGIC and VREF input voltage pins. The vcc-supply
> > property is deprecated.
> 
> Please provide some information on why? Was it always just wrong and that
> naming was never used for any of the supported parts?

yes, vcc does not exist, none of the devices describe any power input with
that name. The name is also misleading as it sounds like the input power
supply. It is being used as an external voltage reference, which is called
vref. Will add some of that to the commit message.

vdd should be required, but that would break the dt-binding ABI. Also, vref
should be required for parts that does not have an internal voltage reference
(the one with no 'R' in the end of the device name), but that would break
the ABI too.
 
> > Certain devices require vref-supply to be
> > available once an internal reference voltage is absent. Still, this patch
> > does not add those as 'required' so that the ABI is not broken.
> > 
> > Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> > ---
> >  .../devicetree/bindings/iio/dac/adi,ad5696.yaml     | 21 ++++++++++++++++++---
> >  1 file changed, 18 insertions(+), 3 deletions(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> > index f286e5072abc..21b80fe597d1 100644
> > --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> > +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> > @@ -38,9 +38,22 @@ properties:
> >    reg:
> >      maxItems: 1
> >  
> > +  vdd-supply:
> > +    description: Input power supply.
> > +
> > +  vlogic-supply:
> > +    description:
> > +      Digital power supply. If not supplied, it is assumed to be the same as
> > +      vdd-supply. VLOGIC may be hardwired to VDD in some board designs or
> > +      internally connected in small packages.
> > +
> > +  vref-supply:
> > +    description:
> > +      Reference voltage supply. If not supplied the internal reference is used.
> > +
> >    vcc-supply:
> > -    description: |
> > -      The regulator supply for DAC reference voltage.
> > +    deprecated: true
> > +    description: Use vref-supply instead.
> >  
> >    reset-gpios:
> >      description: Active-low RESET pin to reset the device.
> > @@ -88,7 +101,9 @@ examples:
> >        ad5696: dac@0 {
> >          compatible = "adi,ad5696";
> >          reg = <0>;
> > -        vcc-supply = <&dac_vref>;
> > +        vdd-supply = <&dac_vdd>;
> > +        vlogic-supply = <&dac_vlogic>;
> > +        vref-supply = <&dac_vref>;
> >          ldac-gpios = <&gpio0 1 GPIO_ACTIVE_LOW>;
> >        };
> >      };
> > 
> 

-- 
Kind regards,

Rodrigo Alencar

