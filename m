Return-Path: <devicetree+bounces-137037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 34C58A074DF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:39:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52D753A69CB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:39:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66DD4217656;
	Thu,  9 Jan 2025 11:38:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="XhGs1teC"
X-Original-To: devicetree@vger.kernel.org
Received: from esa1.hc555-34.eu.iphmx.com (esa1.hc555-34.eu.iphmx.com [23.90.104.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50641216E11;
	Thu,  9 Jan 2025 11:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.90.104.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422732; cv=none; b=UYqpo3Nh9Nv1tvJRra11kRf2LK9ZUISzxHmEP4lFvJpEWCmL2Zklw6X/vbbQYdJGLWP4QxTJkrwVPZ4Y/is60OE0F3g8eusi7sqMpKInlpXk5m6V+I8Djumk+2K7nn7MbotyzqSXX9rKfUHowYbX14ozXVkPkWjzEA78ncLqeZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422732; c=relaxed/simple;
	bh=t4I+3GYTBD9R29FxQzIKQ/m13Ut3AEhZho/gtBtVzk8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=TS9N+T0MSVOU3JLLSrrovJueYdEp5QSuKhTRiXEVVf4C8zCS+u+ytPpOC8PVX8hipphRIl0n2jrHDc+MRr2sH1/uPq2p6Xou88FxWVb5Ni2sreNHLTdqWe5/smViBAzj0xDSelCKznG5vyD0UXH2Yuc3QL5TKuN5+RvvMpoCoxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=fail (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=XhGs1teC reason="key not found in DNS"; arc=none smtp.client-ip=23.90.104.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=mobileye.com; i=@mobileye.com; q=dns/txt; s=MoEyIP;
  t=1736422729; x=1767958729;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=t4I+3GYTBD9R29FxQzIKQ/m13Ut3AEhZho/gtBtVzk8=;
  b=XhGs1teCnCKSNn8fhB5XrjT1it0+3sR9MwOYPjSzWisQa9r7NQnonMOu
   mx34Vtsi8cEUqqIBk5BIqir1CqoHGw4m9VPFHjlXWSPAVEB4mnaaxpngo
   q6n6wky+C0KJWotcLTZQFvN4EcAQUVOmrP/zzxaMIBTOfxtU5M58dkh0k
   BsiEfWX5hkcj6daFf+/2k/MIBg+zB//vkUIYlB7D4a5DaIDyV+f/KkegP
   SqBH2/UZg8QT/KKesBRsZ8a1pCoICfrkg2OIvi+lGesllrNsD8hO6AF9C
   w+aEGFNCs2mRhoPVRy0xpvyn3L6rb53m+Zh3KlXg5Hfrud1QJ/S+ArXof
   Q==;
X-CSE-ConnectionGUID: YaQ+qdjmShW4pK45/74YlA==
X-CSE-MsgGUID: T/4SHfBLSYCX/CRScoFwdA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO ces01_data.me-corp.lan) ([146.255.191.134])
  by esa1.hc555-34.eu.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 13:38:37 +0200
X-CSE-ConnectionGUID: rRCfangzSQCGyCwuLbNjPA==
X-CSE-MsgGUID: puy+xhY0TIOwl9XhfKbrdQ==
Received: from unknown (HELO epgd022.me-corp.lan) ([10.154.54.1])
  by ces01_data.me-corp.lan with SMTP; 09 Jan 2025 13:38:35 +0200
Received: by epgd022.me-corp.lan (sSMTP sendmail emulation); Thu, 09 Jan 2025 13:38:35 +0200
From: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
To: Anup Patel <anup@brainfault.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Subject: [PATCH v4 2/2] irqchip/riscv-aplic: add support for hart indexes
Date: Thu,  9 Jan 2025 13:38:14 +0200
Message-ID: <20250109113814.3254448-3-vladimir.kondratiev@mobileye.com>
In-Reply-To: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Risc-V APLIC specification defines "hart index" in [1]:

Within a given interrupt domain, each of the domain’s harts has a
unique index number in the range 0 to 2^14 − 1 (= 16,383). The index
number a domain associates with a hart may or may not have any
relationship to the unique hart identifier (“hart ID”) that the
RISC-V Privileged Architecture assigns to the hart. Two different
interrupt domains may employ entirely different index numbers for
the same set of harts.

Further, this document says in "4.5 Memory-mapped control
region for an interrupt domain":

The array of IDC structures may include some for potential hart index
numbers that are not actual hart index numbers in the domain. For
example, the first IDC structure is always for hart index 0, but 0 is
not necessarily a valid index number for any hart in the domain.

Support arbitrary hart indexes specified in optional APLIC property
"riscv,hart-indexes" that should be array of u32 elements, one per
interrupt target. If this property not specified, fallback is to use
logical hart indexes within the domain.

[1]: https://github.com/riscv/riscv-aia

Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 drivers/irqchip/irq-riscv-aplic-direct.c | 25 +++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/irqchip/irq-riscv-aplic-direct.c b/drivers/irqchip/irq-riscv-aplic-direct.c
index 7cd6b646774b..ea61329decb2 100644
--- a/drivers/irqchip/irq-riscv-aplic-direct.c
+++ b/drivers/irqchip/irq-riscv-aplic-direct.c
@@ -31,7 +31,7 @@ struct aplic_direct {
 };
 
 struct aplic_idc {
-	unsigned int		hart_index;
+	u32			hart_index;
 	void __iomem		*regs;
 	struct aplic_direct	*direct;
 };
@@ -219,6 +219,21 @@ static int aplic_direct_parse_parent_hwirq(struct device *dev, u32 index,
 	return 0;
 }
 
+static int aplic_direct_get_hart_index(struct device *dev, u32 logical_index,
+				       u32 *hart_index)
+{
+	static const char *prop_hart_index = "riscv,hart-indexes";
+	struct device_node *np = to_of_node(dev->fwnode);
+
+	if (!np || !of_property_present(np, prop_hart_index)) {
+		*hart_index = logical_index;
+		return 0;
+	}
+
+	return of_property_read_u32_index(np, prop_hart_index,
+					  logical_index, hart_index);
+}
+
 int aplic_direct_setup(struct device *dev, void __iomem *regs)
 {
 	int i, j, rc, cpu, current_cpu, setup_count = 0;
@@ -265,8 +280,12 @@ int aplic_direct_setup(struct device *dev, void __iomem *regs)
 		cpumask_set_cpu(cpu, &direct->lmask);
 
 		idc = per_cpu_ptr(&aplic_idcs, cpu);
-		idc->hart_index = i;
-		idc->regs = priv->regs + APLIC_IDC_BASE + i * APLIC_IDC_SIZE;
+		rc = aplic_direct_get_hart_index(dev, i, &idc->hart_index);
+		if (rc) {
+			dev_warn(dev, "hart index not found for IDC%d\n", i);
+			continue;
+		}
+		idc->regs = priv->regs + APLIC_IDC_BASE + idc->hart_index * APLIC_IDC_SIZE;
 		idc->direct = direct;
 
 		aplic_idc_set_delivery(idc, true);
-- 
2.43.0


