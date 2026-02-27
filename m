Return-Path: <devicetree+bounces-269185-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qM/hD7F6oWkUtgQAu9opvQ
	(envelope-from <devicetree+bounces-269185-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:06:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 930161B6586
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 12:06:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11D46307E27E
	for <lists+devicetree@lfdr.de>; Fri, 27 Feb 2026 11:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A56D73E9F71;
	Fri, 27 Feb 2026 11:06:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599A33ACF16
	for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 11:06:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772190382; cv=none; b=Nc7pL3NNWGAvQPTvpx2J2IdwrX+Ln7vcwFNXhGZUuprq6hrgCOm4N3o/s4/aQuQ36qJqlvgXB6BJZKR6WvfX3nsgySAQ/PqN7zv1J2rIGgpq1amFV9yy2GKnj0alqoqM0teq7XD6uOVlVWHo8QUFPF0uRfhT0d51oMq+pHcmc5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772190382; c=relaxed/simple;
	bh=Xt8T2LYzOXOEoVBpymcZc2eRgsOEoxFq4GkPu2abpQ0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=m9q59sybTQd+j4piDMExlWCscCXNv3FXgDIfbz57mroMLs358JagrArUtDtI0Y72ByLmaNjeEeDqOdGUEglnukEu8MOdFFlmoadwAKSw6BTq8tPHtRYhxpswHcQqrbfUMfadQ5HstCnBYSZhE4jxBjVm1Ynkp2Sad9A8yXD3KQI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-56a981f44c9so726470e0c.2
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:06:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772190380; x=1772795180;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YE98lzQphAGWmhBl2muiZY2HaF/hBooDn284eHmY7ZY=;
        b=Ir79BqH+Uensm2QnVvgruKIAs/QUviIax+LdpQggtmXIUDAbvhFql7Cgj2ux+FJYNi
         GFFrR3STYIlaDRsJ+VeyEWvs5C1NK1Sgx+NVHGHStF2eyK3F+U8MT+tub8PjYtOOj0ny
         pCtycGG8MqNh5TT7Z+OR8vgHvQdLF5Ty3yzAXKDOfIUT3OVBIbDWpGmGrLH/ebPmBOz/
         OUE8mq77k6rX2awdmd6s/Ypv3sWneIVVtUyFTIcCmPXISpphzsFBOLwzoo5A0KEa/pdI
         xrKr4940Rq+bqCsopLVUoBshjlrlsq0unpsU2hLjUxP69JxXqkjJc91pbalEZlhxB/4c
         6vBw==
X-Forwarded-Encrypted: i=1; AJvYcCWkJkYIUqBw5czeo6tjPOPKAVE+RBMnyP8z7m/s9XzAYrQ+Lqs5UDVK5C3+Z8kzkqRoFpW84IVHwnFv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7t9DYtJ/op5DmFzYLu366FCzXJgvmijQzabGp4nA0B4l1LBsC
	F5VWOC4FIlFSqLITSqhmtDFE/Bp6cjw2zu371F0XrHlKZcWu9Rj8KAgB0McMwSd6szI=
X-Gm-Gg: ATEYQzzDC5gQN2x5FZzhKa9KXIHtZ9YlXl8HPt3V9tRIK98KfkFh+o/9pKqxWly6A2L
	t3GwaFFicK9oAZL1xVuLIh+AsLzZqesie+TqHnBtf7ezKaXKQEL/+XzBO6HqHpH2qQw44e/MSHQ
	az1ZM3Y9rgN3XbOYI7c7GjP0Co0RCNu74cBxnOH917HgENndcfMeN1W56SzPa0T+I8GOWhoruqm
	HYozuxNNkkm3UzrVfdIhvspFoNb/rUDZCG2qcVkuYOUkZlMs4ECyuShUFkg3sGm/tLVkl3lOLbX
	Yb3ABxo+6sIQon9GOhNa7AD3GonCvDgEhhVUuNMU8T3Sxyt2ikuB300qk5Tsm4VA9B+UtAERf4d
	jNHIVx3n5AgqEfrhHvquWyNFnMYbd6uqaPy/valM7KRxH5/ZeVbfxHrH8ToGuUgEx7Ncq3za7XL
	rsRtNZzbli5E58fG7YD89U6zV25E6cN4x4t1R7g0LaP3sR4KueKaQH1YPFqjIRmZbU
X-Received: by 2002:a05:6102:441c:b0:5f9:3a22:85a2 with SMTP id ada2fe7eead31-5ff3232eda1mr1072902137.12.1772190380363;
        Fri, 27 Feb 2026 03:06:20 -0800 (PST)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1ea6f7fesm4809303137.13.2026.02.27.03.06.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Feb 2026 03:06:20 -0800 (PST)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-56a8a20e6e6so871003e0c.0
        for <devicetree@vger.kernel.org>; Fri, 27 Feb 2026 03:06:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWQgMFnMG/3krRVGXkzI4niD3I3mQtvBBr3GPNC0qpBZ0gFHVxQhUGFKtLtqAM90MVQUwSpxw7KCoWP@vger.kernel.org
X-Received: by 2002:a05:6102:3706:b0:5fe:af0c:79ff with SMTP id
 ada2fe7eead31-5ff324c037cmr877780137.19.1772190379919; Fri, 27 Feb 2026
 03:06:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260203135139.28151-1-ovidiu.panait.rb@renesas.com> <20260203135139.28151-6-ovidiu.panait.rb@renesas.com>
In-Reply-To: <20260203135139.28151-6-ovidiu.panait.rb@renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Feb 2026 12:06:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW4HvawRF1bc=Mu-QvPFpfLMKq8g80-XQxFgOnJYR2kNg@mail.gmail.com>
X-Gm-Features: AaiRm52nImXCDA3sCOv8r6ic4zHbeM7lAITmoRTYT0g3eih1AUtSRh5Hi90xueA
Message-ID: <CAMuHMdW4HvawRF1bc=Mu-QvPFpfLMKq8g80-XQxFgOnJYR2kNg@mail.gmail.com>
Subject: Re: [PATCH v3 5/8] clk: versaclock3: Prefix clock names with DT node name
To: Ovidiu Panait <ovidiu.panait.rb@renesas.com>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org, 
	biju.das.jz@bp.renesas.com, fabrizio.castro.jz@renesas.com, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	Luca Ceresoli <luca.ceresoli@bootlin.com>, Adam Ford <aford173@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,baylibre.com,bp.renesas.com,renesas.com,vger.kernel.org,bootlin.com];
	TAGGED_FROM(0.00)[bounces-269185-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.986];
	TAGGED_RCPT(0.00)[devicetree,dt];
	R_DKIM_NA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,renesas.com:email,linux-m68k.org:email]
