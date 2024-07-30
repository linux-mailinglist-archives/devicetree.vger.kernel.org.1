Return-Path: <devicetree+bounces-89401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A40940FCF
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 12:45:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7A44DB2DE8D
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 10:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B90E919FA76;
	Tue, 30 Jul 2024 10:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ix+brLun"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E7194A61
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 10:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722335931; cv=none; b=pk7HdbPntqcdwkuiGBcvD+t7rMjoU7XKibTMXSYO6tP/uGbq0wZSOhq3L9lZgaEZNhILmY9oDWG0B5r3ve1wSzXR3MFXLNsELPwpkf91ZUgLLt9/FoucAkPXjgYP4pDW/NF+x4LdciqNSy1RCcHQriROKi1lp4tVgqiuYE6o3xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722335931; c=relaxed/simple;
	bh=5418WYGj5KA9RFM0c5JaVlda/KIU9LgEhMiBV9V/4wQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HIRUTjCDhfGo9z9sEAs6T2JfMKcP6/m/oQnfT9qOPDoO03sIIvuPKz2cHeHdLCSl4J1B5hV351gEN8wAqPzbdfoyAA8FzdzR+AVBJ+b9a8ZVzvxAYkr/A3Iets5c7WnYf7c7uswFtxjS8F22SBKA4ggMZnDMZ9WdNqpJTB+fUdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ix+brLun; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-52f01993090so6906919e87.2
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 03:38:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722335928; x=1722940728; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+U97O4VKbER7c77DAivCOtGbIut3AV5EqhrmEVNx9ZQ=;
        b=Ix+brLunf9ctmduDdPB/EKa7g+5VG/G6dMw9dOYJuwkvtC/mpCbwN8jGmB8hbOuii0
         cDP7SHGDyX+Dm9FtjZqtN5Bb2IQD0V8JaBnlh9ojLEg5LNql3GDHeyWpTqEo7w8u1kHO
         AsYPhfjN+oUf2KIszoEt5hVHUW4W8RjOADeqefC7TNesnL6ar1/5tNKg9gnFPUOvVN73
         YcjzZn4ONyzCqWVK9b1l4m9Odkzt7coVY/CoOmVsYM5ik4XqSyVaUChrPgDhgUL8AN0c
         gZjhb8wNfOugcIOjBwxPAMTzraBYxwmjXODiiMFW0aeGP/xKsTqo7dqm+FYeWo8yu4/7
         4Zkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722335928; x=1722940728;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+U97O4VKbER7c77DAivCOtGbIut3AV5EqhrmEVNx9ZQ=;
        b=D9DCXlkMGrkn5r2WTiU5v1CIJ3AU0Ru95v5ZaIil/45jpxm3TCMx8pBclBZWSIzFCe
         rP4fjib8H8GlIzseXGz+W/6W1Hyt5OwCuTfZSsn3RG8nnmmgtm57E+riL2BIo/dixXVF
         P4LKyYzrrO37/PAPTx1c/gi//4PJlog8wakG1We3Gp01ZdVV56Ngfa5/cBMnC6rajcYT
         PgiNw98cUih1IpZCgeUGr79WL6YySRqYOdyYJ6KCnzrSOYh30wbsJlL00x0NQhoYvUVM
         Uh2YcCojBpoVBbajQYHA/kLAcMi2LjXejYaNmp2rEK+6Am1TYo2/QB4aAFRJ2/rWXSJi
         I8Hg==
X-Forwarded-Encrypted: i=1; AJvYcCX28zeTL4gTyu6XFIQH/ZVhVdXlP8MePj9glT1woR/7wq9eTcSENpXqjwmLQ8LNFOHmIm509TUgR8EOVsV9bLGu9umkpaUFL8EAXQ==
X-Gm-Message-State: AOJu0YwBo/6gEMaUGqaa7hkal6HDqnpPfeLxaNzIPbkr5H3ssWpNtD84
	DLP25HgVAUzKJp4DQLa5ZiypI6EH+25DsV7F8WhtfRaYibAOigSJ86atqlpz5QE=
X-Google-Smtp-Source: AGHT+IF6VKB4D32RCp9CERdBwiA6MVKDWqI+JR21hITdyzolHsRceFaO1kh1POQ/RRF1GjMQ6ImKsQ==
X-Received: by 2002:a05:6512:451:b0:52c:8596:5976 with SMTP id 2adb3069b0e04-5309b2c5bbcmr6704911e87.55.1722335927871;
        Tue, 30 Jul 2024 03:38:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bd0a6esm1874512e87.65.2024.07.30.03.38.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 03:38:47 -0700 (PDT)
