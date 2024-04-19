Return-Path: <devicetree+bounces-61050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 016A48AB74E
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 00:40:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E0BE1C20FE6
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 22:40:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62C7513D891;
	Fri, 19 Apr 2024 22:40:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="T8tHWS57"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DC313D88B;
	Fri, 19 Apr 2024 22:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713566436; cv=none; b=CBAcecs92X9fHjXG963nfC2k3E0+Mc8qmoqov4Q/WpN6N7dJ7jfNg0yOQCpRAQOV8bhA4xTrYUG+Gr1EqOA9UiB0PlkhSIQlatiVfs4urHpVMJBgMiDCa1jjL6e9YjuQ4E6lH1XQ5yLYVljHRnZFjLcwEjry+IUHrMfbwYuOOOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713566436; c=relaxed/simple;
	bh=KPPw/HKWprop8cnDRE1kdw35iiNxOd0n3PLh95dw2S8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oiLhDm0UB3KCuE4Q0DAMF3TLDnEBnuys7offYxm5kOY9+40VgghGy8Ed0VQofYSWJB1R9CG5x8wliPw3zJQntJ4FonfXUkaCAC08EU8DQ3z9mD3US1GgywcAEoCmmYxozdzk98EFitjyYmNArjicxPXYTUFff4QPNGD3ltYw3U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b=T8tHWS57; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7CD3BC32782;
	Fri, 19 Apr 2024 22:40:34 +0000 (UTC)
Authentication-Results: smtp.kernel.org;
	dkim=pass (1024-bit key) header.d=zx2c4.com header.i=@zx2c4.com header.b="T8tHWS57"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zx2c4.com; s=20210105;
	t=1713566433;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=KVXP/wNApq7zCtd4Du0Pp6Da0k1GBTT3HmGn81wuLF4=;
	b=T8tHWS5727tNHPdgtzaxG3vfT3gLWNuNkU+fz40Ooj5h0QPiRcO8JN8cOMeRQNkmyVNeCh
	il7LppOcNqcDXoCKaN0mrPFL/S3ZmbWgppmdumtBo2QoVkN0fhR9eJeMmZp2udem4I+qan
	Wxm8bujvyQ4Yrny1KhMJElsM4HZi3Mk=
Received: 
	by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id e9df3a18 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Fri, 19 Apr 2024 22:40:32 +0000 (UTC)
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
To: tytso@mit.edu,
	robh@kernel.org,
	krzk@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	sudanl@amazon.com,
	graf@amazon.com,
	dwmw@amazon.co.uk,
	krzysztof.kozlowski@linaro.org,
	bchalios@amazon.es
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>
Subject: [PATCH v8 1/3] virt: vmgenid: change implementation to use a platform driver
Date: Sat, 20 Apr 2024 00:39:58 +0200
Message-ID: <20240419224020.780377-2-Jason@zx2c4.com>
In-Reply-To: <20240419224020.780377-1-Jason@zx2c4.com>
References: <20240419224020.780377-1-Jason@zx2c4.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Sudan Landge <sudanl@amazon.com>

Re-implement vmgenid as a platform driver in preparation for adding
devicetree bindings support in next commits.

Signed-off-by: Sudan Landge <sudanl@amazon.com>
Reviewed-by: Alexander Graf <graf@amazon.com>
[Jason: - Small style cleanups and refactoring.]
Signed-off-by: Jason A. Donenfeld <Jason@zx2c4.com>
---
 drivers/virt/vmgenid.c | 99 +++++++++++++++++++++++++++---------------
 1 file changed, 65 insertions(+), 34 deletions(-)

diff --git a/drivers/virt/vmgenid.c b/drivers/virt/vmgenid.c
index a1c467a0e9f7..0522107f9bee 100644
--- a/drivers/virt/vmgenid.c
+++ b/drivers/virt/vmgenid.c
@@ -7,9 +7,10 @@
  * information to random.c.
  */
 
+#include <linux/acpi.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
-#include <linux/acpi.h>
+#include <linux/platform_device.h>
 #include <linux/random.h>
 
 ACPI_MODULE_NAME("vmgenid");
@@ -21,19 +22,41 @@ struct vmgenid_state {
 	u8 this_id[VMGENID_SIZE];
 };
 
