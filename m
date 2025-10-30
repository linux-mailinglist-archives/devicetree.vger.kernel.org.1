Return-Path: <devicetree+bounces-233059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF86C1EC42
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:33:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0B4F934A8DC
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 07:33:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FC8337113;
	Thu, 30 Oct 2025 07:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tJsHOSdl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3072327219
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:33:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761809603; cv=none; b=Ns4OFBAhRRQxRWwffK/2yB9lkMjaaid+9F4g0/8gjNyKldEGVvreOThK1OBiPzwoHw8lrp6k2fP7anHOWGL77CcHmjW33fyXGMLe/KfwXgbFDC7H3+zaMJi780/VcCVPNHIG8XMCkc21z9N1evgSbL9UDhUHvjuavh9s03GE/wE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761809603; c=relaxed/simple;
	bh=V/BP+m1O0wC0h9uOMV8FglObuffxz7cc79Irwm2fjJs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IilP37m0TY6Lc5ZtfgdCCYoYLn1b/5rLhu1CQk0tiK2QJeNZ7RZsTI+brnAbi5wYI8SK+YHmdGGN/OOOqTcYY2xy9EHz7UceaD/oXfzwW4l5xrXxzvVAgvOhN5nKn8ww2X5GILs0LFG8BmC9pzHUwgZ63ZnpoW595qMe/GT3Vlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tJsHOSdl; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3f0ae439b56so393171f8f.3
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:33:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761809600; x=1762414400; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0kYjzD7jZvmakE2sPaNGi8uWg3UUfx5t1Qsseyt/zyY=;
        b=tJsHOSdl6CezxozejKQnQIAKtBwJ+KDYJ/7ZUrOnC4QBJEQ0DQZTkDuC2shHZY5l7B
         LxhBB4eURu4GMJGVdRaxCbGfd/4kqnLitFhFIRlttL7RmNchHpj1yNUdGbSwQecnIXx9
         HUwDBw0sJaPTo67s4hQygEl+Ry1MLYcEE8uutXiEtkoyPFMmk5s7rUq37QBnoRu1fkO0
         dJf8QlmlPTybPgrt5aFPgVnP1moxBA7f27U1EE5NYO3dLje5F3+oB3Ha7Q5UE7pcpQGi
         Njw+XOGyOMXaQUXMTf43hfclIEXNZ03yBKMuUQfGvkEL7/pN7yxHe5391WS4RbzKfgDs
         or7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761809600; x=1762414400;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0kYjzD7jZvmakE2sPaNGi8uWg3UUfx5t1Qsseyt/zyY=;
        b=dm+zdYommR2fDLZiX2tJWFcJPyjrBedOx2H9T9D/uCiqpARIj1VALYmwNmzorwUOcZ
         ihWGZpOnxuFyvRTH+VeS12Eb9sErZyzE946yfUvn4gqipFdU12WVi9UfQ7wkCsxNQ3W5
         Yr5Ute4IXaBNS4j7npaNDnLl6U1R23bKmNY6kFs2NAl88Dz3wKSqicjD0wmmbDz8osFJ
         0j0c0b9DsuaMvbtHzWUdM77C6mODq7/qdQpO5p5UXD/rc2oXtyAk5FBE7+E/fsC14RZo
         EEZ1gEuPIvR3cprdkYxhyjZVJad+R8vj633o1GHLwg0NhKyoxaQTLB9xv5YvqjqS/TRc
         VIBQ==
X-Forwarded-Encrypted: i=1; AJvYcCVT+FLOCsd0Fi7m7S6Soe4qN1p417nO6EFMj18UNzwa6ruucWbcX6TFARYAgM5uOz3k/cQguVu1mwDF@vger.kernel.org
X-Gm-Message-State: AOJu0YzIB/VeFNNryZFnpxbJ0ugtjZiDDsY/KXWXVtrcEe24eeqgfVzE
	+Vb64MxRA2HqUe95OOdMt2X3P+uTloVDEHH/w5NUZYuXu28LcbFDTQI7jHwlLFrMdNA=
