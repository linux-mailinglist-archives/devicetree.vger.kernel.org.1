Return-Path: <devicetree+bounces-178417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6442BABBBE7
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 34C8C188ADCC
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A37D626C39C;
	Mon, 19 May 2025 11:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rr8LjH/g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCB4E224895
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747652641; cv=none; b=VIPzEECU8qHvWJGtJ4SJd/2wFYAcdnzknHqZn0EqOgLVZQ3+PIa93H85/fZT0kU6qW43KxwfXhKzuEXeUZkf0cgMyBPw6Uv3wTPar1sMx2sebS6Vpw3TqcWfGTWhbcyIvZJAe3UQkFexwBrY0fUtI8guNikqRD2iF5m3Ue2ocUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747652641; c=relaxed/simple;
	bh=1RBzsBUZFE4oAcdXsB1WfJqMcomnc+3kLNPimm2/Js0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M8NL0yyvdayHRvpMcjX/PkMbexG7jK6eeKSEdWv9kGE3oYGKA60+8otim3nnKig7VfgnzL4LBA1+4VPPmURLkjHh0fklqrfT1mARgySqQPnYvfzjzhzBEwbWPMwFSFCkNTjcHt7ovsnuxKr9EIy0ZHi2t4xkxS76/r7q8ViW8kE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=rr8LjH/g; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e733a6ff491so3840986276.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 04:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747652638; x=1748257438; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m2xHnKKd+aDHtHX8yu3cDHfKWt8EXdtJaGR+RnU/oP8=;
        b=rr8LjH/gG4slvKuc0V76sG5OVPs0h3bjANayyI78wvCtvXieViWL/2vgvQSJDSNDlQ
         qmBO6+5FsWPwfCV6tX1LWzDY/EvW5mpCHC3348LCPbhPnKa3LfmGZ6QYBcFqQS8KMx2/
         pfszTrEE/qsvmpMAB3BNTtf77f5mT2sDhInafL/jczjbyrgaBViY5vRVN54kgvkIV0Gn
         m4P1SAkijwOt3ijVO5pWvVRHYYSqgmrjF4vVpd2+Lb9d5ayVuCbgrOcdI1SypE5Qwd5Q
         xCk4LTj4syBZG9AegaylZQgzG0oE1uz+lJksuG2Sh6OTdTIPpXVjvDMyXmrCpH1B8sqL
         U7Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747652638; x=1748257438;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m2xHnKKd+aDHtHX8yu3cDHfKWt8EXdtJaGR+RnU/oP8=;
        b=mDlC/rngwc6Sei0ey/X6luqG1lerpl0hHaA4K9pO+C5nZFJ7LMrvz5twAnVqBb38Rd
         qTkDXBnYQFln0n2dEbJHMmzbBiWXsToAvSw4zn/78FxtN8rHPZo0A7+ny7FjniOjzlp5
         lBu6fmtwt6kU/ZgIRbS6ujtYIcfzX8pt3tJMihccSClp5+TW0bsmWIKlEqJ9n4HurxnB
         PCsz6UftsYDFGMbE9X6ZzwT1iOs2gISKhqJ7G2CmeMgPu/E5DSjm+qsoyVKfN5cDSAQV
         rCrj5SFwBLAQkQHUiTYCUXeisAy2AQHW4QRVpHqTVLWdclrS4wqlqS8Uw8r4iQisXprF
         jpCA==
X-Forwarded-Encrypted: i=1; AJvYcCWsFTkTd8o5X+iBMI+/b3FuywjgDQoB3BrKPunvVuu0ym1g9KVPI+0gW8O8ups7rNx4mWOl+RXSb2wq@vger.kernel.org
X-Gm-Message-State: AOJu0YyjwHv2H34v7S1o/EHT51vvdQSW3R8Wt0B9i3USoK1xczMt22qv
	Qqff8Al7br4mEAHT3mzKvQyMJ6Ke8wEGZdaOL8E5RhpY2SvS0dm0/pD/SXgvrMRlygjVJCL/Yy4
	CdboYwdJWFquYAGTy7pDyQEedUeFIL747XLAjDK6oEBpXkKCo/oNUsAIb7Q==
X-Gm-Gg: ASbGncuBx0MGHg8LrKOYS/+gen6+JK0BPFqINeLkuq36LcCm0kXdiazrba/0WYJqTud
	0kroq/IMn3gP9X2+8SKRtaX24LiZnXK2Z+xuSTMPA9XurQFys8YZ724Lbt4mJTAB5vEyMo+7e/o
	A07EpA2L12YE+lKG/fSAkV/9zN6k4iz9b+2A==
