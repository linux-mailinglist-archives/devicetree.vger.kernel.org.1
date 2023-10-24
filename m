Return-Path: <devicetree+bounces-11129-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F14487D46EB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:32:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B22241F224FE
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 05:32:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 688E879D6;
	Tue, 24 Oct 2023 05:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="JKroqlfc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B83DE79C6
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:31:56 +0000 (UTC)
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 086EBFD
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 22:31:55 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6bd73395bceso2992311b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 22:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698125514; x=1698730314; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TMgZBMWXzo4q6vwznsY5I4wwZsoXDFPKydTpbp5gDQw=;
        b=JKroqlfcHG8a6N6YvGdwfOhxawfooodjYM0sMf7u1n2XvdJKgBRVvlXS303QotoGo8
         XgJVqiLnq9Qy/W6lpRtsp2rPHRX7g+d5DEpLykgIkHlrnD0KmYt3BJFJ7FvHhm7EHcao
         DLFJaIHXHQkXR32FiQXVPsRUzkjojKN5IK27jqP9+4eqV3B/pCk25ucgPEe4q7NGCSb1
         l7LDZoQEm/1zeGWiVeHuimbZC8KTg1SKU+yhGBEEVZghGfcQ2kTMRbo4stf8vSO4rq1n
         o2r2nGy/kKMgIaumLtBvfPZHe5ZBNyiiFzZrMczFzSTaujCiYHdNBRjczMI785zEWFZD
         o/8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698125514; x=1698730314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMgZBMWXzo4q6vwznsY5I4wwZsoXDFPKydTpbp5gDQw=;
        b=VBHK3SEhwtsOIIjJyrzotTgAqyzwXV5f2kBGN5uM21BcrhpTQObU7k2aKhTsbdJG+p
         VYTOq0gsEbsJzkVA8bNZkMB+vWRKACgUPnLma0Tui1pdUgnXdeVt3Y/G8dSAqHD66wjT
         sFQqH/iCP4vzjG6Hh2+jfZ8FWHkzWItpFwPzkF6tauPXmq+StevPLaMWIQFfLvS9hsC8
         co7ePpTSiYl7o18PZhEwmpjyjiLm0dIWFBabgok+7E3+dqcJjmad9SWgJys8UvGL0O/t
         dN9sgw5W48SG5t+xAXPsQkYQifoCi/hKxIoNA9wveWfLiA+v42be2Go5nv4aytfq/Um0
         /w5Q==
X-Gm-Message-State: AOJu0YwWxrEHzbbg8OAauGA6+nFFodBFJ7p60XjCqUsvKbk74wWMawLh
	1EjNMawun6OlnXB6QP0+SSTyLw==
X-Google-Smtp-Source: AGHT+IEXabVD0I42LfRfAleaLrDfaEeikt+nTW/LvpW+v1yM0hF9QKpCxuvRXO4yGRldBbG6ljXApg==
X-Received: by 2002:a05:6a20:7348:b0:17b:2c56:70bc with SMTP id v8-20020a056a20734800b0017b2c5670bcmr2083668pzc.10.1698125514459;
        Mon, 23 Oct 2023 22:31:54 -0700 (PDT)
Received: from sunil-laptop ([2409:4071:6e9d:1e7:259:d68d:db3b:3cc])
        by smtp.gmail.com with ESMTPSA id y15-20020aa79aef000000b0068883728c16sm7216982pfp.144.2023.10.23.22.31.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 22:31:53 -0700 (PDT)
Date: Tue, 24 Oct 2023 11:01:37 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Conor Dooley <conor+dt@kernel.org>, Marc Zyngier <maz@kernel.org>,
	=?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
	Atish Patra <atishp@atishpatra.org>,
	Andrew Jones <ajones@ventanamicro.com>,
	Saravana Kannan <saravanak@google.com>,
	Anup Patel <anup@brainfault.org>, linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v11 12/14] irqchip/riscv-aplic: Add support for MSI-mode
Message-ID: <ZTdWueglO1iXuS1D@sunil-laptop>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-13-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023172800.315343-13-apatel@ventanamicro.com>

Hi Anup,

On Mon, Oct 23, 2023 at 10:57:58PM +0530, Anup Patel wrote:
> The RISC-V advanced platform-level interrupt controller (APLIC) has
> two modes of operation: 1) Direct mode and 2) MSI mode.
> (For more details, refer https://github.com/riscv/riscv-aia)
> 
> In APLIC MSI-mode, wired interrupts are forwared as message signaled
> interrupts (MSIs) to CPUs via IMSIC.
> 
> We extend the existing APLIC irqchip driver to support MSI-mode for
> RISC-V platforms having both wired interrupts and MSIs.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
[...]
> +int aplic_msi_setup(struct device *dev, void __iomem *regs)
> +{
> +	const struct imsic_global_config *imsic_global;
> +	struct irq_domain *irqdomain;
> +	struct aplic_priv *priv;
> +	struct aplic_msicfg *mc;
> +	phys_addr_t pa;
> +	int rc;
> +
> +	priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	rc = aplic_setup_priv(priv, dev, regs);
> +	if (!priv) {
This should check rc instead of priv.

> +		dev_err(dev, "failed to create APLIC context\n");
> +		return rc;
> +	}
> +	mc = &priv->msicfg;
> +
> +	/*
> +	 * The APLIC outgoing MSI config registers assume target MSI
> +	 * controller to be RISC-V AIA IMSIC controller.
> +	 */
> +	imsic_global = imsic_get_global_config();
> +	if (!imsic_global) {
> +		dev_err(dev, "IMSIC global config not found\n");
> +		return -ENODEV;
For all error return paths, priv should be freed.

Thanks,
Sunil

