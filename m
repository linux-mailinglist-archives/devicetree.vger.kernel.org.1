Return-Path: <devicetree+bounces-218462-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F116B80776
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 17:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72DC418872D4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 049F6330D32;
	Wed, 17 Sep 2025 15:14:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCEB36D
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 15:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758122051; cv=none; b=Yo6Q3KbB1euuNvSu0iF+1ihiIlI2f4Y2oCPc5SF8PatzZ3INhtD3Izqa5qJVK3iD3wNAfVYIkfU8ut+stkskxCxSY1rsaYIx4ygviCUT5W9YroXL8+YEVRgaSp33BxMNnbe3X5Yw5KS2Z9TZFNCLnzwaeHln/Rz7A8ixqOWUl9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758122051; c=relaxed/simple;
	bh=KSe+VQBHvW0n2Vmc15r/RkklfJ0UGB66cliG33ieqhs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c6aAorFuI5GrQZnsz+gFjKWjmZf5VkbPH6C2inviSVMAqTELNrILqI9VWka1B13Uoml5+ftMgxpg5IltfBEQ/3aX5AFe6z7CHxbI/I9pRzg7I3/5q6Wn+izpHVaFUgvT/7rS+Np1asRRW+uhdE4cDNRD/icmdB35zmphUNgyGMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-544c9efb743so2172895e0c.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758122049; x=1758726849;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tZ6rxnhh7QouGGcSBJApcqvcuY+RYoCVy1LFm/ChHAI=;
        b=p5n1YMQzvkWNwUtmhUHL4QxheReZLBbpwwFcveKvfDFdgrFur6843et8tgLLcMh56i
         w9iIqqHW9v/h0pTYG6GV2tz7umWk0p7CqcQHyG+JwtFIWdLnA2VOuJXookYSkdILHvWD
         CX5sjfhiZ1wS/K74pfQfXvTBNnIT3BoxKmrk4QbgXhtj65HbSl5T/J/ijfrqOFw8rP4q
         adYNaL9cTMbiUK1TXgY6e8FKcpr63a1hY1l2bKOHnl5AInLfg/q2bMVnvJse9DhI8BgV
         hsr9TCcSatWoMxDbHa0cQtSmy3JmaEGdrN/oYW3sZawPQ/kCyvfVlj7p4FfbwmuexGz6
         IAww==
X-Forwarded-Encrypted: i=1; AJvYcCUQhUnaV/8M09RaaRDFBBps/fdDxlOlPAMZqOagChNFOBIlHk/ciT9XEwDvDItn5KqAh3DKhKLnwIt3@vger.kernel.org
X-Gm-Message-State: AOJu0YzxmMlq8YCnyFvqpr1sSEA87oQvxX9ahMDnLknrHDjqkopHX3jU
	KRK6FJU3UEJOAHe46kvBO7L1T8xD7S0DES2w/PH3hFfiUipQ3RfXr+JWsT9S1nQ/UcQ=
X-Gm-Gg: ASbGnctgbrjbaxuV2j0wX83vGBHacgiunqRUwewaG4/kXZ4/WL+kV45yYizrA2YQWSZ
	aA3eziUjucB7bHOPXR9gWP1KHBjHUxtwiFH0GI7/6djzK+bvCXCYq9LfSv15ud02fOrqlKL8EYK
	l2k+1m37ZmZAln3/w+fuWgGrsG+dvkibrSXon4mKABEEGsLN+BMBsdFl0mJtStM03YhgbU/l4EA
	VefYT3EX1a0p6Boxa/Sc/g+tY5Gns/c3wNM3KYyAzIajYZKRQLhYUj3+KQVawxrfJOWfb66InNG
	9D8bhkbdVQ14bSnJOCHljesKHg6YyhrdzEHDV4Rztn3dJE5FhY89/uwhDsk5W4FVyMmASREk7UK
	VXc9xh7sN+dlZknTskWKdvorA2etokeyGDa1oBD6U1K8BHs8+52y2/3TsdqXm