X-Google-Smtp-Source: AGHT+IFBUb2/Xms/raeEGwi+8becFxoSstWr/BLkHMpPNO+AziHGedBdCZ+gSklzRXJEASSnQ0GOSObcwPcchKsfqNQ=
X-Received: by 2002:a05:6902:170a:b0:e7b:6893:d5ec with SMTP id
 3f1490d57ef6-e7b6d40269emr15160872276.20.1747652638618; Mon, 19 May 2025
 04:03:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1746581751.git.zhoubinbin@loongson.cn> <1308b6ca9ffc2674cc0f089cfd163da87e53a8cd.1746581751.git.zhoubinbin@loongson.cn>
In-Reply-To: <1308b6ca9ffc2674cc0f089cfd163da87e53a8cd.1746581751.git.zhoubinbin@loongson.cn>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 19 May 2025 13:03:22 +0200
X-Gm-Features: AX0GCFtVcITX1kDzetWV6A9kXMJvvFjktirKyT439flna1xTvzKDXV6wLcfl6Dc
Message-ID: <CAPDyKFouNpdnQSXBxRmKhECyojrT_TkCpgg01GHbzQpuYFvEZg@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] mmc: loongson2: Add Loongson-2K SD/SDIO controller driver
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>, Huacai Chen <chenhuacai@loongson.cn>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mmc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 7 May 2025 at 09:28, Binbin Zhou <zhoubinbin@loongson.cn> wrote:
>
> The MMC controllers on the Loongson-2K series CPUs are similar,
> except for the interface characteristics and the use of DMA controllers.
>
> This patch describes the MMC controllers on the Loongson-2K0500/2K1000,
> with the distinguishing feature being the use of an externally shared
> APBDMA engine.
>
> Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>

[...]

> +
> +static void loongson2_mmc_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
> +{
> +       struct loongson2_mmc_host *host = mmc_priv(mmc);

As we now have support for regulators, we should use them here too.

Some something along the lines of this at MMC_POWER_OFF:
if (!IS_ERR(mmc->supply.vmmc))
      mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, 0);

and at MMC_POWER_UP:
if (!IS_ERR(mmc->supply.vmmc))
      mmc_regulator_set_ocr(mmc, mmc->supply.vmmc, ios->vdd);

> +
> +       switch (ios->power_mode) {
> +       case MMC_POWER_ON:

Is the fallthrough really what we want here?

MMC_POWER_ON is used quite frequently when changing various ios
settings when the core calls mmc_set_ios(). MMC_POWER_UP is set only
once in mmc_power_up().

> +       case MMC_POWER_UP:
> +               regmap_write(host->regmap, LOONGSON2_MMC_REG_CTL, LOONGSON2_MMC_CTL_RESET);
> +               mdelay(10);
> +               regmap_write(host->regmap, LOONGSON2_MMC_REG_CTL, LOONGSON2_MMC_CTL_EXTCLK);
> +               regmap_write(host->regmap, LOONGSON2_MMC_REG_INT, LOONGSON2_MMC_IEN_ALL);
> +               regmap_write(host->regmap, LOONGSON2_MMC_REG_IEN, LOONGSON2_MMC_INT_CLEAR);
> +               break;
> +       case MMC_POWER_OFF:
> +               regmap_update_bits(host->regmap, LOONGSON2_MMC_REG_CTL,
> +                                  LOONGSON2_MMC_CTL_RESET, LOONGSON2_MMC_CTL_RESET);
> +               return;
> +       default:
> +               return;
> +       }
> +
> +       loongson2_mmc_set_clk(host, ios);
> +
> +       host->bus_width = ios->bus_width;
> +}
> +

[...]

> +
> +static void loongson2_mmc_enable_sdio_irq(struct mmc_host *mmc, int enable)
> +{
> +       struct loongson2_mmc_host *host = mmc_priv(mmc);
> +
> +       regmap_update_bits(host->regmap, LOONGSON2_MMC_REG_IEN,
> +                          LOONGSON2_MMC_INT_SDIOIRQ, enable);
> +}
> +
> +static struct mmc_host_ops loongson2_mmc_ops = {
> +       .request        = loongson2_mmc_request,
> +       .set_ios        = loongson2_mmc_set_ios,
> +       .get_ro         = mmc_gpio_get_ro,
> +       .get_cd         = mmc_gpio_get_cd,
> +       .enable_sdio_irq = loongson2_mmc_enable_sdio_irq,

The ->ack_sdio_irq() callback needs to be implemented too.

Moreover we need to set MMC_CAP2_SDIO_IRQ_NOTHREAD.

[...]

Kind regards
Uffe

