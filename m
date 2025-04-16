Return-Path: <devicetree+bounces-167921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 49234A90B72
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 20:40:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 543D817B4BD
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 18:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C9E322423F;
	Wed, 16 Apr 2025 18:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="LD1GMJSQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6214F217730
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 18:40:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744828820; cv=none; b=jUgFkZGYgyfSTcEjwbqSrUf0bORzIJXxROQoW8vz/Xyq3U6UpJ8y6lTNI7sTMlBNFx3Grkb5wC09l8w1ToYXH4Fz3MdHthFR9iNCXYfOEN6lZ19zWZg9YNgc75+T2WUY+UPohiG/KFM8SiaZQhdu7FR3oS3a0mefdhll5/0tYlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744828820; c=relaxed/simple;
	bh=I0EC3INMQjYBg9VGIiLtTG4Lcuu/qjJUk/7T+xVwA2c=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H6DedrR3nqkkG+7BZ3DX7s0k+1N8omtLKxHJJm5Y+Ql0lV369taACabPd5l9K9PoJaZ5A4h/ZJyqY/IkbAjxFOgiT9qz55ciWFUHHGiyLemPcBSIoBUOoPfEwdCtMbQURX2GXj2vvQa2Y6u1hDOiSlfeq/IvSa9W37NFQBfAF7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=LD1GMJSQ; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-ac28e66c0e1so1057322466b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 11:40:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1744828815; x=1745433615; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hf73Zqm591Z4cwB1QMdZKpjmrpXWTvATJ+WgcmCQVhs=;
        b=LD1GMJSQOrBW+IW3DUebNTOeBoNHlzgNfHC6N+Cy/2/K3acmAfdsvgYhMSVUb2TlVe
         Yk+gUdmx/w/dvO6YltaqRDKqg5FHljjnniE2GorWOmwTLiKVYxj0SVG+NXEpp+JuXkOR
         uOVGcghvdhcGTzCxXN2i0t48Hwwg08Q3ehyBkLhJdfgbzEQzz23z9qTq2NtepnaN7P13
         UpYykxGF+EyY50WwA1Q5Vmf7CoR6Uo8dB7mhZbFjataonD8Bg8fxvMB142n54y6RK5+0
         XTeA/YZbmEfn+3atBwgCnAKmAb7b+veSiNS3H215KE6Yz0R0Nkr+Izd58UCs6N/xNw+3
         fT3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744828815; x=1745433615;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hf73Zqm591Z4cwB1QMdZKpjmrpXWTvATJ+WgcmCQVhs=;
        b=bgRyqeAw0+TI1jMW7kuQ9wBv9ZeaCBSUr88f++DR9slppdLCa08MZKg1/5VJ4MyCr5
         YVajKozwcmrv93K2t0s2UoNBcYwk4fuAxO2jvFkkVYBBlyJZ2CHUkkIDTVLgOcs+OwF4
         AfgBaP4f8Eh+Na4hD7nkXFHPCN3ph6ydQqgGWrygsgJ+WIaL2k0etrPZREGJo8Kqzbvz
         N5SK5GHBm82tAg/mXRiusDitZ70Z+aVnKE4bKK/e8LLhUzBEIDlnIan1r4ibnB1cieqv
         oJ/F+uCKbJQuYAq/aXknRrqLC4tOtgER6C7Npm7s+MBOwykZfhkECezxUTYqGyJn74yd
         5K6Q==
X-Forwarded-Encrypted: i=1; AJvYcCXZoKNlSkgK/4be06JmSA5iZh1ezIRiw6k4VOKJOcVg6o5NQkzKRFYSfAGHggyEEdpjyU2Plr4nTUMD@vger.kernel.org
X-Gm-Message-State: AOJu0YyeDphz+/BWXzmYUV3IBxDSzdyw7Z/8zu17Jwi1GK2l7rCbjcly
	OUXj0Ux/YLglAfPcCFDUzubxa3HK/Ffkw4tZPDVsuEQaIFTO7T2elcH1LPnPyJQ=
X-Gm-Gg: ASbGncugfHt+GHB8jPQbLORvy8h14GcIbusTcR2+BbAvK7H86s1HtoxJH/PjV7DcD11
	H9wk+dk23SG+4ysgNA0rHFioC+wxkN7ya+fPSzkgl2k8PmB58UfecizWifkM5FEFauvuE0Jmpz8
	mXQ/bQ8uTJmDYcPQW6H6p0zT5fkbyyIWYDPgsoCWfBAvsSH0/dNaoNIkeH9MHBh1y3YD99rmAP0
	hZzxRwxMAJI/5nAHijkkRehuPJ8yMbBgnzL73TATsGp54hcwTd0XSdEjmX0phTXbOpzePkON6sy
	1V82FKfpO05YgbcpQUPkNhA8NPf3h1oTUKRB7DSy4xohowNEmru8WBL7fd9baahJX1xKrMo=
X-Google-Smtp-Source: AGHT+IHvwwjkQBu7DihmtTvqsvfxr52Defd8zqRFD9EThPH0EkutvTV+muEgyvB55Eg0nTCHnjLeIA==
X-Received: by 2002:a17:906:f5a9:b0:ac2:cf0b:b809 with SMTP id a640c23a62f3a-acb429ed4d2mr324522566b.31.1744828815585;
        Wed, 16 Apr 2025 11:40:15 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3d34a5a8sm174672666b.183.2025.04.16.11.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 11:40:15 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Wed, 16 Apr 2025 20:41:37 +0200
To: Stefan Wahren <wahrenst@gmx.net>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org, Masahiro Yamada <masahiroy@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>, Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com
Subject: Re: [PATCH v8 11/13] arm64: dts: bcm2712: Add external clock for RP1
 chipset on Rpi5
Message-ID: <Z__54c628WTjznoG@apocalypse>
References: <cover.1742418429.git.andrea.porta@suse.com>
 <7c26a0b52e00a39930ba02f7552abdd1be4c828c.1742418429.git.andrea.porta@suse.com>
 <45c1a50c-2ecd-4201-85e5-9a0e94f06fa3@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <45c1a50c-2ecd-4201-85e5-9a0e94f06fa3@gmx.net>

Hi Stefan,

On 13:55 Mon 14 Apr     , Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 19.03.25 um 22:52 schrieb Andrea della Porta:
> > The RP1 found on Raspberry Pi 5 board needs an external crystal at 50MHz.
> > Add clk_rp1_xosc node to provide that.
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
> > Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
> i'm fine with the patch content, but I think this is necessary before
> Patch 9 is applied?

True. Thanks for pointing that out.

Cheers,
Andrea

> > ---
> >   arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 7 +++++++
> >   1 file changed, 7 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > index fbc56309660f..1850a575e708 100644
> > --- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > +++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
> > @@ -16,6 +16,13 @@ chosen: chosen {
> >   		stdout-path = "serial10:115200n8";
> >   	};
> > 
> > +	clk_rp1_xosc: clock-50000000 {
> > +		compatible = "fixed-clock";
> > +		#clock-cells = <0>;
> > +		clock-output-names = "rp1-xosc";
> > +		clock-frequency = <50000000>;
> > +	};
> > +
> >   	/* Will be filled by the bootloader */
> >   	memory@0 {
> >   		device_type = "memory";
> 

