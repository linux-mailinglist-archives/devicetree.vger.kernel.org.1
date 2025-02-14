Return-Path: <devicetree+bounces-146661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AF67A35C19
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:02:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D59C216CC1F
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C94425D548;
	Fri, 14 Feb 2025 11:02:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NuQYe3/x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A48D8186E40
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739530947; cv=none; b=IBcWk+niZmLENHGMeM0CTTyVVKqmkbvMs3Cgs4TshMfcjCYVTxmctEYQns4z98af69hgi83Il4wWS80Ulb+BhO3Uj2MVIFDPbTvnGNw6deoRK+945Y/xQxNg8tkySqJazZKZYyMrmoc6BrigjJ5iyaBUyaLblrxD8RtYAhtP91Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739530947; c=relaxed/simple;
	bh=0oIRrtnr+c7cwXNcyE/LI0nu17hvVOSCrYcVsn19aTQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GbnklV0xUaNgcAi0pp6PBQdfflWSrUKi2uo9Du6KvMLlO3Av+Yfd16ZRKYLLFoFpmXJQdmKMcv5jHWs5saLtoWwBtoizNCfkSylLT1CmbYTXFnzoHWJkYAZMh3byQnZb7XWDetrj/jjptlqTpFtx8D9mUlpzWypuLYlZcI1sFm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NuQYe3/x; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-e5dab3f37b1so1582579276.0
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:02:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739530943; x=1740135743; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=rzLryw/XAyJKRphNFTyQsyFqFFX/jhMAED6ZmtSxJ5A=;
        b=NuQYe3/xoqaBjlHK/cM9QdVPH2vtuGzVRxzflbD81fGp9QSbUSUI+XdbsVd5ZhJTht
         G27MLk/ikrps+tYXYkxVOyjPaB7m7CqYdOmJM5kItSLtDG/pPgyuLuOqQsSEt4/10wVB
         hqseoWL2q1aNdR7VK5aBmwZTtUCQNPyifsUQVXiF3m398IfynDyA4y2drUL86GaBf+pM
         61/1chSux2vTt9sifz0vAa+j+8tgeatyKAw8fUS9L3LYzeMifBwaMSAIWVI+azbsWey9
         Z7anlUhAX7dPZc7dpQH03tJwUXflWSktAmyih7gODjgh0tkdgxIGjwEz532rC0+QS6l7
         6K6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739530943; x=1740135743;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rzLryw/XAyJKRphNFTyQsyFqFFX/jhMAED6ZmtSxJ5A=;
        b=DCx+6PM1SpKya/Mrs96dDlXvmihSv5BuUuODLYplfiqBJUYzpw2sdNEi2aPzU7ruqZ
         3eEvxCOjy28TbW6FV/BeRLF76rWgj7dh7ZRlbtXpKzVpKlsMHujJIFQAIB8ay80V4pnl
         DPbRRubCvRHGtEKARkeD3IfXrLTy8nrm5hnIGcsT2NmCd44l/K0lF4DgfruVTcGX8I9j
         Uk0F3Sc+quUXBw01hkb9YBV8jB/hilxT4JMTlcOj5loEe/7vsSceRwA68UEW1ftWIOwg
         6m3+WAqz5U6ytzY52SdDh6VmhTDz27pBeKHJAoicZID4h38djsw8dt/DFONGVV+5w7BE
         6ATA==
X-Forwarded-Encrypted: i=1; AJvYcCXhRxtKvGSseptD2cPvh6wIhD/ktuS20cZWAV5W3gt7TRTcDMjLocCmK5OfSDczJ1AdNbjQoIbBLuCQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzmoRsf/AlISFnRmgy0001iXfcndYAHgVddz8F4k9afZBX3qsYe
	ppFRSoOaSR0DFGm+GvURzw73xj9C/aToX1n8SO+cXn13s827m4Kl7BzNwFxEUxXuggMeHviSsSy
	8zVS7kGvcYGv5j3SWZL7bzmVk9OPJB7AlVQrSfw==
X-Gm-Gg: ASbGncsLYLKLNWR9BAkT9d1dr7laPgS1lGdZ/NspSSlKJDfjpTIC+VKqFfXJqjHdULP
	hZPQqr4rQIe4XU2/30sJX/U9eqe4m9hmABIVu6pIf5K9PhWRao6gv5YT/tLhqIcrlRTnaVVLlsA
	==
X-Google-Smtp-Source: AGHT+IEKcq28b+1jm6W/qMPjV397BfFJUY6Ro0y3t74MU1oh8ipE5HyvHwkyR5H+34Nm6ywfG6DdYeLN9CCigPMkqzw=
X-Received: by 2002:a05:6902:11c7:b0:e57:4db7:6d51 with SMTP id
 3f1490d57ef6-e5d9f170324mr10340809276.32.1739530943472; Fri, 14 Feb 2025
 03:02:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250128194830eucas1p134d566631b5622c85d843f5d811c3c00@eucas1p1.samsung.com>
 <20250128194816.2185326-1-m.wilczynski@samsung.com> <20250128194816.2185326-5-m.wilczynski@samsung.com>
