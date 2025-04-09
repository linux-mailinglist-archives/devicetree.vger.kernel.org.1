Return-Path: <devicetree+bounces-164699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 16014A81FA6
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 10:23:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EFAC1B60811
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:23:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D81725B690;
	Wed,  9 Apr 2025 08:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Kf++T9IY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0EF1D7E5C
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 08:23:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744187002; cv=none; b=f7KEx212/My0bGvHi1m2SJ1N1WHCsT5ts5TpfojUjIcXUvcAwtZgFAqySdNxWeP1+N4u2CcNx33aYkXfuC5Rrf6Z03dzWMPYTEcpDAdDnZF+JXl7Ch2od5kcjk8TMUdEQiQWIOVOdlCehUBvOrQyMLwALf1EPKKPUp2S++h58+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744187002; c=relaxed/simple;
	bh=BC22B58ebf6orl7qqDiyHa7iwd/DmKy9U31GLWFWWvg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aMaoXOzc3faKErpE+pgIdQxlBSkko6uG8VHMcBgURcAVxi+UoRwJBdBQi5pG/rj1eJADzYRrr3gY0FHQ+ukHOgPiQdJvO6Rd2XMyR2tEK0MZeK5tVEWUDpkaxYho6zVIDDxRpnwasERvVsTXR22WX7JCMhdGqa8dvQFvrYogoYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Kf++T9IY; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-739b3fe7ce8so5708854b3a.0
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 01:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1744187000; x=1744791800; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=N8Uxcp65AEN2lXG7OunlJf+FIxnQApjkFfx8Dt72lEU=;
        b=Kf++T9IYB1narSlux9I8VwS55DtKxov/GEKO+sXLP8bb9yKWWkLkXcev+rsxcxh/PD
         OmvrZG+grNaJNz1mpXWKtNVA2/Ox1iCefG58TkuYY77Tujn2qRtsjCaQxpow0ZkHcT66
         TU93FxhtGEkWvbW/ZUrZkXkRDAr23LCgCemiu613OsOoxGE13G6zCXniwYFirFhcbMX4
         +DYZKJFkrqMDYED9L8j3p6NJdoQ59eo+X1buY4ZJh7A8mRVDqHtLLUK44wLvxJE19KOI
         Aab44NkvxTg8BCwGfsyQrcGMcqZUmEoTLm8+TkccvpoOLnTnXWOfwsf5arx0AB2gFlL5
         VC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744187000; x=1744791800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N8Uxcp65AEN2lXG7OunlJf+FIxnQApjkFfx8Dt72lEU=;
        b=JBKJ1ZpcQqxyOZTlqKKCG542vaZaNNHQLMHaZoAvAeWCkpHDAzwZqzA7bFeH56BfGQ
         Txj6glKArWwyG2iFTAjmmGUZ65B4ujiYWZ6qJgTxpoR3/O+O9mZ/Bgj+qwUjDDJ1BlE8
         skjUOnv3WZ1hF59wu8jgRUe7HH4ir6osAN+CrMp9igIGPer2939IgYisCCVUIQgkgxE4
         S1hKvBsRxnWJKH5RXHwtpiJKpx7XdJSCCZenJH1wvnvzkR80vhSQu/c2BPaTjLpMyWT5
         /0FxUiGhXnQCqoI7oH8dxJgL+p9OT3Bh9oD90+0u3Sf5Q1XfZZl5Vtob6va8RDCiYou9
         8ITQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwSmNFKr3YWwsNAuaHjY09ezU4ffL2FHsE1qHJ4hZeRwfZo+TJouVFxCKryEnyK91KPq826rNXdCG+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4RkAovsEE4K3DTvUCaMRJ/6qdligb1xdQ1l42vMX7ZXJcjmBO
	3aMkw8awOD06oY9uiDgxenIU6t1VZSLUnXT+APOemmzHlVyIZJefpqscnFftJ1g=
X-Gm-Gg: ASbGncvefpk2ahkHOI3nlUF3IX+oBIQAL6XZbUPCRSiEAEW0zOLbOSHUfgKS8UyYs+q
	tyWkDcXj4vlG55ALijrUvpkEizJH1XhqJCqZdybPQiW6C+UGHo8uTKorQg4fBqENI0agppelxvb
	V16SgACOysimVNRb3Cy624jQOTLQk4bj/Bw1qAH0n9j6pcB8LANn5VTD6vks5HLqMQGlz2ZJWi2
	4p8e+NWVQot1hBQs+l7sVRQkQWlBEVFPzenD1Wwl6sox/sEO9zX14YKDsXogZXwpqQqa+ztNePT
	z32HnsZ3TDpS6sQU37Zat3DkDvUDV83RacljZDFisuh8D1RpnV2gL0mSlcS84YQUG3L1uFlIXYK
	b
X-Google-Smtp-Source: AGHT+IELAFHnf6NcURJ7YwZpI3uONM/cHB108XuMeGlHH0Z4VyN7IgVNBUS39Fs8l1da/2JGxOqo6w==
X-Received: by 2002:a05:6a00:10d2:b0:736:8c0f:774f with SMTP id d2e1a72fcca58-73bae5512d5mr2408875b3a.22.1744187000327;
        Wed, 09 Apr 2025 01:23:20 -0700 (PDT)
Received: from dev-linux (syn-076-088-115-008.res.spectrum.com. [76.88.115.8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bb1d464c9sm739894b3a.58.2025.04.09.01.23.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 01:23:19 -0700 (PDT)
Date: Wed, 9 Apr 2025 01:23:17 -0700
From: Sukrut Bellary <sbellary@baylibre.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Tero Kristo <kristo@kernel.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: clock: ti: Convert to yaml
Message-ID: <Z/YudZ0c2SBA+NMD@dev-linux>
References: <20250404014500.2789830-1-sbellary@baylibre.com>
 <20250404014500.2789830-3-sbellary@baylibre.com>
 <20250404-tangible-reindeer-of-penetration-ae9ca3@shite>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250404-tangible-reindeer-of-penetration-ae9ca3@shite>

On Fri, Apr 04, 2025 at 12:46:28PM +0200, Krzysztof Kozlowski wrote:
> On Thu, Apr 03, 2025 at 06:44:58PM GMT, Sukrut Bellary wrote:
> > +maintainers:
> > +  - Tero Kristo <kristo@kernel.org>
> > +  - Sukrut Bellary <sbellary@baylibre.com>
> > +
> > +description: |
> 
> Do not need '|' unless you need to preserve formatting.

Thanks for the review.
I will fix this.

> > +  Every clock on TI SoC belongs to one clockdomain. For specific clocks, the
> > +  parent clockdomain has to be controlled when the clock is enabled/disabled.
> > +  This binding doesn't define a new clock binding type, it is used to group
> > +  the existing clock nodes under hardware hierarchy.
> > +
> > +properties:
> > +  compatible:
> > +    const: ti,clockdomain
> > +
> > +  clocks:
> > +    description:
> > +      Clocks within this domain
> 
> Missing constraints.

I will add it.

> > +
> > +required:
> > +  - compatible
> > +  - clocks
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    l3init_clkdm: l3init_clkdm {
> 
> Follow DTS coding style. Also drop unused label.
> 
> Node names should be generic. See also an explanation and list of
> examples (not exhaustive) in DT specification:
> https://devicetree-specification.readthedocs.io/en/latest/chapter2-devicetree-basics.html#generic-names-recommendation

Sure, will fix this.

> > +        compatible = "ti,clockdomain";
> > +        clocks = <&dpll_usb_ck>;
> > +    };
> > -- 
> > 2.34.1
> > 

