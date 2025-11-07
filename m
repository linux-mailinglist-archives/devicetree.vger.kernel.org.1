Return-Path: <devicetree+bounces-236172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7240CC40D48
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 17:18:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 724E362191E
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 16:15:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 689BD3358C9;
	Fri,  7 Nov 2025 16:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bVHx0Jj/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98CE23314D3
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 16:13:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762532020; cv=none; b=Emm731r52QUC3l3K2rleczqNH5WSdO19vs6beSlATb10gijGBZPzyQS1NLmC5MswuXhrgpGaX0PXm/75Q+5jiouoBkewtOlU/UM471AvkGRjGGbdwQPfuBxgxf31Fw6mgOM7GpGz0n0qrJjCKCzcbtS4eMyaK8tF2Obwz1m7Iaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762532020; c=relaxed/simple;
	bh=xF31XLgsg71i4GGxvf84aYmQNof3dwV5B7dwqDvBkGs=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uENk0yuwP//J+t4BDM8ttXJYivMRCB3sVnoqO3CjKF/DzWsQ6WSJYo/U74RZwDNBU48fkW6826PPsZ6mubHxnr93jojhSRs9f/9ZWSCzLl0bAgZ3t6Ci6pNpKxIsu/6w/0E+wEVrqVWJ5t7CIH/fnxKi4cZk9qjtqD9lfW4Rns8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bVHx0Jj/; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47754e9cc7fso6349115e9.2
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 08:13:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762532016; x=1763136816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4uXFJLRO/6xfTI8EDTIMKnyNwnwfpmuqxZVfQHRB7zA=;
        b=bVHx0Jj/aVKT72wWxawiOPPICz/q9HhFi/awet6rKIDEdFqWNNWVqxBXLyIrWuTh+l
         0nAjVyZVHQPZ2COAKClcFmwMge6dK+8X2HSIRLR3fwq3JmRPi8+it5EdlXZosX0Ivd14
         l3Oa3dS8NwiGSEHkRUyFxWB/ZzuX9GfQy61DlHbbXw6hCk+zd4vDv9BUwkPtiHdUTU/Z
         SyrZ10E+MsDz6Hw4Wnt3fgyxKHf7MvF7nvfuIK8cTIfFpfu4rIaRVZnImI5UKldXDg3t
         BDMSWpNRzriKot94kLUvAc9DmxptqkAyy//Gke3t4+KH/QLfe1MaS4Jv3hEk4bWbyQba
         kMLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762532016; x=1763136816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=4uXFJLRO/6xfTI8EDTIMKnyNwnwfpmuqxZVfQHRB7zA=;
        b=OSeiCS8G5buRhHrXjB+yo+z0Si/xN8HqTz5zTPe2RQRDRZOuWyJyAF1D0IZe9NhOkh
         YeiDtL+54fXes57p2godsFRJvlPcP3PCT3Xj9q4opmHfNDb7uyBV479QhP+DM734m1/j
         PHfAG3iLtq9uh7ipDU3ouuVHbG8CPxApdIB5mQanXPH5Xc5VP7LEzcyYN2N93VQmwm7+
         OG++qMKie0Wgt0pG55tQU6kcZaV2bGTD3cmV7Wh80kqN9DRVsrBH7nk6cTNHYGjNygkX
         WreywTHwSoxTd/gzr0gk45QyQ/LGdYlwgwPOloyarHbcvtDpMocKUSB7HFLBblJ44+Wu
         Wbfg==
X-Forwarded-Encrypted: i=1; AJvYcCVj24P+Mg9djIJUppGQG3687Ikg/wYZqSD9ACPJxRXpcNE2ejhTRki5lDOfl/0wS1h9SCNqA4PkYP58@vger.kernel.org
X-Gm-Message-State: AOJu0YzSr9w3uhNkdIUpwHC7IO3QAzWkZNgX0eHhkwYW53h6NikEV3bB
	tv7sRnwNqoQDe/peflPlpnV18/euz60/LSUn15+alZQnJnI059DzGeM4
