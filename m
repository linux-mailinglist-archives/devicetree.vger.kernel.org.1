Return-Path: <devicetree+bounces-137036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C65A074DB
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:39:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD5F716855E
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:39:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74D17216E30;
	Thu,  9 Jan 2025 11:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="key not found in DNS" (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b="dlvchCls"
X-Original-To: devicetree@vger.kernel.org
Received: from esa1.hc555-34.eu.iphmx.com (esa1.hc555-34.eu.iphmx.com [23.90.104.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAF85216604;
	Thu,  9 Jan 2025 11:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=23.90.104.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422731; cv=none; b=VdhqFFDL6DmQDF+2TnvHQj5us+13cbnYJe8kJ3cvb81lQ0/SJeMKcoeBH09I1i1Et9wbsEScykwzCiheo9R3bq3+KCqo7V0wAFTd3xx3aS3GzL/Kr82IKx98lPNwLtejfaBrHmmzTsVKZh6ggEBjTlvGDzV1MOUVZz7jQat4TdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422731; c=relaxed/simple;
	bh=gOx6K0Qup/yjv9bWF675QnHjUBiz39afWgKA/I3TcGU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CDwg7H1ne2srOOdjMclMMlBDPmJPvmA1sdD5yROrWzjs7Cxga2itn1O9dB46jqkA+3hAepRUvb70dfa0bqlrRNGFTHolLYR+xNd3Bp66AQ861cHPwSmAlkKGbNgKlyF9p6iN03yFDU1F4i6Ko3pBHX4NVASyJVCU+PFszMJXsu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com; spf=pass smtp.mailfrom=mobileye.com; dkim=fail (0-bit key) header.d=mobileye.com header.i=@mobileye.com header.b=dlvchCls reason="key not found in DNS"; arc=none smtp.client-ip=23.90.104.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=mobileye.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mobileye.com
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=mobileye.com; i=@mobileye.com; q=dns/txt; s=MoEyIP;
  t=1736422728; x=1767958728;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=gOx6K0Qup/yjv9bWF675QnHjUBiz39afWgKA/I3TcGU=;
  b=dlvchClspxl9TCuho82amNZ+N8XCBS+FUV5/E/dzTPbLSgCvaQReNwc7
   DpBnzRI3exfbij093b2UCv29+NCdFWb7vjeZUt1bhJSArGtTiS/l5gZ1E
   E769OBvYq14U0AOjpkDbsVuLURMVPq9Dgy0ym1oBgwF7IU1zDlgRd+KRe
   3j7HHXYWjLJpZCCUkArtmCeaacmvgj2QHYT27IsLft4grNaTbqSfwXMuj
   B7kDgYImqKRHTjiH15xFxPIwOyNPcdd9WjnMol19HPqXVvwokX5DFbdrD
   AiO2r62DinHHfd107xfTIMhSHdQznCnPocAMriOWHB+heNjRNI7faMdgs
   A==;
X-CSE-ConnectionGUID: kpMYwASWQPW/c5tAy4j7BQ==
X-CSE-MsgGUID: x5lupIP1TJCjYTY/+OXDug==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from unknown (HELO ces04_data.me-crop.lan) ([146.255.191.134])
  by esa1.hc555-34.eu.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jan 2025 13:38:35 +0200
X-CSE-ConnectionGUID: bPs3+xalRWeIpzEhTnORnQ==
X-CSE-MsgGUID: YngYdLxgS4uDTZkH9kX05Q==
Received: from unknown (HELO epgd022.me-corp.lan) ([10.154.54.6])
  by ces04_data.me-crop.lan with SMTP; 09 Jan 2025 13:38:34 +0200
Received: by epgd022.me-corp.lan (sSMTP sendmail emulation); Thu, 09 Jan 2025 13:38:34 +0200
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
Subject: [PATCH v4 1/2] dt-bindings: interrupt-controller: add risc-v,aplic hart indexes
Date: Thu,  9 Jan 2025 13:38:13 +0200
Message-ID: <20250109113814.3254448-2-vladimir.kondratiev@mobileye.com>
In-Reply-To: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
References: <20250109113814.3254448-1-vladimir.kondratiev@mobileye.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document optional property "riscv,hart-indexes"

Signed-off-by: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>
Reviewed-by: Anup Patel <anup@brainfault.org>
---
 .../bindings/interrupt-controller/riscv,aplic.yaml        | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
index 190a6499c932..bef00521d5da 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/riscv,aplic.yaml
@@ -91,6 +91,14 @@ properties:
       Firmware must configure interrupt delegation registers based on
       interrupt delegation list.
 
+  riscv,hart-indexes:
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+    minItems: 1
+    maxItems: 16384
+    description:
+      A list of hart indexes that APLIC should use to address each hart
+      that is mentioned in the "interrupts-extended"
+
 dependencies:
   riscv,delegation: [ "riscv,children" ]
 
-- 
2.43.0


