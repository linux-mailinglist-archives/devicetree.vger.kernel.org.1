Return-Path: <devicetree+bounces-242489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CD9DC8AE87
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 17:17:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D0DEE4E18B0
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:17:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F9F733DEFB;
	Wed, 26 Nov 2025 16:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b="OS4HJrS2"
X-Original-To: devicetree@vger.kernel.org
Received: from m16.mail.126.com (m16.mail.126.com [220.197.31.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA144334C31;
	Wed, 26 Nov 2025 16:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=220.197.31.9
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764173844; cv=none; b=ho/IN7OiRAtw977bvy6Cvh2wQU83/JfRJpzOLOc/6hZpuNDIc2Rjfby1xdn5ka22T9yRUfxZW6xUZGjjuzshmMujXSpBraNtgmK6CCWwKSZ2LJBeU9Ev5CaEtC/S1h14yhEuuwd1Hum28A8XtYQvjNOOSEgSXL5uikrTZYMGIso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764173844; c=relaxed/simple;
	bh=Jdc2IK+wseIsoE/h9YaKTfu/ZO7ei/M2UqUc0dDBGOs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EoWcyPzD7oVquTimj6sD0P3mr3NV8DZsWbBd3YqbZsdJi3zPPfRkfgew0zb5IFJZZHR4qchRepdKcs5tjArN9X8Tzt3Sa2S969nMUoFSLeNrZ9/lcn1Mg9jdKrpAGJWepmYkxRMeQgqmcfQWxmsgjXt/F4GdTpZuGxF/6Vxwxic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com; spf=pass smtp.mailfrom=126.com; dkim=pass (1024-bit key) header.d=126.com header.i=@126.com header.b=OS4HJrS2; arc=none smtp.client-ip=220.197.31.9
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=126.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=126.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=126.com;
	s=s110527; h=From:To:Subject:Date:Message-Id:MIME-Version:
	Content-Type; bh=0wKcNy5FCGaqY9FV62oZYjgf+u3MGcY8a3yEAdQ09gg=;
	b=OS4HJrS2AI3Mq9+R1ebwCF7RSLe0YDcy9vKKM7EgPNueQa5eKfuFJcNqGQt/+a
	FPmV2XYlcxtPlEa7HwrepPyZX2FZvOXuDWKb/q6VEoKYSWiyBiMpQYO5wXPlJTLG
	3xYALoktHnRmfdQQwX4sg8mMV78vnwIW+DNg0tWNCdDEE=
Received: from nilq-virtual-machine.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wD3b++sJydpfQcMAA--.52027S2;
	Thu, 27 Nov 2025 00:15:42 +0800 (CST)
From: niliqiang <ni_liqiang@126.com>
To: tglx@linutronix.de
Cc: ajones@ventanamicro.com,
	anup@brainfault.org,
	apatel@ventanamicro.com,
	atishp@atishpatra.org,
	bjorn@kernel.org,
	conor+dt@kernel.org,
	dai.hualiang@zte.com.cn,
	deng.weixian@zte.com.cn,
	devicetree@vger.kernel.org,
	frowand.list@gmail.com,
	guo.chang2@zte.com.cn,
	hu.yuye@zte.com.cn,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	liu.qingtao2@zte.com.cn,
	liu.wenhong35@zte.com.cn,
	maz@kernel.org,
	ni.liqiang@zte.com.cn,
	ni_liqiang@126.com,
	palmer@dabbelt.com,
	paul.walmsley@sifive.com,
	robh+dt@kernel.org,
	saravanak@google.com,
	sunilvl@ventanamicro.com,
	wu.jiabao@zte.com.cn
Subject: Re: [PATCH v16 6/9] irqchip: Add RISC-V advanced PLIC driver for direct-mode
Date: Thu, 27 Nov 2025 00:15:40 +0800
Message-Id: <20251126161540.6460-1-ni_liqiang@126.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <87qztmgj32.ffs@tglx>
References: <87qztmgj32.ffs@tglx>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=y
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:_____wD3b++sJydpfQcMAA--.52027S2
X-Coremail-Antispam: 1Uf129KBjDUn29KB7ZKAUJUUUUU529EdanIXcx71UUUUU7v73
	VFW2AGmfu7bjvjm3AaLaJ3UbIYCTnIWIevJa73UjIFyTuYvjxUjeHqDUUUU
X-CM-SenderInfo: xqlbzxxtld0wa6rslhhfrp/1tbirwES5WknGuiyWgAAsN

Hi, tglx

> > We've noticed that PCIe enumeration order tends to vary across system reboots (for example: first
> > boot showed PC08->PC06->PC10->PC07->PC11->PC09, while second boot showed
> > PC09->PC06->PC08->PC11->PC07->PC10), even though the ACPI firmware consistently reports the root
> > bridge sequence as PC06->PC07->PC08->PC09->PC10->PC11.
> 
> > In our testing, we found that adjusting the registration priority of the aplic driver seems to help
> > ensure the interrupt controller initializes before PCI enumeration, leading to more consistent
> > device ordering.

> The ACPI table does not provide a sequence, it provides a collection and
> it's nowhere written in stone that this collection has to be processed
> in order.
> If you want a sequence then put dependencies into the table and be done
> with it, no?

Thank you for your suggestions. 

Through our validation, We have observed that the current kernel appears to lack an effective
dependency resolution mechanism between ACPI PCIe host bridge devices.

The specific manifestation is as follows: when establishing dependencies between host bridges via
the _DEP method (for example, PC07 depends on PC06), only PC06 is enumerated successfully, while
PC07 is skipped. Our investigation reveals that the root cause lies in the current limitation where
ACPI PCIe devices have only a single opportunity to resolve dependencies—specifically within the
acpi_dev_clear_dependencies function inside the APLIC driver. PC06, having its dependency resolved
earlier by the APLIC driver, is asynchronously processed in the system_unbound_wq queue. At this
point, PC07 still depends on PC06, which has not yet completed enumeration. As a result, PC07 cannot
proceed and subsequently misses its enumeration opportunity.

To address this issue, we have introduced the following dependency resolution mechanism at the end
of the acpi_pci_root_add function in the kernel's PCIe enumeration path to achieve the desired
fixed-order enumeration:

#ifdef CONFIG_ACPI
if (!acpi_disabled)
acpi_dev_clear_dependencies(device);
#endif

We have observed that other drivers in the kernel also utilize acpi_dev_clear_dependencies to handle
device dependencies. We seek confirmation on whether this approach is reasonable and welcome
feedback regarding alternative effective solutions.

Best regards,
Liqiang


