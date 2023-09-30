Return-Path: <devicetree+bounces-4892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BA5DE7B4286
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 19:09:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D6DB11C20A2C
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:09:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 991C918043;
	Sat, 30 Sep 2023 17:09:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBCF01803D
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 17:09:28 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D18BCFA
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:26 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-406618d080eso12627935e9.2
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 10:09:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696093765; x=1696698565; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0S4YyoMRJsfSt6+U3bqbOqX9jPh1v33yWTsmXu+J/uw=;
        b=YUaXy7xrG5NEVOCLES2IcQxnzjsmtTtvxqDd0r0rjaDxeGud1SyOckjfvnlrBfdrPY
         AwkStSfqYh/4X7RNoyp3HM/eYPr0VtUT8Ii9UXrD8FZO8DwIz8aAW9N/PlU+/SzXNRQi
         GazVTd59QcrbqSwwYYozBUlUj08UH3GrL/vslOylLvtTQXjYC4qqz+EBtb7lisrTKP/N
         RqKj1GQAu7mChbERhqyx1fBgY114fXs3NDQIr79weCqEpDrrW+Sb+ijZdzWgMIpf0JmL
         MPfGmw0jbA++XSEsqc1zpr9vqsZI9D4CnZ9kBbroEKlijniA/ix4rFs2vq0qr8fdhIrA
         J7+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696093765; x=1696698565;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0S4YyoMRJsfSt6+U3bqbOqX9jPh1v33yWTsmXu+J/uw=;
        b=ZMq8FLxwR4C6ff8nw7tNxtezT5lY2i4IAfoFZWn/yFx8/ec/q1ckEmv4lo+yGK36Hl
         kEQ+uF53lTPJPh9dBZCfQZCVcJiFtwsK6B/azFkrpsxa+4DYxuv/y2/5hLxiVQnehJ83
         2OJ0h28x5msnnubIjkKbDqt7PG6vUQuGr8InfRJNlWMqyoCxSSadK2ul2OY4FK/FfJz0
         Dd3TS9ss00z7tzCg3p0mVR1gl4OLjm9RiEDK6YIIwtgSGeYWUNSNWucKfCUnmKDYYWbY
         LHfuKpqFmvM7ChukFyNhFWFf5jNHanUpvPTV1Y1CwD2PNNGx5Vz3xUL+2AsxRwI7zkcF
         Ie7g==
X-Gm-Message-State: AOJu0YwtEwv/eW0k6g3Gylk+NbuoqiJOsiQ214ja7ldBkejClizvXO+g
	amNi6h6IZW0Iu6/FTEszjh5N7g==
X-Google-Smtp-Source: AGHT+IEuMQArzFFl4o3M9NXXO87+2a99RjnP9y0Nf+twdzXJ0GajD6y4kBW4h3foq2wahu9I0hEgQw==
X-Received: by 2002:a05:600c:b4e:b0:402:95a0:b2ae with SMTP id k14-20020a05600c0b4e00b0040295a0b2aemr6499769wmr.32.1696093765288;
        Sat, 30 Sep 2023 10:09:25 -0700 (PDT)
Received: from lion.localdomain (host-2-99-112-229.as13285.net. [2.99.112.229])
        by smtp.gmail.com with ESMTPSA id y21-20020a7bcd95000000b00405c7591b09sm3756368wmj.35.2023.09.30.10.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Sep 2023 10:09:24 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Date: Sat, 30 Sep 2023 18:08:51 +0100
Subject: [PATCH 7/7] Input: synaptics-rmi4 - support fallback values for
 PDT descriptor bytes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-caleb-rmi4-quirks-v1-7-cc3c703f022d@linaro.org>
References: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
In-Reply-To: <20230929-caleb-rmi4-quirks-v1-0-cc3c703f022d@linaro.org>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Vincent Huang <vincent.huang@tw.synaptics.com>
Cc: methanal <baclofen@tuta.io>, linux-input@vger.kernel.org, 
 devicetree@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, 
 Caleb Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.13-dev-46309
