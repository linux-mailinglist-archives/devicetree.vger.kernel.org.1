Return-Path: <devicetree+bounces-240959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id DB649C77FE4
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:51:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 1DA7634B688
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A600A33C50D;
	Fri, 21 Nov 2025 08:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="htdfMiGP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42EBF33AD8B
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:51:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763715069; cv=none; b=OLKix3M+4g0okRLP6mMiVn9+c2/rjluEtMDJN2sDdUmyiMWpq82BBv1PidLHA+0gyl0B45EA/PuSzhA9+ug1jlN4IPiQWBNWwcRx2QH0B87a4p0vVpE67PAT3elycmNEe4QFcZnjxFxnRKT01e9VZ1883unWD5F48QDVtR0GHkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763715069; c=relaxed/simple;
	bh=sd/LiWrbtwaBwTkH9XCz3DjCFYb/6b+Fn6RgAT343Sk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y2qJHbRZq0eml+FbmGQTreYxCWciT2ybRsgzK8H3FogpmSm2E+Jn4HNhDP6i72eLEg9iXlUSWi47ZFNE6ZpYCMSAFRt68PIO/V6h/i7Rzn8FLhtFed687ZUMi689NBjpvLU4jIS7z+ytjlNQjxFZfyf5d+ns6X7SdXjWhsuBPoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=htdfMiGP; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-298144fb9bcso19470035ad.0
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:51:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1763715066; x=1764319866; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2Zl49bFVQ8HXNASEX2XzPWaAJ5IL+RSr8MjMD86xJZI=;
        b=htdfMiGP3Pg9E4/RZ1kclQwZqceAGnTxqkF7qM2NMMumeHK3n5vjI6qz8lLQ/0rO9o
         bfhVJvGlygXWLfUY0ksDa+YOQWfhjvA9ZlVb747XlXBR+fJRyJ1vSrn0U5taYRhwjiiY
         IJjzGkKFzrw8VnqMxh0mJeMljqlfpDzhDO8ZoPmCkHp56YAKR1rfHeZcyd4HgdnPzuBO
         sYCsxLLJRnju9AKHleyFkbrO+iOLA2dvu6EnMMoDqTuzuYyg8la9VHBzRFWVp7YhWSEi
         orV0U8u+nkh9Lo7jtJEygt4W2GRHYx85Fa58aR8D7cmhWB9/zGwT/ETyLqrrBjFZpSmv
         N9lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763715066; x=1764319866;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2Zl49bFVQ8HXNASEX2XzPWaAJ5IL+RSr8MjMD86xJZI=;
        b=jv3wRE278ocfMuIrCwX91cZg7lIZbJsQds2jtPbp/H3hOiRq8sQIyvOLFrQWKmrXwj
         R/XhbEiJhZVwbCAQg8gmWICQ7KnOqI6L4N2Q6KX1hnx7nLvzTLJsRCOagctrjhqSvmm5
         OHpjktoHqEfbSF9bJ1ud+ykAKEsCrIpjqPkJ0MMZoQruxwCsE0quBDi1J16NM7Le5/Vk
         S04G+5AxVPtE0tFYTDRpGRIKMWz107K9qYz9shnwkZsyCMujxFR5XjfigEG0G3ItzkF6
         15IoP57TqkJFIKQHKsi5kF++oZCsre2LuIr6bn1x1ZFHAPQ54CAHV8oN/J2b+amNpnAD
         jgpQ==
X-Forwarded-Encrypted: i=1; AJvYcCWr8kQRVZDrYGkDzbrKX8AYEv5ZPh9KPv0B/AbpRgtWBTNoKWeZ/7Xj5asR2NS8LLU0grDYMnttNW44@vger.kernel.org
X-Gm-Message-State: AOJu0YxrwfNWu1Jo+XpZV+5S/fa3F1vlheFmCU7qqEM3uNS38nYk7cnL
	udgTZDZZMn1yC3VhHGu1Zh9nfT8IogD89l/MV7d4FHmDKvZqtPZ/yw9Oa8Sec/9ZmIo=
X-Gm-Gg: ASbGncslxzZ7QD0wLf/UcIi8bLUhI7wTh1+yFvmRR2dgszni5Qp7X4r+dOaQ/akqWxc
	7LivJ1+93BMfr0kyhuIE99gsr+DTO4aeLBVB9yItMvEFN01nZtTOS1LvIEOmYaImYk54/tl+bOA
	PZhYAx26Xcnj8I9B6tZaSz2lG9hC8z9hmjudhqjug8/yjMP7AaFpY6ZpLJZT6eTmT3Y/yJ3jqp8
	BFd8Tc7W4ook0dDiijR52V81FyYm158UamF447ApSBjyG4BY/+JxqdgkrifRei8AgQRKb56x1fX
	WHI4dyyY3g1CjbrP7m15CFfwHN+LWmA4xpGyQ1SbtTXXrgAggDAR7MMDoICJSpygK5yGvaVxgBd
	JMXEIbcTnG2pwYoxoOz4vytidEJjZAzDSDcI62BhkJ+NsduMyLft0slpY3voBw6A+GFnCRQVhaA
	+QQhBhxu4eeQTsGCWa
