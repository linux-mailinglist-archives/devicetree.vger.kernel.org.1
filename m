Return-Path: <devicetree+bounces-47132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BE0986C48A
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7E77285ED6
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:10:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BCD9A5788B;
	Thu, 29 Feb 2024 09:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VYyyGafn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B32657871
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:10:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709197816; cv=none; b=Zkz1CcKTGxhKGlQCBwgNQVnz04VL3ncRRsZmPjuu7e+cPyO12Su+KhnI0JSo2cRM1ObVlhRzpLmVsd5Jcknpk2uaOH+eTLbnJZqqy76RnrrrgZUyjUmfQ3OhxY9GfLLww1ogb14ZWGJmNXgAZ8qorq6/K2BaAb4Cueyk5KpLxTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709197816; c=relaxed/simple;
	bh=tYdJ+lGX899NpFpW1u0FUrL3zEubIxJzBAKKeOGPMZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dCrgX44ZG4bRpp5BzjBd3uLACpGi4mWyuR6x1jhYsq1pYuE8dQAgTtuSzUGr5bsoyRHJ3ZAU2hC3HqLIIaaK3TCkTqvqpU/B9q3iI2UqdQ1qBPGmBpgqgxroOKryBuQUKFi/KhXJrHmCV3zCi9CRTi/8JGMoWN0Axu6DMbvurik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VYyyGafn; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dcd7c526cc0so736075276.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:10:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709197812; x=1709802612; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tYdJ+lGX899NpFpW1u0FUrL3zEubIxJzBAKKeOGPMZ4=;
        b=VYyyGafn8fYGXuQTh2xN5c5sQsoO4w6w3ncvrXbvv04Sj5JaJXCb2ooJugwbKjCxKH
         Mhk01/9IhHaCijLawXqFNJnBA95C8jGDJgcrJtRpodS962DD7MLXK8rNCZwaPG/DDYGA
         UHUDCBwG1ejM8SBLtN1eBQorWj7hLPNQNZlXa+dR9SIbjS525p9fgoNrKLW3U4wHrcx2
         Fd02ykhD43s/aZsIO1cSHs744aKGRMU/KlfbdJkmBf22/Dnujc3zSXQw4TXhjH14mybV
         nMGq30zi7x0Ps21bqgq6UpLaPHO3Qmlk3t5Ji4b2DNDVNPphQJdKgKct3k5q30plN+jz
         q4gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709197812; x=1709802612;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tYdJ+lGX899NpFpW1u0FUrL3zEubIxJzBAKKeOGPMZ4=;
        b=Pdra/B4upQaNfLEH6825QhXHXmolEE3JAPZR1xCcJg6clzp1ivV7fGF4U4v7O+LlZQ
         uE5gZR2r2zEh1vG9SwxVX2bU9adO7RPgJsVBFRBhO9VLF7gkQI+q/kqqkjuMs4OSrZuH
         nZ54VcgE1JEyMnBaxqavzfEzvmO+vr4Wl8KEv6TnzDruoPqHZaoCDyrPm49Fuz+7LimT
         VrB1qtKmREMlFcx82Q8qnWJfOM9XkfGPLYEKUDF3TpqkwmroLK8fC5S1Yi2Pj66BxAgp
         79VoH4mJgPdZHoR0rfFayAEQ48WGqAQAb3bDxvdN072UNHoDhO4rGJqU6yC1e48PoiE4
         tIkA==
X-Forwarded-Encrypted: i=1; AJvYcCU/uvFlgNgWdykZsfnWFz/QZHitZLkFWyo01kRZLXIUe6nET12s0NPnwysVFb3diTU1sfxSO8Eeo4pkcNR3I24yB+oP0kb/JHbmew==
X-Gm-Message-State: AOJu0YwN2+lE3Xv//GwPxvZHG9nc4eOM/sKFS2/iP2Ag9Qw5bCm/Jhqy
	M4DD01FCF6mHXfnhv0tFW0+kuDhbmuJKHWlUCxZ1M6CJXqpkp4kfS+f+gug+LvAgnKx1DiFv3BZ
	5muG6FqPGULt6PWt+p/ewdtT6FyTW+pUVytKK6w==
X-Google-Smtp-Source: AGHT+IHXJtcxUypOTtLEATMHHzOH73b1Xs7hatFkLIIKeftmFvPSBf+tk6/aFwSpb+kgIHj44bbTi43CvloDA6E8K+M=
X-Received: by 2002:a25:ce47:0:b0:dc6:c32f:6126 with SMTP id
 x68-20020a25ce47000000b00dc6c32f6126mr1820937ybe.22.1709197812659; Thu, 29
 Feb 2024 01:10:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240227-mbly-clk-v8-0-c57fbda7664a@bootlin.com> <20240227-mbly-clk-v8-1-c57fbda7664a@bootlin.com>
In-Reply-To: <20240227-mbly-clk-v8-1-c57fbda7664a@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:10:01 +0100
Message-ID: <CACRpkdYT_A=PAn83tJvKibLAjcXekw-WABERgKQQFoFi0dxSEg@mail.gmail.com>
Subject: Re: [PATCH v8 01/10] dt-bindings: pinctrl: mobileye,eyeq5-pinctrl:
 add bindings
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, linux-mips@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Tawfik Bayouk <tawfik.bayouk@mobileye.com>, linux-gpio@vger.kernel.org, 
	Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 27, 2024 at 3:55=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Add dt-schema type bindings for the Mobileye EyeQ5 pin controller.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Let's start applying stuff so we get down the depth of the patch stacks.

Yours,
Linus Walleij

