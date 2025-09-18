Return-Path: <devicetree+bounces-218774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF2AB83EBE
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:53:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 439EF4A1D04
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:53:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62F92235345;
	Thu, 18 Sep 2025 09:53:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com [209.85.217.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8577D320F
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758189235; cv=none; b=oIAQbIIK+YigZHRJvWNWYQOkabQTtfF06vYnLTuKKNuO3zz6Awddj1/Z52CqInLdM9WTWBf0n4vbL+WHFUcfpxC07Cm4Cwye8cUv65Cwj3Oc2uqdyFMbpD2a5/L7LTGgH/vnV0rReUo7drCUybo986NVPy4CJmHYVq1kltgyDg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758189235; c=relaxed/simple;
	bh=tJj9rQD66s1ZsqtyiQYDVNQ/XIehZY5bWaCYzk/MGHw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TJaHnYJ0SCrfk3GKCJyS9/PIrpFEpK+KDxjSoqsvmJQ8Wvv67KqS6LlnQ+azIIhI9+D5QaTgDMefY+TAY6dGcK2Vt4vcwFx2ppXKgEdu+rCNsDGd4UFto+n0x2ZuS8y5knWpB9ULuFveshE0Ae6x5NY6KsNJsdtZj2fiuOBFIVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f51.google.com with SMTP id ada2fe7eead31-52dd67b03c8so544310137.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:53:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758189232; x=1758794032;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gAV6+U9ykOwvp8+2HatYYts2BEiZRGxqVQPDnpRww3U=;
        b=prPo+wys/X/Zzt2hbbjNBohe8CBMn+R12/4vG7Rpp0eVDl6lDZs3/Gthlfe011Fv7Y
         rn1qq6tBjm4EWnqf77P4GDszb7NyZF/WiQ2aJGHAIeCk/+wkmlXPrbb4ecT4Y6sXozMz
         G4HjZkQcW9OyTEDQEWiYerPhudWXHK24XAdB8lJSMGjVrBVRBJhKZrG3nf+AriTunshr
         htJJRXXKr2Lc9Ini7Q44ocaSbMZMajwLdjwsosAi4B33PAhNyvLHYUNfbtW3qgi6PZJt
         X3WoEZRMGpkbPYY9OvBKtdOyrKHRw0edXl1+AtwxHm37xkCmIEB0rmAAR7WEMru3AFC2
         PxjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWU5zUuFpZsc2y/LMcUhfoETrB/FIql4yeYxmGUyOYwHVXItDMHsNepWVAU6xztjVTx2AEHGOQ0qIRj@vger.kernel.org
X-Gm-Message-State: AOJu0YwGARf1ammJeVtrhAflJdqtLCP0Kekp2H3Q5bhFo1pd99Ug4bqy
	cj7NgSzKKop5HEpyzS1FK+U5Fdy38N8QJdrbng9wjMnLTDOKcW9wr1A3VmV2YEx7
X-Gm-Gg: ASbGnculVfstogFqpzvYYgBHTqV/0BTezPETACF4Tn6dEKkYlYc5F5QsE3hnnvwRM7e
	GOyrzTSyGSaTNdiC+gYnhdSlwRx+s9BLJNVcVKuewI0ozyWy+236XZIJYHJa51YeVj6Jy/NbXCg
	mBxZxDeOFTOVlGmiG/ndk9EL7pRiYNERhQhQoNbbsG4gNinvvGq5w4HdTdOf+lIWj3q/GqgstDv
	c+vRci37+nSPfdnzMKwE2yr+NJayNHiQ56ovhOUuifdiiJ0ROwux7evvteV3jTcIvxWZrb7WVTk
	+W2VDWannwLB4QRoFPlKZBHrdjNWCFsSugi5HIaGIzsTWaxO85uA8JcB6LBw//bM+mxiHDigb1+
	MtkqQ1RVhLm341bmm9KwKEZA9ZBKKnO/1n6cXRp6n44NyFinaqI27jbmuqE0utwpKzdQoNIFFBK
	unFuU=
X-Google-Smtp-Source: AGHT+IFSw7fEPToIuC79cFeVixr/0zP2cbMp9oknCUNIZ/9H6bSt2ZBJPe+vl46BBtLwVva0eJdsBA==
X-Received: by 2002:a05:6102:1512:b0:534:cfe0:f861 with SMTP id ada2fe7eead31-56d63d0c2e0mr1700573137.18.1758189232182;
        Thu, 18 Sep 2025 02:53:52 -0700 (PDT)
Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com. [209.85.222.51])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8e3e75260aesm357155241.10.2025.09.18.02.53.51
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 02:53:51 -0700 (PDT)
Received: by mail-ua1-f51.google.com with SMTP id a1e0cc1a2514c-8a00c77a62dso504448241.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:53:51 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVfT0zbnDSAQsJ+g3GnjSinOBqsPxsleJYV6jaIeA55mAl0RBCLjSfAIXvWBfdLnsRYPb6r6v+ZNQhv@vger.kernel.org
X-Received: by 2002:a05:6102:f96:b0:524:5653:81aa with SMTP id
 ada2fe7eead31-56d6a96ba24mr1974782137.27.1758189231483; Thu, 18 Sep 2025
 02:53:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ms6snut0.wl-kuninori.morimoto.gx@renesas.com> <87ecs4nult.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ecs4nult.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 11:53:39 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU6KkM4+0tDzxNLQhWzBMs02vx=DTQ95D_-u+YYAcNgRg@mail.gmail.com>
