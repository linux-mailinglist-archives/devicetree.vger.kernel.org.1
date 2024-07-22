Return-Path: <devicetree+bounces-87181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 564FC938C30
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:43:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1AD17281BC7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 09:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B78CC16C846;
	Mon, 22 Jul 2024 09:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b="TpZ8jy41"
X-Original-To: devicetree@vger.kernel.org
Received: from smtpout148.security-mail.net (smtpout148.security-mail.net [85.31.212.148])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5820C16B75B
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 09:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.31.212.148
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721641407; cv=none; b=oVbDMZKtstBZwjph0D57agSqi3QJRIooN5E3cV9hwEqScd5HzMNu6URkKQrI+H0hzKZdqgMRbk5ViV44euzcPyNLHCqA0F4onuVpBuBGcqua1XbU72bRNqLcDdZ1UIDwJkH+mPjEchhFHKvJ4G4NWa01jEPD2sakD3DnPQgg3+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721641407; c=relaxed/simple;
	bh=A4I33nibX6sQIz/KSjvrrW2ZqZnbsn4l26E8nv0hiKI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qLnytJnRhhYwmtLo+YegWciEJzw3fhCnrPZnizd0ZCtSDpl8/4P9M8HJY+JMbyfBKwd2npR1wLq4Y0SrJ3x5dEPX6lvSfmA4e4ZRXZXr9/wvE2TBRDh0GiXyXBnWHu1LyuqmQkfJXUaBD1psArpjE38lorOyCckbP3qVvR3z0T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com; spf=pass smtp.mailfrom=kalrayinc.com; dkim=pass (1024-bit key) header.d=kalrayinc.com header.i=@kalrayinc.com header.b=TpZ8jy41; arc=none smtp.client-ip=85.31.212.148
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=kalrayinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kalrayinc.com
Received: from localhost (fx408.security-mail.net [127.0.0.1])
	by fx408.security-mail.net (Postfix) with ESMTP id 9F60C322D00
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:43:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1721641400;
	bh=A4I33nibX6sQIz/KSjvrrW2ZqZnbsn4l26E8nv0hiKI=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=TpZ8jy413vklg9e0xGsONQT30xSJKSzP4R86024JLYpW9bOnrBbco89Mg850LmxqB
	 IpqTmgQSg8U97sW6YlmzB82jnTuzWxl9v1s9td0EfMvIjey1hN24RKYbf4Rj36DyKt
	 0L6BpDuEYKzoTmBqEvs1ubEpUkBkzhtiJEBefDaI=
Received: from fx408 (fx408.security-mail.net [127.0.0.1]) by
 fx408.security-mail.net (Postfix) with ESMTP id 73242322CBF; Mon, 22 Jul
 2024 11:43:20 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx408.security-mail.net (Postfix) with ESMTPS id C3E7432247A; Mon, 22 Jul
 2024 11:43:19 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id 9978E40317; Mon, 22 Jul
 2024 11:43:19 +0200 (CEST)
X-Quarantine-ID: <DMT6fGodWfLp>
X-Secumail-id: <b5cf.669e29b7.c19bb.0>
From: ysionneau@kalrayinc.com
To: linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Jonathan
 Borne <jborne@kalrayinc.com>, Julian Vetter <jvetter@kalrayinc.com>, Yann
 Sionneau <ysionneau@kalrayinc.com>
Cc: devicetree@vger.kernel.org
Subject: [RFC PATCH v3 11/37] dt-bindings: kalray: Add Kalray SoC board
 compatibles
Date: Mon, 22 Jul 2024 11:41:22 +0200
Message-ID: <20240722094226.21602-12-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240722094226.21602-1-ysionneau@kalrayinc.com>
References: <20240722094226.21602-1-ysionneau@kalrayinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done

From: Yann Sionneau <ysionneau@kalrayinc.com>

Add Kalray SoC board bindings.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---

Notes:

V2 -> V3: New patch
---
 .../devicetree/bindings/kalray/kalray.yaml    | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/kalray/kalray.yaml

diff --git a/Documentation/devicetree/bindings/kalray/kalray.yaml b/Documentation/devicetree/bindings/kalray/kalray.yaml
new file mode 100644
index 0000000000000..3da817da9b2fe
--- /dev/null
+++ b/Documentation/devicetree/bindings/kalray/kalray.yaml
@@ -0,0 +1,22 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/kalray/kalray.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Kalray SoC-based boards
+
+maintainers:
+  - Jonathan Borne <jborne@kalrayinc.com>
+  - Julian Vetter <jvetter@kalrayinc.com>
+  - Yann Sionneau <ysionneau@kalrayinc.com>
+
+properties:
+  $nodename:
+    const: '/'
+  compatible:
+    oneOf:
+      - description: Kalray Coolidge SoC on qemu
+        const: kalray,coolidge-qemu
+
+additionalProperties: true
-- 
2.45.2






