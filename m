Return-Path: <devicetree+bounces-103906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF0497C96E
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 14:43:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B941EB20EF1
	for <lists+devicetree@lfdr.de>; Thu, 19 Sep 2024 12:43:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 563AD19DFB5;
	Thu, 19 Sep 2024 12:43:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pGfH/sUu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915CE19E838
	for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 12:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726749811; cv=none; b=Y4TGINMy1Dl3XexsbkijKXvt9WFV1IZS0KivHTkuwV8BUHkiLF1CpYtoAQPcNu7sDu2+GW+fuQqorLK8ZusXfFZTKD4iTsMlau80FMGBqXsiUefishWeHqM8I3/VacJhrWFvsvkbaNXHuRREeVfmBbUCGWkKuA1W7WKsNstdZPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726749811; c=relaxed/simple;
	bh=+r45NApw+tdBKILKIKW+JO3iJ98hV+a2P8LWK7U1/8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QWsqziYwQufBYeIz9A+gx3Op+Uotellm3wFJhlM1y8yF71wOphA/zqm8+jlRpwDim1DPngygwzimKgedJ6Zsfj2xGsg1cfej9xjKEvC92HAZOS9+/xzH/ftrCJmYjtzFgbyQ2AnfKqH9560OTeqSGIUUF5ewTEavF8fJkEJuCGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=pGfH/sUu; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-536748c7e9aso1045857e87.0
        for <devicetree@vger.kernel.org>; Thu, 19 Sep 2024 05:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726749808; x=1727354608; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7Ol6M4YW6MVWejR+WIYDhh5wiJhWpDjSsx72sgUAcK4=;
        b=pGfH/sUu5D+KAbnayz9E7Qzo2apflSF8L3Ee/gSWzzLIOz6wZdLRdiC1AXt5HpvaM2
         BAo3eRkuDfVQxG4bDZbtFf3+6lMA0MzshMElTU83Tvoh7ZfTG4WezMccHr3HaOxeUgpw
         ctE3/QGgGKEMSOb049vhrsBx/Wh6TSAqbUzCcRRncDYiOX/Ef4zv54zTGUdWVSg5ZWLt
         lZF3aA75cv/KlBq8O5lwX/bywerXKLEkKSi5/bO7FcTuL5GYXy4VYIPYbPBYY3jMgyML
         PHakqczQyrcUv8S8Cp+7r45vyzePai7jwAkXyREi1cgXQUYsTqust6OHzPuz0iUgqhOv
         o4Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726749808; x=1727354608;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7Ol6M4YW6MVWejR+WIYDhh5wiJhWpDjSsx72sgUAcK4=;
        b=IzAifA+Ba2Qt21u5FSl5OSSnQ1lyM2ej4JTu/e7fKiC2ZKqyhJCCKjdrDsIAGhztiR
         r5mJHzoa9OTADPM7xUsVXhA25LtXuThHxyMK46DkiCwXDu9EfUa9CL8n1+iV2iouDBsQ
         L7EoUAKaX+mkJQ5dOV/m27RLBZzzV6kHs2aZ7h0sM74mKZEnOKhTfE1RLIP3o0VBiVXe
         +osuy7p6ypLH8Oi8Uq0ySjsHT16r8isY3agb2hqrVL0dz4hZFe+iASMPqQbIqyxawm+6
         cpFWxdSf5Sxlo1mb0Ji6B29JY1ct3WDlzns0KoL/BE7PXmMyTDKNYAhThfWvf9l0phVL
         wuVA==
X-Forwarded-Encrypted: i=1; AJvYcCWsKWG/tPyp9AkBKjEeHVcPwHeNCMDIwUZdGQ1cdHBYpr6c6qUYLeVuao3ihPht5JeZJ0CKseOVllq9@vger.kernel.org
X-Gm-Message-State: AOJu0YzmMIED4figHJ+/9EY9V3OOWTdDd1zebpN9tmuLwWA+F3kkMptu
	s3hwAFat/Elg93Ph4hYUTdBiDV7FHcseJEYfKFeIc3gPcfAyilr9QwDKsnhaKzk=
X-Google-Smtp-Source: AGHT+IFmYmkHZIlfBdyrUfWUWF0Rb5yOfzU8RJXviBKDf8FPfm95Kao56gTHoM4nSmmg/s5Gb0ipWg==
X-Received: by 2002:a05:6512:a91:b0:52e:74d5:89ae with SMTP id 2adb3069b0e04-53678feb07bmr15159766e87.39.1726749807733;
        Thu, 19 Sep 2024 05:43:27 -0700 (PDT)
Received: from aspen.lan ([83.68.141.146])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c42bb5dd02sm6079646a12.41.2024.09.19.05.43.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Sep 2024 05:43:26 -0700 (PDT)
Date: Thu, 19 Sep 2024 14:43:23 +0200
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>,
	"Rafael J. Wysocki" <rafael@kernel.org>, Lee Jones <lee@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>, Helge Deller <deller@gmx.de>,
	Paul Kocialkowski <contact@paulk.fr>,
	=?iso-8859-1?Q?Herv=E9?= Codina <herve.codina@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-i2c@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v4 6/8] backlight: led-backlight: add devlink to supplier
 LEDs
Message-ID: <20240919124323.GB28725@aspen.lan>
References: <20240917-hotplug-drm-bridge-v4-0-bc4dfee61be6@bootlin.com>
 <20240917-hotplug-drm-bridge-v4-6-bc4dfee61be6@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240917-hotplug-drm-bridge-v4-6-bc4dfee61be6@bootlin.com>

On Tue, Sep 17, 2024 at 10:53:10AM +0200, Luca Ceresoli wrote:
> led-backlight is a consumer of one or multiple LED class devices, but no
> devlink is created for such supplier-producer relationship. One consequence
> is that removal ordered is not correctly enforced.
>
> Issues happen for example with the following sections in a device tree
> overlay:
>
>     // An LED driver chip
>     pca9632@62 {
>         compatible = "nxp,pca9632";
>         reg = <0x62>;
>
> 	// ...
>
>         addon_led_pwm: led-pwm@3 {
>             reg = <3>;
>             label = "addon:led:pwm";
>         };
>     };
>
>     backlight-addon {
>         compatible = "led-backlight";
>         leds = <&addon_led_pwm>;
>         brightness-levels = <255>;
>         default-brightness-level = <255>;
>     };
>
> On removal of the above overlay, the LED driver can be removed before the
> backlight device, resulting in:
>
>     Unable to handle kernel NULL pointer dereference at virtual address 0000000000000010
>     ...
>     Call trace:
>      led_put+0xe0/0x140
>      devm_led_release+0x6c/0x98

This looks like the object became invalid whilst we were holding a reference
to it. Is that reasonable? Put another way, is using devlink here fixing a
bug or merely hiding one?


Daniel.

