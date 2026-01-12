Return-Path: <devicetree+bounces-253853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 927EFD1204D
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 11:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DA09A3078EF1
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 10:48:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B098A34AAF3;
	Mon, 12 Jan 2026 10:48:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b="E48zNa7Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268A34BA24
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 10:48:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768214895; cv=none; b=cYn9ulFk7svQ/jUFCJUgpVmd3fnuJaAGDdvEj9r86CXPh5FVCFJcXKNbIsMpjfLJYbW3ly8Yud57JNAwIjeTLyE75YxxEbFIKQKWeBcYKofaxhJDt+LxN/XpsOV7/2/jrMKI9mSCm4ucR4zoLuZP/M3pkjIdNQmTvZg9JnBD9ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768214895; c=relaxed/simple;
	bh=h9irR6eVurAKciv1oXiCxDlOjpaZDVtUtq4Z9myQB5A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rYU/IAZqLSUzaWuV8PqzdxyFtonF4KCGreNXujzZwPVRVnFSdX4zTUlDpW/eSw4tQX66gkrd0flFY7wiu9BT7frpiG9a+ZHCEnS4WOGzMEukHR7IFJtVTYZFqVlIBtWB5Yce6W+g8hQY2n7/guNBXd8p1SAFo97jhZOo7X8++zU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net; spf=pass smtp.mailfrom=summations.net; dkim=pass (2048-bit key) header.d=summations-net.20230601.gappssmtp.com header.i=@summations-net.20230601.gappssmtp.com header.b=E48zNa7Q; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=summations.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=summations.net
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-7927b1620ddso17162317b3.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 02:48:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=summations-net.20230601.gappssmtp.com; s=20230601; t=1768214890; x=1768819690; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=tYqnD643rP0xFCjQr1d58+6MQqBgB19G/KQFekbT4n4=;
        b=E48zNa7QgIsiDM+/VfNv2N5LbC2E8RoIoB+iUzN0+D5FlCOUUkqJ5fhRDVKGz7ATM7
         qlj/moOY0pmZ9F152DGWGTM73glzQNCVBevGRmK1njq6/7pEx+BS3Ap3ofQZ9l34YgMz
         4qZYPRugvrofzX/jB6QErWrKvZ50nUh9fIpCas3LMWdaMtjgWR8f7ikRAXkpNXAeaEi0
         rcYrDYIjp4K0kcMjaiP3NZf2OhSSpjeyfzhTrAyEwcIgKB/nTrS7lT5A8l4kuouSl1T1
         ssWzx14T1CPDymF6HEyjFyuBNbKUB9c/7p1W9CA5asGQVxccIn4vh8d/9ZJos1c1jEGF
         2nnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768214890; x=1768819690;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tYqnD643rP0xFCjQr1d58+6MQqBgB19G/KQFekbT4n4=;
        b=K9BomezKWTEzb8vpzc7s4CDttchgYS2DFYx3GxMwfQBWnt7nrVRSYQil99cKJrWgoR
         WFM7KHpjAXoILKvPFvos6/rSRE7K0koadovDsRaWSbqIh3WxVcCNqAmuxFmLEqkG9zTU
         L85+xazn+3nD5LmcDYse9N5E8NsLTMAjMfOlZbMYd+FzR1CKskVHitBgE1TfN9qKl0Zo
         WmHfIS5av2UpfhwNYBcDVzMmSWNhwvzRKirDDO3O9GXSDJsnelqjquvjEOWrAQVJD8cD
         s6p5z3FaF6oeJRaWUv2lcuduWK80XLlFdCvgFCXKa/0BVDWvurGTH/hXargg9Q+XKHWP
         BVzg==
X-Forwarded-Encrypted: i=1; AJvYcCXFSNUFNhDXnyIxqshq8k/71VHeXZRM/SHBkBmJBQ5X+ShGlmx4wAh05zeK0deF/z73DwAEhmAA3DX/@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0ymoPBtKla8i6um/KXjAbcLFPqKyhknMGPWAEoL4bhTC0XGA9
	q9iEc3KYEBBZh7OVrYmEb/8ipg7ZJY4JxUd5rjiIoWkVTENjhWD8t/t89eiNdSxoyUpJfkVJx3W
	VKOvo/11t50Aj+gj3zJ6RcbQwAIscMGlZFsMoCInVQzY=
X-Gm-Gg: AY/fxX6w8w46sMX7Lfga9meozX9cFaTkv/qvX2asI3NLkEvZd1u+RFy1hkuoFah77H5
	JkHA7FT+y80yigrj5UZCMN+f2Ce9BSHHtVGo8ECWJ0Va44nCLFTCz3uwhMppF6hYptEGr6sans/
	7BpQWPOftokffsH0kLBI4TK8XlhruP+EoBlDg9sutAdelMKg7OufbaZL5BdQccMEFuWtdMfwSSP
	XX3xAaVJnL6aBvBFpx3WPvoJqpajlbYIQ1xbbR6rXfGHTAWoMCOfguxLF8GhM54cIAqlPqvmA46
	hK30/OiRpGJIM+buV5w757vCZm4=
