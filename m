Return-Path: <devicetree+bounces-268507-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKXODy00n2lXZQQAu9opvQ
	(envelope-from <devicetree+bounces-268507-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:41:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id ADA1919BAD9
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 18:41:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C0F9630D7335
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 17:39:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9DB843D5238;
	Wed, 25 Feb 2026 17:39:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="jVXm4b5i"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E42A3E8C5D;
	Wed, 25 Feb 2026 17:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=198.175.65.16
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772041183; cv=none; b=TFjLrONL7bysbWBxg+88PYl234n3XEclnfO008HfSeZ9XG9NoskVg/bFIN6Ll+yeROFBboyBWRE8KmyZZ2uToUp/wRfIzJtZimSSYzksRjXyzXjreIEwh76mXFUN0+YowPMs12S2y5m7LHNuEAo2NIe9P3efP4GovIO531QY76Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772041183; c=relaxed/simple;
	bh=vjnVB1Vzew7k5zlvOBJK/0/T/1c86VXa4sFXO45i+OY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rq3s/5/sx3H5Feep8dPCux5+8r35N/0h1HFuIHd6yCr6pRqnxkNewIs/LYivCLwkyPDFq1gift3QGyXZNAJ3+Qy58W8HGHb3L35HKEfL7TmsxZPT/a47b5eqUnT8hkUy1wrilh+gpJWlyRwKJGZX72xuqsgFnzaj7v7rOoTawNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=jVXm4b5i; arc=none smtp.client-ip=198.175.65.16
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1772041182; x=1803577182;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=vjnVB1Vzew7k5zlvOBJK/0/T/1c86VXa4sFXO45i+OY=;
  b=jVXm4b5int6m6oINC+zVGC/HyWK6f8VqLrx1XO+pzUOMjd5ArR4YvRKP
   dI/CnKrH+X23gyicU+yg/6DgWORBxfW6HoxVkJS+z1Z85XTy7Pkuo9+pb
   ly+pz9BTN/8BL6h3iVciIr+ik8m1vVJ61atdSxCCsW+QdFU9aL8+Ebu8W
   PPN28AeM1zHzTQfyHSbSyyzvQ2ZuIJU3em7GZmjuXSWkVP6GySI+Zv1J2
   SM6WFiVcLHLwHLPYzdUe4cWRR3WJVdNobku/0G4lJMg/uO/Ivmpessjro
   sGZkecc1fnt+NgjRyhJ7JzxW9HYwFCItTSh8TTwCwRePJ8w7RycrH7CVp
   Q==;
X-CSE-ConnectionGUID: UOD9x3GlQmekIzNWv8ptPA==
X-CSE-MsgGUID: jcE+Kyr+Rz6SPmWf5qxXuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="73265239"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="73265239"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
  by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 25 Feb 2026 09:39:40 -0800
X-CSE-ConnectionGUID: NOtz45LwRbCTC/61dVdXlw==
X-CSE-MsgGUID: Vz51FS7ERj65m2uHEopk9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; 
   d="scan'208";a="244029451"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa001.fm.intel.com with ESMTP; 25 Feb 2026 09:39:38 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id 25F8E9B; Wed, 25 Feb 2026 18:39:38 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 2/2] dt-bindings: cache: bt1-l2-ctl: Remove unused bindings
Date: Wed, 25 Feb 2026 18:37:21 +0100
Message-ID: <20260225173930.3819351-3-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
References: <20260225173930.3819351-1-andriy.shevchenko@linux.intel.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268507-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: ADA1919BAD9
X-Rspamd-Action: no action

As stated in [1] the Baikal platforms are not supported and
the respective driver code has just been removed. Remove
unused bindings.

Link: https://lore.kernel.org/lkml/22b92ddf-6321-41b5-8073-f9c7064d3432@infradead.org/ [1]
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 .../bindings/cache/baikal,bt1-l2-ctl.yaml     | 63 -------------------
 1 file changed, 63 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml

diff --git a/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml b/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
deleted file mode 100644
index ec4f367bc0b4..000000000000
--- a/Documentation/devicetree/bindings/cache/baikal,bt1-l2-ctl.yaml
+++ /dev/null
@@ -1,63 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-# Copyright (C) 2020 BAIKAL ELECTRONICS, JSC
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/cache/baikal,bt1-l2-ctl.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Baikal-T1 L2-cache Control Block
-
-maintainers:
-  - Serge Semin <fancer.lancer@gmail.com>
-
-description: |
-  By means of the System Controller Baikal-T1 SoC exposes a few settings to
-  tune the MIPS P5600 CM2 L2 cache performance up. In particular it's possible
-  to change the Tag, Data and Way-select RAM access latencies. Baikal-T1
-  L2-cache controller block is responsible for the tuning. Its DT node is
-  supposed to be a child of the system controller.
-
-properties:
-  compatible:
-    const: baikal,bt1-l2-ctl
-
-  reg:
-    maxItems: 1
-
-  baikal,l2-ws-latency:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Cycles of latency for Way-select RAM accesses
-    default: 0
-    minimum: 0
-    maximum: 3
-
-  baikal,l2-tag-latency:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Cycles of latency for Tag RAM accesses
-    default: 0
-    minimum: 0
-    maximum: 3
-
-  baikal,l2-data-latency:
-    $ref: /schemas/types.yaml#/definitions/uint32
-    description: Cycles of latency for Data RAM accesses
-    default: 1
-    minimum: 0
-    maximum: 3
-
-additionalProperties: false
-
-required:
-  - compatible
-
-examples:
-  - |
-    l2@1f04d028 {
-      compatible = "baikal,bt1-l2-ctl";
-      reg = <0x1f04d028 0x004>;
-
-      baikal,l2-ws-latency = <1>;
-      baikal,l2-tag-latency = <1>;
-      baikal,l2-data-latency = <2>;
-    };
-...
-- 
2.50.1