X-Gm-Features: AS18NWC_4v91tXzLLOBSlDGTfgVal7mv5u3w5QpZG0TVZ1CRDcwzHECf6Dh9qXk
Message-ID: <CAMuHMdU6KkM4+0tDzxNLQhWzBMs02vx=DTQ95D_-u+YYAcNgRg@mail.gmail.com>
Subject: Re: [PATCH v5 6/7] arm64: dts: renesas: Add R8A78000 X5H DTs
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

On Thu, 18 Sept 2025 at 08:27, Kuninori Morimoto
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

Thanks for your patch!

> --- /dev/null
> +++ b/arch/arm64/boot/dts/renesas/r8a78000.dtsi

> +       extalr_clk: extalr-clk {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               /* clock-frequency must be set on board */
> +       };
> +
> +       /*
> +        * In the early phase, there is no clock control support,
> +        * so assume that the clocks are enabled by default.
> +        * Therefore, dummy clocks are used.
> +        */
> +       dummy_clk_sgasyncd4: dummy-clk-sgasyncd4 {

Please keep nodes sorted (alphabetically, by node name).

> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <266660000>;
> +       };
> +
> +       dummy_clk_sgasyncd16: dummy-clk-sgasyncd16 {
> +               compatible = "fixed-clock";
> +               #clock-cells = <0>;
> +               clock-frequency = <66666000>;
> +       };

> +       soc: soc {
> +               compatible = "simple-bus";
> +               #address-cells = <2>;
> +               #size-cells = <2>;
> +               ranges;
> +
> +               prr: chipid@189e0044 {
> +                       compatible = "renesas,prr";
> +                       reg = <0 0x189e0044 0 4>;
> +               };
> +
> +               /*
> +                * The ARM GIC-720AE - View 1
> +                *
> +                * see
> +                *      r19uh0244ej0052-r-carx5h.pdf
> +                *      - attachments: 002_R-CarX5H_Address_Map_r0p51.xlsx
> +                *       - sheet [RT]
> +                *        - line 619
> +                */
> +               gic: interrupt-controller@39000000 {
> +                       compatible = "arm,gic-v3";
> +                       #interrupt-cells = <3>;
> +                       #address-cells = <0>;
> +                       interrupt-controller;
> +                       reg = <0 0x39000000 0 0x20000>,

The DT bindings say the first region should be GICD (no mention of
GICM), so shouldn't the size be 0x10000?
See Table 21.9 "GIC-720AE Base address".

> +                             <0 0x39080000 0 0x800000>;
> +                       interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +               };
> +
> +               scif0: serial@c0700000 {
> +                       compatible = "renesas,scif-r8a78000", "renesas,rcar-gen5-scif", "renesas,scif";

Some lines are getting a bit long, but that is not something I cannot
fix while applying...

> +                       reg = <0 0xc0700000 0 0x40>;
> +                       interrupts = <GIC_SPI 4074 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&dummy_clk_sgasyncd16>, <&dummy_clk_sgasyncd16>, <&scif_clk>;
> +                       clock-names = "fck", "brg_int", "scif_clk";
> +                       status = "disabled";
> +               };

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

