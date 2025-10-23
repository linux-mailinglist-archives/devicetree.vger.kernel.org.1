Return-Path: <devicetree+bounces-230352-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E21C01A69
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 16:09:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 974E03B9BFD
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 14:00:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C2E132D7F7;
	Thu, 23 Oct 2025 13:58:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D5A3320CA2
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 13:58:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761227931; cv=none; b=FnmELAm58DwXQ5wUnVGhqflQDUrzauHpR0lMEstkcBSJN1tiU/KLGNQ4i+mmQWi44UcrjKEzlfl71I7Jnj4+iG+6zKujFbhX/v3MnixXt6p/VcIym1Q+2cLbMDNMq7ct/41rrpo/3et1+EV6l6FDPC8dE8FenZZ73HH8S+hpswg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761227931; c=relaxed/simple;
	bh=70l9t4VdfE1npK3VaiMwUNG+xoIszb0NPTKI/djYJrM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qbEsVOWzJS3mS7SHMfKP//2uMJrnf/Krw5wyLeV2YInWAhS6LHR3dpVpFwwahqglN4+RahS64ZItBU4TxoS2DxwICqhPtXxeeO8lriR9AKXrAcxwFBdxerC7TNELFtLF/QKZj5tBLrnO+cpC+HGqOG0Dulrx015aPKUSmhFTH7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5db385e07a6so132319137.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761227928; x=1761832728;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LHznA4IxR0ryi2cJoCEHN+kBwQ2XKkkZXeR8LA/d1QU=;
        b=sBrUlVt5beTCsK/AITHSHjhMm64VLeCaiRIimlWHg0Y/IAxlQ5dWM/Ec68Ibdrxo2W
         LepFXoXKoQfu730da8OaX164ITKM3vkCTQ8oHUztJxbGiXx6ZwfQyxDeuMm5aO/pXL5D
         5lyIW6I72dPdvK8/KKh9YLTfn/Fg/25D73tIvFuWnH8UYMBa7ADdLPO2DzAmmyAI8Xhm
         6znTK24N9NxOGeyHC3jAz0lW2HmNf5IGg6XPT+HzTOJRzCcFiMldK8mlWNua+FhgegWr
         VaLIeYo6hP2XD3i5JIF47tDAIfELtGTG0QKuIwOsiOpn15NUDvSruqCf7CzvEaj2gL8C
         K7ag==
X-Forwarded-Encrypted: i=1; AJvYcCWfxIwzfk4WeifKlsyjJyWfWxhNu/KHBkQzAca7wY2llVTJio61X1Z3x+aAW2T2mSxFi+x6bsuiXixT@vger.kernel.org
X-Gm-Message-State: AOJu0YwCrmDO2IJ8wnTEK7/i3XvlQE+Tsd4qkOwkY4IIxwCzozuhucBJ
	9RxMarcTbfmLQ6a/ktUIqobGDjW9LeprIhOcKhpwHIl8xDBSuroqXTjiqyQNzkri
X-Gm-Gg: ASbGncun+ev+F+79buLcmjeHO6Kv7dvBSsUuC0JHnf49bOGUa7rt6m3DgPAZlmePWrR
	gUnYCJAVQYhuHrxB0UpxWcvJnsj561XgRNpFLbEXpmeWTBR+fTomHDZ/PHawNtiRxJ0t8Zy5Gts
	VeAa5rMmD8AeyDPwnzi9P4yR6ejU5swhMYCzLqqMs52mRjxGq4bJApycRrjtnTNHx4DfVVYBe3z
	YR6syAsoq/OyIp/olEZ7LlLqkzB+D5V7Qn5UFUgGQsHWKlnfpjeWuxqr71SLSmygZGFSu02aOLQ
	eppMO+B1Ik9sPvsxbangFO0Ye0yW22LWRfqoH0TjShfuD7PQyl5TOfm+AEmWPGYvIjyNMf4Dvoa
	mr9vBQ/LfLqckJIU4eMqQYPrwSqL2r/uUX4fKqb2J31AIOocbR69BHGpk8bamuGL2IwRs53pnPy
	Rf+NwMrl3kwEwl5Nb1jgBGQ6hoIj4VyZYrEpOE5TL+/nqQuf6Q
X-Google-Smtp-Source: AGHT+IHqtoIvZUSvKT6ZS3EyKeL/v0WWYjBxe82KebI/VgU4V4uD+1h2Vb8sJGiGanBKhBUFm6KiqQ==
X-Received: by 2002:a05:6102:54aa:b0:5d5:f6ae:38d0 with SMTP id ada2fe7eead31-5d7dd6da309mr7045594137.37.1761227928204;
        Thu, 23 Oct 2025 06:58:48 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5db2c77bc89sm875131137.3.2025.10.23.06.58.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 06:58:47 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db37a935f1so151788137.1
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 06:58:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVltxunTokJc4zvser+x/JZpHIPJ4nwze1ydqHKvvYcUuHImCBUjypPk7vQZLSP7G1turarvHTSPK1o@vger.kernel.org
X-Received: by 2002:a05:6102:c09:b0:5db:3935:1636 with SMTP id
 ada2fe7eead31-5db393518f0mr253967137.26.1761227926239; Thu, 23 Oct 2025
 06:58:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009-clk-ssc-v5-1-v5-0-d6447d76171e@nxp.com> <20251009-clk-ssc-v5-1-v5-6-d6447d76171e@nxp.com>