X-Developer-Signature: v=1; a=openpgp-sha256; l=5765;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=Y56SCFSNeAsG17qE46++u/KK8CjxJ0A7DKHt1n0Mzm8=;
 b=owGbwMvMwCFYaeA6f6eBkTjjabUkhlSJMLsWUysxr4yCxe9SzmpfERdzilSRm7Nix0rhIqGZL
 IX7jT90lLIwCHIwyIopsoifWGbZtPayvcb2BRdg5rAygQxh4OIUgIncWcLwT23BkQAxBb/EAxO7
 zJtexfD7R+0VvXlIoC0jQW2NrHCDF8N/T+mb1YczeXY8PZr4537K7oDnKhutAr/MuNAb7TD59Ck
 +awA=
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: methanal <baclofen@tuta.io>

Some replacement displays include third-party touch ICs which do not
expose the function number and the interrupt status in its PDT entries.

OnePlus 6 (original touch IC)
  rmi4_i2c 12-0020: read 6 bytes at 0x00e3: 0 (2b 22 0d 06 01 01)

OnePlus 6 (aftermarket touch IC)
  rmi4_i2c 12-0020: read 6 bytes at 0x00e3: 0 (2c 23 0d 06 00 00)

Introduce a new devicetree property `syna,pdt-desc` which can be used to
provide platform-specific fallback values for users with a replacement
display with an aftermarket touch IC.

Signed-off-by: methanal <baclofen@tuta.io>
[codeflow adjustments, checkpatch fixes, wording]
Signed-off-by: Caleb Connolly <caleb.connolly@linaro.org>
---
 drivers/input/rmi4/rmi_driver.c | 67 ++++++++++++++++++++++++++++++++++++++---
 drivers/input/rmi4/rmi_driver.h |  2 ++
 include/linux/rmi.h             |  3 ++
 3 files changed, 67 insertions(+), 5 deletions(-)

diff --git a/drivers/input/rmi4/rmi_driver.c b/drivers/input/rmi4/rmi_driver.c
index 58bf3dfbf81c..5e1e3d5dd800 100644
--- a/drivers/input/rmi4/rmi_driver.c
+++ b/drivers/input/rmi4/rmi_driver.c
@@ -461,9 +461,10 @@ static int rmi_driver_reset_handler(struct rmi_device *rmi_dev)
 	return 0;
 }
 