-static int vmgenid_add(struct acpi_device *device)
+static void vmgenid_notify(struct device *device)
+{
+	struct vmgenid_state *state = device->driver_data;
+	u8 old_id[VMGENID_SIZE];
+
+	memcpy(old_id, state->this_id, sizeof(old_id));
+	memcpy(state->this_id, state->next_id, sizeof(state->this_id));
+	if (!memcmp(old_id, state->this_id, sizeof(old_id)))
+		return;
+	add_vmfork_randomness(state->this_id, sizeof(state->this_id));
+}
+
+static void setup_vmgenid_state(struct vmgenid_state *state, void *virt_addr)
 {
+	state->next_id = virt_addr;
+	memcpy(state->this_id, state->next_id, sizeof(state->this_id));
+	add_device_randomness(state->this_id, sizeof(state->this_id));
+}
+
+static void vmgenid_acpi_handler(acpi_handle __always_unused handle,
+				 u32 __always_unused event, void *dev)
+{
+	vmgenid_notify(dev);
+}
+
+static int vmgenid_add_acpi(struct device *dev, struct vmgenid_state *state)
+{
+	struct acpi_device *device = ACPI_COMPANION(dev);
 	struct acpi_buffer parsed = { ACPI_ALLOCATE_BUFFER };
-	struct vmgenid_state *state;
 	union acpi_object *obj;
 	phys_addr_t phys_addr;
 	acpi_status status;
+	void *virt_addr;
 	int ret = 0;
 
-	state = devm_kmalloc(&device->dev, sizeof(*state), GFP_KERNEL);
-	if (!state)
-		return -ENOMEM;
-
 	status = acpi_evaluate_object(device->handle, "ADDR", NULL, &parsed);
 	if (ACPI_FAILURE(status)) {
 		ACPI_EXCEPTION((AE_INFO, status, "Evaluating ADDR"));
@@ -49,53 +72,61 @@ static int vmgenid_add(struct acpi_device *device)
 
 	phys_addr = (obj->package.elements[0].integer.value << 0) |
 		    (obj->package.elements[1].integer.value << 32);
-	state->next_id = devm_memremap(&device->dev, phys_addr, VMGENID_SIZE, MEMREMAP_WB);
-	if (IS_ERR(state->next_id)) {
-		ret = PTR_ERR(state->next_id);
+
+	virt_addr = devm_memremap(&device->dev, phys_addr, VMGENID_SIZE, MEMREMAP_WB);
+	if (IS_ERR(virt_addr)) {
+		ret = PTR_ERR(virt_addr);
 		goto out;
 	}
+	setup_vmgenid_state(state, virt_addr);
 
-	memcpy(state->this_id, state->next_id, sizeof(state->this_id));
-	add_device_randomness(state->this_id, sizeof(state->this_id));
-
-	device->driver_data = state;
+	status = acpi_install_notify_handler(device->handle, ACPI_DEVICE_NOTIFY,
+					     vmgenid_acpi_handler, dev);
+	if (ACPI_FAILURE(status)) {
+		ret = -ENODEV;
+		goto out;
+	}
 
+	dev->driver_data = state;
 out:
 	ACPI_FREE(parsed.pointer);
 	return ret;
 }
 
-static void vmgenid_notify(struct acpi_device *device, u32 event)
+static int vmgenid_add(struct platform_device *pdev)
 {
-	struct vmgenid_state *state = acpi_driver_data(device);
-	u8 old_id[VMGENID_SIZE];
+	struct device *dev = &pdev->dev;
+	struct vmgenid_state *state;
+	int ret;
 
-	memcpy(old_id, state->this_id, sizeof(old_id));
-	memcpy(state->this_id, state->next_id, sizeof(state->this_id));
-	if (!memcmp(old_id, state->this_id, sizeof(old_id)))
-		return;
-	add_vmfork_randomness(state->this_id, sizeof(state->this_id));
+	state = devm_kmalloc(dev, sizeof(*state), GFP_KERNEL);
+	if (!state)
+		return -ENOMEM;
+
+	ret = vmgenid_add_acpi(dev, state);
+
+	if (ret < 0)
+		devm_kfree(dev, state);
+	return ret;
 }
 
-static const struct acpi_device_id vmgenid_ids[] = {
+static const struct acpi_device_id vmgenid_acpi_ids[] = {
 	{ "VMGENCTR", 0 },
 	{ "VM_GEN_COUNTER", 0 },
 	{ }
 };
-
-static struct acpi_driver vmgenid_driver = {
-	.name = "vmgenid",
-	.ids = vmgenid_ids,
-	.owner = THIS_MODULE,
-	.ops = {
-		.add = vmgenid_add,
-		.notify = vmgenid_notify
-	}
+MODULE_DEVICE_TABLE(acpi, vmgenid_acpi_ids);
+
+static struct platform_driver vmgenid_plaform_driver = {
+	.probe      = vmgenid_add,
+	.driver     = {
+		.name   = "vmgenid",
+		.acpi_match_table = vmgenid_acpi_ids,
+	},
 };
 
-module_acpi_driver(vmgenid_driver);
+module_platform_driver(vmgenid_plaform_driver)
 
-MODULE_DEVICE_TABLE(acpi, vmgenid_ids);
 MODULE_DESCRIPTION("Virtual Machine Generation ID");
 MODULE_LICENSE("GPL v2");
 MODULE_AUTHOR("Jason A. Donenfeld <Jason@zx2c4.com>");
-- 
2.44.0


