Return-Path: <devicetree+bounces-225670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 64864BCFEA4
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 04:26:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 2B4CC4E1430
	for <lists+devicetree@lfdr.de>; Sun, 12 Oct 2025 02:26:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D0731DB375;
	Sun, 12 Oct 2025 02:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="YQJ/v6Ya"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7CC17B43F
	for <devicetree@vger.kernel.org>; Sun, 12 Oct 2025 02:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760235981; cv=none; b=BZVsnYcNXfSlm92ORCFUeTsS8j4lFbX/TAEmhP8FvWRTaXIykyPUlaNhgsRicj7Lk+63FfvZEsOTNuO6ELbaIFzaUTi1Bj7O6XaQ0/olQ9s70h1Tr9OTeHpeIcjVzbBj33vxdWYJ03q33+cZGcf7FmKfN07Au6zkQFq5zekdsfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760235981; c=relaxed/simple;
	bh=Eqt79fSlOJq/HqDwqQJC4lZ1h3nSfxXHoYjtimE2BTM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B7cwSPzRxDMBcz2TYc6nKFu3T2dQP3CE165lWG/6HKKYkX+EwG6BMWzzS+lkAB61kI+3HQyZiBDrcMg6Ppd87SPTYtXwRQFpGQy+Th6bc6fLcoEEkEQf2d/nem3e4RHWwCLlURcntwiiOClS+vf0y1CvtQ6vb93zSzjK9QWJuoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=YQJ/v6Ya; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-781010ff051so2243347b3a.0
        for <devicetree@vger.kernel.org>; Sat, 11 Oct 2025 19:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760235978; x=1760840778; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xYj9BHj7cwVf87n8ZMWQnat/cLLuDjVQjaIpUr5Z/nc=;
        b=YQJ/v6YajXGk6UkeTA9z1P7NMS54SMnCDvMb43povPCX/2SoHwxyzvWjBsDLWgtQm0
         Mt8gDw354JPfTRk7k/R5D3rIXLL8dXrReOQBz6xgwsIDHHRvx/g3Pe91C/NZuWNwOMtT
         5uf/1XDQQTT3kEGfb86UlCfVaV0khFpyf/XfWqCqU7GuCtNsCe0vhTgfE0aMRRqv5ZrP
         sVAIEJDwMrS/HnoTpUFIukaXvinA1bXngZEsBVLoNL6w1Ybu/0g28npcdmOlaUwhW7zs
         UH/TvfgSvi2C8Lfb1NxLw/Y+YfKbZilXmA5p4krgLErYkIZ84vSQckH71SJyohuQBtgD
         a+KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760235978; x=1760840778;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xYj9BHj7cwVf87n8ZMWQnat/cLLuDjVQjaIpUr5Z/nc=;
        b=anmLGTmb69qM8uucE6pfKDSFmbVJvMqvDHgNFDjjsDO58+sxTMn2M8C2CyIdQQyPsk
         ZO9T41hygdrGC7Aptu+ID0uypGCIdNFxZB0NNFIMGwOzR7d0S5bJe8FtBlrPqOE0EjsL
         QVF/ztIsFR2NhQwSxr7ZZjTKKIJ1NRL7FWEeibvHQ1LFu5cT95y19F7YZWW3aIpL+pV9
         C7rH7MhQdskg1Dw26OcWt0BlJQgWwgXdAqlqjQc22YaRWIe+FRHmpFJ32xcXaquRlRGg
         kyVBU/2qa/K3kEJvNOx+nRe4bP4V8N67fUMH1m0lGvbHCzsCt5EKjURsm+oQOQtrVBxP
         wumg==
X-Gm-Message-State: AOJu0Yxe0o1zw+XZMa1yu02IeZXnrtOObaBb5aaa1M1YFYvyOGNmRK9Z
	TnaVt5gXg+y2lJA4JJEHVR7sTjRkfNq9/Mo6AAQPX5UXh7DsRV4ie0k4
