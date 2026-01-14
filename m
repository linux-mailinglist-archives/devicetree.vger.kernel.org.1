Return-Path: <devicetree+bounces-254987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E13B5D1E301
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:46:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4C457300A9B0
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:42:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61C0F394461;
	Wed, 14 Jan 2026 10:41:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B155038F257
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387260; cv=none; b=vBfCQ3g74ZbeEBqPeYP7FkhrwNgOu36LbiavVFz+xpvrign5rb6qRj00oPcojkzfzQ3W4vRFoAtc1U0APbSKRu/G5tNWGrLZGqrH682esfn6kkVuaP1XgT9kTqC5ubv3Upb88jtVFLzFzhyn9KXo0bZSHlv9X0/b/oLP13CkVHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387260; c=relaxed/simple;
	bh=+CpkI+BgHc6zaB6k60VnTXT0jloiPS7gjdxb71LJsAI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mL888vTlLsIOQA5W0Pcz3V3i3eUAs7Qe9BoBDfFZig/D++rCsPAxyhuXm46gortbbLTI0TuXdCHtaMg01oCbYD7WHos2NAJQ4/yQHDSP60hINvX9URoGdeGBSQO6tOeVtMn8jqMH58IhMuBOSARvICeCkFlqO7D5zaiyUgVc0o4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-5636784883bso4135959e0c.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:40:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387258; x=1768992058;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tyHAPthnDWEMy7Xz8e1fs/6rcFrRy4CPLB9pLiuxF3I=;
        b=pnb3bQzFAwA/fBI3y4dNEpJN9Y6ZND8hmAI+Dd8A1C4jRCt6TubyO8fCpQ4/+zV7I+
         yT6KJa3Ob7F/5vPLWYOmM9oxqvV/CqNE7VqhrEg5ZmDwgbnuMKnWmHOrAAstXtDpt2HE
         OvEKIXiPF8eD0VDH2rsUGwQxZyU9Gstqg/9jYXq7lYVl1qMfnAJHhf73/GKieDuowKFr
         PX85P9Z37D63NFjEteDOOoGMaEhJVxxbrMVBPmFQsSkkIsNhRbh75LxgWe2r68XdMs0s
         7i3p1dEoNJ1f/5pKpNsZ/E+yHoUs1rMChKFWgMY5kq/+S9R6VbLV6cuFeGbKXKT2M8Zb
         DbDg==
X-Forwarded-Encrypted: i=1; AJvYcCVYn6lO/bf+n/vpIa8ctcakruLXReB7t2cSfTNtYXy0Y0dAGDGEMW8FYlS1Wk2yDBqOCqmmMJ91f5Ua@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9kDxUFWyC9vnbN4eJnBFBZaajsZB8s/HK/iyJ2rfE1of3cZF/
	DvJIXcL7cVhG6TqKTFscCBVJFtUZ3Mrz76MAap8xHZxwOv5+OzwP863tzWup3o9g
X-Gm-Gg: AY/fxX6gENcA1Vqw45ghPgeudQonJVwRioYvZXEyeMqdBdrhdlmaDmwMdGmGRXmBLq5
	v2rowRQryJ1oXj5UIs4BE41to/PfpFC0a28tVFFMw38+TDaDodezpBLSCIDbDTkCpZ8EJ30rgez
	rATw6oQhBNRmBcQ0UporXIUqNuoLIisUJ2nZQYxQETZSZaFvuwRwvcaWBXdE45CCn5ZiRxL3ZOw
	QPnKcCTc78zMNknZBzyhMbmCijcUObEqUa3yzeY6O5oKyEHPoV1r96K7DOUtYTD0lLZyoyrKFY7
	t1LedQtxX98qLay4fFtItAgFJXnkNExs5tIZBns330/miM4Cdzc4Iq2SsL45r3DciW9xnxwDy60
	lTVrzL2xeHk/PKYf3EschY3HPcU6F8LUTZmRI3t1RYRTy99hphpctDS2cTFPz1hiP2loxQ9pwzi
	N5FziNj0F1E21r6Imq77TNE3RKHB8gLbm2mFO08adeohBLjI35
X-Received: by 2002:a05:6122:288c:b0:563:77a3:ddf0 with SMTP id 71dfb90a1353d-563a091f5ebmr904794e0c.3.1768387257755;
        Wed, 14 Jan 2026 02:40:57 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5634e959afbsm20134476e0c.1.2026.01.14.02.40.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:40:57 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5eea9f9c29bso4106647137.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:40:56 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVz7KspKAgDtI/DxZEt24vcPWqgqJD4sqr+gy+xh78DrleOEL++9htoBTigNchsyeauzdPS/a513qkI@vger.kernel.org
X-Received: by 2002:a05:6102:149c:b0:5ef:a4b0:bdba with SMTP id
 ada2fe7eead31-5f17f4325b5mr758488137.8.1768387256797; Wed, 14 Jan 2026
 02:40:56 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114093938.1089936-1-herve.codina@bootlin.com> <20260114093938.1089936-6-herve.codina@bootlin.com>
In-Reply-To: <20260114093938.1089936-6-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:40:45 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXBD5W8GSvSJt73PXcTD-pbdgR6LvR37ESzEx5s6nrQgw@mail.gmail.com>
X-Gm-Features: AZwV_QjGV8YAOz6mJPMHZ_hZCfKnrX7OINnAGBUggG34taCywTbcQHE61jaJ6l8
Message-ID: <CAMuHMdXBD5W8GSvSJt73PXcTD-pbdgR6LvR37ESzEx5s6nrQgw@mail.gmail.com>
Subject: Re: [PATCH v8 5/8] ARM: dts: r9a06g032: Add GPIO controllers
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Jan 2026 at 10:40, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> Add GPIO controllers (Synopsys DesignWare IPs) available in the
> r9a06g032 (RZ/N1D) SoC.
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thanks, will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

