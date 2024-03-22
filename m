Return-Path: <devicetree+bounces-52467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 437C4886BC0
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 12:59:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AEF65B249D6
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 11:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925883FB96;
	Fri, 22 Mar 2024 11:59:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hcqNHLCm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4802720DC5
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 11:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711108756; cv=none; b=DNQrtFW6JyQp8uS2OoyS//jXXn3cS3z5iVjncbD197eRDX8VMba93pP6rViUfMduFzyOHqrsjcovhPuoS93qC1daKjxyFfnDDjzzIu+xKqGGq1oRvvCmgf3VfoaaiUZwwsXw1qiNBFJ6BbAqjMrntwezVINcLJvuBDa+2SGvUXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711108756; c=relaxed/simple;
	bh=F5qQEjR1qoUONAo/BOL5ZuFSbThfYIkAdM7hUNQyGYM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=F2s9Q5T00u24ZyzuCaIQjp/EvQv1U9V+veLuHCmtbPHQK4VKPFJdQ6jM20YZxthMYH3Cy/ksGVaUoUBUz1xvdCSxrFI6imukX6vgQ2ItRvWDyZ6lY8MSNR63oWqD66x+uefda3E+R0G13kxZgDSrJ+fiVqei2f7RfQPARk0EGVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hcqNHLCm; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-dcbd1d4904dso2125019276.3
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 04:59:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711108753; x=1711713553; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=EJ4qxaRb0DnjjjwFv0BXf+jboY67mKdpnlHN78YiQb4=;
        b=hcqNHLCmv6/ppg899tmnHYxq8A8LGwupUJFWZRZnbYd8akLT3t39JJzGCsDNSSfObA
         ImrO7GLQGs43QZDm+uiGwR19JjU8eUaWTiCs1Z6EdNWoPGMKI8on5u/V5CT6+//M3HNO
         PW2R9bW6/v0o9pm5E53zyMHogJdNmba4ltzHMEMTJ16tRJpOL3XvDi4oQQEYD++DlCWN
         7MOHEK3x+gQwkcs1Vk86Ot0BIPl2roiXXPuJI6WhTY7bxg/VhAKdZ1HMOgg/kzekeyxm
         QmhYRb05BeKxPbyGJYmySQtS+QqB7dqRVsog0b8NoUbPc9ONqJXuB58ePz4xNCDjDlXy
         cXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711108753; x=1711713553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EJ4qxaRb0DnjjjwFv0BXf+jboY67mKdpnlHN78YiQb4=;
        b=cObrMEjJ6/HcbiD9ysUDlakEfF2FSxH6A4/Tw0ozZf5tfd7h1tn81iW42Z3UZ4qB3e
         a3EstSfDXoh/H2HbThc+U0aQklP8qNP1U7tVD4vtHERYN/pOXRk8vZ6xagoa+aMquzaE
         R/QIIRUXDlUVrgV/qLuIHMA6lDX7tjXUTYoajUxs/siavrjGG1jX14L+WJ373yOCBbjI
         KHRtVU0yEsQg7ltV8nkMGvH99ljjwGobVErSnrTFFGwBZ9F2Hm80MUAUebrPb3L6qQD8
         Qd7OCUMVeWmCzMnncVIpxaX42h0KOupIWHvItchcZWTmg6HDpkI7fnVARmCIHQaxC60f
         SHOA==
X-Forwarded-Encrypted: i=1; AJvYcCUwOf0TBpIFZgFsvS47MGkWCmlGY5oCH5txh8fb35JH+LpNjCjODlgSMXgrdmuxZUAcNd4rpyueGdpRISH8KqRuf+6ODrNKrG19kA==
X-Gm-Message-State: AOJu0Yx5twUaKOV74fqPcV2Hgiyw4ES0cvM4vP+Fub/SAI4+fviUdW67
	cKn0DKGujzJDaj0R+vUfaTVvyBUMYy4f6LoHAmdP8n6NjonbBLf3MveTJe8LpltVzaJs8vy91MW
	Gb3+UO3HJKYpPN47ffs1FSg2lAreU40fkArBtjQ==
X-Google-Smtp-Source: AGHT+IG4PJW4EkXp9yDhjzJ9l54D0Nbyr3MBR5vOvVMeILc9lQZSEahak/8wu01jB44Tr5IqY8iB3AdtW6Nd5h+Z18E=
X-Received: by 2002:a05:6902:50e:b0:dda:aa3e:73fc with SMTP id
 x14-20020a056902050e00b00ddaaa3e73fcmr1783046ybs.41.1711108753359; Fri, 22
 Mar 2024 04:59:13 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
 <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-3-3ec0a966d52f@linaro.org>
 <CAA8EJpoJWKZcZu3SY2P9dpYQ_KXkimRXNhAKfaOreCGZ1muYqw@mail.gmail.com> <1dc187c1-2005-486f-a9dd-6648cf52ab70@linaro.org>
In-Reply-To: <1dc187c1-2005-486f-a9dd-6648cf52ab70@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Mar 2024 13:59:02 +0200
Message-ID: <CAA8EJprwAqCSpey0scgPHKEW7=DMKoh7EBmL2jtktKLwMM+rCQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/7] phy: qcom: qmp-pcie: register second optional PHY
 AUX clock
