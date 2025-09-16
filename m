Return-Path: <devicetree+bounces-217790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A937B593BA
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:31:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9A4991881723
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:30:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0816D306B16;
	Tue, 16 Sep 2025 10:26:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 760163043B3
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:26:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018409; cv=none; b=sGwmznR91RChkXLD7/Ml+WkysdrepfzD0ZOhvh9+66WKDACGQSfEtXt+3mr/7Jeqw88XAEGER3vg30nem7mQOYXPCq2AqDop8OJsfU8e2I/wcCyEUg/QVVTnuAd4K7c51DqzUI++Ua1qv74JoB3T7V8JivqCRyfj4wSXAjDzMZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018409; c=relaxed/simple;
	bh=M5TSTKdOE7KOvxaTBZ6x7dRz7TvGD4id6ZsQA8rgfRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EiMWsyMTGJxLRMjPAHTG/gDb7vBP+h29rFIhU20yIllWLT4vXssw7EySwYTzyPZhj02t6nkvy8K9w220o42Q/ug1+p15UnnB6U/ShXq+5CDPPmUNXsVWzKYdH4blHQCIOahoMfHaFRK0sXs73HZqTb6jerrkMGSrtmY2/QR1Ugs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-751415c488cso4593953a34.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:26:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018407; x=1758623207;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D1FWUIy12ESADGq4B/o282N3x/QgWaUFK1UozSJnDAM=;
        b=FoteXbJWi0P7M/WzUoSB+wf66OUxmjFD7PpyhJHytkGMZuttkDSn8etEZ/AK7XlCMG
         4YopNLB7ygMovci+Isnofa+jzbxIVUq0bXC1sLSdoOS5H4J5fjQ7kreI7Wh5emeHb5FG
         /M552DMeeo/CmCdMkf4dv87n02euQejJ/AgN/mYnwGymY1sBCvz9JQBDoxbhCRmDwIaY
         ATKcUQiXCZXbQ3nT+gmngke7/msO3h0qvdCcwXIcvz8bhfeUi7cik6E5zvBfS8jPc548
         fxHtJb2bVJHqqEuAN/1LtMPGg/ajWNZX586C+EVScJe1YkK16DL92/6FNHpHt5PLM+AD
         NTzw==
X-Forwarded-Encrypted: i=1; AJvYcCVhnV3PzZf+eygOtXtW1YdoTsorHofBmjDKd+Svn0ZBFAvxDTXyfDbNX1OhnF3wKXLDnZLFglTFyzXX@vger.kernel.org
X-Gm-Message-State: AOJu0Ywk4eb1jfHdroDytYD50dVzkXLhmbmB6gtLtehYIR/HnjDEaOVU
	1hnZK3JyREQKs/agW6ugeGUeHgvdWyxbM3fWsbF4tuYrq9Z2iQqpnR57+d0olO+E
X-Gm-Gg: ASbGncsBXjxcq3Zr4KE5IfC6klXAzr2qlcD6GZKpihPh8003OYMUEVF/kYggeNuMfGp
	KRxeJHbklrkXcOWByl4bBVNRYS34irXGDyXOcJ9vMc2QFIDpzgSI42FohD1hVs7a35SBQZHCW4D
	cvnGfrkMWXULqjBVAiGsoNJEYB9zjBRpRdAyECqzT+WAvy4Zbi2oBcuRo3BL2lnYtaMRgaOa4Td
	vFcAGwdDfRpD3rUVzT77ByvpajHqXH+kozmHPhIJAJqX4otuDpSOt7xpa7FeEfDOsh100KZGAf2
	65PvC9Gb+mV0fMgIdofzc/BkPmdEJZfEw14VmlPzUwch0DlsY6uqe24ziJv4RU3rmXEqiLr2Xq7
	Sq8pBbyxO3tp53ungCFomnzG6Mp1z7GwIvH9QrA7Q0EVWf3rxVNPA+unZo/wO
X-Google-Smtp-Source: AGHT+IE7/1Nx09pz1tgjLGfwMXCTCwnDolSIJBKS8ybsxfF9VPjT3l1ki1/aF4AMChvFK7hsoDwD5g==
X-Received: by 2002:a05:6808:1881:b0:438:3a20:786f with SMTP id 5614622812f47-43b8da86fe3mr6663913b6e.49.1758018407041;
        Tue, 16 Sep 2025 03:26:47 -0700 (PDT)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com. [209.85.210.46])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-43b828d370esm3165750b6e.3.2025.09.16.03.26.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 03:26:46 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-74381e2079fso6282817a34.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:26:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCV2B8O0q3xAq0j8zmCbzrmzif89IIQpbOa9oTTyl20tl6KnBShFqj5/dUUyMgNU22PE6zb30sadQ+Bs@vger.kernel.org
X-Received: by 2002:a05:6102:3ec6:b0:529:ee6c:6760 with SMTP id
 ada2fe7eead31-556091886d7mr5576842137.7.1758018092612; Tue, 16 Sep 2025
 03:21:32 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87tt13i0lh.wl-kuninori.morimoto.gx@renesas.com> <87o6rbi0jy.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87o6rbi0jy.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 12:21:21 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVKhw3t6oJhWrdFCkpaXKL5EXxBAPtqiYSDPv5aDNiFkA@mail.gmail.com>
X-Gm-Features: AS18NWA-CCVGKbHBzPrL9HA4tPoq9LGRxBm1encbDpHU-DmGUfLkgrDyZx8KuHI
Message-ID: <CAMuHMdVKhw3t6oJhWrdFCkpaXKL5EXxBAPtqiYSDPv5aDNiFkA@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] dt-bindings: arm: cpus: Add Cortex-A720AE
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Liang, Kan" <kan.liang@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Ian Rogers <irogers@google.com>, 
	Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@linaro.org>, Jiri Olsa <jolsa@kernel.org>, 
	John Garry <john.g.garry@oracle.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Leo Yan <leo.yan@linux.dev>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Mark Rutland <mark.rutland@arm.com>, Mike Leach <mike.leach@linaro.org>, 
	Namhyung Kim <namhyung@kernel.org>, Oliver Upton <oliver.upton@linux.dev>, 
	Peter Zijlstra <peterz@infradead.org>, Rob Herring <robh@kernel.org>, 
	Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>, Will Deacon <will@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	Marc Zyngier <maz@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi Morimoto-san,

On Tue, 16 Sept 2025 at 04:38, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> Renesas R-Car Gen5 X5H uses Cortex-A720AE. Add compatibility for it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

> --- a/Documentation/devicetree/bindings/arm/cpus.yaml
> +++ b/Documentation/devicetree/bindings/arm/cpus.yaml
> @@ -148,6 +148,7 @@ properties:
>        - arm,cortex-a710
>        - arm,cortex-a715
>        - arm,cortex-a720
> +      - arm,cortex-a720ae
>        - arm,cortex-a725
>        - arm,cortex-m0
>        - arm,cortex-m0+

Already added in commit 0f356eb097c31471 ("dt-bindings: arm:
Add Cortex-A320/A520AE/A720AE cores and PMU") in dt-rh/for-next
(next-20250905 and later).

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

