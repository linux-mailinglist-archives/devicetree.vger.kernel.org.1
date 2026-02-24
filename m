Return-Path: <devicetree+bounces-267954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +NZNH/3DnWnORwQAu9opvQ
	(envelope-from <devicetree+bounces-267954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:30:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C6F34189050
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 16:30:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 665A830C6C54
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 15:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887A03A1E78;
	Tue, 24 Feb 2026 15:27:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b="XsycEl7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C16736405F;
	Tue, 24 Feb 2026 15:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=192.198.163.8
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771946837; cv=none; b=lPvpnf6iZt6UN27LkZc8TI/dNLV/Kl0P8uNyii+2Hx+YDfBJFHWnwsA077GcgnFIBuH75BN3jDoEikBhCcwqiJ+lJQw8myGOZzRR90/9g6SEPI+Vj4gIBsTV3uqKuR4MnCKZbC3pXNkhQjFjSBHNQzOlSk1QBBrsXX9rgpzBBnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771946837; c=relaxed/simple;
	bh=A7+WK8erpAlLo0Qzokj95+RVlw22fk6WfdNxB7xfazI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=KyN+VyjNdIInA+VDmnhYkzKMgmCpznZV8I68g1A2janYpUUGtW3vt0yye1YVlX6nvXkW6zTsiA0YScU/9eoMr8wpG4sgEnE+xpz91HzRXUchEbA2a9ViVb1Y03KwPlm6/P+8GAL+JvoDMrs2v6X2NJ1MaAUevL/DzotAHGlA2fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com; spf=pass smtp.mailfrom=linux.intel.com; dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com header.b=XsycEl7x; arc=none smtp.client-ip=192.198.163.8
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linux.intel.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linux.intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
  t=1771946836; x=1803482836;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=A7+WK8erpAlLo0Qzokj95+RVlw22fk6WfdNxB7xfazI=;
  b=XsycEl7xhVGRAjHxffeEe4BxqYd/gyF6XtftQkmesEzOAMFugFcmmSoV
   msdSx45nCjjXCMw/rzXZQx441HktWItmsadjUy/Xq7Wm6gaGUKYvUGvD2
   bmKw52LiMbOAGUHOoK1AN6HFua7Df3v6DZoZqRKygP8jQ+GsmizEp2Dhp
   100Kud+wgHdTtGAU1DiQGJCA3R6Rfk3u086euHj2MNSxrG4Z2XEN3WYfp
   2jT78mVVItZtzy4Tl0S2WBlkIXwZjKGH2OQxXHoj/vr52O49/muKDVVi4
   7r1StM/LoKodZV3Ax5Dt2VWPCMRjYTbx0MJ3u8Qc+ORbc8MM43NRlDY02
   Q==;
X-CSE-ConnectionGUID: zhb8s9lnThuFRfSWpQkiaw==
X-CSE-MsgGUID: D1DTU7UzRpOIgdP2luxB6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90543588"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="90543588"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
  by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Feb 2026 07:27:15 -0800
X-CSE-ConnectionGUID: yduGt3BkT7qyvpWomFLEAQ==
X-CSE-MsgGUID: SlafWeYWQgOPcF/tld1BRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; 
   d="scan'208";a="214774383"
Received: from black.igk.intel.com ([10.91.253.5])
  by fmviesa008.fm.intel.com with ESMTP; 24 Feb 2026 07:27:14 -0800
Received: by black.igk.intel.com (Postfix, from userid 1003)
	id C4C1D99; Tue, 24 Feb 2026 16:27:12 +0100 (CET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Conor Dooley <conor@kernel.org>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Randy Dunlap <rdunlap@infradead.org>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v1 1/1] dt-bindings: cache: bt1-l2-ctl: Remove soon be unused bindings
Date: Tue, 24 Feb 2026 16:27:11 +0100
Message-ID: <20260224152711.3615622-1-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.50.1
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[andriy.shevchenko@linux.intel.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267954-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	NEURAL_HAM(-0.00)[-0.994];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,1f04d028:email,intel.com:email,intel.com:dkim,devicetree.org:url]
X-Rspamd-Queue-Id: C6F34189050
X-Rspamd-Action: no action

As stated in [1] the Baikal platforms are not supported and
the respective driver code is going to be removed. Remove
soon be unused bindings.

Link: https://lore.kernel.org/r/20260224150616.3585591-1-andriy.shevchenko@linux.intel.com [1]
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


