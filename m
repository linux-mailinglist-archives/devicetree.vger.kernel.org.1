Return-Path: <devicetree+bounces-225141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A197BCAE7D
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 23:20:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 244E548053D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 21:20:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83F64281503;
	Thu,  9 Oct 2025 21:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Ji/MK2/C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f99.google.com (mail-yx1-f99.google.com [74.125.224.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01600280339
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 21:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760044839; cv=none; b=r6mahQlDQgECcTWXMrjmxm3pBEtQEgR0SVNII26CbM2cZ0MPJ649h5vHK0knHJK2tIQLfIjYFoRW6Rt0V2mUa0mrP6LlfowuB7kpf5PCXw0PR23rTdI+pJQPmdrjmJ244yIM0vl3jK/cCDAC9WlhGMpcFl2q82nvjNp+iLXVCu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760044839; c=relaxed/simple;
	bh=9uEjTfrGnmGkJo/3RuxVzKWei7JsAvyM/X7u5LLvmQ0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZFZcSLJjvf4GeKav59oX6nGhYC1kHKZKnVM9MepSVijcTb9pzmN8J7BKxHzzKomEv4HvU8Wsxr7YJL0NsiDNAU2ZnfgRUKK3bjssd/R8CwZcXyLXvx8hpqp45IWwE1y2DUqebxDUovHDnpDjEpJJZg6iuu3TpzXqYABNekvr7aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Ji/MK2/C; arc=none smtp.client-ip=74.125.224.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yx1-f99.google.com with SMTP id 956f58d0204a3-633bca5451cso1520390d50.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760044836; x=1760649636;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LNCBeBBdkJ6krQ6n6YSc9TV1L3hgIbHKEJb0ek4nU4k=;
        b=Z0gMxqdoLRcCzBixjRN8ZUID51E/NdVCygAROxNR6bhoR5YAW95AQKndhpomFSr38e
         RcTvHtnPdWB7jZV8o+/Ez72L3Y3MHwWKNTr4B7LNJUWpj/z6GscUAxmOxVRmMzQ0o/M7
         rbZ1/QvVY6ol6XxnRzwah2YpmqsSgQuGfH36i2QhsLXnZ67K1F9fiscF7G7EF6XaWTzX
         oDmCgie9VAQmt02F+QPJpNEMG6UXNJJB3x3kAWyldomhnurfgp9Du6ARs6mch42JVoLc
         5CIus7XjDSuKHDEuaadMMcoK8IwI/OfxC4RZKrb/kKD5FPv01ctP4yLSb2tYtTg+Pkxc
         cIFA==
X-Forwarded-Encrypted: i=1; AJvYcCVH5+OqxknqqvXv3iALuWdP6H6Exz1NjZO9HanYXo5/LV7ErcZsFXhgOlvU4s+WR396SmMnJyua12qJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yycdsx3ZFVVKZSk13UXKkJZeI2wL/WxLxgD0byL5q6b7AbXw0EO
	xIaJM42uOH2pDH282u0SEgNiz1od8oIPh4EFSC9WWUXx02yP/1Fhewi6pfzkelhyy0EVuSaWwNe
	F/THPBQp7Bp4mKJ96EIXGSkCj7BupRMf+1/NPBaCGm8gZPaYZkBp994TqmEg6qzZ4XUQGH/b1WH
	KlLeOtwhKQDCWQo10R2ySwgIe7u00RtHhJz2axDOAB0B+izu68wxVBif7smEQ4ARvUI2flw27n9
	jt9J1ICJgTjzQ==
X-Gm-Gg: ASbGnctA7Js5uhdA6NDZhr1+VyrJHb9CHSKhZK6zOAuCRr2/kyP/5M4qsFGFMdl81o4
	WlycN4TZbzpocmaiYWtkRm3AZVKHjIObXzay4VUrKvaicbn1u+YNrFtLfRZmVIFoh5EMOxUryLo
	Jdf8ffGYCupNEdwNkCfB+i1hJDJ5YXZHulREY3cxQaw3Vs5SwWl6tisZkyGacxShWQsjE0ohX1Q
	U5MG/QBFwYavm6Y/p1Mj29izgb1cJ0YFzVltqNDdeO8yjPs1g97wLy/ESvAGQ3Mr6JgEtcRxd/H
	ZILiJy/dB3O2GDgINCAu8Z9jOlNPSa5knIVj7n8Hvl+QcqE3kxLhEY5385R+3omncDaIy45n2CM
	UzsEutzWbB4JZsGpfNdnSn6E2S9buLVat3G6hqy1p6NASO3+IA1m/zdeb5sRuVHBfcW7kSfdFpQ
	nEhNgq
X-Google-Smtp-Source: AGHT+IG8fRVAsA0JeihM8i/9LIxjttEhLXTviDecWhOZJ9dln92kOob8IUMWQRv/2OhVVgx6zKf1FOQad8XT
X-Received: by 2002:a53:cb88:0:b0:636:d75f:636 with SMTP id 956f58d0204a3-63ccb918d3dmr7076323d50.53.1760044836339;
        Thu, 09 Oct 2025 14:20:36 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-119.dlp.protect.broadcom.com. [144.49.247.119])
        by smtp-relay.gmail.com with ESMTPS id 956f58d0204a3-63cdf8aaa87sm114323d50.2.2025.10.09.14.20.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Oct 2025 14:20:36 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-85641d6f913so530004185a.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 14:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1760044836; x=1760649636; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNCBeBBdkJ6krQ6n6YSc9TV1L3hgIbHKEJb0ek4nU4k=;
        b=Ji/MK2/C/bXTrPERNnUWrhYhRnb+LTvOh08Ir49ZtaNI2sT7M56FZEANne3cL43daE
         c+ujDAgkILPxKTGsMGdqP3MblZN/lBLVOb9XNAh8Sxb/aIcFBliDrwIF2ads9hy3NkYX
         lNtKGlsovgM9qLqEjSjg6nF4Gu/ckE7fVHUqs=
X-Forwarded-Encrypted: i=1; AJvYcCUv0bezun7LDBYqf1NKtqGrE3gi3N8MiL65oXaybiL/e3RMRKDBxeL8E+NiaZTXZXzB42SMuV65hdN3@vger.kernel.org
X-Received: by 2002:a05:620a:462c:b0:85d:aabb:47b4 with SMTP id af79cd13be357-8834ff8dd75mr1273447985a.12.1760044835679;
        Thu, 09 Oct 2025 14:20:35 -0700 (PDT)
X-Received: by 2002:a05:620a:462c:b0:85d:aabb:47b4 with SMTP id af79cd13be357-8834ff8dd75mr1273442585a.12.1760044835103;
        Thu, 09 Oct 2025 14:20:35 -0700 (PDT)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8849f9ae428sm274832685a.16.2025.10.09.14.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 14:20:34 -0700 (PDT)
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
Subject: [PATCH v3 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock support
Date: Thu,  9 Oct 2025 17:20:01 -0400
Message-Id: <20251009212003.2714447-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251009212003.2714447-1-kamal.dasu@broadcom.com>
References: <20251009212003.2714447-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

The broadcom settop SoCs have hardware semaphores as part of "sundry"
IP block which has other controls that do not belong anywhere else.
e.g. pin/mux controls, SoC identification, drive strength, reset controls,
and other misc bits are part of this block.

Adding brcmstb-hwspinlock bindings which allows the hwspinlock driver to
iomap only the 16 hardware semaphore registers that are part of all settop
SoCs. Hence the bindings shall use the common "brcm,brcmstb-hwspinlock"
compatibility string.

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