-static int rmi_read_pdt_entry(struct rmi_device *rmi_dev,
-			      struct pdt_entry *entry, u16 pdt_address)
+static int rmi_read_pdt_entry(struct rmi_device *rmi_dev, struct pdt_entry *entry,
+			      struct pdt_scan_state *state, u16 pdt_address)
 {
+	const struct rmi_device_platform_data *pdata = rmi_get_platform_data(rmi_dev);
 	u8 buf[RMI_PDT_ENTRY_SIZE];
 	int error;
 
@@ -474,6 +475,21 @@ static int rmi_read_pdt_entry(struct rmi_device *rmi_dev,
 		return error;
 	}
 
+	if (pdata->pdt_fallback_size > state->pdt_count * RMI_OF_PDT_DESC_CELLS + 1) {
+		/* Use the description bytes from DT */
+		buf[5] = pdata->pdt_fallback_desc[state->pdt_count * RMI_OF_PDT_DESC_CELLS];
+		buf[4] = pdata->pdt_fallback_desc[state->pdt_count * RMI_OF_PDT_DESC_CELLS + 1];
+
+		error = rmi_read_block(rmi_dev, pdt_address, buf,
+				RMI_PDT_ENTRY_SIZE - 2);
+		if (error) {
+			dev_err(&rmi_dev->dev,
+					"Read PDT entry at %#06x failed, code: %d.\n",
+					pdt_address, error);
+			return error;
+		}
+	}
+
 	entry->page_start = pdt_address & RMI4_PAGE_MASK;
 	entry->query_base_addr = buf[0];
 	entry->command_base_addr = buf[1];
@@ -551,7 +567,7 @@ static int rmi_scan_pdt_page(struct rmi_device *rmi_dev,
 	int retval;
 
 	for (addr = pdt_start; addr >= pdt_end; addr -= RMI_PDT_ENTRY_SIZE) {
-		error = rmi_read_pdt_entry(rmi_dev, &pdt_entry, addr);
+		error = rmi_read_pdt_entry(rmi_dev, &pdt_entry, state, addr);
 		if (error)
 			return error;
 
@@ -1028,9 +1044,11 @@ static int rmi_driver_remove(struct device *dev)
 }
 
 #ifdef CONFIG_OF
-static int rmi_driver_of_probe(struct device *dev,
+static int rmi_driver_of_probe(struct rmi_device *rmi_dev,
 				struct rmi_device_platform_data *pdata)
 {
+	struct device *dev = rmi_dev->xport->dev;
+	u8 buf[RMI_PDT_ENTRY_SIZE];
 	int retval;
 
 	retval = rmi_of_property_read_u32(dev, &pdata->reset_delay_ms,
@@ -1038,6 +1056,45 @@ static int rmi_driver_of_probe(struct device *dev,
 	if (retval)
 		return retval;
 
+	/*
+	 * In some aftermerket touch ICs, the first PDT entry is empty and
+	 * the function number register is 0. If so, the platform
+	 * may have provided backup PDT entries in the device tree.
+	 */
+
+	retval = rmi_read_block(rmi_dev, PDT_START_SCAN_LOCATION,
+			buf, RMI_PDT_ENTRY_SIZE);
+	if (retval) {
+		dev_err(dev, "Read PDT entry at %#06x failed, code: %d.\n",
+			PDT_START_SCAN_LOCATION, retval);
+		return retval;
+	}
+
+	if (!RMI4_END_OF_PDT(buf[5]))
+		return 0;
+
+	pdata->pdt_fallback_size = of_property_count_u8_elems(dev->of_node,
+						  "syna,pdt-fallback-desc");
+
+	/* The rmi4 driver would fail later anyway, so just error out now. */
+	if (pdata->pdt_fallback_size == -EINVAL) {
+		dev_err(dev, "First PDT entry is empty and no backup values provided\n");
+		return -EINVAL;
+	}
+
+	if (pdata->pdt_fallback_size < 0) {
+		dev_err(dev, "syna,ptd-desc property was not specified properly: %d\n",
+			pdata->pdt_fallback_size);
+		return pdata->pdt_fallback_size;
+	}
+
+	pdata->pdt_fallback_desc = devm_kzalloc(dev, pdata->pdt_fallback_size, GFP_KERNEL);
+
+	retval = of_property_read_u8_array(dev->of_node, "syna,pdt-fallback-desc",
+		pdata->pdt_fallback_desc, pdata->pdt_fallback_size);
+	if (retval < 0)
+		return retval;
+
 	return 0;
 }
 #else
@@ -1163,7 +1220,7 @@ static int rmi_driver_probe(struct device *dev)
 	pdata = rmi_get_platform_data(rmi_dev);
 
 	if (rmi_dev->xport->dev->of_node) {
-		retval = rmi_driver_of_probe(rmi_dev->xport->dev, pdata);
+		retval = rmi_driver_of_probe(rmi_dev, pdata);
 		if (retval)
 			return retval;
 	}
diff --git a/drivers/input/rmi4/rmi_driver.h b/drivers/input/rmi4/rmi_driver.h
index e1a5412f2f8f..2531c32d6163 100644
--- a/drivers/input/rmi4/rmi_driver.h
+++ b/drivers/input/rmi4/rmi_driver.h
@@ -31,6 +31,8 @@
 #define RMI_PDT_FUNCTION_VERSION_MASK   0x60
 #define RMI_PDT_INT_SOURCE_COUNT_MASK   0x07
 
+#define RMI_OF_PDT_DESC_CELLS 2
+
 #define PDT_START_SCAN_LOCATION 0x00e9
 #define PDT_END_SCAN_LOCATION	0x0005
 #define RMI4_END_OF_PDT(id) ((id) == 0x00 || (id) == 0xff)
diff --git a/include/linux/rmi.h b/include/linux/rmi.h
index ab7eea01ab42..974597960b5e 100644
--- a/include/linux/rmi.h
+++ b/include/linux/rmi.h
@@ -214,6 +214,9 @@ struct rmi_device_platform_data {
 	int reset_delay_ms;
 	int irq;
 
+	u8 *pdt_fallback_desc;
+	int pdt_fallback_size;
+
 	struct rmi_device_platform_data_spi spi_data;
 
 	/* function handler pdata */

-- 
2.42.0