Date: Tue, 30 Jul 2024 13:38:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Maxime Ripard <mripard@kernel.org>
Cc: Marc Gonzalez <mgonzalez@freebox.fr>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>, 
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v3 1/2] dt-bindings: display: bridge: add TI TDP158
Message-ID: <qxovk44ezmgvfmmp44gkpytvegnn627nlui24l5zmiimsbnvlr@pnrcemh2iprl>
References: <20240627-tdp158-v3-0-fb2fbc808346@freebox.fr>
 <20240627-tdp158-v3-1-fb2fbc808346@freebox.fr>
 <20240701-bug-of-great-honeydew-cfb6ef@houat>
 <e55d0f0e-a104-4790-b832-120dbddd93ad@freebox.fr>
 <20240715-stirring-purple-toad-7de58c@houat>
 <c302bc47-6492-44af-86a1-3ff6a815e314@freebox.fr>
 <20240730-eminent-venomous-condor-8ef421@houat>
 <CAA8EJprQJJ2AuB99RFU+d074PV+NHMPwjFWn_auju7HYQQ8R7w@mail.gmail.com>
 <20240730-miniature-wonderful-okapi-01aa0f@houat>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240730-miniature-wonderful-okapi-01aa0f@houat>

On Tue, Jul 30, 2024 at 11:30:01AM GMT, Maxime Ripard wrote:
> On Tue, Jul 30, 2024 at 11:46:24AM GMT, Dmitry Baryshkov wrote:
> > On Tue, 30 Jul 2024 at 11:27, Maxime Ripard <mripard@kernel.org> wrote:
> > >
> > > On Wed, Jul 24, 2024 at 07:59:21PM GMT, Marc Gonzalez wrote:
> > > > On 15/07/2024 16:40, Maxime Ripard wrote:
> > > > > On Thu, Jul 04, 2024 at 07:04:41PM GMT, Marc Gonzalez wrote:
> > > > >> On 01/07/2024 15:50, Maxime Ripard wrote:
> > > > >>
> > > > >>> The i2c register access (and the whole behaviour of the device) is
> > > > >>> constrained on the I2C_EN pin status, and you can't read it from the
> > > > >>> device, so it's also something we need to have in the DT.
> > > > >>
> > > > >> I think the purpose of the I2C_EN pin might have been misunderstood.
> > > > >>
> > > > >> I2C_EN is not meant to be toggled, ever, by anyone from this planet.
> > > > >
> > > > > Toggled, probably not. Connected to a GPIO and the kernel has to assert
> > > > > a level at boot, I've seen worse hardware design already.
> > > > >
> > > > >> I2C_EN is a layout-time setting, decided by a board manufacturer:
> > > > >>
> > > > >> - If the TDP158 is fully configured once-and-for-all at layout-time,
> > > > >> then no I2C bus is required, and I2C_EN is pulled down forever.
> > > > >>
> > > > >> - If the board manufacturer wants to keep open the possibility
> > > > >> to adjust some parameters at run-time, then they must connect
> > > > >> the device to an I2C bus, and I2C_EN is pulled up forever.
> > > > >
> > > > > How do you express both cases in your current binding?
> > > >
> > > > It's not that I'm ignoring your question.
> > > >
> > > > It's that I don't understand what you're asking.
> > >
> > > And that's fine, you just need to say so.
> > >
> > > Generally speaking, you're focusing on the driver. The driver is not the
> > > issue here. You can do whatever you want in the driver for all I care,
> > > we can change that later on as we wish.
> > >
> > > The binding however cannot change, so it *has* to ideally cover all
> > > possible situations the hardware can be used in, or at a minimum leave
> > > the door open to support those without a compatibility breakage.
> > >
> > > That's why I've been asking those questions, because so far the only
> > > thing you've claimed is that "I can't test the driver for anything
> > > else", but, again, whether there's a driver or not, or if it's
> > > functional, is completely missing the point.
> > >
> > > > SITUATION 1
> > > > tdp158 is pin strapped.
> > > > Device node is child of root node.
> > > > Properties in proposed binding are valid (regulators and power-on pin)
> > > > Can be supported via module_platform_driver.
> > > >
> > > > SITUATION 2
> > > > tdp158 is sitting on I2C bus.
> > > > Device node is child of i2c bus node.
> > > > (robh said missing reg prop would be flagged by the compiler)
> > > > Properties in proposed binding are valid (regulators and power-on pin)
> > > > Supported via module_i2c_driver.
> > > >
> > > > If some settings-specific properties are added later, like skew,
> > > > they would only be valid for the I2C programmable mode, obviously.
> > >
> > > I think there's a couple more combinations:
> > >
> > >   - The device is connected on an I2C bus, but I2C_EN is tied low
> > 
> > No, this is not possible. I2C pins are repurposed if I2C_EN is low.
> > You can not call that an i2c bus anymore.
> > 
> > >   - The device is connected on an I2C bus, but I2C_EN is connected to a
> > >     GPIO and the kernel needs to assert its state at boot.
> > 
> > This is a pretty strange configuration.  The I2C_EN pin isn't supposed
> > to be toggled dynamically. Anyway, if that happens, I'd use pinctrl /
> > hog to control the pin.
> 
> ACK. I still believe it would be valuable, but I don't really want to be
> part of that conversation anymore. Marc, do whatever you want.

Just to explain it, from my way of thinking the I2C_EN pin is the same
as the address-strapping pins: they are usually hardwired by the device
manufacturer.

-- 
With best wishes
Dmitry

