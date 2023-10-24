Return-Path: <devicetree+bounces-11258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDCD57D4FA2
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 14:17:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5102D281960
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:17:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A1826E29;
	Tue, 24 Oct 2023 12:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="k1wMLfrI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676AF14F82
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 12:17:38 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7A7A122
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:17:35 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c504a5e1deso69586401fa.2
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 05:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698149854; x=1698754654; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ywtG2aeiT8ekMrOBNJIRKZ2eAujslOOqomAOrufM1SU=;
        b=k1wMLfrIdkE6GXBBoWRlTFzU2BJVrSzy/l6w4wEagHDHkcFTQAjwgY4m7GNH7oySB3
         JaDYJRo121rKHEODJt4i0hXLW7D/m2c+J6D6AO0rwxFM7hqnnv9LYIvebRkK8gsrpHnF
         Gu/Z5OwHZuwM2gShw8bP06ifZf3qZSM4d365zFZWaucx91Rp3del9gDUGBux1GmP3lyK
         gSBdmd5alvGnHAE9YFPT7au+3WQLe7qBAtEAWzdGwz+MsdA9KWGvAVzFFeRkCTII+uvU
         006zBgU0zy4YyxVLoYWIonEyP+IiqWpqvTQIa9+ZYLRr4KelDCeObUcr6BObA+ljT/bR
         i9Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698149854; x=1698754654;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ywtG2aeiT8ekMrOBNJIRKZ2eAujslOOqomAOrufM1SU=;
        b=vgcJPFD94MJKvaY1fE32hQI+wluk09saeOXBr9Fa5uTR+7z5ZefyrYrCaZ4P0G8jTV
         mMuj0BGqsEunN05kMN0l4uXEgD4vErNK0hirtjl/ZH05btU2wundvyzaRkPmyWteIJ8A
         R3Ityr4KrupcMZ0OARDFkPelYbTmlRqhUXGC1JcYWv/f/4KYiYOM+Ergxo0wsIh97NIj
         z2exuGSZl/vOZ6iu5dlpabAHYVCsZWjRjtUo6+VvFJaoUfAmKkThOQZybKxdswwtAOdJ
         Qlq7ox1czH0vi9Ps8gs9OI0LCCg3gZqX/wu3OqN+SC6nAELzx/fNmmtrPmTCa51VhF5z
         VRyA==
X-Gm-Message-State: AOJu0YzYFA9kTeEkYMJvcIRbgFIsLVJWGw1EtBNFE0LfZjD2EdO4qDRf
	g8v7yL16NU8jHcpHg/6Tn50HIQ==
X-Google-Smtp-Source: AGHT+IE6d/oSgQ9Dz+s2s/99KBYyI90JUkFW07BAyv9IhWTLc2F/oa76kzHgi2ODHuo+aGO9M6mljQ==
X-Received: by 2002:a05:651c:1699:b0:2c0:cfa:a1a0 with SMTP id bd25-20020a05651c169900b002c00cfaa1a0mr8057527ljb.46.1698149854070;
        Tue, 24 Oct 2023 05:17:34 -0700 (PDT)
Received: from localhost (cst2-173-16.cust.vodafone.cz. [31.30.173.16])
        by smtp.gmail.com with ESMTPSA id o12-20020a05600c4fcc00b0040775501256sm11871874wmq.16.2023.10.24.05.17.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 05:17:33 -0700 (PDT)
Date: Tue, 24 Oct 2023 14:17:32 +0200
From: Andrew Jones <ajones@ventanamicro.com>
To: Anup Patel <apatel@ventanamicro.com>
Cc: Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Frank Rowand <frowand.list@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, =?utf-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>, 
	Atish Patra <atishp@atishpatra.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Saravana Kannan <saravanak@google.com>, Anup Patel <anup@brainfault.org>, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v11 05/14] irqchip/riscv-intc: Add support for RISC-V AIA
Message-ID: <20231024-4aa004731cc3edf5f6e51031@orel>
References: <20231023172800.315343-1-apatel@ventanamicro.com>
 <20231023172800.315343-6-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231023172800.315343-6-apatel@ventanamicro.com>

On Mon, Oct 23, 2023 at 10:57:51PM +0530, Anup Patel wrote:
> The RISC-V advanced interrupt architecture (AIA) extends the per-HART
> local interrupts in following ways:
> 1. Minimum 64 local interrupts for both RV32 and RV64
> 2. Ability to process multiple pending local interrupts in same
>    interrupt handler
> 3. Priority configuration for each local interrupts
> 4. Special CSRs to configure/access the per-HART MSI controller
> 
> We add support for #1 and #2 described above in the RISC-V intc driver.
> 
> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> ---
>  drivers/irqchip/irq-riscv-intc.c | 34 ++++++++++++++++++++++++++------
>  1 file changed, 28 insertions(+), 6 deletions(-)
>

Reviewed-by: Andrew Jones <ajones@ventanamicro.com>

