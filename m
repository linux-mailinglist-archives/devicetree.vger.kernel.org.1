Return-Path: <devicetree+bounces-31765-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EACB82C81A
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 00:50:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BBBBE2869B2
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 23:50:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45FF01A5B0;
	Fri, 12 Jan 2024 23:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=atishpatra.org header.i=@atishpatra.org header.b="DwH8nF/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D6C51A5A9
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 23:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atishpatra.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=atishpatra.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cd0f4797aaso76868301fa.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 15:50:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1705103426; x=1705708226; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KdVVm44GspY1vrqagFO17oKocrrGuSEpWF2qOryhvaY=;
        b=DwH8nF/bCe0bcTBpKXmgiKKqi1Uik75coJ0vWRCb/lgd26I+xyo9zVEpJc0v08JYsc
         qLqLD68GLWtfhqHt2H5HHeoBp4BMLZDjd6AIS6PTlezls0nUFNavMOTKAJzRZrX77F0j
         9OuunS/PewiZBn+wYJXnvakqQCFmWaGLL9fkg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705103426; x=1705708226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KdVVm44GspY1vrqagFO17oKocrrGuSEpWF2qOryhvaY=;
        b=NqTKwjuaqRgBG6IsItwqbfA9vm4/wVMiGVDqyZpEn6RX6GEO6pvsLlRbnVsUPmNcwj
         uHufuNSowA+8geX1VkbwduOH2ZSdeGirlx+5zubuFhVdy+nEZJjDPHNWNP3SYBPb9qiW
         Zau0RI8qV/GhkmAR28kFePAPOlZT13jpbMJKYFyd50xh1+/B78J+kvmPfEzrfbYaO9Rr
         39xmcnLwJl1ubRx/0/M/fNCISEa2gQGNt15rP9R21P22gTRNjDOGMRad76D07mV3ZAsk
         L/4lsONLk80TH0fNY8DLaEfYLAgI9yQrTbPEFXnn6tYYcX/zAfRMm3QMZZdAq0OxJ/NX
         ITaA==
X-Gm-Message-State: AOJu0YymTJ4x3UEf1HyE9tRqUbCwwmVKsJIzvifOk3XJFAHY/85Z96Zw
	FwmzeHV9H2SLwR9rgi3CY+YPnGJ3FpsgzVhgiNmZCMkZinh9
X-Google-Smtp-Source: AGHT+IG74fXTZOq2nIQGkABoTQvuIWpEvgArH4ko847NqdeZiegoSZ+CvkTfc7jJcqd/iuL4Jfoat0JYTgOT3NmkpCw=
X-Received: by 2002:a2e:a36e:0:b0:2cd:8fe0:70ab with SMTP id
 i14-20020a2ea36e000000b002cd8fe070abmr1011564ljn.16.1705103426437; Fri, 12
 Jan 2024 15:50:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110073917.2398826-1-peterlin@andestech.com> <20240110073917.2398826-5-peterlin@andestech.com>
In-Reply-To: <20240110073917.2398826-5-peterlin@andestech.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 12 Jan 2024 15:50:15 -0800
Message-ID: <CAOnJCUJ0fN5=+b4jDx+NPqUwgwGKuBNYt7d86dXYNyjzUYFAWQ@mail.gmail.com>
Subject: Re: [PATCH v7 04/16] dt-bindings: riscv: Add Andes interrupt
 controller compatible string
To: Yu Chien Peter Lin <peterlin@andestech.com>
Cc: acme@kernel.org, adrian.hunter@intel.com, ajones@ventanamicro.com, 
	alexander.shishkin@linux.intel.com, andre.przywara@arm.com, 
	anup@brainfault.org, aou@eecs.berkeley.edu, conor+dt@kernel.org, 
	conor.dooley@microchip.com, conor@kernel.org, devicetree@vger.kernel.org, 
	dminus@andestech.com, evan@rivosinc.com, geert+renesas@glider.be, 
	guoren@kernel.org, heiko@sntech.de, irogers@google.com, 
	jernej.skrabec@gmail.com, jolsa@kernel.org, jszhang@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-perf-users@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, locus84@andestech.com, magnus.damm@gmail.com, 
	mark.rutland@arm.com, mingo@redhat.com, n.shubin@yadro.com, 
	namhyung@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com, 
	peterz@infradead.org, prabhakar.mahadev-lad.rj@bp.renesas.com, 
	rdunlap@infradead.org, robh+dt@kernel.org, samuel@sholland.org, 
	sunilvl@ventanamicro.com, tglx@linutronix.de, tim609@andestech.com, 
	uwu@icenowy.me, wens@csie.org, will@kernel.org, ycliang@andestech.com, 
	inochiama@outlook.com, chao.wei@sophgo.com, unicorn_wang@outlook.com, 
	wefu@redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 9, 2024 at 11:40=E2=80=AFPM Yu Chien Peter Lin
<peterlin@andestech.com> wrote:
>
> Add "andestech,cpu-intc" compatible string to indicate that
> Andes specific local interrupt is supported on the core,
> e.g. AX45MP cores have 3 types of non-standard local interrupt
> which can be handled in supervisor mode:
>

PATCH1 in this series renames everything from ANDESTECH to ANDES to be
consistent.
Here you are adding DT binding with "andestech". Is there any
fundamental difference between these two to demand
this change ?

FYI: I don't mind either way as I don't have skin in the game. Just
something I noticed while reviewing the series.

> - Slave port ECC error interrupt
> - Bus write transaction error interrupt
> - Performance monitor overflow interrupt
>
> These interrupts are enabled/disabled via a custom register
> SLIE instead of the standard interrupt enable register SIE.
>
> Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> Changes v1 -> v2:
>   - New patch
> Changes v2 -> v3:
>   - Updated commit message
>   - Fixed possible compatibles for Andes INTC
> Changes v3 -> v4:
>   - Add const entry instead of enum (Suggested by Conor)
> Changes v4 -> v5:
>   - Include Conor's Acked-by
>   - Include Prabhakar's Reviewed-by
> Changes v5 -> v6:
>   - No change
> Changes v6 -> v7:
>   - No change
> ---
>  Documentation/devicetree/bindings/riscv/cpus.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Document=
ation/devicetree/bindings/riscv/cpus.yaml
> index 23646b684ea2..33c2b620a59f 100644
> --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> @@ -101,7 +101,11 @@ properties:
>          const: 1
>
>        compatible:
> -        const: riscv,cpu-intc
> +        oneOf:
> +          - items:
> +              - const: andestech,cpu-intc
> +              - const: riscv,cpu-intc
> +          - const: riscv,cpu-intc
>
>        interrupt-controller: true
>
> --
> 2.34.1
>


--=20
Regards,
Atish