X-Rspamd-Queue-Id: 930161B6586
X-Rspamd-Action: no action

Hi Ovidiu,

On Tue, 3 Feb 2026 at 14:52, Ovidiu Panait <ovidiu.panait.rb@renesas.com> wrote:
> Similar to commit f491276a5168 ("clk: vc5: Allow Versaclock driver to
> support multiple instances"), prefix clock names with the device tree
> node name to allow multiple VersaClock3 devices to be registered
> simultaneously.
>
> Signed-off-by: Ovidiu Panait <ovidiu.panait.rb@renesas.com>

Thanks for your patch!

> --- a/drivers/clk/clk-versaclock3.c
> +++ b/drivers/clk/clk-versaclock3.c
> @@ -1137,6 +1137,7 @@ static int vc3_register_clk(struct vc3_device_data *vc3,
>         struct device *dev = &vc3->client->dev;
>         struct clk_parent_data *pd;
>         struct clk_init_data init;
> +       const char *name;
>         int ret;
>
>         if (!hw_data->data)
> @@ -1147,7 +1148,15 @@ static int vc3_register_clk(struct vc3_device_data *vc3,
>         if (!pd)
>                 return -ENOMEM;
>
> +       name = kasprintf(GFP_KERNEL, "%pOFn.%s", dev->of_node,
> +                        template->hw.init->name);

"%pOFn" is still not unique.  As per the Generic Names Recommendation
in the Devicetree Specification, it should be "clock-controller"
everywhere.  Using the I2C device name instead should work fine.
The same issue is present in the Versaclock 5 driver (but
e.g. beacon-renesom-som.dtsi uses "versaclock-som").

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

