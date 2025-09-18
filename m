Return-Path: <devicetree+bounces-218760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A49D4B83D2C
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 11:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B4B691B2057F
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 09:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 086DE1B394F;
	Thu, 18 Sep 2025 09:33:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7585834BA2B
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 09:33:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758188013; cv=none; b=Y9RfqJU7gMapQGKq4FrrCv1NOhosiHIxzRdnBmVx6pivA5k3jITNUUw2BRGYC2HgercLbHele5zqo7e95hcUHkUaPp36HAZ2u9dpamF0L+ipje09qvSbz9N5DxMTkKl7YBFRPCWlTxzNYF/oXHph7iqj2GaT5Mf9cnNgONHxHXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758188013; c=relaxed/simple;
	bh=F+7UwolL+d5M3u3SJQMdS/JoH4KAhipm+vZbdTiVTtU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hYmgEpKDuBFyXfixh84WN8I83792ej/I/mYcODYi3GjtBUaRduY5yCeE6bwJWri4mZv8snrq7xaZbHUvWiS83K2erwX0u+ecIyNT8FBYqMxN9FWUfUjS9OI9rzhrnweZx0SxKE2bhj4j474wtx9KxtNfGAngKa7asQ7mhnOCPWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-81076e81a23so113393685a.3
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:33:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758188011; x=1758792811;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=thwzdmTgqO/aYIbO/EaYexBbO6rJAeT6rezea+eeFXA=;
        b=kuWjfAgFOhSZIqf4W6aTjF/4zAgEYGrtBoDockVOEsE/UKc3isSH8rdPF1kE2513Cn
         2Om+Tln/OqMgYJaqwpUt4Ajv9zVTtsRXDwSB+XdH9z+2Ikz3kbJyvTzTC7zmSY3eycpC
         4/gqsbDwBvHWAGdDptuyNeNixM85cqirWYZ5RyAZavHTTPFiywt1Nddb+2S9rrn8hR+y
         ECnfl+ZCswzG6r35yJQfUUn/F5XIPkDEa9p6QpbivV/G7VaZ7gMVClDdN+RLS0fPqL3t
         VTBXV9ww/bz6vwUaeLapehIzZvDWoP2YIXTqnnw3qHPZRXJPLNaEUUSIL1TuOWI7RZJW
         zVnw==
X-Forwarded-Encrypted: i=1; AJvYcCXTzIS8vr2CIgM07uA02BhfteU7t2FhhiLJ+xEXZ0NnhgRX0hsqRrLUWVV9PDVEleH2p9Y8wb/ishyE@vger.kernel.org
X-Gm-Message-State: AOJu0Yyo4nXfRLf9rSyxO8l/WF9KzCAKEgCD+9kA2Odb6Z+ECgiJf+nT
	rWAeCAGYz0EeWK+FX6sOpjM/CDK92gqmr52h1DMbUqJ/jdnVuT9piQRWeZo2SHRc
X-Gm-Gg: ASbGnctZag58yNijsTWwEA7XNuEOMSnFZSQgXrrjS/aNMQg1kfB/VWDDjxJs1OqUhWT
	JF7f+qrqzGOY4at+eZ97NN2kT+QkoYc2WT7aRJMbjs17tG9KEK07QtmpQAVUgtfB0RgKa1tW8EK
	MIwmc0E0//kW/BluVQLkvGqTpwKBwU3IXFil2itpzpTReWRfiJ9ohPzU3ks7u1Nt67dxLT/lpTg
	EwWwXR/ED+fqDXNq967mtP1QlpzRerDlpZ/Z/YrU6n1irIeYS/Oelo38lUJPg/VMawJLaE/sc8o
	cP/SCVVEGcMvThFS1zPBQtNJh1zapjqbQBOEO2O6A6UHvz2SviPhoL2ba3xKM3R4Qr+k+pjFMeY
	e2Sf+l9nAvFm7p4BAKNxNo17bwgSR9+C+KVeEC0/NihJmkldEPXbJx6++icWo2ZQ3RNHqTP1OOW
	jZpy2kNnVoRLdXwA==
X-Google-Smtp-Source: AGHT+IGWL57sKAiYhJSr7yEE4OC3SLaaAPxuszMCSQvRpnMbTXFZyDRNXhKJYDP+OzwNMgAPb/J7Ow==
X-Received: by 2002:a05:620a:a812:b0:838:d547:a908 with SMTP id af79cd13be357-838d556f202mr64698685a.85.1758188011185;
        Thu, 18 Sep 2025 02:33:31 -0700 (PDT)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com. [209.85.219.50])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8363203a546sm131228085a.52.2025.09.18.02.33.30
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Sep 2025 02:33:31 -0700 (PDT)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-7639af4c4acso9302146d6.2
        for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 02:33:30 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUifMhG3OBxFyOelL3QV0i+B2pYg+1ER6v+6EM9JkxLs1cOKN02grwDG+dpG+yApv1VO+i+5Wrp+ifQ@vger.kernel.org
X-Received: by 2002:a05:6102:80a6:b0:51e:92cc:6e6a with SMTP id
 ada2fe7eead31-56d6d57bf75mr1452834137.33.1758187611708; Thu, 18 Sep 2025
 02:26:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <87ms6snut0.wl-kuninori.morimoto.gx@renesas.com> <87jz1wnunm.wl-kuninori.morimoto.gx@renesas.com>
In-Reply-To: <87jz1wnunm.wl-kuninori.morimoto.gx@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 18 Sep 2025 11:26:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdVfhMKrdnQCjf_Z90EnH_gb-RpdxPiVUjEe3C5ZyuTfUw@mail.gmail.com>
X-Gm-Features: AS18NWDTdMprA4ImYjVf-zjtYmKdsmDO9RIvez5aKcVZCW3WJ100X4TbNjepaRg
Message-ID: <CAMuHMdVfhMKrdnQCjf_Z90EnH_gb-RpdxPiVUjEe3C5ZyuTfUw@mail.gmail.com>
Subject: Re: [PATCH v5 2/7] dt-bindings: serial: sh-sci: don't required "power-domain"
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

On Thu, 18 Sept 2025 at 08:26, Kuninori Morimoto
<kuninori.morimoto.gx@renesas.com> wrote:
> {H}SCIF is in the always-on power area. "power-domain" property is not
> mandatory. Remove it.
>
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>

Thanks for your patch!

> I'm not sure this is acceptable patch. This is optional patch.

(H)SCIF is indeed part of the always-on power area.  However, like
for many other modules, its power management is handled similarly
through a clock/module controller.  Hence it falls under the PM Domain
abstraction, and the power-domains property is justified.

What this power-domains property will point to on R-ar X5H is a
different question, as there are no DT bindings and no driver for the
clock/module controller yet...

> --- a/Documentation/devicetree/bindings/serial/renesas,hscif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,hscif.yaml
> @@ -116,7 +116,6 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> -  - power-domains
>
>  if:
>    properties:

> --- a/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> +++ b/Documentation/devicetree/bindings/serial/renesas,scif.yaml
> @@ -168,7 +168,6 @@ required:
>    - interrupts
>    - clocks
>    - clock-names
> -  - power-domains
>
>  allOf:
>    - $ref: serial.yaml#

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

