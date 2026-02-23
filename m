Return-Path: <devicetree+bounces-267233-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uFhPCbfym2kI+AMAu9opvQ
	(envelope-from <devicetree+bounces-267233-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:24:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AFE172188
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 07:24:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3C99A302A7C5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 06:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05779345CDC;
	Mon, 23 Feb 2026 06:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XGMsnO3n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0D4C345724
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 06:19:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771827580; cv=none; b=W+zi0NWlw03CgxdDupIR+ikOtETXkyOammEUrLqvvfWl6qCYQ3Ju/SwZ46TPvO/NVsVaoNLt6G6H51y5cVwjEmy8YCnydE136g/ZSk+QJg3sor4f6LtC9M7SNd8NA2BMoJmi57KRr1KBOULXzw2BA8h9ngrJXkjnNhGKFy6dsvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771827580; c=relaxed/simple;
	bh=q5iWDDiVP6ItgngzmXfBwHdc6oyRXu9KbdXi8CD9nEs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=FEN8mEAsS9SgU5fGg2VgMUDKoFsn12ViNrDd/VWnzPhlz3XBeXXzK0hmknwkhI7MGlfr9AqjM4t5P4M40zuI9U14JEdQA2cKKxvlLGamJBLFzZLuEWNbtwA4v4cyaJTGo4+qzYBwendXRznJWass/QuNMP1aTIR9Hv8oJv2anX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XGMsnO3n; arc=none smtp.client-ip=209.85.215.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-c6c444e89bcso1393486a12.2
        for <devicetree@vger.kernel.org>; Sun, 22 Feb 2026 22:19:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771827579; x=1772432379; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N7WrDyX53tBhhQs9DM7PCsQhtyvoI2GRXLB5HiWYUgc=;
        b=XGMsnO3nBw6dA55EcxYnazD4/2aJb1zNmoKQ9EDKo+IWvpuo9nhiU3yNJySgAWOFUw
         1dLYzdNkC96zJtUDdpNdTONNjkcTHgtGxdwC0QJznWiJyuKewWx+B6eXngREC01aZqYx
         2G5TI+Nk85hyoQ68dvSK7/uNF54vatvxS8kjw9BtoZZRg06iRKyFMt6U3ZqG+tY9gZSe
         MoTiq18/PJHXK1cTZ+DQ9BZBRIiaqN3mB5+l0avo7moHwHA1xPrO1wasHxK3UkrU3HNQ
         ZkSwKnSOJjxTs6cCugjZokWPqNpbOKngvqSzv9aaoeyJwooQuVklZYEcAQF1laTzADUX
         4ScA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771827579; x=1772432379;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N7WrDyX53tBhhQs9DM7PCsQhtyvoI2GRXLB5HiWYUgc=;
        b=BAI0L4I8NCmBhi7MFSxJ64WOmHg0yRX7FGW9SX+OFstmz8NWszBuS+/Lq4yUVv7O3s
         mIX5eWin7RQS+oQDNEs1Wni8aLy3EwFZZit+avw8AXp+SnypCToVripl3+t+qiOAJQr0
         5tj4sebv+scW53riLgMjhXlOVCiTgG0swY4EMZGjAQuZg7Lhhtvrygux8Xxn6ALir60K
         olxmXg/PTYRAzNN+asoBZz83jOoN/lEWOkibvKYSFUOuBWGGrvzPXkQzyJSi+rpn9Myc
         Q4GLrmZn/eDp4IlpIL/0PXNqBiqGU330kzA7tFtLyScZ4JIy5l6k9A1kBpnrV01Csirq
         ccnQ==
X-Forwarded-Encrypted: i=1; AJvYcCVAVocawR/JxmDYA30tUOW7lFxRQSQXXzGVi+b4zYxMSVp0CIzYDaxw9+D5voLS1urBIpncjIRGq7uh@vger.kernel.org
X-Gm-Message-State: AOJu0YzNZWwb9HVABRvpx2r10CITc/45XR91LKvlWQBochRWUYHd/KLj
	4bFHvXNM3m6o16mMj2/H1chwU6DrpW9xrvJn2lREMjVbHGRwor5dMnLk
X-Gm-Gg: ATEYQzz2MuJj0/QYWuxGMp87aaRDlAyPNyjc1Q2BXHE0bIm0rX0gPmFKF9C+rLKpDg0
	3uyYltzT9OiWO5jEIZ4qqZXKjj65BIfbfVaZ/W9eZFzW6Zg9MDPTKhKTA/99vo5QNKZg2ZnzGyR
	sODSBzculII7T4P4ROp762GtCoFKdF34zb+BJeGbwGZ2+ECmrbXGv3+oBAGcLou/tc6Fqv7tV1z
	flQpcbEHXuWm+uemfiqVsUDyDzz5Ninsv2uAjTA0KSVfpugoCPqFr2qha+k2Ggm0oHkLiAR7WQo
	Ch1qWyGBq+2Kn/JO72CW+Al13EmUtyZ5hRoaBcB5uP7IhNvIPv6JEWhNNKxAXjYiW5/zXU4rRkj
	5aLR6a/EH9YngGsRC7kSBS1jCHCE7x0Wy2YhrT1MD3GHJDrCE++THj9XuqRHlljNzSVPocShYCf
	CGV13p25IHF46Wb7HRsjX1sHbhtXfbJvplNyVjJwHe+yph9w==
X-Received: by 2002:a17:903:2b06:b0:2a3:ee53:d201 with SMTP id d9443c01a7336-2ad743e3e8emr61818115ad.12.1771827579002;
        Sun, 22 Feb 2026 22:19:39 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad7503f4a4sm60191805ad.79.2026.02.22.22.19.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Feb 2026 22:19:38 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id D5AF64136074;
	Mon, 23 Feb 2026 14:19:36 +0800 (CST)
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
Subject: [PATCH v6 1/3] dt-bindings: mtd: spinand: Add randomizer enable/disable properties
Date: Mon, 23 Feb 2026 14:17:04 +0800
Message-Id: <20260223061706.1027986-2-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260223061706.1027986-1-linchengming884@gmail.com>
References: <20260223061706.1027986-1-linchengming884@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-267233-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:url,mxic.com.tw:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 99AFE172188
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
index 609d4a4ddd80..09ed2f73ab5c 100644
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


