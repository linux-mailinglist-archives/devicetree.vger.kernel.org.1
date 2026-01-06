Return-Path: <devicetree+bounces-252124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8A7BCFB517
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 00:05:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B33753015841
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 23:05:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E17E82F0C71;
	Tue,  6 Jan 2026 23:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X3+E/RqL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C12126C02
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 23:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767740727; cv=none; b=ImL/YgqRnh19ZH2O0lF9lH64cj07YVgDi4p9MeW8Jwf7xtJHaeB3G2yfTboxOYMfNJe6o3ptyQtgS0Pf20LOCwMwhn+Yly1ez3b/IriZbD+CXe6iKGM0JM8zahJ55Jfe0HGxq9Ers3iLpuK+9QWsT9ckHFO9o3zbEIHKmxgXhj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767740727; c=relaxed/simple;
	bh=P62+SexSZ9nGF5+uA7R+OXml7+ArJUyCTC0YFM/lEaE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qkAwa/gRypxLihxEVN7Y8Rw4jkd7WgvxMmdUPTie6q440PXnV8+8eL0vSz9mTzyw442YDsjUcnJdYzpqXng1YegIPBtpY6nZQtGMtcJ1lyqhUeFARwOsU061D+zakR7Q6IF6EyHRytuOJRncxDuQHR05mS3UoJbGZ0vDSpGeXog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X3+E/RqL; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-477985aea2bso1938835e9.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 15:05:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767740724; x=1768345524; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PxapFgVYnsCWIyo0CktW/IQv7jH9MgZJhnDM0z/8zDU=;
        b=X3+E/RqLMUX6mOFwJPA6vJitAKiugRGLsHgmtL5BDloj5Ypf06fI02uDostSKvoAJ5
         IpTt6LVGsQu9h0/zJuZH1BXk0FITV50JBQCRLQufHawsAdVBsHNWTYXdksbpmqAlcLJ2
         JavIR7ZdExmqXGR0q3OU8jv+hO+o2wZPHGXQYlySFKh+YDveJ4ijyMt0aT1legeY5kyk
         xhNxtyK9NjuafLKBdLTe9NwmlO7hr+uI9aas/LxR1Ai3wegF7FR8cAuma7YwJuTGhj5C
         mMKpwNhdAMoV/6cwQK5b3gDnh+k3aKtfajz8KJYu3KPIsurZTkNrQZknc8w6BBWKp44L
         Kd3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767740724; x=1768345524;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PxapFgVYnsCWIyo0CktW/IQv7jH9MgZJhnDM0z/8zDU=;
        b=RgaODeF7Ga4GO6tufaa9uEQ15a32TJ1DvzQTmokEq+EsXajQniSoY/wUqYmthIOL6m
         Lw8de4TqjFJ1wFodHOxC/arqmiOlIX6Ure9sIJjXgWiG6bGXJL4sEgC4UcTrqjb9Ll8X
         YwiCepkbKup2qesDGsNipEuVySGs+fC14jtcsYxKOJFOwDlnAE2ohKwSaIScwtGWl4A2
         BNVChMtcrNrCbIFv8mT5o2PqNt+QSIHrzYK/Xh6oUNmmMzwTuirhmY8WIyeQsh04TxK7
         Q8oXAhCutWMCdegV3kZO6kfoJj+zMFVoiCzQJDL3gpmKkFo0LefjvjcJIvEGJtQx8l+U
         Gixw==
X-Forwarded-Encrypted: i=1; AJvYcCUDYLuqWXpo57ce8hLRC+BpbJbmVI6LsmEK4B4ScKTCvUeaEJ2DQSb5RyfaUj/+gJ5MPg2DvViJgYqI@vger.kernel.org
X-Gm-Message-State: AOJu0YwRJUOD0qcHBlBwFlPxGFqf+bq98zgXNFBMfjOIRJAKxpi8lkxP
	3JV6N8qD0MZSxjI1SI5q96+5eT1p4xAGfJjvCPFbkpmFPA/r6EOPUiT7
X-Gm-Gg: AY/fxX454FsdyqWuGuiFw/j+y5T51PpMlvXGlHqBAX51EmTPIWTJTnb4jcPUxJKjj4t
	B1zcs45dLqBiWN1trCNR91i2eZ/2XUm845VtOqnjxHyTDEQNfcsCMIdXhu7G2q9mW9A60d6g+rf
	EddzGZjn3MdFTy2C5P/ch+W4qS9pc74XpM1Y38cw83Uxu93yFZCBgtxkmnez3YicwKmCpGSACjb
	zXwuLsnC8rsdTk63OStrpNF2iI514ixqjxFvRe1SPH1PNol8XZYDGm/T0Lp/1Rlkqb9s9Ppm796
	y7nbj9rhT+uqmZwc3OysWlM9hoXGqTPoDUJ1MqrN6QV9+OZ1e/Lf6ya4t+5y8K22Q0Ba9LxQcoM
	noY/GFUBkPzP+i2HQ+LWeJ1pXPEsd+E0K3tnGT6lAUQkpWJ/yNDoOzzK0iuDuZ2WYWsV1/3GHst
	5o7A==