In-Reply-To: <20250128194816.2185326-5-m.wilczynski@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 14 Feb 2025 12:01:47 +0100
X-Gm-Features: AWEUYZlteGTa4T3_RQ0f5ZiaQGtHVX2-gpRxvu_zXmJT0uvPZbTFwTKkU3epoaE
Message-ID: <CAPDyKFp6OTa07Lv+jsMy=Rn7U_NYFb_0MfNUXT3cjN_Gkwqs9g@mail.gmail.com>
Subject: Re: [PATCH v4 04/18] firmware: thead: Add AON firmware protocol driver
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, guoren@kernel.org, 
	wefu@redhat.com, jassisinghbrar@gmail.com, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, frank.binns@imgtec.com, 
	matt.coster@imgtec.com, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, jszhang@kernel.org, 
	p.zabel@pengutronix.de, m.szyprowski@samsung.com, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Tue, 28 Jan 2025 at 20:48, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> The T-Head TH1520 SoC uses an E902 co-processor running Always-On (AON)
> firmware to manage power, clock, and other system resources [1]. This
> patch introduces a driver implementing the AON firmware protocol,
> allowing the Linux kernel to communicate with the firmware via mailbox
> channels.  Through an RPC-based interface, the kernel can initiate power
> state transitions, update resource configurations, and perform other
> AON-related tasks.
>
> Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf [1]
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

[...]

> +
> +static int th1520_aon_probe(struct platform_device *pdev)
> +{
> +       struct device *dev = &pdev->dev;
> +       struct th1520_aon_chan *aon_chan;
> +       struct mbox_client *cl;
> +       int ret;
> +       struct platform_device_info pdevinfo = {
> +               .name = "th1520-pd",
> +               .id = PLATFORM_DEVID_AUTO,
> +               .parent = dev,
> +       };
> +
> +       aon_chan = devm_kzalloc(dev, sizeof(*aon_chan), GFP_KERNEL);
> +       if (!aon_chan)
> +               return -ENOMEM;
> +
> +       cl = &aon_chan->cl;
> +       cl->dev = dev;
> +       cl->tx_block = true;
> +       cl->tx_tout = MAX_TX_TIMEOUT;
> +       cl->rx_callback = th1520_aon_rx_callback;
> +
> +       aon_chan->ch = mbox_request_channel_byname(cl, "aon");
> +       if (IS_ERR(aon_chan->ch))
> +               return dev_err_probe(dev, PTR_ERR(aon_chan->ch),
> +                                    "Failed to request aon mbox chan\n");
> +
> +       mutex_init(&aon_chan->transaction_lock);
> +       init_completion(&aon_chan->done);
> +
> +       platform_set_drvdata(pdev, aon_chan);
> +
> +       aon_chan->pd = platform_device_register_full(&pdevinfo);
> +       ret = PTR_ERR_OR_ZERO(aon_chan->pd);
> +       if (ret) {
> +               dev_err(dev, "Failed to register child device 'th1520-pd': %d\n", ret);
> +               goto free_mbox_chan;
> +       }
> +
> +       ret = devm_of_platform_populate(dev);
> +       if (ret)
> +               goto unregister_pd;
> +
> +       return 0;
> +
> +unregister_pd:
> +       platform_device_unregister(aon_chan->pd);
> +free_mbox_chan:
> +       mbox_free_channel(aon_chan->ch);
> +
> +       return ret;
> +}

Rather than implementing this as a driver, I suggest limiting this to
a set of exported library functions.

In this way, you don't need to register a platform device, but can
instead let the power-domain provider driver in patch6, to be the one
that matches on the "thead,th1520-aon" compatible to probe.

> +
> +static void th1520_aon_remove(struct platform_device *pdev)
> +{
> +       struct th1520_aon_chan *aon_chan = platform_get_drvdata(pdev);
> +
> +       platform_device_unregister(aon_chan->pd);
> +       mbox_free_channel(aon_chan->ch);
> +}
> +
> +static const struct of_device_id th1520_aon_match[] = {
> +       { .compatible = "thead,th1520-aon" },
> +       { /* Sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, th1520_aon_match);
> +
> +static struct platform_driver th1520_aon_driver = {
> +       .driver = {
> +               .name = "th1520-aon",
> +               .of_match_table = th1520_aon_match,
> +       },
> +       .probe = th1520_aon_probe,
> +       .remove = th1520_aon_remove,
> +};
> +module_platform_driver(th1520_aon_driver);
> +
> +MODULE_AUTHOR("Michal Wilczynski <m.wilczynski@samsung.com>");
> +MODULE_DESCRIPTION("T-HEAD TH1520 Always-On firmware driver");
> +MODULE_LICENSE("GPL");

[...]

Kind regards
Uffe

