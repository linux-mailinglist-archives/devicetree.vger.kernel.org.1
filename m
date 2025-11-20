Return-Path: <devicetree+bounces-240804-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4C6C75AF7
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 18:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E47A2346BDE
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:26:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EB8836E564;
	Thu, 20 Nov 2025 17:18:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="MqFEMG7/"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.126.com (m16.mail.126.com [220.197.31.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AFC43644C9;
	Thu, 20 Nov 2025 17:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763659079; cv=none; b=HgAWRW1uUmVx3K047dIkjMSWAkJFG8vIDKhSWBcyPQHfj9bi+BUIy28+iJcjGfCewA//upNj75BR2Oltu9x+iPx/Cdjx8s5gzsEyOKp3GpzqHbnBRMnOWtLkhKOa47/LII/MbIMfMz7ABdXx70OGfyZu+HOWI1fx8Png6uylbzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763659079; c=relaxed/simple;
	bh=A/GWPaBQVlDVMfDmib2WIFU3MsNZJt8ywlHFd+byPbo=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=WlUNKSHNkTumETQ+JqKWs4Br0p2IigLWCcuWOhjh8m0g/eqCpFJeSB80aF4H7KayCqF/aSIN/J0IRPLC7pHsL4g7OWqyIL9hOJWPR+f+ME9OO2V4O2GRTKGeEttAJKa/2P+2jUwNRHpi27OJ/ih/EnONBBHDRaf4V+vMac19Wig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=MqFEMG7/; arc=none smtp.client-ip=220.197.31.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version; bh=ck
	2LXnallF0o14E7324Drq0pinMWebr/hckuV1kG/zs=; b=MqFEMG7/RTC91gTVjA
	Dl4seBQ5Ws9MA7NAK4hlamY5Giq8jh+/TF3J8WmSKhuZ8tk1a+IlK1RDurJ+uZPM
	kgvFUqGx0w7zxS5ndkD+1FMYtRC4hN/C5VB+agW7/Pb6BGuKee8NpGGOiaMprA+D
	EAG1GHJM+2YnUR8kFh6nfq+vw=
Received: from nilq-virtual-machine.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wD3t8f_KB9pu1X7AA--.141S2;
	Thu, 20 Nov 2025 22:43:12 +0800 (CST)
From: niliqiang <ni_liqiang@126.com>
To: apatel@ventanamicro.com
Cc: ajones@ventanamicro.com,
	anup@brainfault.org,
	atishp@atishpatra.org,
	bjorn@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	frowand.list@gmail.com,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	maz@kernel.org,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	saravanak@google.com,
	sunilvl@ventanamicro.com,
	tglx@linutronix.de,
	hu.yuye@zte.com.cn,
	deng.weixian@zte.com.cn,
	ni.liqiang@zte.com.cn
Subject: Re: [PATCH v16 6/9] irqchip: Add RISC-V advanced PLIC driver for direct-mode
Date: Thu, 20 Nov 2025 22:43:11 +0800
Message-Id: <20251120144311.5083-1-ni_liqiang@126.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240307140307.646078-7-apatel@ventanamicro.com>
References: <20240307140307.646078-7-apatel@ventanamicro.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3t8f_KB9pu1X7AA--.141S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7tw47XFyrJw47tw1Dtw4DCFg_yoW8ZF1DpF
	4Dt34Iya9rGF1ag3ZrGa1kAFy7C395Cayayr1DJ34a9wn8uFyqva1Iy3909ry5Jr4rAr1a
	qrWjyF9rCan8ZFUanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jjbyZUUUUU=
X-CM-SenderInfo: xqlbzxxtld0wa6rslhhfrp/1tbiTwgM5WkfG4PySQAAs7

> diff --git a/drivers/irqchip/irq-riscv-aplic-main.c b/drivers/irqchip/irq-riscv-aplic-main.c
> +static const struct of_device_id aplic_match[] = {
> + { .compatible = "riscv,aplic" },
> + {}
> +};
> +
> +static struct platform_driver aplic_driver = {
> + .driver = {
> +  .name  = "riscv-aplic",
> +  .of_match_table = aplic_match,
> + },
> + .probe = aplic_probe,
> +};
> +builtin_platform_driver(aplic_driver);

Dear Anup Patel and all concerned,

I am writing to inquire about the historical rationale behind defining the APLIC driver's
initialization priority using builtin_platform_driver in the current implementation.

In our environment, we are encountering an issue where this priority level causes ACPI-based PCIe
enumeration to be executed in the system_unbound_wq work queue. This parallel execution model
results in PCIe devices being enumerated in an arbitrary order rather than strictly following the
sequence defined in the ACPI DSDT table.

The random enumeration order is adversely affecting customer experience, particularly in scenarios
where device ordering is critical for proper system operation or application compatibility.

We are considering modifying the APLIC driver's initialization priority to ensure PCIe enumeration
occurs sequentially according to the DSDT specification. However, before proceeding with such
changes, we wanted to consult with you regarding:

1. Were there specific technical considerations that led to the current priority selection?
2. Are there any potential side effects or broader impacts that we might have overlooked?
3. Would you support such a priority adjustment, or do you have alternative suggestions to 
address the enumeration order issue?

We greatly appreciate your insights and expertise on this matter, as it will help us make an
informed decision while maintaining system stability and compatibility.

Thank you for your time and consideration.

Best regards,
Liqiang


