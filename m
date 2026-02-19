Return-Path: <devicetree+bounces-266734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDJdAUSHl2kgzwIAu9opvQ
	(envelope-from <devicetree+bounces-266734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:24 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A9B162FCD
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 22:57:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 10D12300B8D2
	for <lists+devicetree@lfdr.de>; Thu, 19 Feb 2026 21:57:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB83432AACB;
	Thu, 19 Feb 2026 21:57:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Ny947fNA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f226.google.com (mail-yw1-f226.google.com [209.85.128.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAC5032ABCD
	for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 21:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771538238; cv=none; b=LLseY6GkUBuiAXcLMrbCrrkcwG4o2bs1HDhCgJ2+IPRO7PiXeuPvzGSjrWxKBg/lJyJ8/LVYwCQBWMfzDzyjIUlX94RiidMPTeiqtI3jso2Q8Sj6MN9FYEQLj0Fgq7NKMMAKkdSmlll0kmDf9rHwpNtW64GTin1897dlAkNJ8CY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771538238; c=relaxed/simple;
	bh=ZwaEEQqBBpQ9VvCQhaci+MXdObqlEzR3y2j2LYPFfB0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=QHaWqlyucv2otB047m58kFSEvFFwPPIpRmscyOjiX4UxLAMQADrtasDpcViJmeCkmPoq/adRwg2ciP85CBWh0eJwE4838I6PRvY6PSr6oGYTIskuBwbH6nNeMJuzKq3pmEykWRr22B5r+m1y6OToHK+NUVopZmP6UV6APXVbxAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Ny947fNA; arc=none smtp.client-ip=209.85.128.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-yw1-f226.google.com with SMTP id 00721157ae682-797d509a2f5so16881637b3.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771538235; x=1772143035;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BQ1MmI1k/9HenpReSZ3vHACiJQQcYWd1RGFuc30M+ps=;
        b=v+KCdd4l5H+zObtYZR6fy+saZTVkFe9xtDi+XBO2kFtk6HIHYMm7jigTZp4tUoBCgL
         rSqqys9vq+kuMKjxuG9mUkEr0wWxJrMDOW3fHOuuWMiI7B+HNLgygwHSG83sGwllpJlM
         /g5A/WoBFoB7CuQ+cNmKp1Z/k0XSolwiKBH6y8uXjL8UssFHw+RbtMsn5fUYV5zbJ4B8
         OytrJJ51d3ObAcnxR6hJXvICqkmE2Qt0HuuSsO0FM2SCI0efW2O8DALsXuGd7uN1QFMH
         Bmnkt7BMrvY/U+FvaCVWZCG1smLpQxsQUcMTz3i6O1Lrhrw9CPXRZBqIAq6NgfR5MAdb
         QPkA==
X-Forwarded-Encrypted: i=1; AJvYcCW6lzI4r0zIhUiscvtxVn4S2X1vH7JNs6vqHOILEoEBzeKSzNZ0hKN26F8gm+YHrJILZHbO41W0vYQa@vger.kernel.org
X-Gm-Message-State: AOJu0Yybdgmq8kUDn6BHMQS60hgxc9Z4owQPbhMA5dGTkMKdkyaOOgyz
	tGoQQz0ILpxGoAnMdPcmykme/R2yWDmMVWAggA15INvNLVoeQfzQTVDji12NcTw+PIe7HDl8skc
	TnOkryAtRMcEivdOZ/SBtOLbyk6JA+kmngbXRre1vy6WOpjV+pGQqZEyxrbyLD+HO6HlaqN35D8
	TWJY8ykXNGTzJRpP22sGElst9cw6U0qjyGvz/jwJZhFeFk6cM7Di8XTwFyx/6kkj0Uxnl+W3lTR
	FAC77NQXntqGA==
X-Gm-Gg: AZuq6aJd9F6M9hNF679lfT2E+cNH/buvTblBwJOy+RBBBNAzgnEhzDmW+3AOQOhpmWS
	jDFxsko/si5jhRsJnx1xI7OHMFylDCdaYLnb9BAxb+COZAy694Vb6Xz+htrG4mAJw0bRbXAXFiD
	afU3y9E8YsCce2KP2FuyjLuhaFOSvVUa6L1l3KJcvMDz6Um8kuNbO73iG7NwtbRryqLeKNmPKbu
	yVWlF+BSot5wwDyxiwMlJ28NSflCWjGK+DuqRFIBFmFHN+soYAEkgfQA0x62HM7jQwhxppKRf4u
	7Ar/3k+VsngVQ4pSoF2Egkpttv59/3wjmB5BYN0noh9L2wapFNF+V1nRJOl2FuN0z+shiQmvYRJ
	41xfON5D6/cvi5uiq9gho0GyaHCIqclHXRa7mQToAmfJOztRf9FJpd1pqR9J9AunXCism82fTRy
	U/8khQYHDTMA5tqZ/BEffakglHC10gEXqOLLpClsai/i54VH7jdtsyXXj4
X-Received: by 2002:a05:690c:b06:b0:795:fb7:6f1b with SMTP id 00721157ae682-797f717b101mr59406957b3.12.1771538234548;
        Thu, 19 Feb 2026 13:57:14 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id 00721157ae682-7966c25f565sm23427287b3.28.2026.02.19.13.57.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2026 13:57:14 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2aad5fec175so56248745ad.2
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 13:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771538233; x=1772143033; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BQ1MmI1k/9HenpReSZ3vHACiJQQcYWd1RGFuc30M+ps=;
        b=Ny947fNAq4qo87kcSSV1zkkeUsZ2fC7JnQFdYxRo9RiSiscqZDB3OusGPp93FSd0kI
         s6djnRpwKHVYqwZ57m/yuSjwaE5l/bzykKKcJbiPveKn4hyS7l9F1+AKIlVuvax16vNb
         3P3d8Oe3Rsb9IXV/SzIqEn2xwbGukr3oSqHV4=
X-Forwarded-Encrypted: i=1; AJvYcCXtlUwZMYktxdE9L8erol1En7AzAAsAzVB6XsshRwgEjdWIvPsi4QjO7yNO+ZMw8Z27AJuPTnpLG6YJ@vger.kernel.org
X-Received: by 2002:a17:903:b4e:b0:2aa:e285:f231 with SMTP id d9443c01a7336-2ad50ff2374mr61212785ad.60.1771538233296;
        Thu, 19 Feb 2026 13:57:13 -0800 (PST)
X-Received: by 2002:a17:903:b4e:b0:2aa:e285:f231 with SMTP id d9443c01a7336-2ad50ff2374mr61212615ad.60.1771538232851;
        Thu, 19 Feb 2026 13:57:12 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1aae9d73sm156416065ad.77.2026.02.19.13.57.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 13:57:12 -0800 (PST)
From: Kamal Dasu <kamal.dasu@broadcom.com>
To: andersson@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: baolin.wang@linux.alibaba.com,
	florian.fainelli@broadcom.com,
	bcm-kernel-feedback-list@broadcom.com,
	linux-remoteproc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kamal Dasu <kamal.dasu@broadcom.com>
Subject: [PATCH v4 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock support
Date: Thu, 19 Feb 2026 16:57:00 -0500
Message-Id: <20260219215702.63321-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260219215702.63321-1-kamal.dasu@broadcom.com>
References: <20260219215702.63321-1-kamal.dasu@broadcom.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[broadcom.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266734-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,broadcom.com:mid,broadcom.com:dkim,broadcom.com:email,0.128.60.70:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 30A9B162FCD
X-Rspamd-Action: no action

The Broadcom settop SoCs have hardware semaphores as part of the
"sundry" IP block which has other controls that do not belong anywhere
else e.g. pin/mux controls, SoC identification, drive strength, reset
controls, and other misc bits are part of this block.

Adding brcmstb hwspinlock bindings which allows hwlock driver
to iomap 16 hardware semaphore registers that are part of all
settop SoCs. The bindings use the common
"brcm,brcmstb-sun-top-ctrl-semaphore" compatible string reflecting the
actual hardware register block name.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
new file mode 100644
index 000000000000..0a9a1bf19fe2
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/hwlock/brcm,brcmstb-hwspinlock.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Broadcom Settop Sundry Block Hardware Semaphore
+
+description:
+  Broadcom settop SoCs contain 16 hardware semaphore registers
+  (SEMAPHORE_0 through SEMAPHORE_15) that provide hardware-arbitrated
+  mutual exclusion between drivers running on the SoC.
+
+  The semaphore registers belong to the sundry hardware block. The
+  node describes the semaphore register range carved out of the larger
+  sundry block address space.
+
+maintainers:
+  - Kamal Dasu <kamal.dasu@broadcom.com>
+
+properties:
+  compatible:
+    const: brcm,brcmstb-sun-top-ctrl-semaphore
+
+  "#hwlock-cells":
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - "#hwlock-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    hwlock@8404038 {
+        compatible = "brcm,brcmstb-sun-top-ctrl-semaphore";
+        reg = <0x8404038 0x40>;
+        #hwlock-cells = <1>;
+    };
+
-- 
2.34.1


