Return-Path: <devicetree+bounces-218750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6DE2B83C87
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:27:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D83116C053
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0A352EF670;
	Thu, 18 Sep 2025 09:27:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com [209.85.166.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E2427AC4D
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:27:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758187659; cv=none; b=XyvEddcKT/g5ffqClT/1SgcvsfTTDLijUcztkCxil6FocTsl0EhFvr0ehhIo1YqmYV7F2mf8seO7SPbP7cnDuOP2eeKBPkb9BkPr+qcMaW6mH+kATF9trbxIUloLr5I0pvJnqL7Yk9i+tRB0DkK4Yitq4I56tmYYyo4cxoM1gqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758187659; c=relaxed/simple;
	bh=onHsAQTWsUyBs5IX1LlfYCWKBjpstcoF4upDP17pgA4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hMqHV6gY5YWmvg+gwPVHdcXyk6bQd6e1Kga05UWKnqLJckJ+MpISn/A/iZ2ZNBQNBmCt75yYS2E+EcFNB5fujkdCjS1krtapsPzYLNru8SKAzTG+98HlIrPQ3fLHqM64TCDukdyAwQV5EeKX43mhL03nS5z05ndQVQ6J9a2/eJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.166.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-il1-f170.google.com with SMTP id e9e14a558f8ab-424117c229aso7725575ab.0
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758187657; x=1758792457;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DIPAGga4FOA5RTuOCxh82ZFvj8TL8c2aRMORyqNz1+U=;
        b=qlNnmkZiMKTsPHmhp/OgUXRKISy5aCyQ4S+A0YMrzdbdO/6knqmHJwW3bsvnWQoPui
         i3YpdiXruV79nUz3vw1GSeLHH/dBkzpnGSPdFNSmlfa2UuFFFP3zPfPZf5ZCxwg+FJFE
         Poq0qi8apkfgaiM5Tzcvjcd3aGAO5mwQ/KRjiVtQwOIgu3dIMxsPk737L1GQ89hxGMZm
         6kiqWyjMvt5t742XYOVqjVvGbxFe9b1MyNZXuzhBNp1e3ZZGkDvAwktIT1Xo3NuLzlU4
         qFKuTuDLU9qhhV+3DgvYdenpjcQpnkDQO4ZCb5o0x/Awn+TBSXSqvf5tWOEEGloXpgAg
         4Gww==
X-Forwarded-Encrypted: i=1; AJvYcCW7ZcJMPblxzsIfcCxVRaBnXiB7NobXfxWb71d7ZndEaj9Yy8sUMxeiTP09AHle9CMnKpEN7Jb2fUvh@vger.kernel.org
X-Gm-Message-State: AOJu0YzlgY+FgRi+pRQ6p5N8H8aTZxRQw0FfkoN/A2X9dhzI4NF0qzSy
	rZ+NFjt40dU9ENwKRN2fI4g5Cl1YpJQ/iwq2x35f8qiKZaLWVuVtLkYXGc+28FM3
X-Gm-Gg: ASbGncvkNtIdOvxrgmTLK1HW9+gWspzjccECZdh0FWkeC7um/eDvZRL+OeOWpJdFauW
	o9lblHBnhTFBwuASz4gJvMjI/9fuYg/l41JhLoY0+U6j20FV2yEGrBjXEY0EJc0a8Qr/Cty56ja
	1bEe2mPqrHeH0yNCfRfyW8sb6th/HpA9ygB63aMqHNVXgJ5UlMofebNug/elSLD1ziY/8aedm5T
	5pRPc9q92YeKbKweKdIgj/K2K2qzq65G7eMaF/dZ4hnxpGD2MluuFCxnivyj0kQHoAsequdhAly
	iVGKpLlFy/o80cEkBgQwrE2tmOd0C624NbE/uv2ohVruvnV4AKx49Tm7crWyTqlxO2zdNgJVINj
	uadpFJwnlKEPYCCQTTrVjO3fGoxnUbWrKpLaiPkGgGpW8C7ah1/eaxgNRtYWpbuvnvMQXhhdh2q
	UKF9WfNo8=
X-Google-Smtp-Source: AGHT+IFLx7K+STMCF3IpNQKHxB3h/+a3VDLBEEHFgfpxDowPwyJ0ctYpsZOTjOC4oKnJRBT8hIwfpw==
X-Received: by 2002:a05:6e02:1562:b0:414:3168:b9fe with SMTP id e9e14a558f8ab-4241a563ce9mr80169255ab.29.1758187657241;
        Thu, 18 Sep 2025 02:27:37 -0700 (PDT)
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com. [209.85.166.175])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-4244afa9c96sm7670945ab.25.2025.09.18.02.27.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 02:27:37 -0700 (PDT)
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-423fc1532bdso8628745ab.1
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:27:36 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXbKgsWWA2L3JV6CPPQD4nYbG0n4XpJLVLqHtN/XMlYEdTxL7dtd2aIr60ZIywxXSn9J1aebF0txjgA@vger.kernel.org
X-Received: by 2002:a05:6102:26cf:b0:4fb:de9e:6d87 with SMTP id
 ada2fe7eead31-56d5376a64emr1999299137.11.1758187210414; Thu, 18 Sep 2025
 02:20:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ms6snut0.wl-kuninori.morimoto.gx@renesas.com> <87ldmcnup1.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87ldmcnup1.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 11:19:58 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV+59oaCo5oOqTLhQMDV=SJhvBu-gGr4vUzyyPxEEBJpw@mail.gmail.com>
X-Gm-Features: AS18NWB4Q9Ufki8ANAbzyQzmxL_5lVd8LQK2sw8BXyMmuM4p3Xg-lO7FkssDvz4
Message-ID: <CAMuHMdV+59oaCo5oOqTLhQMDV=SJhvBu-gGr4vUzyyPxEEBJpw@mail.gmail.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: serial: sh-sci: don't required
 "reset" for r8a78000
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

On Thu, 18 Sept 2025 at 08:25, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> commit 6ac1d6047372 ("dt-bindings: serial: sh-sci: Document r8a78000
> bindings") added r8a78000 DT bindings for Renesas serial, and it sets
> "resets" as "required", but it is not mandatory, because driver doesn't
> use it. Remove it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

> I'm not sure this is acceptable. This is optional patch.
> If it was acceptable, I think we can remove "resets" from required not only for X5H...

The question is not "Does the driver use the reset signal?", but
"Does the hardware have a reset signal?".

According to Table 12.1 "Reset Categories and Reset Source" and Note 2,
the Module Controller takes care of Software Module Reset.  However,
I couldn't find information about the individual module resets in the
documentation for the Module Controller.

> --- a/Documentation/devicetree/bindings/serial/renesas,hscif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,hscif.yaml
> @@ -126,7 +126,6 @@ if:
>            - renesas,rcar-gen2-hscif
>            - renesas,rcar-gen3-hscif
>            - renesas,rcar-gen4-hscif
> -          - renesas,rcar-gen5-hscif
>  then:
>    required:
>      - resets

> --- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> @@ -181,7 +181,6 @@ allOf:
>                - renesas,rcar-gen2-scif
>                - renesas,rcar-gen3-scif
>                - renesas,rcar-gen4-scif
> -              - renesas,rcar-gen5-scif
>                - renesas,scif-r9a07g044
>                - renesas,scif-r9a09g057
>      then:

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

