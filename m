Return-Path: <devicetree+bounces-271381-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gCvVH+EtqWlN2wAAu9opvQ
	(envelope-from <devicetree+bounces-271381-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:16:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F1A20C713
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 08:16:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id CB6B73042FDB
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 07:13:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5128732D0DE;
	Thu,  5 Mar 2026 07:12:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AUIomeja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A72B329C74
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 07:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772694775; cv=none; b=HKG8gNh6YC0zK2y1sIotgDsW+G6/jRrUOcBuP7bhiQpxe+tFUBhdrOECZzMXcVq2UvaF20IZjREXTullGkTJahApiNckDg0+v3pJcp32GI9jaoaaevB/4KgW/Xq8sT5KfGpr4eL6TlbTHua3Kwnr1QH7dHLP3LGDRR/7DuzREsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772694775; c=relaxed/simple;
	bh=KK/RfrneX26MbnhhIHZJrPe9nQFBKGB8P79R9Zne4HA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=F71wh5FlBOn/9pedK6otzD0yNC0+yAqAjPkNYp6UYJnxNscrhEHFgHdL3s3a6OsCyx4TxpHXfWnVgm3pbkfLFatBeTOWlUi9ozFFz5E+SbXGrdb1JidzI48oLwwcEaiqeWqYCG2ugJBNOPpXsj8rPKyAAxmcNezLNRkMoVnfbdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AUIomeja; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2ae5423b02aso30443305ad.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 23:12:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772694773; x=1773299573; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ajhw8hYpqHjqV3r6yWVus18nRMpwuD8YgLrA+5qE4SA=;
        b=AUIomejak5dmqxZ0xhKYTm4dlZkIcDmW/TSR5WYQOQc5uj71bwh9RhdeR/nw9uWFMn
         u9+wxbH05Ui5uNvM/ZInnBdWyPjcFua3frNaVhVY+1+PW+kb/tAF+XfZx+K3PtDeMASG
         kxRqRwXYRizMDoThiMh78awVHJBdiMymZKUPbSielPzhz+ceAGa7IYad4/yytTzhdpv7
         KmYyQa1vcOL+SM7ozz1ChwkE0Q+xb7AFmDK10bueN3MtaL84WzdaSQC3mSQ+22fM2AAc
         eD4jKo1NsJ0B/rxEY1OAalp41+XD6/oapfjArsPBBtCVwI8oT2hIw/pdgih2PftCSoWd
         2lzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772694773; x=1773299573;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ajhw8hYpqHjqV3r6yWVus18nRMpwuD8YgLrA+5qE4SA=;
        b=nUCPVrD72qGaBN4TpeWYpE5XmGs3fe8aaw81qYMQ8SXQRFh8EQ0ZYHEjvXKI2YV72e
         cNrCdMBUlxcrHUMvmsVyiZI+qlwMWeaWd2CPjsNchfBxSUcDZVpXCujshqykF7SK1Qln
         f8rsoIyDsWBMj/8HQXXiu+aX/b70YnrWdNz/zonW9kcORbZCXsqsaPVQVNhCFi1xv05T
         UnBhHjiPNGWMewEJSZnLeFFVE7m6fv5KCZg097nd64f0DB5hhg3ebUUDqOM4M2SMjiAJ
         aZ3TsBdx9if9PmT958pJ7zw/hqgPdwUoJ0biBynmFICIttFUo38bOz9RrMAlT8dWiHbz
         Hkaw==
X-Forwarded-Encrypted: i=1; AJvYcCUiWM5CsjHwOuwJ3w+GyifuczvtfmTCs5YD1xcLNTyjdrq6satmzvrFZy+bSRO66sOb6bjCchxCLTux@vger.kernel.org
X-Gm-Message-State: AOJu0Yz37buEHDSGka+Ujc3sPnmf5JtX+M7PJV19FAHd+ECrp4SY+gDI
	z8AkmUUpICBKWf+o6VPIC99tCdQemQ4vfvv1CvxnuO9GiNVSpKLYY+UH
X-Gm-Gg: ATEYQzwEwxeJMq7jvh9DgIbdujoMFjxIH3EHaSLU0Joifcxvvj6mfTXo8tl3u3yiBaD
	mnyBadcHAjeCZWxYeOFdVhm+VwKjzy6zF8rdJfOTFYGSdbogZMyr73XLvmnwh2o/jOflj8ZeAfi
	VvuHcaUVIRhRdfIHElhYj7dz0GizlbJjF2XQDYJOg2U0JMSSMDTAnzCbhtFr8FBeQhY8ezPDrfB
	xCPnxrk2Dl8P/0tr9ih95ezETYhwMooKe1bjjK7xrdsCMDlo0LMavDycN4njUGjqTH+6s9AR/Xh
	LPjNLMg0nO6ZZUxv0Myf0kBH3hiqsMPe5wBi6iGFFZo9L+bTbD3pLkxnFQvpgS8EJg+Ccd+Riy9
	8Bo0nsUMIOQteFyeubyok6wgBK8kWnR0f2SQWDVGi2wLzs5JNqUZQ17fiZ1Mhz7blkwH3a08Ndn
	ri6qvfgBw2nwt3USfWkkv3iPJ6sU1LAMMuodbMivZ3TXKqOw==
X-Received: by 2002:a17:902:c94a:b0:2ad:ca65:a398 with SMTP id d9443c01a7336-2ae6abe7cd8mr42850435ad.57.1772694773349;
        Wed, 04 Mar 2026 23:12:53 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb6a03fbsm283865575ad.43.2026.03.04.23.12.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 23:12:52 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id B62F94163B6B;
	Thu,  5 Mar 2026 15:12:50 +0800 (CST)
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
Subject: [PATCH v8 1/3] dt-bindings: mtd: spinand: Add randomizer enable/disable properties
Date: Thu,  5 Mar 2026 15:10:40 +0800
Message-Id: <20260305071042.1193522-2-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260305071042.1193522-1-linchengming884@gmail.com>
References: <20260305071042.1193522-1-linchengming884@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 86F1A20C713
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-271381-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
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