To: neil.armstrong@linaro.org
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Mar 2024 at 12:45, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> On 22/03/2024 11:41, Dmitry Baryshkov wrote:
> > On Fri, 22 Mar 2024 at 11:43, Neil Armstrong <neil.armstrong@linaro.org> wrote:
> >>
> >> The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock,
> >> add the code to register it for PHYs configs that sets a aux_clock_rate.
> >>
> >> In order to get the right clock, add qmp_pcie_clk_hw_get() which uses
> >> the newly introduced QMP_PCIE_PIPE_CLK & QMP_PCIE_PHY_AUX_CLK clock
> >> IDs and also supports the legacy bindings by returning the PIPE clock
> >> when #clock-cells=0.
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> >
> > Small question below.
> >
> >> ---
> >>   drivers/phy/qualcomm/phy-qcom-qmp-pcie.c | 78 ++++++++++++++++++++++++++++++--
> >>   1 file changed, 75 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> index e8da2e9146dc..6c9a95e62429 100644
> >> --- a/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-pcie.c
> >> @@ -22,6 +22,8 @@
> >>   #include <linux/reset.h>
> >>   #include <linux/slab.h>
> >>
> >> +#include <dt-bindings/phy/phy-qcom-qmp.h>
> >> +
> >>   #include "phy-qcom-qmp-common.h"
> >>
> >>   #include "phy-qcom-qmp.h"
> >> @@ -2389,6 +2391,9 @@ struct qmp_phy_cfg {
> >>
> >>          /* QMP PHY pipe clock interface rate */
> >>          unsigned long pipe_clock_rate;
> >> +
> >> +       /* QMP PHY AUX clock interface rate */
> >> +       unsigned long aux_clock_rate;
> >>   };
> >>
> >>   struct qmp_pcie {
> >> @@ -2420,6 +2425,7 @@ struct qmp_pcie {
> >>          int mode;
> >>
> >>          struct clk_fixed_rate pipe_clk_fixed;
> >> +       struct clk_fixed_rate aux_clk_fixed;
> >>   };
> >>
> >>   static inline void qphy_setbits(void __iomem *base, u32 offset, u32 val)
> >> @@ -3686,6 +3692,62 @@ static int phy_pipe_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >>          return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >>   }
> >>
> >> +/*
> >> + * Register a fixed rate PHY aux clock.
> >> + *
> >> + * The <s>_phy_aux_clksrc generated by PHY goes to the GCC that gate
> >> + * controls it. The <s>_phy_aux_clk coming out of the GCC is requested
> >> + * by the PHY driver for its operations.
> >> + * We register the <s>_phy_aux_clksrc here. The gcc driver takes care
> >> + * of assigning this <s>_phy_aux_clksrc as parent to <s>_phy_aux_clk.
> >> + * Below picture shows this relationship.
> >> + *
> >> + *         +---------------+
> >> + *         |   PHY block   |<<---------------------------------------------+
> >> + *         |               |                                               |
> >> + *         |   +-------+   |                      +-----+                  |
> >> + *   I/P---^-->|  PLL  |---^--->phy_aux_clksrc--->| GCC |--->phy_aux_clk---+
> >> + *    clk  |   +-------+   |                      +-----+
> >> + *         +---------------+
> >> + */
> >> +static int phy_aux_clk_register(struct qmp_pcie *qmp, struct device_node *np)
> >> +{
> >> +       struct clk_fixed_rate *fixed = &qmp->aux_clk_fixed;
> >> +       struct clk_init_data init = { };
> >> +       int ret;
> >> +
> >> +       ret = of_property_read_string_index(np, "clock-output-names", 1, &init.name);
> >> +       if (ret) {
> >> +               dev_err(qmp->dev, "%pOFn: No clock-output-names index 1\n", np);
> >> +               return ret;
> >> +       }
> >> +
> >> +       init.ops = &clk_fixed_rate_ops;
> >> +
> >> +       fixed->fixed_rate = qmp->cfg->aux_clock_rate;
> >> +       fixed->hw.init = &init;
> >> +
> >> +       return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> +}
> >> +
> >> +static struct clk_hw *qmp_pcie_clk_hw_get(struct of_phandle_args *clkspec, void *data)
> >> +{
> >> +       struct qmp_pcie *qmp = data;
> >> +
> >> +       /* Support legacy bindings */
> >> +       if (!clkspec->args_count)
> >> +               return &qmp->pipe_clk_fixed.hw;
> >> +
> >> +       switch (clkspec->args[0]) {
> >> +       case QMP_PCIE_PIPE_CLK:
> >> +               return &qmp->pipe_clk_fixed.hw;
> >> +       case QMP_PCIE_PHY_AUX_CLK:
> >> +               return &qmp->aux_clk_fixed.hw;
> >
> > Does the absence of the default case trigger a warning if compiled with W=1?
>
> Nop it doesn't with GCC arm-gnu-toolchain-13.2.Rel1-x86_64-aarch64-none-linux-gnu + W=1 and with smatch and C=1

Ok, great!

>
> Neil
>
> >
> >> +       }
> >> +
> >> +       return ERR_PTR(-EINVAL);
> >> +}
> >> +
> >>   static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np)
> >>   {
> >>          int ret;
> >> @@ -3694,9 +3756,19 @@ static int qmp_pcie_register_clocks(struct qmp_pcie *qmp, struct device_node *np
> >>          if (ret)
> >>                  return ret;
> >>
> >> -       ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> >> -       if (ret)
> >> -               return ret;
> >> +       if (qmp->cfg->aux_clock_rate) {
> >> +               ret = phy_aux_clk_register(qmp, np);
> >> +               if (ret)
> >> +                       return ret;
> >> +
> >> +               ret = of_clk_add_hw_provider(np, qmp_pcie_clk_hw_get, qmp);
> >> +               if (ret)
> >> +                       return ret;
> >> +       } else {
> >> +               ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &qmp->pipe_clk_fixed.hw);
> >> +               if (ret)
> >> +                       return ret;
> >> +       }
> >>
> >>          /*
> >>           * Roll a devm action because the clock provider is the child node, but
> >>
> >> --
> >> 2.34.1
> >>
> >>
> >
> >
>


-- 
With best wishes
Dmitry

