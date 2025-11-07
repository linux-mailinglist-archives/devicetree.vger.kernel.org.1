Return-Path: <devicetree+bounces-235963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 750E7C3ECD2
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 08:45:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2EEA188D77A
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 07:45:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3795130275A;
	Fri,  7 Nov 2025 07:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kGbKnpUo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBAE287506
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 07:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762501525; cv=none; b=KcYTx3ONdVzvX/TCWIUKTdc4XF32p6I7KUOLNMelmd3aRdIpdBQqzVt2KGxe6qO1CMexsWSyL3ntxl6F4p/Dl7wi2ixvDU+plF/MkewRBKVyruFhCrQSJL5NhlVnGFWTx5ydNatIWM4OO4c7FUbYmVhBEw9HpKeF8/FvA0gE9no=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762501525; c=relaxed/simple;
	bh=Nf/+Nuiru5UQ5tKiQIw1Zyj3JCKTW1TPwNHP++22v+E=;
	h=Message-ID:Date:From:To:Cc:Subject:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r6yZuM0fWLqxH2e8fnydQRh/ZzINBQFzckBA3OivXcC1V/kc1ndaYXgZ+gsVVHLt32VdwBm1N5uSVBQG9ujs+CJT9b6LLsVSSv7xU+FTXbkwUvJjhzxtc89c5pQGD2a9EBp3+S7OceNVnDGXwSiEuiHIvJi2lsQ8za7qnowdqAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kGbKnpUo; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477563bcbbcso1687555e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 23:45:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762501522; x=1763106322; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ir8VQgkEh19ByDpqJ3ZhWd2KcYrZBfTNNF+aEN1RLFo=;
        b=kGbKnpUofPz234YE0vX97HtJ1SsYA6sLtyvBXDsjzL1aJF347XSFicgQFYn5EPzjrf
         WQjCwJE+MQo40+zWvubgscg5EJ+sB75L6Kt0/PFHmLaAz5yNjx5to3ipvR4FaBXPJiiA
         Z8mtitp0OuVDGngIf9WyIgi+6guwZNOi+1Fh0LL22+YRdX54WOXbd7G2hSxGvArE+DhA
         ncMBYeK/i61ysy0mHpOh/Te1wGt41vAzFWxcXat93boXPDxDPlJLONxVPkdf1igR0fjY
         4IOvbKdVCRjYLWzPD8YxUKGHBkkOb65i1LEJRozBdtoIQt+mVhPyN7H6o1LN2fGnf8G8
         TDIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762501522; x=1763106322;
        h=in-reply-to:content-disposition:mime-version:references:subject:cc
         :to:from:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ir8VQgkEh19ByDpqJ3ZhWd2KcYrZBfTNNF+aEN1RLFo=;
        b=dht1pB9zETW40yLUcCqE7hNndH/iGLzl4WlLfMVU1Ubm4JoC8AyXhgAkCe0zVGiMmy
         3dSBKxJE87rZbrBjvhPDCHCDrTzANJUnBY0nwdnf9aPYU20TXj6Y0ZSmxWAPGnjtvcrT
         l9KxZPEOvv8NrqNYWhbrMAREFV8E2aSarYjo8uDXeKatAVj27lOfQ1SMCjweDGxEOy6H
         cgj7T2d3xL29TCkhDL/8i/srDI5+1LeUgxCrxknDSfls754W7b2+GGJKjiM2keNkx2ll
         I6lhdeo8+rUiOh6cEzNC7LCRynWa9KFiH9D/XmMmp9ay3IOzTvTUvMKw9W1zk9YrvEKF
         4RrQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXjD62N+nZlh3B0SSqBgE7mLRtYYK6w2UPGqf2BNlJSsutPZdhBomrgC494kvuHLLVuCsWD1nez1FJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxwjlDSs0W7DB8RPSNUZzoMWgnmicE6yNPcZNy7Mm+KCOGrvHM6
	zxEo++GA1pOwJD54T4sjcRJfC0GESZyuFnVGe5PwSa5jzt8NzKSXoFwA