X-Google-Smtp-Source: AGHT+IFHvR3PWQ5ize927SnFuctRZZ+ULpEdYthALC5LDfP2dC/UzHfGiLtVDJjdCER9VVpiUSBv+A==
X-Received: by 2002:a05:600c:8284:b0:468:7a5a:14cc with SMTP id 5b1f17b1804b1-47d84b30091mr2875005e9.3.1767740724036;
        Tue, 06 Jan 2026 15:05:24 -0800 (PST)
Received: from skbuf ([2a02:2f04:d804:300:2df7:9d78:6807:9af8])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f410c86sm68232875e9.3.2026.01.06.15.05.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 15:05:23 -0800 (PST)
Date: Wed, 7 Jan 2026 01:05:20 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>
Cc: "robh@kernel.org" <robh@kernel.org>,
	"hauke@hauke-m.de" <hauke@hauke-m.de>,
	"andrew@lunn.ch" <andrew@lunn.ch>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"daniel@makrotopia.org" <daniel@makrotopia.org>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>
Subject: Re: [PATCH v3 2/2] net: dsa: mxl-gsw1xx: Support R(G)MII slew rate
 configuration
Message-ID: <20260106230520.xhagmy76ddl7scfs@skbuf>
References: <20260105175320.2141753-1-alexander.sverdlin@siemens.com>
 <20260105175320.2141753-3-alexander.sverdlin@siemens.com>
 <20260105193016.jlnsvgavlilhync7@skbuf>
 <ac648a7e6883e68026f67ae0544b544614006d8f.camel@siemens.com>
 <5cd460761e5b163ac2c5c5af859a53a9ad76d3ba.camel@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5cd460761e5b163ac2c5c5af859a53a9ad76d3ba.camel@siemens.com>

On Tue, Jan 06, 2026 at 09:41:13AM +0000, Sverdlin, Alexander wrote:
> Hello Vladimir, Rob!
> 
> On Mon, 2026-01-05 at 22:00 +0100, Alexander Sverdlin wrote:
> > > > +	return regmap_update_bits(gsw1xx_priv->shell, GSW1XX_SHELL_RGMII_SLEW_CFG,
> > > > +				  RGMII_SLEW_CFG_DRV_TXD | RGMII_SLEW_CFG_DRV_TXC,
> > > > +				  (RGMII_SLEW_CFG_DRV_TXD | RGMII_SLEW_CFG_DRV_TXC) * rate);
> > > 
> > > I don't have a particularly strong EE background, but my understanding
> > > is this:
> > > 
> > > RGMII MACs provide individual slew rate configuration for TXD[3:0] and
> > > for TX_CLK because normally, you'd want to focus on the TX_CLK slew rate
> > > (in the sense of reducing EMI) more than on the TXD[3:0] slew rate.
> > > This is for 2 reasons:
> > > (1) the EMI noise produced by TX_CLK is in a much narrower spectrum
> > >     (runs at fixed 125/25/2.5 MHz) than TXD[3:0] (pseudo-random data).
> > > (2) reducing the slew rate for TXD[3:0] risks introducing inter-symbol
> > >     interference, risk which does not exist for TX_CLK
> > > 
> > > Your dt-binding does not permit configuring the slew rates separately,
> > > even though the hardware permits that. Was it intentional?
> > 
> > thanks for the hint! This is definitely something I need to discuss with HW
> > colleagues and get back to you!
> 
> Vladimir, according to the responsible HW colleague, it's OK and is desired
> to have TXD in "slow" as long as Setup-/Hold-Timing is in spec.
> 
> I do understand, that this is board-specific. Do you propose to introduce
> two separate properties?
> 
> Rob, in such case just "slew-rate" probably wouldn't fit any longer and
> I'd need to go back to "maxlinear,slew-rate-txd" and "maxlinear,slew-rate-txc"
> probably?

I see Rob has reviewed the binding in this form already, but I think the
rule of thumb that we could apply in this case is to still describe the
clock and data slew rates separately. Like Russell points out in a separate
thread, it's simpler to do this from the beginning rather than end up
with 3 properties you'd have to maintain, if you later need individual
control.
https://lore.kernel.org/netdev/aTB0x6JGcGUM04UX@shell.armlinux.org.uk/

Sadly I don't have the expertise to give any advice on how that would
translate into dt-bindings. Does it make sense to implement a full pin
controller device driver for the registers GPIO_DRIVE0_CFG -> RGMII_SLEW_CFG?