X-Google-Smtp-Source: AGHT+IForle4Voi5B250DXGCJPKzmYnRrMuv4VZwFpXmqKqn4IMqRvfMy2WJ1GWndhzWr/EzoK5qvQ==
X-Received: by 2002:a17:90b:35cc:b0:341:194:5e7d with SMTP id 98e67ed59e1d1-34733f19c00mr2066526a91.24.1763715066040;
        Fri, 21 Nov 2025 00:51:06 -0800 (PST)
Received: from sunil-laptop ([106.51.195.35])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345b036a282sm5593927a91.4.2025.11.21.00.50.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Nov 2025 00:51:05 -0800 (PST)
Date: Fri, 21 Nov 2025 14:20:56 +0530
From: Sunil V L <sunilvl@ventanamicro.com>
To: niliqiang <ni_liqiang@126.com>
Cc: apatel@ventanamicro.com, ajones@ventanamicro.com, anup@brainfault.org,
	atishp@atishpatra.org, bjorn@kernel.org, conor+dt@kernel.org,
	devicetree@vger.kernel.org, frowand.list@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org, maz@kernel.org, palmer@dabbelt.com,
	paul.walmsley@sifive.com, robh+dt@kernel.org, saravanak@google.com,
	tglx@linutronix.de, hu.yuye@zte.com.cn, deng.weixian@zte.com.cn,
	ni.liqiang@zte.com.cn
Subject: Re: [PATCH v16 6/9] irqchip: Add RISC-V advanced PLIC driver for
 direct-mode
Message-ID: <aSAn8DdQVBBzenlJ@sunil-laptop>
References: <20240307140307.646078-7-apatel@ventanamicro.com>
 <20251120144311.5083-1-ni_liqiang@126.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251120144311.5083-1-ni_liqiang@126.com>

Hi Liqiang,

On Thu, Nov 20, 2025 at 10:43:11PM +0800, niliqiang wrote:
> > diff --git a/drivers/irqchip/irq-riscv-aplic-main.c b/drivers/irqchip/irq-riscv-aplic-main.c
> > +static const struct of_device_id aplic_match[] = {
> > + { .compatible = "riscv,aplic" },
> > + {}
> > +};
> > +
> > +static struct platform_driver aplic_driver = {
> > + .driver = {
> > +  .name  = "riscv-aplic",
> > +  .of_match_table = aplic_match,
> > + },
> > + .probe = aplic_probe,
> > +};
> > +builtin_platform_driver(aplic_driver);
> 
> Dear Anup Patel and all concerned,
> 
> I am writing to inquire about the historical rationale behind defining the APLIC driver's
> initialization priority using builtin_platform_driver in the current implementation.
> 
> In our environment, we are encountering an issue where this priority level causes ACPI-based PCIe
> enumeration to be executed in the system_unbound_wq work queue. This parallel execution model
> results in PCIe devices being enumerated in an arbitrary order rather than strictly following the
> sequence defined in the ACPI DSDT table.
> 
> The random enumeration order is adversely affecting customer experience, particularly in scenarios
> where device ordering is critical for proper system operation or application compatibility.
> 
> We are considering modifying the APLIC driver's initialization priority to ensure PCIe enumeration
> occurs sequentially according to the DSDT specification. However, before proceeding with such
> changes, we wanted to consult with you regarding:
> 
> 1. Were there specific technical considerations that led to the current priority selection?
> 2. Are there any potential side effects or broader impacts that we might have overlooked?
> 3. Would you support such a priority adjustment, or do you have alternative suggestions to 
> address the enumeration order issue?
> 
> We greatly appreciate your insights and expertise on this matter, as it will help us make an
> informed decision while maintaining system stability and compatibility.
> 
> Thank you for your time and consideration.
> 

IRQ subsystem maintainers rejected the idea of relying on initcalls to
enforce probe order because initcalls do not guarantee ordering. The
Linux driver model instead ensures probe order through device
dependencies. Since PCI INTx depends on the APLIC being probed first,
the PCI host bridge probe cannot occur until after the APLIC probe
completes. This requirement and behavior are the same for both DT and
ACPI. In DT, the driver model uses fw_devlink to establish probe
ordering, while in ACPI this is handled through either an explicit _DEP
or, on RISC-V, the GSI mapping.

Typically, this dependency appears in the DSDT only for the PCI host
bridge. Individual PCIe devices are enumerated through the standard PCI
scan once the host bridge has been probed. Therefore, I’m not sure what
you meant by a probe sequence defined in the DSDT for PCIe devices.

Regards,
Sunil

