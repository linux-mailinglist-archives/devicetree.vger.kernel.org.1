Return-Path: <devicetree+bounces-264716-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMwSDvpUjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264716-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF5C4123298
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:07:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 10D583024A6D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:07:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62992366DD7;
	Wed, 11 Feb 2026 10:07:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="LvzESxE3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDE1359705
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:07:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804441; cv=none; b=R2BKvh1rReqf0LCJqpnyOzQHGx/NWTox7r58x0OOlPrWjYsDIM1twq4k9Jp9SgtFK/q2VchNehw+TdpzbVclPWQfX2rWdyJHhv8Veg9TwiBxgkp1QU8rp7Z/z705ZofGm++PzM9egR4cgWw68a16umj1N0+gnjoy3G5lwls26kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804441; c=relaxed/simple;
	bh=sl3bc39oUMTf6PWwUN3zYrRwTc0cZh6qh/s+nUMt8ec=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=d0zzVutpH0yP6ajkBdfQSpqpgtJObIv5ERKNU2qCo38kvEz+HEOyLG965hAb5EXP/mWIc+kvfxE7Nl0c6IfxLKhHQOmQIp5+Y5lZKJj837iq7VVHLZJjNUgXJZcGcrFK9UJoUVUapdrmgWVCEYE6ca0cj51CxIGj94k3x5araQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LvzESxE3; arc=none smtp.client-ip=209.85.215.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-c6c444e89bcso692380a12.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:07:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770804439; x=1771409239; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sn/Y69Rs16zIbCUr1d6TW/gMLK4puZ79zycPXpVzP0A=;
        b=LvzESxE3kt68ii/YZXpEc7bA8CMgRqc2+7W1UeyJLIaoAjnpEiO/cgpHc3OAzgQf8Y
         yAeKmDRZr+weW9Qr6QrNwI8nitN6G69EqkH8yZY+IpLLVGVUYCYV24sZEjVcRtTBJrIQ
         ztGFzY+F2MyG8GZAXXZX8mv3dS3tRZ3jlES8XILHTXIYQxgr8H+7DkHcqDaybQFfbRh0
         Qhg4j7KyMF1uQFDzvCbVArJdIVX7vOm+n0cdBuTnHIyMQxo+QmcnlhkGWt/3GXDEOJzT
         4n5SPuWyvTsMX3SHcjFp/nJwi0OKxRRNHyJecO1bzZmmr8seQOBpmJNWUon5LYWz8Fb0
         JO9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804439; x=1771409239;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sn/Y69Rs16zIbCUr1d6TW/gMLK4puZ79zycPXpVzP0A=;
        b=F/eyKwLHRtQTfif+RQmUQnZ6KsDtCKNFAcr7oMwaoTOEHE0EmlzEK3vzs+qTxPEZts
         dBLOmwSEEpXp49WKkvBpOVovvOEmrYpOYORCREdicUE4X09NYqk1Vgrvywo9b97CDc0X
         s1v4jojAnqNnL1J5h4Ip6wncaAW0ru7YSc22uPmsOG2FqOt4vNr5NQ6UC+F0OSlxZ+Vh
         uILFNsr2XoUfjkgG1EQ1RnoYCqyCQfHRn6E52iH2e9fKxEo1IJS0U2dtZSmPdXxzkcP5
         lvlQmw4NCcWFugMEaIbF69YWCeTJYyS3uf6TwIygw509vqG0jeDD/J3ySulfndMFgNeP
         VOXw==
X-Forwarded-Encrypted: i=1; AJvYcCWwuDQxFk73RvCnAl1nx9gFlI9+ICmwKX+744EAMdcVnpsTsyGUKYCKb7pfLH9ESIA2QVyeC9K+dzYN@vger.kernel.org
X-Gm-Message-State: AOJu0YydRDIpBwb/4QmFDu98auL8Ci9S+qSQVaK8Kff4FvxTpGfmvIlv
	Rne836NqRs62cgKWuvi4ojmym+ZqOOSxMtzgXHMNvpzpZLAK8+w4kN6O
X-Gm-Gg: AZuq6aJsgeHimiVYJuvBynd0rAn7ala+pXyoRdwVybJGJbHOlhmk7lT5XYGs7p5Hm2n
	3IJHMoITJr59us+0DoOramq4ugrdPMarg4Xiqw6i95SvCoIVyMQ6H10lnrlJYWiRlAqqtPs6w7V
	1gwUzYXiDf+2HXSshi+mM/uVuYnaMIdYm6QAJ62M8nwQhEx9sw1hdnXW8KwrYyR7lp8sLBDY1ez
	Q7E0Wgu1NNjKb0eOcoFlC56oIZWrRjNEb8UGKfFBCSO7egGFzBRLQhOTCRNv0jk7Eewgiy7ueKA
	9rXArApAscHUo0l2+VpY++vNXtPm6j/zVcBeXEFkukK5R/2X7KsB0drQRtsuyaG52GPFIqw7/Kz
	Ytbu4J28u+zUUWJ+6u2gH54HCV/RANpPdZJH6Mb9QoqAW634XSz8fWHEikx7j7YNGraAS9PlfKl
	1+bZwrLslY5Q/mKPCjLTtxLYqUd2+N99xFHFEpMLhAGdat1w==
X-Received: by 2002:a17:90b:4a08:b0:354:b2f6:b4e4 with SMTP id 98e67ed59e1d1-354b39da597mr13513502a91.0.1770804439383;
        Wed, 11 Feb 2026 02:07:19 -0800 (PST)
Received: from twhmp6px (mxsmtp211.mxic.com.tw. [211.75.127.162])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3567e9fb4bfsm1632089a91.8.2026.02.11.02.07.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 02:07:19 -0800 (PST)
Received: from hqs-appsw-a2o.mp600.macronix.com (unknown [172.17.236.67])
	by twhmp6px (Postfix) with ESMTPS id E8D704136074;
	Wed, 11 Feb 2026 18:07:16 +0800 (CST)
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
Subject: [PATCH v5 1/3] dt-bindings: mtd: spinand: Add randomizer enable/disable properties
Date: Wed, 11 Feb 2026 18:05:51 +0800
Message-Id: <20260211100553.907585-2-linchengming884@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260211100553.907585-1-linchengming884@gmail.com>
References: <20260211100553.907585-1-linchengming884@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linaro.org,iopsys.eu,freebox.fr,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org,mxic.com.tw];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-264716-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linchengming884@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mxic.com.tw:url,mxic.com.tw:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: AF5C4123298
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
 Documentation/devicetree/bindings/mtd/nand-chip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/nand-chip.yaml b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
index 609d4a4ddd80..2fcbc4b73e95 100644
--- a/Documentation/devicetree/bindings/mtd/nand-chip.yaml
+++ b/Documentation/devicetree/bindings/mtd/nand-chip.yaml
@@ -67,6 +67,14 @@ properties:
       the secure regions present.
     $ref: /schemas/types.yaml#/definitions/uint64-matrix
 
+  nand-randomizer-enable:
+    description: Enable the randomizer feature.
+    type: boolean
+
+  nand-randomizer-disable:
+    description: Disable the randomizer feature.
+    type: boolean
+
 required:
   - reg
 
-- 
2.25.1


