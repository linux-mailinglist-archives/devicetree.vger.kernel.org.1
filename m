Return-Path: <devicetree+bounces-164053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 49624A7EF41
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 22:27:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3452C424644
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 20:14:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC26023F43C;
	Mon,  7 Apr 2025 20:13:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b="EHi+eNCM"
X-Original-To: devicetree@vger.kernel.org
Received: from linux.microsoft.com (linux.microsoft.com [13.77.154.182])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E81F223301;
	Mon,  7 Apr 2025 20:13:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=13.77.154.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744056829; cv=none; b=BcikpkUaCUa9DgOXcyh+45DaaA1z1rDSDlNBnBF9sUbtwLY09kU3SINs30d66Xb646weQrjnFHVhIFwbyU6l6uBZ0sk/4YQ6BZN5zDn4fv+GXmw9AebKqA9hyqVOEuu/a5ZBeLP4NX2jGT1LOHKqiPItvwFVjGy7rnzmoCWxsrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744056829; c=relaxed/simple;
	bh=yyeCOwTtD22c7lWwDL8rT+3NYpBmdivd0mRGeBs8v1M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=YOQjJ8O+OM6UoprLmgGGzQOGeZgMjyyrTa0mT68GEOXX8iW/Q27+LzEKw+f7W30VNhsVOMtqwe1EUBS+oU5/8FGW7nOePo/d2N1p7gj0qWsAD7BJhChZ6VkEO4Gy13UnFbYR9VXHe4rDmflJHNSENM6z8UfUzilr1k3wiD3jZ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com; spf=pass smtp.mailfrom=linux.microsoft.com; dkim=pass (1024-bit key) header.d=linux.microsoft.com header.i=@linux.microsoft.com header.b=EHi+eNCM; arc=none smtp.client-ip=13.77.154.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.microsoft.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.microsoft.com
Received: from romank-3650.corp.microsoft.com (unknown [131.107.160.188])
	by linux.microsoft.com (Postfix) with ESMTPSA id 54B862113E88;
	Mon,  7 Apr 2025 13:13:41 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 54B862113E88
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1744056821;
	bh=y7usvJbWdzao6Cpj0TdEPzfAZnIHMs9Jb/NJTFyO0qY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=EHi+eNCM61h7pcU0C55egc10Rg40Cvcy6Ih35fIv/1RsKF9JPtRNv7yhXKGfHqsyL
	 ikM/4E2A0i93AFZsf4k9usi61d7e3AkCo+xLigqbb5BwwPafyDGNBT7FOLbbavgBmJ
	 vKSkrPu3BEIHIzFj0BWtz64ATsqoxCs4BlMKicQs=
From: Roman Kisel <romank@linux.microsoft.com>
To: arnd@arndb.de,
	bhelgaas@google.com,
	bp@alien8.de,
	catalin.marinas@arm.com,
	conor+dt@kernel.org,
	dan.carpenter@linaro.org,
	dave.hansen@linux.intel.com,
	decui@microsoft.com,
	haiyangz@microsoft.com,
	hpa@zytor.com,
	joey.gouly@arm.com,
	krzk+dt@kernel.org,
	kw@linux.com,
	kys@microsoft.com,
	lenb@kernel.org,
	lpieralisi@kernel.org,
	manivannan.sadhasivam@linaro.org,
	mark.rutland@arm.com,
	maz@kernel.org,
	mingo@redhat.com,
	oliver.upton@linux.dev,
	rafael@kernel.org,
	robh@kernel.org,
	rafael.j.wysocki@intel.com,
	ssengar@linux.microsoft.com,
	sudeep.holla@arm.com,
	suzuki.poulose@arm.com,
	tglx@linutronix.de,
	wei.liu@kernel.org,
	will@kernel.org,
	yuzenghui@huawei.com,
	devicetree@vger.kernel.org,
	kvmarm@lists.linux.dev,
	linux-acpi@vger.kernel.org,
	linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-hyperv@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	x86@kernel.org
Cc: apais@microsoft.com,
	benhill@microsoft.com,
	bperkins@microsoft.com,
	sunilmut@microsoft.com
Subject: [PATCH hyperv-next v7 08/11] Drivers: hv: vmbus: Get the IRQ number from DeviceTree
Date: Mon,  7 Apr 2025 13:13:33 -0700
Message-ID: <20250407201336.66913-9-romank@linux.microsoft.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250407201336.66913-1-romank@linux.microsoft.com>
References: <20250407201336.66913-1-romank@linux.microsoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The VMBus driver uses ACPI for interrupt assignment on
arm64 hence it won't function in the VTL mode where only
DeviceTree can be used.

Update the VMBus driver to discover interrupt configuration
from DT.

Signed-off-by: Roman Kisel <romank@linux.microsoft.com>
Reviewed-by: Michael Kelley <mhklinux@outlook.com>
---
 drivers/hv/vmbus_drv.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 22afebfc28ff..e8f2c3e92d1f 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -2345,6 +2345,31 @@ static int vmbus_acpi_add(struct platform_device *pdev)
 }
 #endif
 
+static int vmbus_set_irq(struct platform_device *pdev)
+{
+	struct irq_data *data;
+	int irq;
+	irq_hw_number_t hwirq;
+
+	irq = platform_get_irq(pdev, 0);
+	/* platform_get_irq() may not return 0. */
+	if (irq < 0)
+		return irq;
+
+	data = irq_get_irq_data(irq);
+	if (!data) {
+		pr_err("No interrupt data for VMBus virq %d\n", irq);
+		return -ENODEV;
+	}
+	hwirq = irqd_to_hwirq(data);
+
+	vmbus_irq = irq;
+	vmbus_interrupt = hwirq;
+	pr_debug("VMBus virq %d, hwirq %d\n", vmbus_irq, vmbus_interrupt);
+
+	return 0;
+}
+
 static int vmbus_device_add(struct platform_device *pdev)
 {
 	struct resource **cur_res = &hyperv_mmio;
@@ -2359,6 +2384,11 @@ static int vmbus_device_add(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	if (!__is_defined(HYPERVISOR_CALLBACK_VECTOR))
+		ret = vmbus_set_irq(pdev);
+	if (ret)
+		return ret;
+
 	for_each_of_range(&parser, &range) {
 		struct resource *res;
 
-- 
2.43.0


