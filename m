Return-Path: <devicetree+bounces-130263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA059EE69B
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 13:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 919881884A7C
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 12:25:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B37D9212FB5;
	Thu, 12 Dec 2024 12:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wEQ+oHF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66B3320E339
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 12:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734006346; cv=none; b=h7LCV+61cW8G2BQNrsQzlLvx5cAW5jSGgpbzwwcA8n1jKlpiJ31JVl9oGqHGrcNiPGZvtNtHeQAlZWrqYwyt1t6yZ3XrD+uTadbiJewTUq9QZuseVUHw6KL1KHfNqXeHbSgAmkOnAKqNXPcIWMwd/M2smF0SW7Ffs7KNYDlwYHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734006346; c=relaxed/simple;
	bh=yRMBYYMmmpAj+1WEmUanHUcuaGLjj1CVWvdqev/e89I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cKf+EX5MEd41kS6CAK6ycktRR4JzeuB4cuqyBU0wAEz8l7QZi2Hued9b61yZPaTm24bFz/o34gVJbNB1q/+r6bAhHv9sibSH7AVwHaEcmfM3KOl7TVbvQVax67uoQsLGrN+N2JiHy7Cz/837yXqd6Sa2sFhsx2eKIkUxsbwwJdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wEQ+oHF2; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so962120a12.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 04:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734006343; x=1734611143; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=FRQ0DiIzcMMIbiZUMCWkqJD1jmwMi0oQNp2BLEf95J0=;
        b=wEQ+oHF2HUxFcXlxw6hnMiEeV0ffNFakDQrdhznOZe23sJtbIPw5ZFopJJhPpE+L7f
         RdQ9W1GZhSBEWGiWuXEJpGaSIJGPPCUE0tsJtSL7RDviUaV2dUrUIQK1INFDDT88rvdP
         7HC3y2jnhwxi3M9khVFNx3BaF35ZvMYoAHv6TPMHXp/WMttRm117aWWGjbiZganOl0xz
         e/zRP8IViDD7/EL9SlEBceIvuPyf98KjNTrXlxAR4kHnFjw4G6S4tfTK9AGJuIPgddY4
         k98dErDaE66EKsARTPSYQtWcOBsE7claQN0ocs5PeGTaX00qn2UvlcAxMmjABUyDd6dS
         N8fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734006343; x=1734611143;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FRQ0DiIzcMMIbiZUMCWkqJD1jmwMi0oQNp2BLEf95J0=;
        b=JuvY/1UP6ohLhgVu2fdB7zx5I0ywfpdv1ySNcl7KgGTovdaYo065dHnk2dKHKoNN4R
         b4XTpnIPqEl7RcIGyZ3B7UqTzgG4YjpHsBeVu5w0zkXt4a6BT/D/yJQ2sX8quAIxNmiS
         BV4N1kP8C2omXsvHGnAk4/kNvd6CUayeo3NZpnadKkwB0+FyQmRm4r2Atiwsr/TYAH/2
         wfkDiBNMmd5I2MZ93dKvW6SR0ftCuZK8DOZwB/iCnLo+6psMdP2wdyr75PEFQU20KkUj
         lihT81ksdzJoaDZlbTQZuYm8tsWeOO0wrp4f2jBKQqCqOfaRKzaNmHa8Livy6b1slWJo
         WbBQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6Dwan9uI6KM6icj1qrO36W5UjT06fm0vCF71eWg1Rtf/EMptb/3t5k5XkloFgE9P3DFUA+rkbpo3+@vger.kernel.org
X-Gm-Message-State: AOJu0YwPQ4yTcSbOY5tDm4GDUJgvfEgl3NXxaGBYktGn4b1j5u73WfHz
	BFfdfFwFt1YYKDGcCu6A0nHGvJvzNdTPPLV5DyDlymX6kB61VL5gJ+wRofshBbpkF71+ns8aSIt
	vE+kh5rylzDukXvElZQMGwPBDTWDfVv/l7wPFrA==
X-Gm-Gg: ASbGnctftuh3i9ZgOSFQf4NsFbNzP0o38M592ScbQKS1vqTNDaURyH2kyIIlW/TqLpV
	0rhiJoDQtOPgX2jSBQt2f3I7fpCk8vXCbxztUJg4=
