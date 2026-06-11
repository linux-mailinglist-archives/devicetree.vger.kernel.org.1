Return-Path: <devicetree+bounces-310284-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U7P9GNZ9KmpTrAMAu9opvQ
	(envelope-from <devicetree+bounces-310284-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:20:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B0125670578
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:20:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=JKsABQn+;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310284-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310284-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC22F321C419
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 09:13:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA7C3BCD3D;
	Thu, 11 Jun 2026 09:13:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B3E73BBFD1
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 09:13:34 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781169215; cv=none; b=SeZlfzyZdl/cbV2HJRfdvCaqRQnlCk0uv3P7QzGgi271RmH5xVhWrV8JjobfYQOvxQgpcjw9jxpbqkMj0G37an/wS828zPflg2AZJSL0AvuiYrWlHZepnhTV+T7/GOtdS0EyW4ifTvVJDQjxqb4QdKzsfKtd9VOTvUuB+5nba/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781169215; c=relaxed/simple;
	bh=4zI/5X4pNRV/7szhudEeFOF+VpYNSo9Mq/bEytPBPVM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Wx6P2z7dqlUMUtWgomyVz7El5DUq1LsddLmkSmQynyts47axJrNeGwdmG2F7gYBn0kpRkBKvIR+sAhlQchKBQ8luj4mAqabtzHE55GKO3fjkmlCkS2L8KtQnpoxDOmwo/TVFjpDWkB8YVH+10gwvRkekcRE9p8iY+ZdAo300el4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JKsABQn+; arc=none smtp.client-ip=209.85.210.177
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-84226d0f1d2so5171446b3a.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 02:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781169213; x=1781774013; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/512MrEHO7sxLE+hovBiI8TbKkolqHX7zTsKHonXt4c=;
        b=JKsABQn+aeDPSRDCztMH28N0O4g0I+FMvNQWuWw2ab8SXmH27dUP7dSdCagg0BviVd
         bwifPzae32oHyYKle+ASi+kTEkDNR01+1d1v+z2iVfdtRp9XOUqTr/4FJSJotrNZptlJ
         PeXcig2nUSM7QANXZ3rKcvaoy2d9bofMArMFlUo4JPYl5sKw2XTARaSBcU2XRypwY047
         632FfHdnXTqt0vxO+vdJ+yUdIoJRkHW3S4Y7CP+JZB8FMybTNKsif2RxnO47opXVmJ5s
         X56fv4dxOtuqi3RTZ3Nrs24+/sC8YmtEjfEu2JJnapYA346az51z2jgA7LAVY2L7uGJx
         Rw8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781169213; x=1781774013;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/512MrEHO7sxLE+hovBiI8TbKkolqHX7zTsKHonXt4c=;
        b=JYw9lIZVO5hKJzKccFsPXD2f7ykGBSVqWDDUWLUvp2XLx8BSaPhS+qvdVtuEAtDeoi
         R5XLnVOgcCKDV1Qay8uHmYxXxwJhJKwyXE7e1lu3vhncfeaL74mxuztcD9CVPvCHZR3l
         yVllzrN+7z7gcxJV+s4LWPZlKNarsz5KC3bONuc/cmsxgnFAE9rhOtNjgi8K53YjLx09
         xMa4miaVsutyYjHJaf/dp3CZH6xF4larGl2VRFJPNKKmulrUeVsXhFL7EJ22ZjJdDnrz
         5XCU4K7Bbz2fIYuGXsWSM5j7ZgppG+djpnkTkmP34heCf9Ytp6nBkkmiMDqcS7637q8Q
         IpoA==
X-Forwarded-Encrypted: i=1; AFNElJ/TmdYEWa4zXF/SKsOVUNqPqYceC7Eo3NxiQwfCpPztM70LWXFqQlq0RelNBdc/NeQbCMHwTgkK1aOd@vger.kernel.org
X-Gm-Message-State: AOJu0YzFyUXsDkG4aBOiK4wRl8stSPreAXha5xFcz903ezZde1p4oZCK
	5HY+hIEQmbmrd4bkuqDaekEoMkvHlMBjTl0MPqTk7Dq6z/kKZTu4+LXv
X-Gm-Gg: Acq92OEiK3qiayGz0FGgpwbZueC/QobmjgSK6kEzR4wcLXP4mw0gliUQuTbhLO87W48
	aZjewbQVpz6N1RYRFVGOFN/jxciVbJ9eVIci0j233FoFepFzr8k8lnQcd2ZDrsKdm8i9Azk6euq
	/IGAdx5Hgf7XWUhaXo2qJf+VSys7mHNLRY9zdSV6Dtk+zGq/1Z28qdG/O7TrSvkdKEYbbu1eJOI
	5JqalCk2SD146il4fHxVgA70FlN30IsWpS1j9jv8SgVTL3XjY53dLKu2VgR4cMP0VZajookO4XH
	N3TjxZkovMJw28nKx83oG769A5auIUO8M6gGbDGlS54EPoy3Uu0sq2s6su7Eu3BZSMhaX+B+Xf4
	BZuC9fPgXVlxi5SeOw0v0AZ09qM+C88afzUdJSD9UKfkRw2TC5flKpER9ZaswaBFdirg0E5wh7P
	qg5YRyo31MAHSyRXFkhec2NcREX+LI8ZqAtlzagXY6POLhMlPKR3l+b+Er6oI+6nxNFZ57nYqcX
	jDjHsKRqd4XBaZ/0k+6Fe+w
X-Received: by 2002:a05:6a00:1d90:b0:841:58b0:82bb with SMTP id d2e1a72fcca58-843367c711bmr2254610b3a.9.1781169213545;
        Thu, 11 Jun 2026 02:13:33 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-84338319d4esm1417446b3a.51.2026.06.11.02.13.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2026 02:13:33 -0700 (PDT)
From: Chi-Wen Weng <cwweng.linux@gmail.com>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cwweng@nuvoton.com,
	cwweng.linux@gmail.com
Subject: [PATCH v3 1/2] dt-bindings: spi: nuvoton,ma35d1-qspi: Add Nuvoton MA35D1 QSPI
Date: Thu, 11 Jun 2026 17:12:45 +0800
Message-Id: <20260611091246.2070485-2-cwweng.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260611091246.2070485-1-cwweng.linux@gmail.com>
References: <20260611091246.2070485-1-cwweng.linux@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,nuvoton.com,gmail.com];
	TAGGED_FROM(0.00)[bounces-310284-lists,devicetree=lfdr.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwweng.linux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:cwwenglinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nuvoton.com:email,vger.kernel.org:from_smtp,devicetree.org:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B0125670578

From: Chi-Wen Weng <cwweng@nuvoton.com>

Add a devicetree binding for the Quad SPI controller found in
Nuvoton MA35D1 SoCs.

The controller supports SPI memory devices such as SPI NOR and SPI NAND
flashes. It has one register range, one clock input and one reset line,
and supports up to two chip selects.

Signed-off-by: Chi-Wen Weng <cwweng@nuvoton.com>
---
 .../bindings/spi/nuvoton,ma35d1-qspi.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml

diff --git a/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
new file mode 100644
index 000000000000..d3b36e612eb0
--- /dev/null
+++ b/Documentation/devicetree/bindings/spi/nuvoton,ma35d1-qspi.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/spi/nuvoton,ma35d1-qspi.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Nuvoton MA35D1 Quad SPI Controller
+
+maintainers:
+  - Chi-Wen Weng <cwweng@nuvoton.com>
+
+allOf:
+  - $ref: /schemas/spi/spi-controller.yaml#
+
+properties:
+  compatible:
+    const: nuvoton,ma35d1-qspi
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  clocks:
+    maxItems: 1
+
+  resets:
+    maxItems: 1
+
+  num-cs:
+    maximum: 2
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - resets
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/nuvoton,ma35d1-clk.h>
+    #include <dt-bindings/reset/nuvoton,ma35d1-reset.h>
+
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        spi@40680000 {
+            compatible = "nuvoton,ma35d1-qspi";
+            reg = <0 0x40680000 0 0x100>;
+            interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&clk QSPI0_GATE>;
+            resets = <&sys MA35D1_RESET_QSPI0>;
+            #address-cells = <1>;
+            #size-cells = <0>;
+        };
+    };
+
-- 
2.25.1


