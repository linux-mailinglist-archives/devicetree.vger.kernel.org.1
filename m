Return-Path: <devicetree+bounces-20090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A64DF7FDBB6
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 16:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2DA34B20C72
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F96138F8B;
	Wed, 29 Nov 2023 15:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BFCE2D46;
	Wed, 29 Nov 2023 07:41:33 -0800 (PST)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1f5d34235dbso470732fac.0;
        Wed, 29 Nov 2023 07:41:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701272493; x=1701877293;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EhWAdsQici9g+lW6DZXRUrjB3jILRrvTFlf8WoGKfH4=;
        b=XolJwodWxaX2Czxd4YF2+ibDGPv4o8fIF6c5qy+cijfJ45iNWxJEG7NDwv+pRQpSS+
         T2IFX4YWNj4t3maYb+3f12jdBFxHGybMNJPm/305RcTnn6DaDPZ3qm0KMqIQ3dk9S679
         WfjCWas6wUNnrzahBsOyKvlJc51mFhGUjN0OYjgnk1XzhPAuCRj9JLC7xDJEbL/yyTJW
         aR5qhCxg7nqk0d+WJhDrmaxKBmaFUUUA+gr1Gdi049vH4aIcps/ZcWIgmkYkL9Z4LQUT
         S5YYUhxyLQy81mlSsfmqcKhziw+Io9Pt9EdzdCMaLp7UlBRrQUfoOSVSyc4Kg50s2aQV
         l51g==
X-Gm-Message-State: AOJu0YzyqY4at0sHDEqLxrOFvzwlHUyuyfTPzlzi+8atxOiPENXqd6pe
	NPVLIwdvFJFfcABGFL+Dzw==
X-Google-Smtp-Source: AGHT+IGShj4w5pAAan02Vu2TdEfoW9dIA5VZFrU5p2wq/oTBmRvMEWXn+CtF2RmZFL6FNEfaedG+wA==
X-Received: by 2002:a05:6870:4d0b:b0:1fa:692:f3c4 with SMTP id pn11-20020a0568704d0b00b001fa0692f3c4mr9952940oab.8.1701272493024;
        Wed, 29 Nov 2023 07:41:33 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id oo14-20020a0568715a8e00b001fa52b18d3dsm1633149oac.57.2023.11.29.07.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 07:41:32 -0800 (PST)
Received: (nullmailer pid 2534299 invoked by uid 1000);
	Wed, 29 Nov 2023 15:41:31 -0000
Date: Wed, 29 Nov 2023 09:41:31 -0600
From: Rob Herring <robh@kernel.org>
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: James Tai <james.tai@realtek.com>, Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, kernel test robot <lkp@intel.com>, Dan Carpenter <error27@gmail.com>
Subject: Re: [PATCH v3 2/6] irqchip: Add interrupt controller support for
 Realtek DHC SoCs
Message-ID: <20231129154131.GA2492847-robh@kernel.org>
References: <20231129054339.3054202-1-james.tai@realtek.com>
 <20231129054339.3054202-3-james.tai@realtek.com>
 <d94c79bf-04c4-4e87-bd7e-a8755508ac89@suswa.mountain>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d94c79bf-04c4-4e87-bd7e-a8755508ac89@suswa.mountain>

On Wed, Nov 29, 2023 at 11:21:06AM +0300, Dan Carpenter wrote:
> On Wed, Nov 29, 2023 at 01:43:35PM +0800, James Tai wrote:
> > +static int realtek_intc_subset(struct device_node *node, struct realtek_intc_data *data, int index)
> > +{
> > +	struct realtek_intc_subset_data *subset_data = &data->subset_data[index];
> > +	const struct realtek_intc_subset_cfg *cfg = &data->info->cfg[index];
> > +	int irq;
> > +
> > +	irq = irq_of_parse_and_map(node, index);
> > +	if (irq <= 0)
> > +		return irq;
> 
> I don't think irq_of_parse_and_map() can return negatives.  Only zero
> on error.  Returning zero on error is a historical artifact with IRQ
> functions and a constant source of bugs.  But here returning zero is
> success.  See my blog for more details:
> https://staticthinking.wordpress.com/2023/08/07/writing-a-check-for-zero-irq-error-codes/

It's worse than that. The irq functions historically returned NO_IRQ on 
error, but that could be 0 or -1 depending on the arch.

Use of_irq_get() instead. It's a bit better in that it returns an error 
code for most cases. But still returns 0 on mapping failure.

Rob

