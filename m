Return-Path: <devicetree+bounces-218460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 92D1DB8070F
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E6E481C84DC7
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:06:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD6042FBE08;
	Wed, 17 Sep 2025 15:04:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D6D2D3745
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758121499; cv=none; b=Tqc16XJS3opuClZ9oOMYNSN7yuMaD63IQ66wix9T8tPHszsHnOdzUYdYkHvkzQeUiJYiKkzUcwJrvtWWa30O+yKmg7MO6GCxn2hAgMkt/JO/euJjMoMt+/KmJbD6sBKWs7mWphNhKTKICXW+7qWz6kcFIBDEN2oA+/jl1JpIMGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758121499; c=relaxed/simple;
	bh=aWHBMOW8hyEe365SagMQZPNiGW5aSEvEFBlvvt4KhAw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=InJ3gSzCwSc/9VXLVigLz9kMF+J4la9+kRv+W8IcdN7wUN2gHnHVEoopnD0ztuAejkDi5yuJyPtK3Xb9B6AtSa4ns11OXU6bHooBX7hgbTYzYUxHkWmHPnhEQ7XA719mu5aBJEdtJ8DgjO2Y1Emth7iFD5sFTMZZpdwLKI1z9T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-b54fc45db56so322691a12.3
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:04:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758121497; x=1758726297;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05Xx0KU64Po07Lz8pcNMpuzAdK+HLbLydsRr28mrazU=;
        b=PprsTQwTJ6qCwQgnyMv2aKjb1C7GekcjKnrCEt5fJmUhxo9EQe0PYX37VwGo2NVhes
         XDcm8AOwUW7iwXqj63+ej8Veingy3B2yU/wstyqczDCuKA421kNtbiZrLH2nLxyKURIJ
         c+ZozWqqqo/1d+ssR7ks5c5dBrxpv1nuXjVi5pbZObQuuvfw7N9L3i/YPqZr6ZOqbeWn
         xK9IfEjSe3Z+odOJjMr0Ri5xmDuyv+9mU0lkkF/rxKAwc+IJ4Ge63cUh5VqWXiuVFaUZ
         VaVmHRRILqYwIzhxLij5i6zloXi2BqzwMytWQm3lh320Cr7llrSz7Cf5MIvfLAOieUV+
         lUkA==
X-Forwarded-Encrypted: i=1; AJvYcCWFaE/Gp6tLyVppMBXPXv/m88KU5yeXmJtBryfgDDYghtgAaUyAPc4k2pQUQgX4vTTHN2jpGayN4uzw@vger.kernel.org
X-Gm-Message-State: AOJu0YxEyG6nE7K4Tfrr+JCyMQ9n9KExtlCGpvB7L9Q+5E4tHXcTJLvZ
	TPAZ/CqoxQjCc3oOTJb1RpX3U8fjCipXLpFbKQ1KNAV/09OpThtwlOy7PahYLP2zHWY=
X-Gm-Gg: ASbGnct6bM4/+bDs19vh3AkT1/ytQhTA91HX2jw7fN5GV6gN+vy9Dvvmju4HihCW+uN
	YU2SQI/c65i2aMyqi9F/QeRFGiJuSizIQT6M6l8Z8Y6M9gDXAyUUocmhmmp2w6cGgxvKIZJnRxO
	nzb74e3Dzd5o1LaOQ36HdQlufkQqvc+45VTdh4VzWVIB7efZxmTdEuVdKh4du4z9iROGTqwt/Tp
	lKB1HQYKgZAcI7gbm4fV8aNkZgm9vtYlqDTin3U02jyvLrvi2VZXT3PE/6VGB1L38bpt8QPAOMu
	M5ORvv5ynwpbGkEXME9zdkRQtSoTnlXnCPd0eK2RQoOjqYdp53XVR1T0UzyfB3oHZ6xe5YD/NJm
	FAlUgV0s9+iyQjaPAj/F/6HhdwgegyZ9fZtnIcpLTlPz4ja74s+olrtMfuN4O