X-Gm-Gg: ASbGnctW1J/L8D3Mybv936RP4Zh3ArAO4VK+W4meaFY6wVOeOKE5exgHo5OwI+ZGppl
	ylB6Gk7nNzrd0yob2PodIvPktZQK9CoKCss1G0pdHR7JBFM9nBrbxdbIHizNvm7oM9/TS6Of8Ey
	WcID5Upgengi8PNhP1/hjOWq8unqc7OQcNbp4EnBNU8xAwloXNViD8Vec1m2msfKjf85OH5X9JV
	Qwb3/c15198OJWVtjF54isJLuvUA31DfnvmQRT44kX3arJgmYaEN0H4VVsaoI0HWFOYxigoiw08
	AKJ+5uoxSljhxg2NU2LG9lF2Q07oCiSg26iJ3jJDz+iZCLzhkRaTI+tt6mJRuXZSis3Q4easU/5
	kS4ZRPAIHbK94tOx1CL1MlqJlM1CQkSRsbC/HE0/QN5edw2tQrq/6+GCZlnPHkZb1lTlOK/QBK9
	Vjp5Xqdk/JWbdV/R9xw95VQhL5h8LD
X-Google-Smtp-Source: AGHT+IHk8GYQh3wxfdQ/MM0WlQ/G6tPyoDQUjYiMB1HlnNgjeZhvbY5XK3zuUBHmQ5l2hQh0RRXxXQ==
X-Received: by 2002:a05:600c:35d0:b0:477:6d96:b3e7 with SMTP id 5b1f17b1804b1-4776d96b678mr9653645e9.33.1762501521541;
        Thu, 06 Nov 2025 23:45:21 -0800 (PST)
Received: from Ansuel-XPS. (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42ac67921c3sm3627125f8f.40.2025.11.06.23.45.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 23:45:21 -0800 (PST)
Message-ID: <690da391.5d0a0220.33eed5.80b7@mx.google.com>
X-Google-Original-Message-ID: <aQ2jj3R3N6sfcHQu@Ansuel-XPS.>
Date: Fri, 7 Nov 2025 08:45:19 +0100
From: Christian Marangi <ansuelsmth@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Felix Fietkau <nbd@nbd.name>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/5] dt-bindings: clock: airoha: Document support for
 AN7583 clock
References: <20251106195935.1767696-1-ansuelsmth@gmail.com>
 <20251106195935.1767696-5-ansuelsmth@gmail.com>
 <20251107-fancy-premium-lynx-dc9bbd@kuoka>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251107-fancy-premium-lynx-dc9bbd@kuoka>

On Fri, Nov 07, 2025 at 08:42:15AM +0100, Krzysztof Kozlowski wrote:
> On Thu, Nov 06, 2025 at 08:59:31PM +0100, Christian Marangi wrote:
> > Document support for Airoha AN7583 clock based on the EN7523
> > clock schema.
> > 
> > Add additional binding for additional clock and reset lines.
> > 
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> >  .../bindings/clock/airoha,en7523-scu.yaml     |  5 +-
> >  include/dt-bindings/clock/en7523-clk.h        |  3 +
> >  .../dt-bindings/reset/airoha,an7583-reset.h   | 62 +++++++++++++++++++
> >  3 files changed, 69 insertions(+), 1 deletion(-)
> >  create mode 100644 include/dt-bindings/reset/airoha,an7583-reset.h
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> > index fe2c5c1baf43..2d53b96356c5 100644
> > --- a/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> > +++ b/Documentation/devicetree/bindings/clock/airoha,en7523-scu.yaml
> > @@ -30,6 +30,7 @@ properties:
> >    compatible:
> >      items:
> >        - enum:
> > +          - airoha,an7583-scu
> 
> That's random order. Keep it sorted.
> 
> Best regards,
> Krzysztof
>

Hi Krzysztof,

I was also not cetrain on the correct order.

We have En7523 and en7581 and then An7583.

So should I put it at last following the number order or the
alphabetical order?

-- 
	Ansuel