X-Google-Smtp-Source: AGHT+IGaZBZxNRFwEh9m36KQvea6ov4uTAWpSLVsRKPTDkhD4/P30EC7ZtLRh/X3tEM71hMk/IO8altSTtkGbccYTn8=
X-Received: by 2002:a05:6402:390a:b0:5d0:b51c:8478 with SMTP id
 4fb4d7f45d1cf-5d632380265mr66232a12.12.1734006342688; Thu, 12 Dec 2024
 04:25:42 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241206211145.2823-1-ansuelsmth@gmail.com> <20241206211145.2823-2-ansuelsmth@gmail.com>
 <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
In-Reply-To: <CAPDyKFovtfR7BiXBfH-79Cyf1=rd-kmOoEnEdMArjGUxSks-Aw@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 12 Dec 2024 13:25:05 +0100
Message-ID: <CAPDyKFrn-CYoWV3f4g2HOTEEg6_mnx6wfoXsMxBd1_NwNaD4LA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] cpufreq: airoha: Add EN7581 CPUFreq SMCCC driver
To: Christian Marangi <ansuelsmth@gmail.com>, Viresh Kumar <viresh.kumar@linaro.org>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, upstream@airoha.com
Content-Type: text/plain; charset="UTF-8"

On Thu, 12 Dec 2024 at 13:01, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Fri, 6 Dec 2024 at 22:16, Christian Marangi <ansuelsmth@gmail.com> wrote:
> >
> > Add simple CPU Freq driver for Airoha EN7581 SoC that control CPU
> > frequency scaling with SMC APIs and register a generic "cpufreq-dt"
> > device.
> >
> > CPUFreq driver registers a get-only clock to get the current global CPU
> > frequency from SMC and a Power Domain to configure the performance state
> > for each OPP to apply the requested frequency from cpufreq-dt. This is
> > needed as SMC use index instead of raw frequency.
> >
> > All CPU share the same frequency and can't be controlled independently.
> > Current shared CPU frequency is returned by the related SMC command.
> >
> > Add SoC compatible to cpufreq-dt-plat block list as a dedicated cpufreq
> > driver is needed with OPP v2 nodes declared in DTS.
> >
> > Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
> > ---
> > Changes v7:
> > - No changes
> > Changes v6:
> > - Improve Kconfig depends logic
> > - Select PM (PM_GENERIC_DOMAINS depends on it)
> > - Drop (int) cast for
> > Changes v5:
> > - Rename cpu_pd to perf for power domain name
> > - Use remove instead of remove_new
> > Changes v4:
> > - Rework to clk-only + PM set_performance_state implementation
> > Changes v3:
> > - Adapt to new cpufreq-dt APIs
> > - Register cpufreq-dt instead of custom freq driver
> > Changes v2:
> > - Fix kernel bot error with missing slab.h and bitfield.h header
> > - Limit COMPILE_TEST to ARM64 due to smcc 1.2
> >
> >  drivers/cpufreq/Kconfig.arm          |  10 ++
> >  drivers/cpufreq/Makefile             |   1 +
> >  drivers/cpufreq/airoha-cpufreq.c     | 222 +++++++++++++++++++++++++++
>
> Hmm, it looks like this needs to be moved and possibly split up.
>
> The provider part (for the clock and power-domain) belongs in
> /drivers/pmdomain/*, along with the other power-domain providers.
>
> Other than that, I was really expecting the cpufreq-dt to take care of the rest.
>
> >  drivers/cpufreq/cpufreq-dt-platdev.c |   2 +
> >  4 files changed, 235 insertions(+)
> >  create mode 100644 drivers/cpufreq/airoha-cpufreq.c
> >
> > diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> > index 5f7e13e60c80..8494faac58ae 100644
> > --- a/drivers/cpufreq/Kconfig.arm
> > +++ b/drivers/cpufreq/Kconfig.arm
> > @@ -15,6 +15,16 @@ config ARM_ALLWINNER_SUN50I_CPUFREQ_NVMEM
> >           To compile this driver as a module, choose M here: the
> >           module will be called sun50i-cpufreq-nvmem.
> >
> > +config ARM_AIROHA_SOC_CPUFREQ
> > +       tristate "Airoha EN7581 SoC CPUFreq support"
> > +       depends on ARM64 && (ARCH_AIROHA || COMPILE_TEST)
> > +       select PM
> > +       select PM_OPP
> > +       select PM_GENERIC_DOMAINS
> > +       default ARCH_AIROHA
> > +       help
> > +         This adds the CPUFreq driver for Airoha EN7581 SoCs.
> > +
> >  config ARM_APPLE_SOC_CPUFREQ
> >         tristate "Apple Silicon SoC CPUFreq support"
> >         depends on ARCH_APPLE || (COMPILE_TEST && 64BIT)
> > diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> > index d35a28dd9463..890fff99f37d 100644
> > --- a/drivers/cpufreq/Makefile
> > +++ b/drivers/cpufreq/Makefile
> > @@ -53,6 +53,7 @@ obj-$(CONFIG_X86_AMD_FREQ_SENSITIVITY)        += amd_freq_sensitivity.o
> >
> >  ##################################################################################
> >  # ARM SoC drivers
> > +obj-$(CONFIG_ARM_AIROHA_SOC_CPUFREQ)   += airoha-cpufreq.o
> >  obj-$(CONFIG_ARM_APPLE_SOC_CPUFREQ)    += apple-soc-cpufreq.o
> >  obj-$(CONFIG_ARM_ARMADA_37XX_CPUFREQ)  += armada-37xx-cpufreq.o
> >  obj-$(CONFIG_ARM_ARMADA_8K_CPUFREQ)    += armada-8k-cpufreq.o
> > diff --git a/drivers/cpufreq/airoha-cpufreq.c b/drivers/cpufreq/airoha-cpufreq.c
> > new file mode 100644
> > index 000000000000..29738f61f401
> > --- /dev/null
> > +++ b/drivers/cpufreq/airoha-cpufreq.c
> > @@ -0,0 +1,222 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <linux/arm-smccc.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/cpufreq.h>
> > +#include <linux/clk-provider.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/pm_domain.h>
> > +#include <linux/pm_runtime.h>
> > +#include <linux/slab.h>
> > +
> > +#include "cpufreq-dt.h"
> > +
> > +#define AIROHA_SIP_AVS_HANDLE                  0x82000301
> > +#define AIROHA_AVS_OP_BASE                     0xddddddd0
> > +#define AIROHA_AVS_OP_MASK                     GENMASK(1, 0)
> > +#define AIROHA_AVS_OP_FREQ_DYN_ADJ             (AIROHA_AVS_OP_BASE | \
> > +                                                FIELD_PREP(AIROHA_AVS_OP_MASK, 0x1))
> > +#define AIROHA_AVS_OP_GET_FREQ                 (AIROHA_AVS_OP_BASE | \
> > +                                                FIELD_PREP(AIROHA_AVS_OP_MASK, 0x2))
> > +
> > +struct airoha_cpufreq_priv {
> > +       struct clk_hw hw;
> > +       struct generic_pm_domain pd;
> > +
> > +       int opp_token;
> > +       struct dev_pm_domain_list *pd_list;
> > +       struct platform_device *cpufreq_dt;
> > +};
> > +
> > +static long airoha_cpufreq_clk_round(struct clk_hw *hw, unsigned long rate,
> > +                                    unsigned long *parent_rate)
> > +{
> > +       return rate;
> > +}
> > +
> > +static unsigned long airoha_cpufreq_clk_get(struct clk_hw *hw,
> > +                                           unsigned long parent_rate)
> > +{
> > +       const struct arm_smccc_1_2_regs args = {
> > +               .a0 = AIROHA_SIP_AVS_HANDLE,
> > +               .a1 = AIROHA_AVS_OP_GET_FREQ,
> > +       };
> > +       struct arm_smccc_1_2_regs res;
> > +
> > +       arm_smccc_1_2_smc(&args, &res);
> > +
> > +       /* SMCCC returns freq in MHz */
> > +       return res.a0 * 1000 * 1000;
> > +}
> > +
> > +/* Airoha CPU clk SMCC is always enabled */
> > +static int airoha_cpufreq_clk_is_enabled(struct clk_hw *hw)
> > +{
> > +       return true;
> > +}
> > +
> > +static const struct clk_ops airoha_cpufreq_clk_ops = {
> > +       .recalc_rate = airoha_cpufreq_clk_get,
> > +       .is_enabled = airoha_cpufreq_clk_is_enabled,
> > +       .round_rate = airoha_cpufreq_clk_round,
> > +};
> > +
> > +static const char * const airoha_cpufreq_clk_names[] = { "cpu", NULL };
> > +
> > +/* NOP function to disable OPP from setting clock */
> > +static int airoha_cpufreq_config_clks_nop(struct device *dev,
> > +                                         struct opp_table *opp_table,
> > +                                         struct dev_pm_opp *opp,
> > +                                         void *data, bool scaling_down)
> > +{
> > +       return 0;
> > +}
> > +
> > +static const char * const airoha_cpufreq_pd_names[] = { "perf" };
> > +
> > +static int airoha_cpufreq_set_performance_state(struct generic_pm_domain *domain,
> > +                                               unsigned int state)
> > +{
> > +       const struct arm_smccc_1_2_regs args = {
> > +               .a0 = AIROHA_SIP_AVS_HANDLE,
> > +               .a1 = AIROHA_AVS_OP_FREQ_DYN_ADJ,
> > +               .a3 = state,
> > +       };
> > +       struct arm_smccc_1_2_regs res;
> > +
> > +       arm_smccc_1_2_smc(&args, &res);
> > +
> > +       /* SMC signal correct apply by unsetting BIT 0 */
> > +       return res.a0 & BIT(0) ? -EINVAL : 0;
> > +}
> > +
> > +static int airoha_cpufreq_probe(struct platform_device *pdev)
> > +{
> > +       const struct dev_pm_domain_attach_data attach_data = {
> > +               .pd_names = airoha_cpufreq_pd_names,
> > +               .num_pd_names = ARRAY_SIZE(airoha_cpufreq_pd_names),
> > +               .pd_flags = PD_FLAG_DEV_LINK_ON | PD_FLAG_REQUIRED_OPP,
> > +       };
> > +       struct dev_pm_opp_config config = {
> > +               .clk_names = airoha_cpufreq_clk_names,
> > +               .config_clks = airoha_cpufreq_config_clks_nop,
> > +       };
> > +       struct platform_device *cpufreq_dt;
> > +       struct airoha_cpufreq_priv *priv;
> > +       struct device *dev = &pdev->dev;
> > +       const struct clk_init_data init = {
> > +               .name = "cpu",
> > +               .ops = &airoha_cpufreq_clk_ops,
> > +               /* Clock with no set_rate, can't cache */
> > +               .flags = CLK_GET_RATE_NOCACHE,
> > +       };
> > +       struct generic_pm_domain *pd;
> > +       struct device *cpu_dev;
> > +       int ret;
> > +
> > +       /* CPUs refer to the same OPP table */
> > +       cpu_dev = get_cpu_device(0);
> > +       if (!cpu_dev)
> > +               return -ENODEV;
> > +
> > +       priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> > +       if (!priv)
> > +               return -ENOMEM;
> > +
> > +       /* Init and register a get-only clk for Cpufreq */
> > +       priv->hw.init = &init;
> > +       ret = devm_clk_hw_register(dev, &priv->hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_simple_get,
> > +                                         &priv->hw);
> > +       if (ret)
> > +               return ret;
> > +
> > +       /* Init and register a PD for Cpufreq */
> > +       pd = &priv->pd;
> > +       pd->name = "cpu_pd";
> > +       pd->flags = GENPD_FLAG_ALWAYS_ON;
> > +       pd->set_performance_state = airoha_cpufreq_set_performance_state;
> > +
> > +       ret = pm_genpd_init(pd, NULL, false);
> > +       if (ret)
> > +               return ret;
> > +
> > +       ret = of_genpd_add_provider_simple(dev->of_node, pd);
> > +       if (ret)
> > +               goto err_add_provider;
> > +
>
> To me, the above code belongs in a power-domain provider driver. While
> the below should be taken care of in cpufreq-dt, except for the device
> registration of the cpufreq-dt device, I guess.
>
> Viresh, what's your view on this?
>
> > +       /* Set OPP table conf with NOP config_clks */
> > +       priv->opp_token = dev_pm_opp_set_config(cpu_dev, &config);
> > +       if (priv->opp_token < 0) {
> > +               ret = priv->opp_token;
> > +               dev_err(dev, "Failed to set OPP config\n");
> > +               goto err_set_config;
> > +       }
> > +
> > +       /* Attach PM for OPP */
> > +       ret = dev_pm_domain_attach_list(cpu_dev, &attach_data,
> > +                                       &priv->pd_list);
> > +       if (ret)
> > +               goto err_attach_pm;
> > +
> > +       cpufreq_dt = platform_device_register_simple("cpufreq-dt", -1, NULL, 0);
> > +       ret = PTR_ERR_OR_ZERO(cpufreq_dt);
> > +       if (ret) {
> > +               dev_err(dev, "failed to create cpufreq-dt device: %d\n", ret);
> > +               goto err_register_cpufreq;
> > +       }
> > +
> > +       priv->cpufreq_dt = cpufreq_dt;
> > +       platform_set_drvdata(pdev, priv);
> > +
> > +       return 0;
> > +
> > +err_register_cpufreq:
> > +       dev_pm_domain_detach_list(priv->pd_list);
> > +err_attach_pm:
> > +       dev_pm_opp_clear_config(priv->opp_token);
> > +err_set_config:
> > +       of_genpd_del_provider(dev->of_node);
> > +err_add_provider:
> > +       pm_genpd_remove(pd);
> > +
> > +       return ret;
> > +}
> > +
> > +static void airoha_cpufreq_remove(struct platform_device *pdev)
> > +{
> > +       struct airoha_cpufreq_priv *priv = platform_get_drvdata(pdev);
> > +
> > +       platform_device_unregister(priv->cpufreq_dt);
> > +
> > +       dev_pm_domain_detach_list(priv->pd_list);
> > +
> > +       dev_pm_opp_clear_config(priv->opp_token);
> > +
> > +       of_genpd_del_provider(pdev->dev.of_node);
> > +       pm_genpd_remove(&priv->pd);
> > +}
> > +
> > +static const struct of_device_id airoha_cpufreq_of_match[] = {
> > +       { .compatible = "airoha,en7581-cpufreq" },
> > +       { },
> > +};
> > +MODULE_DEVICE_TABLE(of, airoha_cpufreq_of_match);
> > +
> > +static struct platform_driver airoha_cpufreq_driver = {
> > +       .probe = airoha_cpufreq_probe,
> > +       .remove = airoha_cpufreq_remove,
> > +       .driver = {
> > +               .name = "airoha-cpufreq",
> > +               .of_match_table = airoha_cpufreq_of_match,
> > +       },
> > +};
> > +module_platform_driver(airoha_cpufreq_driver);
> > +
> > +MODULE_AUTHOR("Christian Marangi <ansuelsmth@gmail.com>");
> > +MODULE_DESCRIPTION("CPUfreq driver for Airoha SoCs");
> > +MODULE_LICENSE("GPL");
> > diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> > index 9c198bd4f7e9..2aa00769cf09 100644
> > --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> > +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> > @@ -103,6 +103,8 @@ static const struct of_device_id allowlist[] __initconst = {
> >   * platforms using "operating-points-v2" property.
> >   */
> >  static const struct of_device_id blocklist[] __initconst = {
> > +       { .compatible = "airoha,en7581", },
> > +

I had a closer look at cpufreq-dt. Not sure if it makes sense, but to
me it seems like we should extend it to support attaching cpu-devices
to their performance domains (power-domains). In this way, we can
avoid adding the airoha compatible above to the blocklist.

Christian, do you want to take a stab at this - or just let me know
and I can try to draft a patch for cpufreq-dt with this?

> >         { .compatible = "allwinner,sun50i-a100" },
> >         { .compatible = "allwinner,sun50i-h6", },
> >         { .compatible = "allwinner,sun50i-h616", },
> > --
> > 2.45.2
> >

Kind regards
Uffe

