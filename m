Return-Path: <devicetree+bounces-268105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4D8nO3BXnmkKUwQAu9opvQ
	(envelope-from <devicetree+bounces-268105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:59:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F80190532
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 02:59:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A85430B99A0
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 01:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E434726CE1A;
	Wed, 25 Feb 2026 01:59:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nJhIegNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939C72236F7
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 01:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771984746; cv=none; b=liH425UDbelp7lJaQUs2smkcUY2931GKzp20jnEkVmXLDYa0LP9alqgICY8+0H+rQrwEr3LZW5mhE+fLYisjR89Oa0CMcglym9GYqxPWwSKwn5pMPzzyReJOu6SSu+8CDbpbYaqq4TUku71lKvyYveg5ZVHabwHxlIwjzHJJw7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771984746; c=relaxed/simple;
	bh=+BTlo82bOP/foze/gQeON8U8aTkxMyzFjbZtn96P+d4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=RB37I7qk/56WKW1haRnRwdJ0JYpx+X99jsgm0nPu0NoGvUyzAA570y1DB1w75mZanKE2V48BW9EVNIe6nmDCL9burXIKLKB+CKt7Fsyt2Eu5Q6vwIlbrdslXi4IX9HT/TScSWxod3iM99YJhtAm242N0haK6CyMFUWJ9sOGFQGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nJhIegNO; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-c06cb8004e8so2592054a12.0
        for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 17:59:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771984745; x=1772589545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zvwKD7V2YKpGMLkJEO1tU3ZqnJ4SfaB+coADDuVirU=;
        b=nJhIegNOHpNIjkHyY0JX0Ua07WUUBuqTtv3jxZVVbhT6lH6+hUKr/qc7aDYBhI0AgW
         baPLhUF7PFsu9dO5bAz+nwHdC+wMjmKerqk3IdaBDM/vTN1Jwrv5DJ6CM6ugNqjA3WYc
         VUA0mWtwmc3nmSCZ8wzCZJp4gAbjQSYVHtr0HNT/nGPyZ2WuGTZR0f32Zg+Zjq4Lj2BZ
         8KdKojVnz7uTQ6GEX9qUPXKfBln6BlaWJBfL39E03dvo5EcGsqWigUXrZc++VwPXuKGc
         naadoQxl3rVuxwaiXv4TuM1+B70mX8g2iXy0j8cPoVvQBq4Fmh3I8ueM4oK+n4SNmSIV
         woFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771984745; x=1772589545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3zvwKD7V2YKpGMLkJEO1tU3ZqnJ4SfaB+coADDuVirU=;
        b=ASMRLzb2zTUjPXorvaTpMzxzGByV3j59kc9dvmYwkHgZKS/FqprIUN0MCab/bVbmZA
         lntxCD0a79X+ecW18nOxg68PP5q/Kn54uR38jEYZ0TiCX1nbcQA9+B+DejkOwCavfeqG
         Qt26FprYMw5DipWHemJ32fw5qC1kaWA9mFgOHus0Pi1Mxh7BGDGheyA/s6RVp890NGJe
         4aiP63pgAlZfDsGooJmDPsk7MiVR8kgzeuMDXaZ6bJYKM4Ov+CvfxQtsZPY0nUZH7W7f
         rcAnYJsuZrL0he4+QhlxaMXH7K0Du1phiO/Upc9PvmYhFg3TUr3kaT+5Lc+Pw7tM+DDP
         ZTKg==
X-Forwarded-Encrypted: i=1; AJvYcCW78j6u7zfo8ZCwtwi51nqfZX9B8C0ZTOsbu9SCcEMNlpEaXg7S9l4MWrUTnEpxlfZ8coGNa1DtE+ty@vger.kernel.org
X-Gm-Message-State: AOJu0Yynl+9Ngh0n1on/JGSWct3dnEDgzuPp+gmBVMFey7ruhsqf7x5n
	InUuvy7dTgjV+7iyBMqhLLzFYom/RhqInhaw6GMlNHAU1w/7P//OH+D5
X-Gm-Gg: ATEYQzy5UuNsDcyZyaglLbBg6Z1DcnnN9fazKonyaXprVsrfHQ1JNCF31AvaaRLpJWw
	aHdYREbOya5aFsWttqQISq7eWY1paQ9xd64eDObEtalvwSVPgh51XforezuBIp546A2ayqAe0eJ
	ig/g/PbHLtSxj3e1dqI1XurpjJkpFi3UBh5KJEq6bTDyDvykDueyQOCPxMXfVuxwjH0T2MIK934
	F1T40D70rI1N198vYLzxOiO0Y69z5wLveochfg2iEydj9IULFyStswC+zT0/wXGMVMsPpjGFqNH
	9BtueJsvSurj2FswHQ+JNMvReChwYiLqkuI2JU9cG13yzHkNpTlWVmzZ+cUVeCoLtVeOCSAGhC2
	/qG96Fv92H9TFCgUN1bIOAPhzIg4/xxpnBr2t8d8bKG1ETAdcMAHwPExudfJoeDc3ZBENa7tiiy
	h5k2pJ6QckzET4pV7bz5q+we4KPrbi88mM7lNg8eUbVrUyCA==
X-Received: by 2002:a05:6a21:898b:b0:34f:ec81:bc3d with SMTP id adf61e73a8af0-39545f7a3bamr11523634637.44.1771984744888;
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35900700e69sm1002312a91.0.2026.02.24.17.59.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Feb 2026 17:59:04 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id 8DB204136074;
	Wed, 25 Feb 2026 09:59:02 +0800 (CST)
From: Cheng Ming Lin <linchengming884@gmail.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>,
	Mikhail Kshevetskiy <mikhail.kshevetskiy@iopsys.eu>,
	Pablo Martin-Gomez <pmartin-gomez@freebox.fr>,
	Tianling Shen <cnsztl@gmail.com>,
	Pratyush Yadav <pratyush@kernel.org>,
	linux-mtd@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alvinzhou@mxic.com.tw,
	Cheng Ming Lin <chengminglin@mxic.com.tw>
Subject: [PATCH v7 1/3] dt-bindings: mtd: spinand: Add randomizer enable/disable properties
Date: Wed, 25 Feb 2026 09:57:03 +0800
Message-Id: <20260225015705.1113199-2-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260225015705.1113199-1-linchengming884@gmail.com>
References: <20260225015705.1113199-1-linchengming884@gmail.com>
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-268105-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 69F80190532
X-Rspamd-Action: no action

From: Cheng Ming Lin <chengminglin@mxic.com.tw>

Add "nand-randomizer-enable" and "nand-randomizer-disable" boolean
properties.

These properties allow enabling or disabling the randomizer feature
via the device tree.

According to JEDEC standard JESD22-A117E, no single data pattern
represents a universal worst-case for all NAND flash failure mechanisms.
Different patterns, such as fully programmed, checkerboard, or mostly
erased, can disproportionately stress specific cells (e.g., programmed,
erased, or those influenced by adjacent states).

Given that no fixed pattern can cover all scenarios, the use of a
randomized data pattern is a practical and effective mitigation strategy.
Our hardware implements a randomizer feature that scrambles user data
before it is written to the flash and restores the original data upon read.

This ensures the data stored on the media is more evenly distributed,
thus reducing pattern-dependent degradation. This is especially crucial
for preventing errors caused by unbalanced data (e.g., all zeros or
all ones) in blocks with high program/erase (P/E) cycle counts.
Ultimately, the randomizer improves the long-term reliability and
endurance of the flash device.

Please refer to the following link for randomizer feature:
Link: https://www.mxic.com.tw/Lists/ApplicationNote/Attachments/2151/AN1051V1-The%20Introduction%20of%20Randomizer%20Feature%20on%20MX30xFxG28AD_MX35xFxG24AD.

Signed-off-by: Cheng Ming Lin <chengminglin@mxic.com.tw>
---
 .../devicetree/bindings/mtd/nand-chip.yaml     | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-chip.yaml b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
index 609d4a4ddd80..2559cd97ccc5 100644
--- a/Documentation/devicetree/bindings/mtd/nand-chip.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
@@ -67,6 +67,24 @@ properties:
       the secure regions present.
     $ref: /schemas/types.yaml#/definitions/uint64-matrix
 
+  nand-randomizer-enable:
+    description:
+      Enable the randomizer feature. This property is mutually-exclusive
+      with nand-randomizer-disable.
+    type: boolean
+
+  nand-randomizer-disable:
+    description:
+      Disable the randomizer feature. This property is mutually-exclusive
+      with nand-randomizer-enable.
+    type: boolean
+
+dependencies:
+  nand-randomizer-enable:
+    not:
+      required:
+        - nand-randomizer-disable
+
 required:
   - reg
 
-- 
2.25.1