X-Google-Smtp-Source: AGHT+IF21Wn1MdwPfyQwPeNif7GrbtVgF8FqnrMyUY/tOuFTLhLPhFEOBdY1agnM05RgrEDTc4bsPA==
X-Received: by 2002:a17:903:32c7:b0:264:f3ed:ee10 with SMTP id d9443c01a7336-268119b2490mr33269175ad.11.1758121496726;
        Wed, 17 Sep 2025 08:04:56 -0700 (PDT)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com. [209.85.216.43])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32ed26a49a5sm2769203a91.15.2025.09.17.08.04.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 08:04:56 -0700 (PDT)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-327f87275d4so6594008a91.1
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:04:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW0GENKcaO7yhjpo0f+cr8MJs/zidXvgJr8mIFCcq6qFQ09f373KtOL+rUWpskAc7YEEm2WeReaihlO@vger.kernel.org
X-Received: by 2002:a05:6122:829c:b0:539:3bb5:e4c8 with SMTP id
 71dfb90a1353d-54a60a7a014mr768825e0c.12.1758121126748; Wed, 17 Sep 2025
 07:58:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ecs5abp9.wl-kuninori.morimoto.gx@renesas.com> <875xdhabml.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <875xdhabml.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Sep 2025 16:58:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdX=oJqJhXOm6w_65dJHRD3VZyJZUWfHzot5EuZtRB2tZw@mail.gmail.com>
X-Gm-Features: AS18NWDSUjkX-aOCFteBo5qpdwwTSUCRiYts8nug9t_TpQbYuJMfunN09RrdfOE
Message-ID: <CAMuHMdX=oJqJhXOm6w_65dJHRD3VZyJZUWfHzot5EuZtRB2tZw@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] arm64: dts: renesas: R8A78000: Add initial
 Ironhide support
To: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc: "Liang, Kan" <kan.liang@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Conor Dooley <conor+dt@kernel.org>, Douglas Anderson <dianders@chromium.org>, 
	Ian Rogers <irogers@google.com>, Ingo Molnar <mingo@redhat.com>, 
	James Clark <james.clark@linaro.org>, Jiri Olsa <jolsa@kernel.org>, 
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

On Wed, 17 Sept 2025 at 07:31, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> From: Hai Pham <hai.pham.ud@renesas.com>
>
> Add the initial support for Renesas X5H Ironhide board.
>
> Note: It is using "maxcpus" in bootargs to limit number of CPU, because
> SMP support is now under development. This limitation will be removed
> in the future.
>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
> Signed-off-by: Khanh Le <khanh.le.xr@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Phong Hoang <phong.hoang.wz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for the update!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r8a78000-ironhide.dts
> @@ -0,0 +1,92 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Device Tree Source for the Ironhide board
> + *
> + * Copyright (C) 2025 Renesas Electronics Corp.
> + */
> +
> +/dts-v1/;
> +#include "r8a78000.dtsi"
> +
> +/ {
> +       model = "Renesas Ironhide board based on r8a78000";
> +       compatible = "renesas,ironhide", "renesas,r8a78000";
> +
> +       aliases {
> +               serial0 = &hscif0;
> +       };
> +
> +       chosen {
> +               /*
> +                * REMOVE-ME
> +                *
> +                * It works 1 CPU core only for now. This limitation will be
> +                * removed in future.
> +                */
> +               bootargs = "maxcpus=1";

I still don't fully understand why this is needed: without that line,
Ironhide boots fine, and only a single CPU is enabled.
None of the cpu node have an enable-method, so Linux does not try to
enable secondary CPUs anyway.  Even with the enable-method re-added
(like in your v2), Linux cannot enable secondary CPUs, as there is no
PSCI node.

What am I missing?

> +               stdout-path = "serial0:1843200n8";
> +       };

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

