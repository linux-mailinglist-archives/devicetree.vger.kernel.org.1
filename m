Return-Path: <devicetree+bounces-164693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EA503A81F6D
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:11:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 557297A75E6
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:10:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2611225B670;
	Wed,  9 Apr 2025 08:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="iNFiYcnp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C00825A34C
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:11:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744186310; cv=none; b=QIPjGxOwYmNd4MqxL+LNROW4gpxUL5bBEhDrKz20v3LK7eRIDZGJLkUTU1tme96lTMEzZe5SuMrZ7S3DpO3EgJI3XYzCVsB8DUm/hZ4D+REte1jtMps55drmoEg06/Nbvx1UtiNsWZAUln7BGZUr8YRqrDVvNi4gODOsENM99B4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744186310; c=relaxed/simple;
	bh=fUS7480s69EPVcIl+pKPnH24D+DvvnLbqwuI4xR2APk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZPHDhFSE0ZHJlJugGyQwXdhCoWOJ/3cIpMDqI9sqRLaYRZ4zV6WmLIDZciTDJPb2BN7349lvV2cP5JRAoYY/y2BkoOE0gH7IdBPudRYgNUGknr1Vrm9j7lJAB3dFsaRROFo7V+94XJekvsAiIW4zHD5eDJ8CrJzXckff2Ojnis0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=iNFiYcnp; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-22423adf751so64111285ad.2
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744186307; x=1744791107; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=j7gG2gKXIJaBQW6zdK34ZxP1VJwapYZYPTASpKezb3U=;
        b=iNFiYcnp7wWTJkqwvczbXxAklutemC8gpOXuO6j58Z32Pn+Zfley2D5ZQDyysRwH7F
         8L/wKnYRltJlLVcNGNWpY0fcMzyRdyt1fzwypcBVPO4hcQs9GUE8FHDpHAYf66zIAw9G
         1av9OndRQwrnuz9BCj1sfkbcj58gGHFG+SQqprWF2En5G6y9nKlp2c3SBit2ErtFuUWO
         hJdzBwYj96vjQ2DUwRnQZgCrRKNr5p8tUl+W4rUqR0lk4XTD6fDclpamZ+wUTmGgA7Sw
         cCDEv2dA/A7IaYRitpBFgihWhoQrj2qo4GCWT2MZYyPHLwZxwpp4M3LNptGEyuFl89Tx
         TIpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744186307; x=1744791107;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j7gG2gKXIJaBQW6zdK34ZxP1VJwapYZYPTASpKezb3U=;
        b=Fz/j/RiuOe9hdisNU/CHcrLMckLZq4atsVOHQLaJwtey/XHiJniIFwzcqp1h/l0OFV
         fxO2QqPQVyGDLduJ3pt/r51IXG5xUrBcCKtKEKGUyUB1z//TrBOztwM9LVU2GQRnY0DO
         GMc/zftYdcfmO5y/oWuMHiUllMY3/svdVg6l4ZJrKFgYiG3BMxea4Ii7VLo1L9LfI0kd
         nxgMFISAgxUrd3EkkupiZ/uneWQuCWvtfn+bz0wrsu/ryvs2ax11xJiJmVkoYLYMiybv
         iVcxh0K/tHwuV14VoE+L71VOMQ6o+xnOPG4cR4gyszwelebGILP+mNMQsBveEUHcDxCg
         P9CQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+M/Quc8zBz+b3xkCY5n7bKBLY1T/j2mISwWVAmBAv7Q8NtizTLB4GSjB+FMlPpnLyUrPus5OsBVK6@vger.kernel.org
X-Gm-Message-State: AOJu0YwHCojGjJQtwknXgv5rtyvp8eZbkk3J4RBc4B3uUZsGxTZ3FVcV
	sXTcnab3LK1+eq7bytQVPYweWqzISD77Mzbl8fBc9DrQ6laHbB7W+0oaBhfWHIQ=
X-Gm-Gg: ASbGncuHIEpf+yDXsA7LUZAGEDSpN+ZMmzHS4+fnWdwniNoLxSpFbVFSGKJEEVYzwo8
	kAJSAyXgHwXZdxO6rfcPhnxIZieZjiB8MpnUREAHSDE2f5eFy/7coMG56rstRV7ujBSgxhAO5UQ
	D1CC87WM0RNGT/HMykTcZ47myU31Q5Yq+EGOqKMj8mqs5YuQ2wEFIw/oTROgJCdp2DUm12hi3lG
	8WZG1Vfuf2TQPG0hMg2ea4s4vuBJYz/8HgN7I2DPINQ4sXCzhDGfBFrtZFGZsG3vjCTMOni2uIm
	Bk1wTQBbkaHonD4iHY/ePsjTsjZiaBjfvx3CqLzgqX+uEcLSdeBzcVUzNVjLC02Pdud2MEpHZ58
	w
X-Google-Smtp-Source: AGHT+IGIKp3RiQ0UvzCkEMnECLBz2B84TOPhJtDjt2186HLjhxIE4MbZHiJzFFLanhXCwmSnOr0N7Q==
X-Received: by 2002:a17:903:1107:b0:223:501c:7576 with SMTP id d9443c01a7336-22ac2991b01mr29875025ad.12.1744186307346;
        Wed, 09 Apr 2025 01:11:47 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bb1e51f7dsm702693b3a.144.2025.04.09.01.11.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:11:46 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:11:43 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Andreas Kemnade <andreas@kemnade.info>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/Yrv+dOtbqRDW5S@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-2-sbellary@baylibre.com>
 <20250404-famous-rottweiler-of-perspective-e5dcbc@shite>
 <20250405215529.7f3f3253@akair>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250405215529.7f3f3253@akair>

On Sat, Apr 05, 2025 at 09:55:29PM +0200, Andreas Kemnade wrote:
> Am Fri, 4 Apr 2025 12:44:39 +0200
> schrieb Krzysztof Kozlowski <krzk@kernel.org>:
> 
> > On Thu, Apr 03, 2025 at 06:44:57PM GMT, Sukrut Bellary wrote:
> > > +properties:
> > > +  reg:
> > > +    maxItems: 1  
> > 
> > How reg is part of this? Every clock has reg, doesn't it? Otherwise how
> > do you control it? Drop.
> > 
> > > +
> > > +  ti,autoidle-shift:
> > > +    $ref: /schemas/types.yaml#/definitions/uint32
> > > +    description:
> > > +      bit shift of the autoidle enable bit for the clock
> > > +    maximum: 31
> > > +    default: 0
> > > +
> > > +  ti,invert-autoidle-bit:
> > > +    type: boolean
> > > +    description:
> > > +      autoidle is enabled by setting the bit to 0  
> > 
> > required:
> >   - ti,autoidle-shift
> >   - ti,invert-autoidle-bit - although this makes no sense, so probably
> > old binding was not correct here
> > 
> 
> well, the more informal definition in the txt file can be read as: if
> the clock supports autoidle, then ti,autoidle-shift is required. But
> that does not
> translate to the formal definition in the yaml file.
> So we have nothing required here.
> 
> I am a bit wondering whether we should just drop the autoidle.txt. The
> only thing worth there is the description.

Thanks for the review.
IMO, it would be good to keep this as other clocks refer to these
properties.
But yes, I will add details in the description about if the clock supports
autoidle, then these properties are applicable.

> Regards,
> Andreas

