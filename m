Return-Path: <devicetree+bounces-7049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 335647BEE05
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 00:04:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2366281A9C
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 22:04:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861D144476;
	Mon,  9 Oct 2023 22:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ZJfn2IU2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0140A374E2
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 22:04:47 +0000 (UTC)
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com [IPv6:2607:f8b0:4864:20::d2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7501C6
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 15:04:41 -0700 (PDT)
Received: by mail-io1-xd2a.google.com with SMTP id ca18e2360f4ac-7a27254cd12so199588139f.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 15:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696889081; x=1697493881; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Oy3/oDIsrYxVx08XCzjcM9Z9wsmpIMgRcvueEjHv/4=;
        b=ZJfn2IU2szW2+wKn4i2QWfHoCcNMc3YKOnf9totCsBGNOUaK+ZnF7jTC71aMcXkZRr
         FgDUWey/IU3+CvX6H7XaK1UDSjM8XwimcHzxup7WrbgkTQAfGAxBEz9q+PZWqE+tTM5q
         jlR6r9fCYm6Xnq/+98MOvAS5aTxWJ/IGVMxb0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696889081; x=1697493881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8Oy3/oDIsrYxVx08XCzjcM9Z9wsmpIMgRcvueEjHv/4=;
        b=jQlG2+x8jZ7AmE3Iq2iXUmZP4vsVcKwgb48vr9ah5DpKw/OL1TOpVeEafOyWp0AUmP
         0DEzDPpK9k5zyrbwxRSf0xyT0sRVO0sQqXM0rQIVcCpSVsxiCO+PBgLJPJI2dx3mAEdZ
         qVdg5Hbvl9DebHX9o0+n5zrabSpYoDAANdU/A4PHFF00J1dcCPNbABJQ89bEWH95PHs9
         DkwHX16laB5GlbmgZRz0wtlV45KBnwGfr5fsoaPK2zRcCjV8szAc0WNcQFFkz2F6tiWR
         jeHvfd/bdKg7ufBAs8hlEzCj2epEJ8N6vGbSxrqJ65fbhsoEBx4RvMngmPOsyKA8gmfd
         XQag==
X-Gm-Message-State: AOJu0YyzxoQKTF66OnrsgHFXq4kXIUPu7Foi0fJBU9Pqqq+BQEx1moVx
	vFc1VhqwfIM4lO6aOmv0k6EqEltzPzf6WR28htk=
X-Google-Smtp-Source: AGHT+IFwSMMRzbI9ukD+T9rudHAv5MuufQsbRJFD77HiKbqNVg7VVe4MkQLuLmI2ApcxREzIG9BR/A==
X-Received: by 2002:a05:6e02:170c:b0:350:f510:3990 with SMTP id u12-20020a056e02170c00b00350f5103990mr23056007ill.2.1696889081061;
        Mon, 09 Oct 2023 15:04:41 -0700 (PDT)
Received: from kea.bld.corp.google.com ([2620:15c:183:200:138c:cf57:c18d:20f5])
        by smtp.gmail.com with ESMTPSA id o3-20020a92d4c3000000b0034cd2c0afe8sm3164063ilm.56.2023.10.09.15.04.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 15:04:40 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: devicetree@vger.kernel.org
Cc: linux-mtd@lists.infradead.org,
	Miquel Raynal <miquel.raynal@bootlin.com>,
	Michael Walle <mwalle@kernel.org>,
	Rob Herring <robh@kernel.org>,
	U-Boot Mailing List <u-boot@lists.denx.de>,
	Tom Rini <trini@konsulko.com>,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Richard Weinberger <richard@nod.at>,
	Rob Herring <robh+dt@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/3] dt-bindings: mtd: binman-partition: Add binman compatibles
Date: Mon,  9 Oct 2023 16:04:14 -0600
Message-ID: <20231009220436.2164245-2-sjg@chromium.org>
X-Mailer: git-send-email 2.42.0.609.gbb76f46606-goog
In-Reply-To: <20231009220436.2164245-1-sjg@chromium.org>
References: <20231009220436.2164245-1-sjg@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add two compatible for binman entries, as a starting point for the
schema.

Note that, after discussion on v2, we decided to keep the existing
meaning of label so as not to require changes to existing userspace
software when moving to use binman nodes to specify the firmware
layout.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

Changes in v4:
- Correct selection of multiple compatible strings

Changes in v3:
- Drop fixed-partitions from the example
- Use compatible instead of label

Changes in v2:
- Use plain partition@xxx for the node name

 .../mtd/partitions/binman-partition.yaml      | 49 +++++++++++++++++++
 1 file changed, 49 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml

diff --git a/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
new file mode 100644
index 000000000000..35a320359ec1
--- /dev/null
+++ b/Documentation/devicetree/bindings/mtd/partitions/binman-partition.yaml
@@ -0,0 +1,49 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+# Copyright 2023 Google LLC
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/mtd/partitions/binman-partition.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Binman partition
+
+maintainers:
+  - Simon Glass <sjg@chromium.org>
+
+select: false
+
+description: |
+  This corresponds to a binman 'entry'. It is a single partition which holds
+  data of a defined type.
+
+allOf:
+  - $ref: /schemas/mtd/partitions/partition.yaml#
+
+properties:
+  compatible:
+    oneOf:
+      - const: binman,entry     # generic binman entry
+      - items:
+          - const: u-boot       # u-boot.bin from U-Boot project
+          - const: atf-bl31     # bl31.bin or bl31.elf from TF-A project
+
+additionalProperties: false
+
+examples:
+  - |
+    partitions {
+        compatible = "binman";
+        #address-cells = <1>;
+        #size-cells = <1>;
+
+        partition@100000 {
+            compatible = "u-boot";
+            reg = <0x100000 0xf00000>;
+        };
+
+        partition@200000 {
+            compatible = "atf-bl31";
+            reg = <0x200000 0x100000>;
+        };
+    };
-- 
2.42.0.609.gbb76f46606-goog