X-Gm-Gg: ASbGncupYhzPdkpPUTibQTezSjGKcwmpUsmhF4pF7iRd6qSvfK+IpqomcOAEdrM9SMV
	IxEB1SSWM/PNyxI28jefHE2vq1Ze4vCgpOssoXauKXdoyZnFqpOiJr0WImzfVvN4kRTN67xnpja
	WF4A4j7o4KAdKj5TOV90h+P2X1KJ3uHw/InwQTNTTsQtZBQyOiKzHkQBz/KW8Ex+l14jPigmnT/
	hQjjlvc3ENP8mxdGz1gv0137mCbJhCODZPFbne/AjE/S2vAlg6qf238VUjy62wJ1tpWEEZ9vQqV
	rjJnkhNsPyN/tdIvsmG36o9AeZze+qm93B5v2LCt2YGu7m7wQDBimMNzWZJkO5O/Ie3K3rUQs5Y
	cSxhFKy/LUfWM1jfkLaEJgKtO26PejuTu2/3cDYdAEtKHv+mPaPzBcyXEDtCFf9A3nw07
X-Google-Smtp-Source: AGHT+IHkPmQUQfunFHahd09uFFipzQG8nUYJ4jLN6bvERJ5STyPU28/LTOdCiOsyRzsvL6DNxvTF7A==
X-Received: by 2002:a05:6a00:1394:b0:792:574d:b1d with SMTP id d2e1a72fcca58-79385703ba7mr22526012b3a.14.1760235978345;
        Sat, 11 Oct 2025 19:26:18 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d9992ddsm7180489b3a.80.2025.10.11.19.26.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Oct 2025 19:26:17 -0700 (PDT)
From: Longbin Li <looong.bin@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Longbin Li <looong.bin@gmail.com>,
	Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Yixun Lan <dlan@gentoo.org>,
	Thomas Bonnefille <thomas.bonnefille@bootlin.com>,
	Ze Huang <huangze@whut.edu.cn>
Cc: devicetree@vger.kernel.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org
Subject: [PATCH v1 1/3] dt-bindings: soc: sophgo: add TOP syscon for CV18XX/SG200X series SoC
Date: Sun, 12 Oct 2025 10:25:52 +0800
Message-ID: <20251012022555.6240-2-looong.bin@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251012022555.6240-1-looong.bin@gmail.com>
References: <20251012022555.6240-1-looong.bin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Sophgo CV1800/SG2000 SoC top misc system controller provides register
access to configure related modules. It includes a usb2 phy and a dma
multiplexer.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
Signed-off-by: Longbin Li <looong.bin@gmail.com>
---
 .../soc/sophgo/sophgo,cv1800b-top-syscon.yaml | 59 +++++++++++++++++++
 1 file changed, 59 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml

diff --git a/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
new file mode 100644
index 000000000000..d1993f2156b4
--- /dev/null
+++ b/Documentation/devicetree/bindings/soc/sophgo/sophgo,cv1800b-top-syscon.yaml
@@ -0,0 +1,59 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/soc/sophgo/sophgo,cv1800b-top-syscon.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Sophgo CV18XX/SG200X SoC top system controller
+
+maintainers:
+  - Inochi Amaoto <inochiama@outlook.com>
+
+description:
+  The Sophgo CV18XX/SG200X SoC top misc system controller provides
+  register access to configure related modules.
+
+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sophgo,cv1800b-top-syscon
+          - const: syscon
+          - const: simple-mfd
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+patternProperties:
+  "dma-router@154":
+    $ref: /schemas/dma/sophgo,cv1800b-dmamux.yaml#
+    unevaluatedProperties: false
+
+  "phy@48":
+    $ref: /schemas/phy/sophgo,cv1800b-usb2-phy.yaml#
+    unevaluatedProperties: false
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    syscon@3000000 {
+      compatible = "sophgo,cv1800b-top-syscon", "syscon", "simple-mfd";
+      reg = <0x03000000 0x1000>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+    };
+
+...
--
2.51.0

