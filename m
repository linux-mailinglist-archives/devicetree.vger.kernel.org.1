Return-Path: <devicetree+bounces-31749-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5F382C653
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 21:17:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B736A1C22126
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 20:17:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ED09168CB;
	Fri, 12 Jan 2024 20:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=atishpatra.org header.i=@atishpatra.org header.b="Fwq2AjHI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BE0168B9
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 20:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=atishpatra.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=atishpatra.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2cd8bd6ce1bso23508981fa.1
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 12:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1705090655; x=1705695455; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pdPl62Kj42qLAAkF8TWMuSZ2lBBKNdyCgrrnQIbbjq8=;
        b=Fwq2AjHIyFpG2IaJ27tSwuuZ/xbbtesbwdSGnd6CwtobljvZ7E0DFwPgUTdmYoexcY
         Z+ec2BIYdtWmKXmDBYsEK641IaYWtWjiv0XK0gbiBAqk6yFbPGB/JmHpx3v8nGVx/nFl
         7hS5P68rLMCdpLUCIAQ4QOp3xnKdIG8kL85Iw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705090655; x=1705695455;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pdPl62Kj42qLAAkF8TWMuSZ2lBBKNdyCgrrnQIbbjq8=;
        b=dtdlDZ6x94Xl9l9BZOKrEldB2AQ0fbtCJj3MnjSYTQFaHWI6MIgAdYW+P3fqmBXY3H
         2Z3AUHonFUOtU/fm7SF7ZQvD8RbCrk/rWlyvQXp4OqL2YjZN6oMMyo2g8nr8zlXTDZ/3
         3IernAxm4v0hjSAE/YPVG8LDNuG3BqUmYmEyjT3/RWyn886/pQyCxH/Cghm4uJbQoucN
         g0xCs3K+yNF+P1Pzskd0iZnOMAcxxek4SApSdS4Pb763/wXmGUUCuqvZu+W45CHqJ82J
         o5NcGbpOoHI/wFfimoLuIL3oJC1bGrAUHCNnLAFkScxgNRC9z3YmlA/m7RIt0gf2kkGE
         7XYg==
X-Gm-Message-State: AOJu0Yz4dKi3eWyiEJ8TvajpGcz870FOZUnd0TpgFL9dEcPWxvBD5E/g
	9LacpKx+1e3dBK/RFFR/JtkhTpQkUED3tG/2xiyMx2pNcQA3
X-Google-Smtp-Source: AGHT+IH9QK11T/Suh1c1OYYHTXmVh+no7GMm/AzsKYmS9El+CD8gOLnlidxHzce7VuVJ4ZtS2BQI67YGB4XrpVAbABo=
X-Received: by 2002:a2e:740d:0:b0:2cd:900c:d5ff with SMTP id
 p13-20020a2e740d000000b002cd900cd5ffmr665638ljc.0.1705090654991; Fri, 12 Jan
 2024 12:17:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110073917.2398826-1-peterlin@andestech.com> <20240110073917.2398826-7-peterlin@andestech.com>
In-Reply-To: <20240110073917.2398826-7-peterlin@andestech.com>
From: Atish Patra <atishp@atishpatra.org>
Date: Fri, 12 Jan 2024 12:17:23 -0800
Message-ID: <CAOnJCUJuDk6euX_XKiQ3H=TSGU02fgGgqSq-WycDwurq1XkDHw@mail.gmail.com>
Subject: Re: [PATCH v7 06/16] perf: RISC-V: Eliminate redundant interrupt
 enable/disable operations
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
> The interrupt enable/disable operations are already performed by the
> IRQ chip functions riscv_intc_irq_unmask()/riscv_intc_irq_mask() during
> enable_percpu_irq()/disable_percpu_irq(). It can be done only once.
>
> Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> ---
> This patch allows us to drop unnecessary ALT_SBI_PMU_OVF_{DISABLE,ENABLE}
> in the initial PATCH3 [1].
>
> [1] https://patchwork.kernel.org/project/linux-riscv/patch/20230907021635=
.1002738-4-peterlin@andestech.com/
>
> Changes v1 -> v2:
>   - New patch
> Changes v2 -> v3:
>   - No change
> Changes v3 -> v4:
>   - No change
> Changes v4 -> v5:
>   - No change
> Changes v5 -> v6:
>   - No change
> Changes v6 -> v7:
>   - No change
> ---
>  drivers/perf/riscv_pmu_sbi.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/perf/riscv_pmu_sbi.c b/drivers/perf/riscv_pmu_sbi.c
> index 16acd4dcdb96..2edbc37abadf 100644
> --- a/drivers/perf/riscv_pmu_sbi.c
> +++ b/drivers/perf/riscv_pmu_sbi.c
> @@ -781,7 +781,6 @@ static int pmu_sbi_starting_cpu(unsigned int cpu, str=
uct hlist_node *node)
>         if (riscv_pmu_use_irq) {
>                 cpu_hw_evt->irq =3D riscv_pmu_irq;
>                 csr_clear(CSR_IP, BIT(riscv_pmu_irq_num));
> -               csr_set(CSR_IE, BIT(riscv_pmu_irq_num));
>                 enable_percpu_irq(riscv_pmu_irq, IRQ_TYPE_NONE);
>         }
>
> @@ -792,7 +791,6 @@ static int pmu_sbi_dying_cpu(unsigned int cpu, struct=
 hlist_node *node)
>  {
>         if (riscv_pmu_use_irq) {
>                 disable_percpu_irq(riscv_pmu_irq);
> -               csr_clear(CSR_IE, BIT(riscv_pmu_irq_num));
>         }
>
>         /* Disable all counters access for user mode now */
> --
> 2.34.1
>

Reviewed-by: Atish Patra <atishp@rivosinc.com>

--=20
Regards,
Atish