X-Gm-Gg: ASbGncvoU0GP6h3DX0cqzxPk7xRR+zmONbDE2bXZnw+Rma7/E37JYNyazUogIzb3hRC
	eTc1N/XkDkgVv4tepZ0nDmu9WOkqr2AjzTT8yx+E5eFSzlK2rQn4+XBwoHRIP06ipjbDn99rgz1
	PmVpJdEZg8N+zHryx33Q6GDBMy/j+t5sFaxFzMRGQ9v4HZttkmgc/Yj1U+J4Qq1MsSL1oFpdH59
	Nh1IRoY06n39UIyCF4a0xN1HPtmSdKWL+UbdwAqCzmmYQ4HkvZG6rs4bthYJ7tq2d67c21lDAKX
	6bHuEuJbTeX0D6HirhcRAkljqgoq4eXLCkaiKcOXe/DcpoUUFzNkSm/N+rwhv2NBPrFKRPHVi20
	kem31T6vau79C0PeyVapJFE9BJ2d6L6Ey1nUHf1MdGhdtP+AhwTUR/C6KmyN+2l8e0faeSk7UXf
	Zjc1uZpx+M23CvHh6z2LAj8+JBg/g+ww==
X-Google-Smtp-Source: AGHT+IFawPAtIcw8BLF2+oxvmm5q0IcgtK7Mrxbx5kWdFRcrimIuVIqUr5MJ29xpOz+U8b2csbXeEA==
X-Received: by 2002:a05:600c:1e8a:b0:477:e66:406e with SMTP id 5b1f17b1804b1-4776bcc376emr32637375e9.29.1762532015818;
        Fri, 07 Nov 2025 08:13:35 -0800 (PST)
Received: from Ansuel-XPS24 (93-34-90-37.ip49.fastwebnet.it. [93.34.90.37])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4776bd087b1sm66665955e9.16.2025.11.07.08.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 08:13:35 -0800 (PST)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Srinivas Kandagatla <srini@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Christian Marangi <ansuelsmth@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: nvmem: airoha: add SMC eFuses schema
Date: Fri,  7 Nov 2025 17:13:21 +0100
Message-ID: <20251107161325.2309275-2-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251107161325.2309275-1-ansuelsmth@gmail.com>
References: <20251107161325.2309275-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add Airoha SMC eFuses schema to document new Airoha SoC AN7581/AN7583
way of accessing the 2 eFuse bank via the SMC command.

Each eFuse bank expose 64 eFuse cells of 32 bit used to give information
on HW Revision, PHY Calibration,  Device Model, Private Key and
all kind of other info specific to the SoC or the running system.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../bindings/nvmem/airoha,smc-efuses.yaml     | 65 +++++++++++++++++++
 1 file changed, 65 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml

diff --git a/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml b/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml
new file mode 100644
index 000000000000..e21ce07c4f41
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/airoha,smc-efuses.yaml
@@ -0,0 +1,65 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/airoha,smc-efuses.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Airoha SMC eFuses
+
+description: |
+  Airoha new SoC (AN7581/AN7583) expose banks of eFuse accessible
+  via specific SMC commands.
+
+  2 different bank of eFuse or 64 cells of 32 bit are exposed
+  read-only used to give information on HW Revision, PHY Calibration,
+  Device Model, Private Key...
+
+maintainers:
+  - Christian Marangi <ansuelsmth@gmail.com>
+
+properties:
+  compatible:
+    enum:
+      - airoha,an7581-efuses
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 0
+
+patternProperties:
+  '^efuse-bank@[0-1]$':
+    type: object
+
+    allOf:
+      - $ref: nvmem.yaml#
+
+    properties:
+      reg:
+        description: Identify the eFuse bank.
+        enum: [0, 1]
+
+    required:
+      - reg
+
+    unevaluatedProperties: false
+
+required:
+  - compatible
+
+additionalProperties: false
+
+examples:
+  - |
+    efuse {
+        compatible = "airoha,an7581-efuses";
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        efuse-bank@0 {
+           reg = <0>;
+        };
+    };
+
+...
-- 
2.51.0


