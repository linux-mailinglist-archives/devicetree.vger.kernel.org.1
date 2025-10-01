Return-Path: <devicetree+bounces-223134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A0469BB177D
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 20:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE1883C0A0D
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 18:17:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D1082D47EE;
	Wed,  1 Oct 2025 18:17:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="NM9DTKVC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f99.google.com (mail-oa1-f99.google.com [209.85.160.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844022D46B4
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 18:17:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759342648; cv=none; b=sxeKald+oURAxNRKyYiyK6+B4akYRtFqwowAUn0Sm342cqvULdEAdkQhs3vkHBre1CXeaOKBR65jCqvwxsdN++4ZLwb6ezth9icql63Mxyj4eNwXTXp8sHIxEa6aiLFdJg98L5fLpcq5xTKeYcDG1VEhIW+KGCcrRM6aKVKmA9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759342648; c=relaxed/simple;
	bh=twWts/BBJvvdpMllhwwy0sPWeHXBhThVVr0F+f1kI8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=feyxHnt+odmxVYKSpeMVLF1Co339OarDTGdiOqSZ+/gr2orgk9UEYB//JavH2B2elWR7jyf0SczyJ/u+KWRfwDtB7saqlpNvo9ioLPDV2WTR439i7t6wsVpY1OXKmJmzRPRrko1C6A79I+YxuYRStnHVk9WnEREJ1UYNEUhi71M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=NM9DTKVC; arc=none smtp.client-ip=209.85.160.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f99.google.com with SMTP id 586e51a60fabf-3799fc8ada6so119138fac.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759342645; x=1759947445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=n4nR35/5j4AUxmv0DNlrycGVxRQyXByTQvKB0ZFv/dRsG//TNnKZh8WUl4hJmhd/US
         +TEXPH+3uGTLnfafnMxSR7H8itse+3CJ54+8/me+J8WTl/Xo+TU4W3xRkGjvqrb+28hc
         Pqup14LKqhlJWNgCI1rquXDepNjUbVmdHRHB7tx33A1o+3BO2leEEd0sxaaQNwcXmTeM
         AnRrQ8OpE6ZqY83LhApe8+YNqoCS9AJXutmCqEFjPuIW8gwVs0S9vz9fOzPUMkzWU7gH
         dnGfVNzT6mA6BXvEKPLLhoIVSJYxEQ/HOVN6Y/8OejFaGGCCD4IPWc/uEUPh6wrkpU5g
         iOAA==
X-Forwarded-Encrypted: i=1; AJvYcCXLbJcCqxYlwpkOb4Ra830pD7N4z3/dOVfieKXDdCEsaPeAI7qozQYdiCuUgGn88R2haNwbYIq+b3s8@vger.kernel.org
X-Gm-Message-State: AOJu0YxwPdUmcymbiBuUCwbuzxFekD/TkNQJ3pmDB57c+rapr9PiGx13
	5bFKXAJ8wDQU8E+yApZ29BIHaXMGUlxOFYTioPZKNvRzF4Mt4pYgyTDnNWVdyz0H0dSsRfyNWID
	qNBv+dmKuMVYeixM5Zh7eh+QOK0Hr0dxXTjrcmKZFY3mPKy2npB1SN2SC3u6fFB6SBAu7DFuiN2
	MmWHC2+/GXCXW86Fvh6Y4kHymNJ667KfCFO+obuiKxI/wQUQebGjPIrs2QGGbMQUC8ZLclZfC7G
	JfRZKKZupzrZg==
X-Gm-Gg: ASbGncv/3nhO7Xu+UiXKHWrslebEfSI7oMk6xqtQXnSv8zIlMpFroJKe6MnaLneij+L
	bGjNDBHdWarfNcftkKdl+A3NyQfQ9nySi5YeAaibiVT2pMNIq0cpxvVfLotQXl8vNb58R4d7QSM
	k5AqiLity39Cf4U50yiSxse7NyVdD2jRX0WMSd5NXMcq4ubAypo5r1If4UsjjfCojaeiUhG8LDR
	x+Mb5m2W+lkp0dDdukAPGY9Fv3O8yq0Skms7ezPrK/dblic/CxDPhKUGziYb6RL+63Kqswr1EVC
	AbUSaVOMpvnNV4MYIxsFbJXkLga9BiODFQrsrb5gvJoh7u1ReIGs36d6nYdkeHeMQplZIzGoiZn
	B+q3bOK6ad5DsQ/kpvsqOLjqrSzFmfSB+RqB34kHLZDmNSXr/JiqIg+XJY0hKNXYVVeYxiG/4g+
	Me1suz
X-Google-Smtp-Source: AGHT+IFqWLO8TrorS7BnLlUWnt9Dvj/62A4C4pql0b/Ej9F21I063kUxFStISmm8ho6n55AcrQZ9f/FE4wnM
X-Received: by 2002:a05:6870:6490:b0:36d:31f3:9f1c with SMTP id 586e51a60fabf-39b90460c39mr2828389fac.14.1759342645372;
        Wed, 01 Oct 2025 11:17:25 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id 586e51a60fabf-3ab79f51586sm35397fac.3.2025.10.01.11.17.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Oct 2025 11:17:25 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d602229d20so2995291cf.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 11:17:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759342644; x=1759947444; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SqovZHXYm5Oo5CU4XtE9N0uxOF2JJp5QxUlgkpF6rV8=;
        b=NM9DTKVC3uORx0VjAAs4aCB9j3rmQAfnn1bZlsb1kHYVsCPf341aWBgPWSAIm2j+m/
         GPX5R8bux9KxGbyuSMzCJm/cBLsV0tdlOoi5Y/Ag4a7j4vEAKvC03ldn0mQqc49rEaKT
         KfX8k5VCZvUvkU/I8BvsUu3KaAcNjoPGHTpN0=
X-Forwarded-Encrypted: i=1; AJvYcCXS9G0FPJO62KesM5+MtymgslLFFiUqiP/n/UI6fF8n3pdF7KxUgNpL+/NK+PN8YzpDGZ6WcVZ0z86E@vger.kernel.org
X-Received: by 2002:a05:622a:258e:b0:4df:3960:a963 with SMTP id d75a77b69052e-4e41c923deemr68250451cf.7.1759342644358;
        Wed, 01 Oct 2025 11:17:24 -0700 (PDT)
X-Received: by 2002:a05:622a:258e:b0:4df:3960:a963 with SMTP id d75a77b69052e-4e41c923deemr68249741cf.7.1759342643640;
        Wed, 01 Oct 2025 11:17:23 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4e55c9e78cfsm3847671cf.27.2025.10.01.11.17.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 11:17:23 -0700 (PDT)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: peng.fan@oss.nxp.com,
	andersson@kernel.org,
	baolin.wang@linux.alibaba.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	florian.fainelli@broadcom.com
Cc: bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v2 1/3] dt-bindings: hwlock:  Adding brcmstb-hwspinlock support
Date: Wed,  1 Oct 2025 14:16:39 -0400
Message-Id: <20251001181641.1561472-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
References: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

Adding brcmstb-hwspinlock bindings.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++++++++++++++
 1 file changed, 36 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
new file mode 100644
index 000000000000..f45399b4fe0b
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
+  compatible:
+    const: brcm,brcmstb-hwspinlock
+
+  "#hwlock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#hwlock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hwlock@8404038 {
+        compatible = "brcm,brcmstb-hwspinlock";
+        reg = <0x8404038 0x40>;
+        #hwlock-cells = <1>;
+    };
+
-- 
2.34.1