In-Reply-To: <20251009-clk-ssc-v5-1-v5-6-d6447d76171e@nxp.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 23 Oct 2025 15:58:35 +0200
X-Gmail-Original-Message-ID: <CAMuHMdU-UkzLnrPpBVyMH0DtgubxE_spUYbxtpO+5dmkFFqdcQ@mail.gmail.com>
X-Gm-Features: AWmQ_bl-Wzz5qd5CCY2fSVugSIzDYGwiZQethxZEtHbYBjXjOaCfH3VbWwjwxpU
Message-ID: <CAMuHMdU-UkzLnrPpBVyMH0DtgubxE_spUYbxtpO+5dmkFFqdcQ@mail.gmail.com>
Subject: Re: [PATCH v5 6/6] clk: scmi: Add i.MX95 OEM extension support for
 SCMI clock driver
To: Peng Fan <peng.fan@nxp.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Sebin Francis <sebin.francis@ti.com>, Brian Masney <bmasney@redhat.com>, 
	Dan Carpenter <dan.carpenter@linaro.org>, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	arm-scmi@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Peng,

On Thu, 9 Oct 2025 at 05:49, Peng Fan <peng.fan@nxp.com> wrote:
>  - Introduce 'clk-scmi-oem.c' to support vendor-specific OEM extensions
>    for the SCMI clock driver, allows clean integration of vendor-specific
>    features without impacting the core SCMI clock driver logic.
>  - Extend 'clk-scmi.h' with 'scmi_clk_oem' structure and related declarations.
>  - Initialize OEM extensions via 'scmi_clk_oem_init()'.
>  - Support querying OEM-specific features and setting spread spectrum.
>  - Pass 'scmi_device' to 'scmi_clk_ops_select()' for OEM data access.
>
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Thanks for your patch!

> --- /dev/null
> +++ b/drivers/clk/clk-scmi-oem.c
> @@ -0,0 +1,103 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * The Vendor OEM extension for System Control and Power Interface (SCMI)
> + * Protocol based clock driver
> + *
> + * Copyright 2025 NXP
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/of.h>
> +#include <linux/scmi_imx_protocol.h>
> +#include <linux/scmi_protocol.h>
> +
> +#include "clk-scmi.h"
> +
> +#define SCMI_CLOCK_CFG_IMX_SSC                 0x80
> +#define SCMI_CLOCK_IMX_SS_PERCENTAGE_MASK      GENMASK(7, 0)
> +#define SCMI_CLOCK_IMX_SS_MOD_FREQ_MASK                GENMASK(23, 8)
> +#define SCMI_CLOCK_IMX_SS_ENABLE_MASK          BIT(24)
> +
> +struct scmi_clk_oem_info {
> +       char *vendor_id;
> +       char *sub_vendor_id;
> +       char *compatible;
> +       const void *data;
> +};
> +
> +static int
> +scmi_clk_imx_set_spread_spectrum(struct clk_hw *hw,
> +                                const struct clk_spread_spectrum *ss_conf)
> +{
> +       struct scmi_clk *clk = to_scmi_clk(hw);
> +       int ret;
> +       u32 val;
> +
> +       /*
> +        * extConfigValue[7:0]   - spread percentage (%)
> +        * extConfigValue[23:8]  - Modulation Frequency

What is the unit of this?
According to the code below, it is in Hz, so it is limited to 65535 Hz.

> +        * extConfigValue[24]    - Enable/Disable
> +        * extConfigValue[31:25] - Reserved

Center, up, down, could be stored here, I assume?

> +        */
> +       val = FIELD_PREP(SCMI_CLOCK_IMX_SS_PERCENTAGE_MASK, ss_conf->spread_bp / 10000);
> +       val |= FIELD_PREP(SCMI_CLOCK_IMX_SS_MOD_FREQ_MASK, ss_conf->modfreq_hz);
> +       if (ss_conf->method != CLK_SPREAD_NO)
> +               val |= SCMI_CLOCK_IMX_SS_ENABLE_MASK;
> +       ret = scmi_proto_clk_ops->config_oem_set(clk->ph, clk->id,
> +                                                SCMI_CLOCK_CFG_IMX_SSC,
> +                                                val, false);
> +       if (ret)
> +               dev_warn(clk->dev,
> +                        "Failed to set spread spectrum(%u,%u,%u) for clock ID %d\n",
> +                        ss_conf->modfreq_hz, ss_conf->spread_bp, ss_conf->method,
> +                        clk->id);
> +
> +       return ret;
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