X-Google-Smtp-Source: AGHT+IGSd6S45oI12lA93B0VdFuPS8wsqAp/AtTqvdaME97V+b32RqcikLawp2CIt2dWylh/hgMjUjHf3u3+tihHgL0=
X-Received: by 2002:a05:690e:1209:b0:645:54a9:11d2 with SMTP id
 956f58d0204a3-64716657fdcmr12415884d50.14.1768214889924; Mon, 12 Jan 2026
 02:48:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260106092117.3727152-1-joshua.yeong@starfivetech.com> <20260106092117.3727152-5-joshua.yeong@starfivetech.com>
In-Reply-To: <20260106092117.3727152-5-joshua.yeong@starfivetech.com>
From: Rahul Pathak <rahul@summations.net>
Date: Mon, 12 Jan 2026 16:17:59 +0530
X-Gm-Features: AZwV_QioIQXKqToGHL2PxilyAAbfzG3wtMScBzGleyYaV375JeLJ3r4qOh6p77M
Message-ID: <CABdD5xmVVkQu6rYzF52V-JrsdL=NOQa9N9i8PsMgfaOh3GT-Bg@mail.gmail.com>
Subject: Re: [PATCH 4/5] cpufreq: Add cpufreq driver for the RISC-V RPMI
 performance service group
To: Joshua Yeong <joshua.yeong@starfivetech.com>
Cc: anup@brainfault.org, leyfoon.tan@starfivetech.com, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, pjw@kernel.org, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, rafael@kernel.org, 
	viresh.kumar@linaro.org, sboyd@kernel.org, jms@oss.tenstorrent.com, 
	darshan.prajapati@einfochips.com, charlie@rivosinc.com, 
	dfustini@oss.tenstorrent.com, michal.simek@amd.com, cyy@cyyself.name, 
	jassisinghbrar@gmail.com, andriy.shevchenko@linux.intel.com, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

> +
> +static int rpmi_cpufreq_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct rpmi_perf *mpxy_perf;
> +       struct rpmi_ctx *mpxy_ctx;
> +       int num_domains = 0;
> +       int ret, i;
> +
> +       mpxy_ctx = devm_kzalloc(&pdev->dev, sizeof(*mpxy_ctx), GFP_KERNEL);
> +       if (!mpxy_ctx)
> +               return -ENOMEM;
> +
> +       /* Setup mailbox client */
> +       mpxy_ctx->client.dev            = dev;
> +       mpxy_ctx->client.rx_callback    = NULL;
> +       mpxy_ctx->client.tx_block       = false;
> +       mpxy_ctx->client.knows_txdone   = true;
> +       mpxy_ctx->client.tx_tout        = 0;
> +
> +       /* Request mailbox channel */
> +       mpxy_ctx->chan = mbox_request_channel(&mpxy_ctx->client, 0);
> +       if (IS_ERR(mpxy_ctx->chan))
> +               return PTR_ERR(mpxy_ctx->chan);
> +
> +       ret = rpmi_cpufreq_attr_setup(dev, mpxy_ctx);
> +       if (ret) {
> +               dev_err(dev, "failed to verify RPMI attribute - err:%d\n", ret);
> +               goto fail_free_channel;
> +       }
> +
> +       /* Get number of performance domain */
> +       ret = rpmi_perf_get_num_domains(mpxy_ctx, &num_domains);
> +       if (ret) {
> +               dev_err(dev, "invalid number of perf domains - err:%d\n", ret);
> +               goto fail_free_channel;
> +       }

The domain space in RPMI performance for CPU and Device
is not separate and a domain can be either CPU or a Device.
How the driver will make sure that the domains which are returned
are CPU only and not the device.

> +MODULE_DEVICE_TABLE(of, rpmi_cpufreq_of_match);
> +
> +static struct platform_driver rpmi_cpufreq_platdrv = {
> +       .driver = {
> +               .name = "riscv-rpmi-performance",
> +               .of_match_table = rpmi_cpufreq_of_match,
> +       },
> +       .probe = rpmi_cpufreq_probe,
> +       .remove = rpmi_cpufreq_remove,
> +};
> +
> +module_platform_driver(rpmi_cpufreq_platdrv);
> +
> +MODULE_AUTHOR("Joshua Yeong <joshua.yeong@starfivetech.com>");
> +MODULE_DESCRIPTION("CPUFreq Driver based on SBI MPXY extension");

NIT: CPUFreq driver based on SBI MPXY extension and RPMI protocol   -
something like this

> +MODULE_LICENSE("GPL");

