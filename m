Return-Path: <devicetree+bounces-222436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06790BA913E
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 13:42:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D224189F84A
	for <lists+devicetree@lfdr.de>; Mon, 29 Sep 2025 11:42:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C342F301482;
	Mon, 29 Sep 2025 11:42:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com [209.85.166.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B63C19D880
	for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 11:42:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759146142; cv=none; b=D/AGvSIArTRz2VbeKZsx/zRgbbPXZkaeF3vD6bY66DKBdpj2I9gIHJvLGGqH1ymS7++KPzdwv3WvoqR3hGLp+G76eJXBuvGel1DlIpmAMTwKCODKXh2d19U2iZIQQ2kyDyq0NhMMI6uJUagYq7IbrfOyrZbmafP26O2HrAv2AHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759146142; c=relaxed/simple;
	bh=CyqsEr2YH2CBCrRlLUbTkQtjycgfh1uAGWvQeIO2INY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Jc/jgLDioNIkVOx69SepsnPC4l56RDuVDpB8obiVNxGqkujA/U2001O2udNmE5BIUleAOkJGAQttENRZ9pqKKPSEegym2bYU5Qj8c5kR+i/Fw6gWGA1gxtz8JR6Mt056syCdMBjxWPrbQgk6mW08oumOMs0RCL92M8wF4B4zLsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f171.google.com with SMTP id e9e14a558f8ab-4258ac8f64dso43712995ab.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759146140; x=1759750940;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XxW5mXe/+NcsYxkIwV9fCeaWAATP0wBLi6jwkn7jUaI=;
        b=ZZge0yCUt5yFA5BVPmysQ99VKT5UBGmeLkRYhyvxJKVam2iGxa+HoF9mXGATVmYFaF
         HfA7QuURigUZed0hmBNKloN4Z3CgjI9Sm3zT2bY59TWN7P2WE6WnNpnClAmGxUN43/qc
         /TY9STNgLywBVY45MaVKx8Hio+vpe5wOSjQmrp+rNYerdQ2mZma4SKPBUD136zZcpCT4
         LOZ42/AHjCBoOO8wTcyhG6smXg7J6+uSAwDeoqS2FgifSTZ83UgEFKXzr4gIGfdblimG
         /5mlFWGQ+XIl/b9DrMcM4Sh29B+9gvUscczRcP2AbeMlfm6WwPZeQE2uT08GCo4Jn2Uw
         yCxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUiQKCce7GueIBOUixT61jK2Kcj4rjBY/D8luk7VQMa8ddrE2/BbD23F+04tuR6JvheTiw4r9/5nD8c@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9JZ/F8aN837HtlOw6B6kdRYXNqbFn7x/F8Oqimv+H3Vl5nFOq
	p4MLZdxAgXTE9p5mmm7jhnWN5iy+mdh/N+2nuZDvEI6HeQG3EBWc0v4WH4uclIAr
X-Gm-Gg: ASbGncuxJZwdbsA67VJlhi8i1C7i5ZYYDOyXm5XGZ9zgamyzKy7SbHnoeL2QlbG7j/4
	4AyB9QpRUiV18xhrzQopNVBd1zByvcsFcG0rtqTEiIWreuPSGShi3jHa5GMY2gys7Qyma1IdZW7
	N/Ubuq/KBOJbMuU+QAqGLS9pL9DLzcI6lLtFqqEB6OcUalYo0JQ9CPk47MbfJdoZfea0zxyrsPK
	RyWg3N/HQSeZCAW08YrRjhtEgJd8eLKbRZPMtlY2qy4hsK1wj7c/D97aVIODuulaDc/fNVzJdhU
	PoYe0Ozkx0DkhGwYfk2ct+PoobY+HerKiNLuWRoZ/lIMS6x9bVGAVEteF8hOYqQOPphIOQHIwXE
	Wc7WC3l2ETrvtaZdY5PRVDB0S0/sNCzObDgDLS7wmRHxQ4T2OgwRDl0ygj3CbN6hy
X-Google-Smtp-Source: AGHT+IEFziBXFMJbXeXlKG2fpUYR2RDKj9UvpoADmZOOyDv8CBQ0112IkbKsrUmv7HJO8kNAEQ3ZwQ==
X-Received: by 2002:a05:6e02:1523:b0:429:6c5a:61df with SMTP id e9e14a558f8ab-42c6f2ce383mr22683055ab.3.1759146140091;
        Mon, 29 Sep 2025 04:42:20 -0700 (PDT)
Received: from mail-il1-f172.google.com (mail-il1-f172.google.com. [209.85.166.172])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-425bc0b0e8asm57823805ab.1.2025.09.29.04.42.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 04:42:19 -0700 (PDT)
Received: by mail-il1-f172.google.com with SMTP id e9e14a558f8ab-428f0147279so21171805ab.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 04:42:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVVkYjX0WyclCdQDvp8AYANM/1LwT0Zxp2HXloAgslptVHSAWMnInOHn20uvmHqIwL5+thTkZlPmF5u@vger.kernel.org
X-Received: by 2002:a05:6102:3a11:b0:59e:a2d5:2945 with SMTP id
 ada2fe7eead31-5acc8e94d9fmr6861602137.8.1759145668352; Mon, 29 Sep 2025
 04:34:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250909113840.122785-1-john.madieu.xa@bp.renesas.com>
 <20250909113840.122785-4-john.madieu.xa@bp.renesas.com> <CAMuHMdXfN2qK-Yd=ZAaLek=UMkLK+NzdU5aFr0ET3o9m8RB4pA@mail.gmail.com>
In-Reply-To: <CAMuHMdXfN2qK-Yd=ZAaLek=UMkLK+NzdU5aFr0ET3o9m8RB4pA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 29 Sep 2025 13:34:16 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUt86L1Pcui8LD=i6hyqPQYnx=Apse8_h=YyFHAeCta9Q@mail.gmail.com>
X-Gm-Features: AS18NWAfMK9KQyXLWhPAcgQzNt-Bd1yk2_D_oAV-tjfTbvXk5XD0wBN0Yq448N4
Message-ID: <CAMuHMdUt86L1Pcui8LD=i6hyqPQYnx=Apse8_h=YyFHAeCta9Q@mail.gmail.com>
Subject: Re: [PATCH v8 3/4] arm64: dts: renesas: r9a09g047: Add TSU node
To: John Madieu <john.madieu.xa@bp.renesas.com>
Cc: catalin.marinas@arm.com, conor+dt@kernel.org, daniel.lezcano@linaro.org, 
	krzk+dt@kernel.org, lukasz.luba@arm.com, magnus.damm@gmail.com, 
	mturquette@baylibre.com, p.zabel@pengutronix.de, robh@kernel.org, 
	rui.zhang@intel.com, sboyd@kernel.org, will@kernel.org, 
	biju.das.jz@bp.renesas.com, devicetree@vger.kernel.org, john.madieu@gmail.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	rafael@kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Sept 2025 at 16:04, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, 9 Sept 2025 at 13:39, John Madieu <john.madieu.xa@bp.renesas.com> wrote:
> > Add TSU node along with thermal zones and keep it enabled in the SoC DTSI.
> >
> > Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
>
> LGTM, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks, will queue in renesas-devel for v6.19.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

