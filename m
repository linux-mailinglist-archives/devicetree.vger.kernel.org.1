Return-Path: <devicetree+bounces-272148-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gHewKljiqmkJYAEAu9opvQ
	(envelope-from <devicetree+bounces-272148-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:19:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 312FC2227A8
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 15:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 181CD3064CD0
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 14:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A8E43AA1A6;
	Fri,  6 Mar 2026 14:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jl6E3cPK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DB6321CFEF
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 14:15:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.48
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806549; cv=pass; b=nj8X3+4gSp9iWKdP+h1TwOeHOPzFfIRg9C7MHskk1MoVuAhMEjQVRYJ8AAerz1Wa/lLRLYuc2oDQPuqszFhBYSIb/c3Ss54PQxASFna5+LhoP4SRLwau9jXOMLToDGLzOWPjGPWGhTBo7ocTo676cKaUbO04fq0kzgLYc9JMVMI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806549; c=relaxed/simple;
	bh=/CNVAqyXaUIfUUqCRxD9C1JjNw55xKz/vRPOZSl7GJU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Yo3n1XUkd8isNgJq/87yoloQPq4F1Xb8kYI5YS9dRbD3rhsrltzzwwlc4tle+Te2Ukx5XBhVsWHx32trfuI0IByibb5A0/akYy49GmjNph2jnYuHjaWBmqiUmvsWehI9fdb4cOafu8c+XVG7nB/8d3gQvDR5hh37vGJriv7zGNA=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jl6E3cPK; arc=pass smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b9358bc9c50so1040156166b.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 06:15:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772806546; cv=none;
        d=google.com; s=arc-20240605;
        b=SSh/PgIpczEL4Wr/rNJWoynHPpqWsaItXA2f7Fr85PhvsjQ3pI++9SzGRrQQRZDfGN
         IE5AuKPxvnpq9ce7jCwCDN82mXfKAGCcW2gQl3MiRhbRthtvF7Cb5Eza6F7D71orUtd7
         eUyLpA+eO92uhEylSzv+l1iDPOXUJ9F9oWRxgWirv+ooQ0CDsn9MXnMlRJEtqxTSsklN
         KZ32SlmkgAzfJpLIpC77iQw4N1Z3hbz59bvmGZciUDSOJfKHjh8RZ0pMfAicCB4nKHrC
         Ch/LZ7EzH+iNQWlZRnM2vJRUPLbMbnn2KgPqmBhaMRnsOZLUbq5leGoq6/jEEI+H0V9S
         /ifg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wsd9xHQXwG0L/peVfvTrqZYVlLBD0w3lIYpT1q/1u0k=;
        fh=Hvdb/CVfYo/w5ljATXJRnM2SBwr6xyT0vMiGEZ+NUJ4=;
        b=aLGIDJLtErwd+/XlpiC2h+uZE5WJA/weaVgZbijZshtoXpwAOYRxUXJECdP/opowv6
         xfZcBd4uX3KTK+Q0BDhTSImiLEIPQgkwq/0TGIC9rikmVTnJqb4bQqZSBEP7u9LAvFmK
         6esGDb81wdRvp89l8vam9rOKCsfWI+QxJUwNvA6tgM9JKw3X4DAOCYcVTTseeqgFpejm
         EX39cIl1zePUx99NgweQtjmOr/xQs+tmj5iesKFeawXqWjFur8y/sRzXbSr558/XCIg0
         jx+t1DCVbXKrN5oKurLm00uOhoLJCgqQ/T4FidbYIv7ucumBbRvzjXyAHe/eVGWKrUlw
         kOSQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1772806546; x=1773411346; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wsd9xHQXwG0L/peVfvTrqZYVlLBD0w3lIYpT1q/1u0k=;
        b=jl6E3cPKwMLcgrUoQcYYeX9PFFVNM+9eYnCaHYYlPErjUS057w/kMgsnrbeg/DyjOj
         UovjPAGCRO9mXn5nXAbwyF2J6XioT3xh6L2RcKtcr5PafeLYV1xUV0ASsuL6jxS4XYx0
         TzBGjZLmb0Pl8v5dPnREbLEs5pkwfL79KqML4kvF0BmZfDBeVCm8OrUsR80TZ95ejvcD
         I0897M0fkyyJi6C6T1OvUyOodGSoZOq6NZemts/7U0BSvkwEr8IPHR9pQkxnMtMs19Xe
         ucvrVyYwgxMaUM8wXayohTwSKYloQR3gp8hjgOPlljIZcVFYsLAjZaVw2vCasHRPZeHs
         /Wlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772806546; x=1773411346;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wsd9xHQXwG0L/peVfvTrqZYVlLBD0w3lIYpT1q/1u0k=;
        b=pkAQ8dQs64zJB8E2AEjSAN5JThhe5tqt29JoZqe8+Cd/acgv41Qdp7Q6c1UGk5wlh2
         c304GPRRKyrac5XpSprfcO3Kc95oDMzJAXt/x3mE5TMPBcdrD35UYHsgRGNeA+QCuaC9
         yPPZXS7ymuWGl1PlBg/aawzie5t2UO/LjZPC4JzylMiPtwlmCrYPbMOXjEev5gvSt0iH
         iUBvSERs6RYK0bhoZk4fuMamqIrRajYJ595cy3rkEzNL0KPQn00k97JlqQyy22OSXM6w
         Sx62VCwGq2sarrAWYl57VSSx8hS1lM024asTKST/kTw1ynXsNaloi7BFWSY75WeA5siQ
         xjQg==
X-Forwarded-Encrypted: i=1; AJvYcCXoF6vHDPmb0FewPnq/tSMsz3dv4zLNGAdV39omjTSgJwdcuR/HWy7AtFqwluBWZh9ZL0ZTAaTqVW2l@vger.kernel.org
X-Gm-Message-State: AOJu0YweF5dXXDodNQi4oVByAop2ssRF2mM1w7RdZ9zFDTeM3G9OlgmD
	6yCsgGLNhFW1idUTynf3i0Bl0yHAi9ZaecogMX5IpY48IOLYlpmb8o+VSLk/k8m3pa23O/AHpOQ
	RwRQ7LCGIuVMBMBxliHBBp7sOgQTqVBTFdJJsC2sWFA==
X-Gm-Gg: ATEYQzxpzU9+aVAhFYsG++Om8RA6lk9NLo54kxWipwMfdzyf0LB8G2Zujp1/xYblNzp
	V/QSvQ6HWCcADpOYClEKbu4nGjSCH3iHlxpuLAdBn8syjAV4OkXjTLmJxFh9tpKUZ0ilSCN8qhJ
	piN49d5/zg14d6Arqb9OYo2tNXntoKbfN4YL14VHly/bVOyfKmXy8pRAO8KbxGV3LIsf4plyUBM
	/bfeAiVZX2pT98p3CoibrQKvcNLTtTB660WE/AMNGJKKVIPxMkRZdmNhTK/8FdNho2IOUq8gO69
	PhBremHFMq+SXvLR2kaUDAoBgPEV1w9FkVtkxxzULw==
X-Received: by 2002:a17:907:97cc:b0:b94:1722:fe4c with SMTP id
 a640c23a62f3a-b942e0b51aamr127144266b.33.1772806545787; Fri, 06 Mar 2026
 06:15:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260226-exynos850-cpuhotplug-v1-0-71d7c4063382@linaro.org> <20260226-exynos850-cpuhotplug-v1-7-71d7c4063382@linaro.org>
In-Reply-To: <20260226-exynos850-cpuhotplug-v1-7-71d7c4063382@linaro.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Fri, 6 Mar 2026 14:15:34 +0000
X-Gm-Features: AaiRm50_59W0lqO5S3dEhyJtxjXmMUrxStP6qFX90WC4mn1HuOypqUtemGTXM44
Message-ID: <CADrjBPoLCDnvWocLYrg-zGRZNcBvPVYnUi4L7DA78m7QmkmQdQ@mail.gmail.com>
Subject: Re: [PATCH RFC 7/8] soc: samsung: exynos-pmu: add Exynos850 CPU
 hotplug support
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: Sam Protsenko <semen.protsenko@linaro.org>, linux-samsung-soc@vger.kernel.org, 
	Krzysztof Kozlowski <krzk@kernel.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Alim Akhtar <alim.akhtar@samsung.com>, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Queue-Id: 312FC2227A8
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272148-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[peter.griffin@linaro.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,linaro.org:dkim,linaro.org:email]
X-Rspamd-Action: no action

Hi Alexey,

Thanks for your patch.

On Thu, 26 Feb 2026 at 15:47, Alexey Klimov <alexey.klimov@linaro.org> wrote:
>
> Some Exynos-based SoCs require specific set of writes/updates to PMU
> and PMU intr gen blocks in order to put a CPU or a group of CPUs into
> a different sleep states or prepare these entities for a CPU_OFF.
> The same is valid for a reverse procedures like wake-ups or CPU(s)
> online. Without these writes/updates the CPU(s) wake-up or online
> fails.
> Add support for Exynos850-based SoCs for PMU and PMU intr gen write/update
> sequences.
> While at this, also add description of Exynos850 PMU registers.
>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  drivers/soc/samsung/exynos-pmu.c            | 86 +++++++++++++++++++++++++++--
>  include/linux/soc/samsung/exynos-regs-pmu.h |  5 ++
>  2 files changed, 87 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/soc/samsung/exynos-pmu.c b/drivers/soc/samsung/exynos-pmu.c
> index 0967fa56708a..7b9b8e22d91b 100644
> --- a/drivers/soc/samsung/exynos-pmu.c
> +++ b/drivers/soc/samsung/exynos-pmu.c
> @@ -118,6 +118,10 @@ static const struct regmap_config regmap_pmu_intr = {
>         .use_raw_spinlock = true,
>  };
>
> +const struct exynos_pmu_data exynos850_pmu_data = {
> +       .pmu_cpuhp = true,
> +};
> +

You may want to consider having an e850-pmu.c file to contain the e850
specific data and hooks.

Andre recently moved some of the gs101-specific parts into gs101-pmu.c
(although not the actual gs101 online/offline hooks). Now that more
SoCs are being added it could be a good time for exynos-pmu to contain
only the generic code and the <soc>-pmu.c file having the
peculiarities/hooks for the specific SoC.

>  /*
>   * PMU platform driver and devicetree bindings.
>   */
> @@ -151,6 +155,7 @@ static const struct of_device_id exynos_pmu_of_device_ids[] = {
>                 .compatible = "samsung,exynos7-pmu",
>         }, {
>                 .compatible = "samsung,exynos850-pmu",
> +               .data = &exynos850_pmu_data,
>         },
>         { /*sentinel*/ },
>  };
> @@ -229,6 +234,65 @@ EXPORT_SYMBOL_GPL(exynos_get_pmu_regmap_by_phandle);
>  #define CPU_INFORM_CLEAR       0
>  #define CPU_INFORM_C2          1
>
> +static int __exynos850_cpu_pmu_online(unsigned int cpu)
> +       __must_hold(&pmu_context->cpupm_lock)
> +{
> +       u32 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 2);
> +       u32 cluster_cpu = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);
> +       unsigned int cpuhint = smp_processor_id();
> +       u32 reg, mask;
> +
> +       /* clear cpu inform hint */
> +       regmap_write(pmu_context->pmureg, EXYNOS850_CPU_INFORM(cpuhint),
> +                    CPU_INFORM_CLEAR);
> +
> +       mask = BIT(cpu);
> +
> +       regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
> +                          mask, (0 << cpu));
> +
> +       regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_UPEND, &reg);
> +
> +       regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_CLEAR,
> +                    reg & mask);
> +
> +       regmap_update_bits(pmu_context->pmureg,
> +                          EXYNOS850_CLUSTER_CPU_INT_EN(this_cluster, cluster_cpu),
> +                          1 << 3, 0 << 3);
> +       return 0;
> +}
> +
> +static int __exynos850_cpu_pmu_offline(unsigned int cpu)
> +       __must_hold(&pmu_context->cpupm_lock)
> +{
> +       u32 this_cluster = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 2);
> +       u32 cluster_cpu = MPIDR_AFFINITY_LEVEL(read_cpuid_mpidr(), 1);
> +       unsigned int cpuhint = smp_processor_id();
> +       u32 reg, mask;
> +
> +       /* set cpu inform hint */
> +       regmap_write(pmu_context->pmureg, EXYNOS850_CPU_INFORM(cpuhint),
> +                    CPU_INFORM_C2);
> +
> +       mask = BIT(cpu);
> +       regmap_update_bits(pmu_context->pmuintrgen, EXYNOS_GRP2_INTR_BID_ENABLE,
> +                          mask, BIT(cpu));
> +
> +       regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
> +       regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
> +                    reg & mask);
> +
> +       mask = (BIT(cpu + 8));
> +       regmap_read(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_UPEND, &reg);
> +       regmap_write(pmu_context->pmuintrgen, EXYNOS_GRP1_INTR_BID_CLEAR,
> +                    reg & mask);
> +
> +       regmap_update_bits(pmu_context->pmureg,
> +                          EXYNOS850_CLUSTER_CPU_INT_EN(this_cluster, cluster_cpu),
> +                          1 << 3, 1 << 3);
> +       return 0;
> +}
> +
>  /*
>   * __gs101_cpu_pmu_ prefix functions are common code shared by CPU PM notifiers
>   * (CPUIdle) and CPU hotplug callbacks. Functions should be called with IRQs
> @@ -416,8 +480,12 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
>         void __iomem *virt_addr;
>         int ret, cpu;
>
> -       intr_gen_node = of_parse_phandle(dev->of_node,
> -                                        "google,pmu-intr-gen-syscon", 0);
> +       intr_gen_node = of_parse_phandle(dev->of_node, "samsung,pmu-intr-gen-syscon", 0);
> +
> +       /* Fall back to the google pmu intr gen property for older DTBs */
> +       if (!intr_gen_node)
> +               intr_gen_node = of_parse_phandle(dev->of_node, "google,pmu-intr-gen-syscon", 0);
> +
>         if (!intr_gen_node) {
>                 /*
>                  * To maintain support for older DTs that didn't specify syscon
> @@ -427,9 +495,19 @@ static int setup_cpuhp_and_cpuidle(struct device *dev)
>                 return 0;
>         }
>
> -       pmu_context->cpu_pmu_online = __gs101_cpu_pmu_online;
> -       pmu_context->cpu_pmu_offline = __gs101_cpu_pmu_offline;
> +       if (of_machine_is_compatible("google,gs101")) {
> +               pmu_context->cpu_pmu_online = __gs101_cpu_pmu_online;
> +               pmu_context->cpu_pmu_offline = __gs101_cpu_pmu_offline;
> +       }
> +
> +       if (of_machine_is_compatible("samsung,exynos850")) {
> +               pmu_context->cpu_pmu_online = __exynos850_cpu_pmu_online;
> +               pmu_context->cpu_pmu_offline = __exynos850_cpu_pmu_offline;
>

There should be no compatibles inside probe (that rule applies to all
drivers & subsystems). Instead use the driver match data
(exynos_pmu_data).

regards,

Peter