X-Google-Smtp-Source: AGHT+IFhmra+6tI0oLFRwksDL8FR4yKWAdVKsddTkQWtQ52HsUML4Wxoxo58SqQlZ2lvBSQ6iKGXew==
X-Received: by 2002:a05:6122:130d:b0:545:ed72:fdf1 with SMTP id 71dfb90a1353d-54a60a060dcmr747337e0c.1.1758122048670;
        Wed, 17 Sep 2025 08:14:08 -0700 (PDT)
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com. [209.85.217.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-54a0d1e52a4sm3316694e0c.10.2025.09.17.08.14.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Sep 2025 08:14:07 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id ada2fe7eead31-55a3c4194e9so1855117137.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 08:14:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVecljutblWudaIpBaOtBkYBRiSUp1iLjbksSWMBM1PFT0+3LD1qPZCyK1HA2brpmGIuec3ihamOF94@vger.kernel.org
X-Received: by 2002:a05:6102:4414:b0:4e6:ddd0:96ff with SMTP id
 ada2fe7eead31-56d63efa012mr900359137.16.1758122046543; Wed, 17 Sep 2025
 08:14:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ecs5abp9.wl-kuninori.morimoto.gx@renesas.com> <877bxxabmr.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <877bxxabmr.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Sep 2025 17:13:55 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUaoBP1ZtJqc7rfqLXGETXpVYNcFfJf5xFBFSHG9mSB8Q@mail.gmail.com>
X-Gm-Features: AS18NWDAtmJ2xaoQuGRsAt7Kwia2BPFHIJLsHQkXMzPf_Sxvg99Y761td_EKCiw
Message-ID: <CAMuHMdUaoBP1ZtJqc7rfqLXGETXpVYNcFfJf5xFBFSHG9mSB8Q@mail.gmail.com>
Subject: Re: [PATCH v4 4/5] arm64: dts: renesas: Add R8A78000 X5H DTs
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
> Add initial DT support for R8A78000 (R-Car X5H) SoC.
>
> [Kuninori: tidyup for upstreaming]
>
> Signed-off-by: Hai Pham <hai.pham.ud@renesas.com>
> Signed-off-by: Vinh Nguyen <vinh.nguyen.xz@renesas.com>
> Signed-off-by: Minh Le <minh.le.aj@renesas.com>
> Signed-off-by: Huy Bui <huy.bui.wm@renesas.com>
> Signed-off-by: Khanh Le <khanh.le.xr@renesas.com>
> Signed-off-by: Phong Hoang <phong.hoang.wz@renesas.com>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for the update!

> index 0000000000000..6445f05de0563
> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r8a78000.dtsi
> @@ -0,0 +1,755 @@
> +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +/*
> + * Device Tree Source for the R-Car X5H (R8A78000) SoC
> + *
> + * Copyright (C) 2025 Renesas Electronics Corp.
> + */
> +
> +#include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +/ {
> +       compatible = "renesas,r8a78000";
> +       #address-cells = <2>;
> +       #size-cells = <2>;
> +
> +       cpus {

> +               a720_0: cpu@0 {
> +                       compatible = "arm,cortex-a720ae";
> +                       reg = <0x0 0x0>;
> +                       device_type = "cpu";
> +                       next-level-cache = <&L2_CA720_0>;
> +
> +                       L2_CA720_0: cache-controller {

As reported before, the cache nodes should be outside the CPU nodes.

"make dtbs_check" would have reminded you:

    arch/arm64/boot/dts/renesas/r8a78000-ironhide.dtb: cpu@0
(arm,cortex-a720ae): Unevaluated properties are not allowed
('cache-controller' was unexpected)
            from schema $id: http://devicetree.org/schemas/arm/cpus.yaml#

> +                               compatible = "cache";
> +                               cache-level = <2>;

Missing "cache-unified".

"make dtbs_check":

    arm64/boot/dts/renesas/r8a78000-ironhide.dtb: cache-controller
(cache): 'cache-unified' is a required property
            from schema $id: http://devicetree.org/schemas/cache.yaml#

> +                               next-level-cache = <&L3_CA720_0>;
> +                       };

> +               };

> +       soc: soc {
> +               compatible = "simple-bus";
> +               interrupt-parent = <&gic>;

Marc asked to move interrupt-parent to the top, i.e. one level up...

> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;
> +
> +               timer {

... and please keep the timer node outside the soc node.

"make dtbs_check":

    arch/arm64/boot/dts/renesas/r8a78000-ironhide.dtb: soc
(simple-bus): timer: 'ranges' is a required property
            from schema $id: http://devicetree.org/schemas/simple-bus.yaml#

> +                       compatible = "arm,armv8-timer";
> +                       interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
> +                                    <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
> +                                    <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
> +                                    <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>,
> +                                    <GIC_PPI 12 IRQ_TYPE_LEVEL_LOW>;
> +                       interrupt-names = "sec-phys", "phys", "virt", "hyp-phys", "hyp-virt";
> +               };

> +               scif0: serial@c0700000 {
> +                       compatible = "renesas,scif-r8a78000", "renesas,scif";

Missing "renesas,rcar-gen5-scif".

"make dtbs_check":

    arch/arm64/boot/dts/renesas/r8a78000-ironhide.dtb: serial@c0700000
(renesas,scif-r8a78000): compatible: 'oneOf' conditional failed, one
must be fixed:
            ...
            ['renesas,scif-r8a78000', 'renesas,scif'] is too short
            ...
            'renesas,rcar-gen5-scif' was expected
            ...
            from schema $id:
http://devicetree.org/schemas/serial/renesas,scif.yaml#

> +                       reg = <0 0xc0700000 0 0x40>;
> +                       interrupts = <GIC_SPI 4074 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&dummy_clk_sgasyncd16>, <&dummy_clk_sgasyncd16>, <&scif_clk>;
> +                       clock-names = "fck", "brg_int", "scif_clk";
> +                       status = "disabled";
> +               };

> +               hscif0: serial@c0710000 {
> +                       compatible = "renesas,hscif-r8a78000", "renesas,hscif";

Missing "renesas,rcar-gen5-hscif".

"make dtbs_check":

arch/arm64/boot/dts/renesas/r8a78000-ironhide.dtb: serial@c0710000
(renesas,hscif-r8a78000): compatible: 'oneOf' conditional failed, one
must be fixed:
        ['renesas,hscif-r8a78000', 'renesas,hscif'] is too short
        ...
        'renesas,rcar-gen5-hscif' was expected
        from schema $id:
http://devicetree.org/schemas/serial/renesas,hscif.yaml#

> +                       reg = <0 0xc0710000 0 0x60>;
> +                       interrupts = <GIC_SPI 4078 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&dummy_clk_sgasyncd4>, <&dummy_clk_sgasyncd4>, <&scif_clk>;
> +                       clock-names = "fck", "brg_int", "scif_clk";
> +                       status = "disabled";
> +               };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

