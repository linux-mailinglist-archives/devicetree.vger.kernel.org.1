Return-Path: <devicetree+bounces-168252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5085CA91FC9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 16:35:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E1A4319E806F
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 14:35:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85A4B2512E2;
	Thu, 17 Apr 2025 14:35:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b="W5vj8Mme"
X-Original-To: devicetree@vger.kernel.org
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F2A251791
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 14:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.67.36.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744900521; cv=none; b=GN12fc6Xe4+slkPM7V4YV3ofPEbvWKf1+YpalIu699W20yOyjNVZ+Kz8TlSLGgTDUN6sC8DyBwFZFds/vK/UOQH7v8/QClTlDlt3FuIjL4NpPrU8SVvgsnIN/1OiVFINTHK7/qBOCBg2foD0hMzolu2K/039xjHL2x4jVFJMMDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744900521; c=relaxed/simple;
	bh=1VaDkTpRD94FIkbUpfyZjjqIn1MyKITxv1GLCc/owX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S/kSSZFVqVe8hajqtP3fwITAE8f1ulxuHCiHJmV1ZF+QtTwmI4PU5FrWRvYE7ueCAIWHmVQz2OUvXkmyMT9QaNXsdd4RY9jEpEjzBRZUvRH2dp/j4RmfJtzmkkGwMSZVh3EZW5SNUdwnz31TcnlnyzSPFrMidd4jhkQZC0bIr5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net; spf=pass smtp.mailfrom=posteo.net; dkim=pass (2048-bit key) header.d=posteo.net header.i=@posteo.net header.b=W5vj8Mme; arc=none smtp.client-ip=185.67.36.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=posteo.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=posteo.net
Received: from submission (posteo.de [185.67.36.169]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 396E1240101
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 16:35:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.net; s=2017;
	t=1744900517; bh=1VaDkTpRD94FIkbUpfyZjjqIn1MyKITxv1GLCc/owX8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition:Content-Transfer-Encoding:From;
	b=W5vj8Mmes662K02Sx8FcDS510TTGzGYiOgRip1NbLnqursHtTk8wPEwPNXR5+ztvr
	 fACmhMZpFEXPaJgQY9O8GcJZhp7yjdaIeoSN3wdGpGze5Zz00OvietiNVkDc7SozYo
	 e1ZbfIGpJMSx677lyhUR1y5euh+bD7t4V2kvzXn2DSRCh76Iw8o9A8tIfgUxKiuhub
	 GzcdAmsKiHz8useLzzbx+0LMkJE3Jniub/NXhLJrgc0g4WMTuZt/l60xsF+FV7G9mk
	 sNav5MoqS+viJPRbZCxHrxws0OFTtuawvNxv6dHqeGMrCaSa5u2BNRxMiGrPhsg71h
	 kXNIDXsc1Sw/A==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4ZdgR74Tjkz6twL;
	Thu, 17 Apr 2025 16:35:15 +0200 (CEST)
Date: Thu, 17 Apr 2025 14:35:15 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Rob Herring <robh@kernel.org>
Cc: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
	Pavel Machek <pavel@ucw.cz>, Lee Jones <lee@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Andrew Davis <afd@ti.com>,
	Pavel Machek <pavel@kernel.org>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2] dt-bindings: leds: Allow differently named multicolor
 leds
Message-ID: <aAERoxkLoB_HwGFR@probook>
References: <20250412-multi-led-v2-1-56af86908744@posteo.net>
 <20250412171237.GA1347507-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250412171237.GA1347507-robh@kernel.org>

On Sat, Apr 12, 2025 at 12:12:37PM -0500, Rob Herring wrote:
> On Sat, Apr 12, 2025 at 03:04:32PM +0200, J. Neuschäfer wrote:
> > In some cases, for example when using multiple instances of
> > leds-group-multicolor, a board may have multiple multi-leds which can't
> > be distinguished by unit address. In such cases it should be possible to
> > name them differently, for example multi-led-a and multi-led-b. This
> > patch adds another node name pattern to leds-class-multicolor.yaml to
> > allow such names.
> 
> Really, multi-led-0, multi-led-1, etc. would be preferred like we have 
> in other places.

I'll change the examples to -0, -1. I'm also open to restricting the
pattern to something else than -.+

> 
> > 
> > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > Signed-off-by: J. Neuschäfer <j.ne@posteo.net>
> > ---
> > V2:
> > - Add Krzysztof's review tag
> > - mention leds-group-multicolor in the commit message
> > - rebase on 6.15-rc1
> > 
> > Link to v1: https://lore.kernel.org/r/20250209-multi-led-v1-1-5aebccbd2db7@posteo.net
> > ---
> >  Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml b/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
> > index bb40bb9e036ee00e06d21e2321ecd5a7d471c408..c22af25b6430be71300c0e37f696cd61112ea190 100644
> > --- a/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
> > +++ b/Documentation/devicetree/bindings/leds/leds-class-multicolor.yaml
> > @@ -21,7 +21,9 @@ description: |
> >  
> >  properties:
> >    $nodename:
> > -    pattern: "^multi-led(@[0-9a-f])?$"
> > +    oneOf:
> > +      - pattern: "^multi-led(@[0-9a-f])?$"
> > +      - pattern: "^multi-led-.*$"
> 
> Combine these:
> 
> '^multi-led(-.+|@[0-9a-f])?$'
> 
> oneOf is best avoided because the error messages aren't so great.

Alright, I'll change that.

> 
> >  
> >    color:
> >      description: |
> > 
> > ---
> > base-commit: 0af2f6be1b4281385b618cb86ad946eded089ac8
> > change-id: 20250209-multi-led-9991e205befd
> > 
> > Best regards,
> > -- 
> > J. Neuschäfer <j.ne@posteo.net>
> > 

