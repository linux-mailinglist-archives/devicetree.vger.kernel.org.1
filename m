Return-Path: <devicetree+bounces-50498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B04E87BDB5
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 14:30:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAB13281C44
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 13:30:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11C3F5BADF;
	Thu, 14 Mar 2024 13:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cAPWBsXC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D06255C35
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 13:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710423018; cv=none; b=W4b3AMQ/t83Kn3ZjfyWQfcSzMdkAZRL41WewBuHVeDtPux57sQJ5BzRkAzJiuv/i0R8Uc4bHCRUVlXBuCQNgAKEBcM30B7NA+0xYhdd44niFuVNY815eZJUX+6FQR2jwcURkf6c6PcpE0AyyOIKqqfW3UQ8fzMwd9Woj+NvlI7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710423018; c=relaxed/simple;
	bh=m5md2DATneVglsvVJFiUcHc0rqlaZ+Wq/gpNeDLEA+0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=S116fqpxbg27h8qTJN2L0UNeMzBmS1jE8Ze7IwBCHV3/p4d+4ceZOha04eV7jeI/5AF1dilxRTTSuS9BMrbxt8BtLzaoJO3EpqJvQiNqEk7xGTapBXo8ZNhMRXTlnDV8AdfIAlbuLISVy8yq/RRcuXsu+dMthiU2QY0H0AHZCEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cAPWBsXC; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-413fd732176so558975e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 06:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710423014; x=1711027814; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mD3qkQbPr9JbryhWa1YZ2ITHxrO+wsqWrxU8GdzivNU=;
        b=cAPWBsXC7QcN+rkh3Csh8CSg1p1m4LrF6eLxv6sD1oIblHbrSVSIaoUfN27UQF+MmB
         8SJs4TJ9jM55C6Wzv0eObp5iJ9NmuPdE0Yb9G3uAHcCzX2uydqNYIkLID5E3Yr4OBBO3
         H7NLAc/fB36sFXv2tTKBo7szwKODOgxeKuNowxRfWbm1rH8L9PFQPgeL/AShQT3m7QLT
         +tw4Z63iohBQoY7i6u6yVW6tcaNknO+wwkNFYucj5G5mMNQfracjh4n/O7uEzQ7+MjaA
         rs+n+A7qDpGm9kDmzpOU6gcxocDk/SLOXEaKqZQLcuRfB6L3f3H2EUDm4kEuD+0bFVeR
         1kkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710423014; x=1711027814;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mD3qkQbPr9JbryhWa1YZ2ITHxrO+wsqWrxU8GdzivNU=;
        b=WvVQPpTW25L05ALERjj/S1P8/ritqAD6E3m3iL2eBEHISFc1eEgiLIjt+YqhKAuQyJ
         4pm/2wsytZJ0YuEPBqlSlKfgxvLdFUhwQGP5fv8W3zV/R+TZCjVT5stDTQjKZXzz2jaG
         zJVLfPwv+9FhHvn+YsUAMtyrpL2Cag9c8vXSmSrrCyrxAJ8cuC2SC2BxcBGhN2PudN3G
         /Z08Ic47P4oBY4WxBcq98a23IQP5YhFfgZmxRF/UqSNJqM5ECmqjfUuS8lbzEb5qFc7A
         NniTqu/aiR6rRzHtkX8ckxrl/SAFzfzEjliFW7wriCTG7NNGQIC20hp9emXY2CYUumwQ
         xpjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWTEC/iedxMiOyULj9NJkm2iPFu9/8jb+bM8NtNsPkfsd0ZgfswDauw1YTItJALSzpCElOPnUlvPYeOMY2c30Y6D1WNbqgvtOZX6w==
X-Gm-Message-State: AOJu0YwUr+z/4yBdtgA0eIVCgg35EZNiyOzehcvoPUBuNtG2bcHLRVd5
	8i3AVPK0B5UjR3dlzWmpxdWhEkYwmnMIISILmGlfT0fbABWHkLivAaHbQHurWRM=
X-Google-Smtp-Source: AGHT+IHUI8pInUMKMU6pURDI6IOrA5SjtV26vKKqsGZ89FUmkuJ+5HmZ3wmdkA2PC8r8vd1EStbYzQ==
X-Received: by 2002:a05:600c:3d18:b0:413:1dcb:b618 with SMTP id bh24-20020a05600c3d1800b004131dcbb618mr1431873wmb.39.1710423013999;
        Thu, 14 Mar 2024 06:30:13 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id n2-20020a05600c4f8200b004134540ae3asm2499048wmq.3.2024.03.14.06.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 06:30:13 -0700 (PDT)
Date: Thu, 14 Mar 2024 16:30:09 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Bhargav Raviprakash <bhargav.r@ltts.com>
Cc: linux-kernel@vger.kernel.org, m.nirmaladevi@ltts.com, lee@kernel.org,
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jpanis@baylibre.com,
	devicetree@vger.kernel.org, arnd@arndb.de,
	gregkh@linuxfoundation.org, lgirdwood@gmail.com, broonie@kernel.org,
	linus.walleij@linaro.org, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, nm@ti.com, vigneshr@ti.com,
	kristo@kernel.org, eblanc@baylibre.com
Subject: Re: [PATCH v3 09/11] regulator: tps6594-regulator: Add TI TPS65224
 PMIC regulators
Message-ID: <4aee8c9a-43eb-45b4-bc23-e58aede18e54@moroto.mountain>
References: <20240308103455.242705-1-bhargav.r@ltts.com>
 <20240308103455.242705-10-bhargav.r@ltts.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240308103455.242705-10-bhargav.r@ltts.com>

On Fri, Mar 08, 2024 at 04:04:53PM +0530, Bhargav Raviprakash wrote:
> @@ -374,11 +518,17 @@ static int tps6594_request_reg_irqs(struct platform_device *pdev,
>  {
>  	struct tps6594_regulator_irq_type *irq_type;
>  	struct tps6594 *tps = dev_get_drvdata(pdev->dev.parent);
> -	int j;
> +	size_t j;
>  	int irq;
>  	int error;
> +	size_t interrupt_cnt;
> +
> +	if (tps->chip_id == TPS6594)
> +		interrupt_cnt = ARRAY_SIZE(tps6594_buck1_irq_types);
> +	else
> +		interrupt_cnt = ARRAY_SIZE(tps65224_buck1_irq_types);
                                ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

>  
> -	for (j = 0; j < REGS_INT_NB; j++) {
> +	for (j = 0; j < interrupt_cnt; j++) {
>  		irq_type = &tps6594_regs_irq_types[j];
                            ^^^^^^^^^^^^^^^^^^^^^^
>  		irq = platform_get_irq_byname(pdev, irq_type->irq_name);
>  		if (irq < 0)

The tps6594_regs_irq_types pointer needs to be renamed or people won't
know it's holding tps65224_ data.  Probably the function should be
renamed too.

regards,
dan carpenter