X-Gm-Gg: ASbGncs6XwD+swOfPNr0OON5/jh3D7bZ25XdP99MhWQVW8z/1hi5jnG4bTut9+y6H9c
	dhV4Bc+6osRbWn9gAVQKIAhvV81f0FcLY0aHHwPvDTFfAF5qtR4xsjrF7n7TKkhQJwLAofvlif0
	k2Htq+Inxj4qp2AVWJV0RAx1L9UlEp5lmblVmHF8zNONQ929tKjgDbc1hSIGUSW7V6Vv2r/z1tD
	8cSSJUCvwhliDnCgt5Ji1AtUsPfAl7Ux9oy6AsQXCH18UBdYdiXkRNP1MNM+v56zRBVEQ+p2M71
	ir/ins1pRDqbaZyF95lEa9Svq8nHj0K9VMA2umjhpPNvWZEx7Ra6/mXKvCkiYCSB0ya77r6nLXS
	tMYeGsbZbchZzruK1weoyeYa+PHhAJYx+QnaP3QRPSPpeOGA1DJrGlKRtV5lXDc9Cx/wlijyEtB
	hqDJFoV0NjLVDdCynv
X-Google-Smtp-Source: AGHT+IHg3fq5v9eA1StMd8br+zU5OHqkS5mssGKcEkWWy3Wg9u52waSCJQeJxcDi+qFclXDDRvi/2A==
X-Received: by 2002:a05:6000:2dc6:b0:427:53e:ab33 with SMTP id ffacd0b85a97d-429aefca7e7mr4211636f8f.48.1761809600122;
        Thu, 30 Oct 2025 00:33:20 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-429ba92da9esm265929f8f.25.2025.10.30.00.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Oct 2025 00:33:19 -0700 (PDT)
Date: Thu, 30 Oct 2025 10:33:15 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>,
	=?iso-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>,
	Peter Griffin <peter.griffin@linaro.org>
Subject: Re: [PATCH 0/2] mfd: syscon: introduce no-auto-mmio DT property
Message-ID: <aQMUu08phVPqfgEB@stanley.mountain>
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <3fd4beba-0d0b-4a20-b6ed-4e00df109b66@app.fastmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3fd4beba-0d0b-4a20-b6ed-4e00df109b66@app.fastmail.com>

On Wed, Oct 29, 2025 at 08:43:33PM +0100, Arnd Bergmann wrote:
> On Wed, Oct 29, 2025, at 18:27, Dan Carpenter wrote:
> > Most syscons are accessed via MMMIO and created automatically.  But one
> > example of a syscon that isn't is in drivers/soc/samsung/exynos-pmu.c
> > where the syscon can only be accessed via the secure partition.  We are
> > looking at upstreaming a different driver where the syscon will be
> > accessed via SCMI.
> >
> > Normally, syscons are accessed by doing something like
> > syscon_regmap_lookup_by_phandle_args() but that function will
> > automatically create an MMIO syscon if one hasn't been registered.  So
> > the ordering becomes a problem.  The exynos-pmu.c driver solves this
> > but it's a bit awkward and it would be even trickier if there were
> > several drivers accessing the same syscon.
> 
> What would happen on the current exynos platform if we just take away
> the 'regs' property? I would hope that we can avoid encoding what
> is essentially operating system policy in that driver and instead
> just describe it as a device that expects to be implemented by
> firmware and doesn't need registers?

Exynos solves this because they only have one phandle so when they parse
it, that's when then they create the syscon.  If you had multiple drivers
accessing the same syscon then that doesn't work.

If we left out the "regs" property it wouldn't be created automatically
but syscon_regmap_lookup_by_phandle() will return -EINVAL and probe would
fail.  It needs to be -EPROBE_DEFER so the probe tries again after the
regmap is registered.  We'd need to add a check like this (untested):

I can test this probably later today when the test system is back.

regards,
dan carpenter

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index ae71a2710bed..41da49a0c767 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -51,6 +51,9 @@ static struct syscon *of_syscon_register(struct device_node *np, bool check_res)
 
 	WARN_ON(!mutex_is_locked(&syscon_list_lock));
 
+	if (!of_find_property(np, "regs", NULL))
+		return ERR_PTR(-EPROBE_DEFER);
+
 	struct syscon *syscon __free(kfree) = kzalloc(sizeof(*syscon), GFP_KERNEL);
 	if (!syscon)
 		return ERR_PTR(-ENOMEM);

