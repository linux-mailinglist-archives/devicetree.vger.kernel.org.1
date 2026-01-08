Return-Path: <devicetree+bounces-252886-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C1AD04279
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:06:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3A57031A6B5E
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:46:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22F1D238D54;
	Thu,  8 Jan 2026 15:41:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B2DDF76
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 15:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767886900; cv=none; b=IN3whnd2YXeY4VUX37LgCS3RvJ20O+FTxwIC1+f0spYeYTejLfxsWMwj1m2Wx/MBKDMkbRcFCmIkaz0cqpPKcKRC0f+A4HGA1njjhj7e0gaf0Uu7S51Ex/jrCfjbV6W8PcFBz1ra/Se55yVEZqahCProNREVt+mD+DkvHbWJyiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767886900; c=relaxed/simple;
	bh=nOXI+klEGl26fnDx+EjZGGsuvBdNo6RtFb/zBiHZmGQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LcveqUGJeV8W2zd5zbMGQVwejMQ5hLPZpb+pX92wS7Jp/2EvSzWipxncEXoJQA5oHmvssKy2bIFtmeXunty9yRmAruAxkCEPlaY4o09jrdZ613O+7XIFnGLecWpuLBYPZ9Gcc8o4F/5T+iatbk3fjbVF8plR4h4u2M3x6DCJP8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-9412512e9f3so1029810241.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:41:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767886897; x=1768491697;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cDBqyQMP/mzqkMYSw6gEE+uyIajrqLvoQIBVBvwesYg=;
        b=I2/mWfgfK/EPg9xgwCl+gFPaBzr35X5BfcN+t2E4+wFy5qc1aH2zoDeIPmO1dUpCbk
         fhvN5y/kykbgYDKCzk1ZNR5EeRnHizOPq/a+mS1mSclCJlG2tggo9/72txr9f1VRi3XN
         rl5vttFj3/pEpqOAqqQpxZT6djTV+b26f3vxAIC0UVdH2W0W4btIthchNgk0P3hK8IKY
         B9zi7mVRyW20KQH0DojAofM+2Hl35nhRa1nQlJ0/5QGnsYrTl/8QLcAuPv4s/BPFB7WH
         i6T+nV/BBaebaPm50pUGiv9EXA5gROD2s1GeT1kz3cwEtsh/UK1gewNB/D5VHZgMaGPg
         pB1g==
X-Forwarded-Encrypted: i=1; AJvYcCVkZFoBFB3DnS/eRXfnI7OZV3z9q3tlT7v25a2E5V0RJVYD2w7x8Kd9Ymr3UES2Q7nry0vdNxrYAW7o@vger.kernel.org
X-Gm-Message-State: AOJu0YyoRUlQNYmLpneyJIDcHTVskicuFVqlZ72CchCjR4Dg007xES0p
	MwFCL1owMJY170CjetMa8e3jQYNtkp/nlXEOyO+dkwWi0gVWjsNSxgGspVk9JMv0
X-Gm-Gg: AY/fxX6rLy8aZ/w8g0zEWh6KsKm5SnQUDsAd2U4szZKwOyIm6Lot/FhBawaP7DIShlx
	vPv9iIZ13Q53bxfnXj5/t4INtWf7ufq1Wiu4Jkay9331Jcf5ovcY7aUb/VumiwXVDdiMJ98Y8q0
	PE4+P8qor4fTPuRBelEMdmZpbgxJRWRe++YM8plv1iLZSuoZln2mN+4KMjDIHHZCksTmMaun7oI
	372+vrbN5RF2xBB9lcQgohKr5p+8En5tzaJybt0ccBonLzoR/cyd3PO4ql6tLRKzUcQf5K4jq1X
	pNBrwo15p7INvQ2VwZwZrbUmAOQ+TvXHTxmPJ+9asWpMGclQ1GEFFx4aAEgIFJo623vEGfekd8w
	gjEQ2gWaceL7AAT0Z8u/2WWDD+upKcm7Z5R4R0pDgelY+jEXdmcBcKsGibnZO7nj1nUCaBrFRdn
	bR9nQRYgpo2RdJg7M4c4uZSfyyCw3QRM6hnvHM2XY+oMRAnVdk
X-Google-Smtp-Source: AGHT+IEAvgzjmlIlVPDm6kqgdXYymsSNsvLpewxY/LB+ni31osbZv1pjj05+ztvClJDPtgdyYe4x6A==
X-Received: by 2002:a05:6102:644d:b0:5db:ca19:f048 with SMTP id ada2fe7eead31-5ecb688bd07mr2142540137.16.1767886897506;
        Thu, 08 Jan 2026 07:41:37 -0800 (PST)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944122ae554sm6150469241.2.2026.01.08.07.41.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 07:41:36 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5eae7bb8018so1259658137.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:41:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUPlPjPhsVkpiQf9IZf7s11UZdEYELZBVNFJQvFYbFvUQlL3PXguZoMb3Qpp2Bhuz9EO81basmZD5dJ@vger.kernel.org
X-Received: by 2002:a05:6102:3f09:b0:5db:f573:a2c with SMTP id
 ada2fe7eead31-5ecb6875d0fmr1951115137.13.1767886896018; Thu, 08 Jan 2026
 07:41:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251126130356.2768625-1-cosmin-gabriel.tanislav.xa@renesas.com> <20251126130356.2768625-7-cosmin-gabriel.tanislav.xa@renesas.com>
In-Reply-To: <20251126130356.2768625-7-cosmin-gabriel.tanislav.xa@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 16:41:25 +0100
X-Gmail-Original-Message-ID: <CAMuHMdU+UOdNjUPWiXbJTv4MYjPwuxLtgXJ2AL0+XVHatJW=6g@mail.gmail.com>
X-Gm-Features: AQt7F2oXVcr96RqhW7ksn9tJ0uMEbuupTQNMcjQNZoyMUd0wuPKdl5AUIme_0eo
Message-ID: <CAMuHMdU+UOdNjUPWiXbJTv4MYjPwuxLtgXJ2AL0+XVHatJW=6g@mail.gmail.com>
Subject: Re: [PATCH v3 6/9] arm64: dts: renesas: r9a09g077: add OPP table
To: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>
Cc: John Madieu <john.madieu.xa@bp.renesas.com>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 26 Nov 2025 at 14:05, Cosmin Tanislav
<cosmin-gabriel.tanislav.xa@renesas.com> wrote:
> Add OPP table for RZ/T2H SoC.
>
> Signed-off-by: Cosmin Tanislav <cosmin-gabriel.tanislav.xa@renesas.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

