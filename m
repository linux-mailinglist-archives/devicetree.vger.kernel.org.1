Return-Path: <devicetree+bounces-195560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 88628B020B1
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 17:43:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A4BF11CA4EC1
	for <lists+devicetree@lfdr.de>; Fri, 11 Jul 2025 15:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0B9C2EE26F;
	Fri, 11 Jul 2025 15:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="fjhXEZej"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27DEB2ED167
	for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 15:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752248559; cv=none; b=cMOB3w0DPZIDsV3KsjOGHjxge7nc9mZ2WkF8cq4Y+OtWQ331FzIQwR5kS0snTI6ISxug9PihTYd3unSzuePT8mqQfZY+gc9RA5HweV0xTQnuSVHKAsi01n/2dR/ACtp4Y8UnULyFLDaDQxnNbXzU/cOE0CIGigFwlmX5ooy9FY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752248559; c=relaxed/simple;
	bh=BAc/sjOJ52MzyENBcYQWdmAAONlg0iiGCQeVh9n0u0k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=NzdbRSELMWIQKg5vRb9scEQdvdgKV/pfI6crX9oRZCZdwXJ3YBdSM86eaPuCK08lBeprsUb/hqe8alJ9ZfRO78TujzvLaH2Cz35m5E6dRyM9VcqZDHyWTRfaK5JejTbqNM+dae3/rJ+hfaMOWNtqwmE/ZNjVQ4dqUMqOGmHStbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=fjhXEZej; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-748e81d37a7so1481388b3a.1
        for <devicetree@vger.kernel.org>; Fri, 11 Jul 2025 08:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1752248557; x=1752853357; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NH82M7Wpg8q915gzukGl/UR0qvoygGIK5SM365nsKWY=;
        b=fjhXEZejfbdArU7rLAYnHOzEQglV939ytD/F+dk5J8EtPNZqNNOS6ivd9O/jxpvqxM
         P+LHrkhNl/h7uayPdxIF1t1OvH+g+JEVvGcbhN3fpqbPfJ1YXCr3OqjzKZtFNVFks+Y8
         OruUNRnEP+vkN9/9h9m7sTkYqlmjk75bBYQjU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752248557; x=1752853357;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NH82M7Wpg8q915gzukGl/UR0qvoygGIK5SM365nsKWY=;
        b=TcgWMLI9RApy3E7vdYPacjsy/4LH+6+ETccPiK8rLKR6Xh6QxJf1QgXk9pR5H2odti
         p3WZGSqrinTI7UXs2DFmL0qrJgliOs3B9UraGHstHRwvTfF5TIKwGcanslhMxKO4dw3s
         SodPtY78jEAOTLdNDNeF7tLGPUiZvyc/t85JAH9q1xEYDjFBoCn+FSyRHpm94mkVX5N/
         q4bSdwnGPph6pqTbMlAXK+5VDPlV2J2U/55/zxoc+1k5EzewSWvxlGWeb4krkqIxyO8y
         Bb2/hftKrA3ZzlYo7wzsuMVN9UKi4FEdiKYldQbAIJggWmP3SUWmyd0S+xcTp6u2uGYr
         7aCg==
X-Forwarded-Encrypted: i=1; AJvYcCU+iGsotuf4bD/E8eKxo2BaCHE40uYm+8Uc2hpunrG/qXOXX5Zd+D71hfpyDP6uMBlQ6p/rs1tvdpGO@vger.kernel.org
X-Gm-Message-State: AOJu0YzdZoWcYdbELT+T/yLtkjFQgr9iParjdjkLnhreRfGTe7xcHRz2
	tutQ1+nCjN97Q84XpO9bzWKJt+6g6KSYiq8EXJ5zpX6rZjoJsORmxLIsHCLXcTBdNw==
X-Gm-Gg: ASbGncv76a9pOIa1pK6PlZ0DG+uUbuM/ubh2114UXA5vSjaQ/mrk5958L2EmiauklYo
	CvpZK3xHA9/BwDXE+3Yb8UDzllMOP6rZMDDdHL8RS7+ipRB2JOlfU+Tm+4LRAkkiuUlHg6Cw3Hh
	KNOO5mzyYLha/6ukd3K+bqHpJ0fdy2o24xiflEjOUe/4mtgjvmlV8JWeY7zuNjVaXN7cdMIMUu8
	TxRDrOOsLibU7CRw0qpVMHURKFa1pz4b8HPHOoZ1xYMiSicIfwElUavIaetBtAuFbeCbu/lGvvr
	Y2HhWqvRfkazBhU54P+93qByP2jTD7rh9mG4bNEQE9+rkJ8633Ib20PuC+ReP9mjwA235jiXa9f
	v503i6flgtpwUACFCzZrXLSs2RZ5P3Hc2mQYWhJFGLsJv1dpi5Pxjag4q+A==
X-Google-Smtp-Source: AGHT+IGikmpmpoiahS6C039EIM4FWOINmFiK6nKg81tKKKY6N2Q8zXv85yrb97AEzFO3cAhGLIqJ9g==
X-Received: by 2002:a05:6a21:48b:b0:22f:8484:5ac2 with SMTP id adf61e73a8af0-23120df88c2mr6194764637.38.1752248557400;
        Fri, 11 Jul 2025 08:42:37 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74eb9dd5ccesm5762420b3a.27.2025.07.11.08.42.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jul 2025 08:42:36 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com,
	ulf.hansson@linaro.org,
	adrian.hunter@intel.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	kamal.dasu@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	Kamal Dasu <kdasu@broadcom.com>
Subject: [PATCH 1/4] dt-bindings: brcmstb-hwspinlock: support for hwspinlock
Date: Fri, 11 Jul 2025 11:42:18 -0400
Message-Id: <20250711154221.928164-3-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250711154221.928164-1-kamal.dasu@broadcom.com>
References: <20250711154221.928164-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Kamal Dasu <kdasu@broadcom.com>

Adding brcmstb_hwspinlock bindings.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
new file mode 100644
index 000000000000..b49ead166b1e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
@@ -0,0 +1,36 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/brcm,brcmstb-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom settop Hardware Spinlock
+
+maintainers:
+  - Kamal Dasu <kamal.dasu@broadcom.com>
+
+properties:
+  "#hwlock-cells":
+    const: 1
+
+  compatible:
+    const: brcm,brcmstb-hwspinlock
+
+  reg:
+    maxItems: 1
+
+required:
+  - "#hwlock-cells"
+  - compatible
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    hwspinlock@8404038 {
+        compatible = "brcm,brcmstb-hwspinlock";
+        #hwlock-cells = <1>;
+        reg = <0x8404038 0x40>;
+    };
+
-- 
2.34.1


