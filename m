Return-Path: <devicetree+bounces-267681-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uIlIL3wDnWnhMQQAu9opvQ
	(envelope-from <devicetree+bounces-267681-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:48:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBB0180B73
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 02:48:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 98C023085A47
	for <lists+devicetree@lfdr.de>; Tue, 24 Feb 2026 01:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A096253340;
	Tue, 24 Feb 2026 01:48:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Xcfjs/qS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f226.google.com (mail-pf1-f226.google.com [209.85.210.226])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97CE2472B6
	for <devicetree@vger.kernel.org>; Tue, 24 Feb 2026 01:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.226
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771897699; cv=none; b=reTYUAcrtK4VQhEFXh5UF0fCpUH9YxJ6aZYMSpAJpA6Ov9IgkSTAreX1I3FSCMkq/hOVORcBPyyHuP4xqtJfDe+wjcQaqQA8e9/4r9LBZfbuma/IIgOIFjAw3AUczFrviOH5UAZPzlu+NCkBb8kiFOglQwh0MfB8foJVYZDXcR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771897699; c=relaxed/simple;
	bh=+B14oxUn7oR05xPGu7DidDvDnKJkZl6987HT7GLwCp8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=thCZGyYzM2Uo34Bn4LnZA0uGOrR1sXpvmnacz1QQDLhr0xZKWgN4gSQ207Nj0jzV8qccdbqFyPRXqUA5+pfOeek6vmJ4t5T+UWG+lKKz0WyslwTl/9flbrgCTO+jsDCtkSfFEVYYTzSc3r5nn2lL+xbAyOSGbDG5JuRJwrz6Z0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Xcfjs/qS; arc=none smtp.client-ip=209.85.210.226
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f226.google.com with SMTP id d2e1a72fcca58-82311f4070cso2962260b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771897697; x=1772502497;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a34nkWKk0xxrzLr59oDck6ElSUS/E6YyWVngWLMX0No=;
        b=UOBlDia7GwwQyxsxHfU3yZT+5LcbL4GI+cmT0z9qEnpQ6UKQ/y5KHVfrCcJ63QtgIw
         TeLBQaUkZ7xYiq+Vc4y68E1zH4XEBQXNmRCnMi05rqyS4fzYJ3Iv2wVHCXlvmaiW/3N2
         +gloyRb+Oi39Xvc9M7GfrAB9H1cn2nb0tugLCf1PnojIgw/3p6ez2ElH+OFc1KJIv6E9
         0IgSxF5bfm89OLhRiQC3tqCe+FHW64x5VLLCUtxJG4KrN+YwWtIh0QmuIhrceNiLHEzj
         SGOcMArACqiKPUo9tr7AYHCXVrE9/JQP9g88t0CsozIB0RAwmg2YlYD0N4B1CnjOeyf+
         7EaA==
X-Forwarded-Encrypted: i=1; AJvYcCWHGYgSn68k4zSUb71vEX2zjsrqblRyIZYR/XT8PBG9flAM9JUz/95dmramyZ3HZZZiVfOLjPhKy93G@vger.kernel.org
X-Gm-Message-State: AOJu0Yw470Jtk2HQCfECctceC96qdiUA66YdZHRttooKWhRzdLbrrnbx
	IcXMOf+OiTB/qL329YzsPsPPznkE8MpdDPP6UiUYNLDZWlPy/gaBgqS33Bm4V6i/yGl7DEn7/ks
	YrE+8qt/GiPlkhkfObgM4rhgdQnTZog8hWXF2VxIZJF+Y9km8nbE+LdMyu41prRTBAeW6Y2k4kT
	laDI1m0HgdBp1b8vNQ3IxTkLTXc4ElL/UOHIVkCnxvpfQPv88PaJza67vZMyuT+SULcytJJPW6q
	N1KYIsTrR0I9Q==
X-Gm-Gg: AZuq6aLBtnmL+v8DbqB5Al3my1pfBpVb7+QsLDPdTTC5s8qLAsQ/h8oiSI+8KDQA7Cy
	0Pco7o/pQUK/wiip5lW8tlqebL6fQJwnJmnfViqA4vjTlmch+uM3aWtiV8L7vEeWT29UPLBmSCo
	LFnYur81RK7b0Xq0rT6FqDKanIkxW2wcivdZobuwOopZ2O20ZKwU6sIbfnnjP32f4OQSdQxCfEj
	kNXskrpnRvwRBiEb3K1IeNzOImXruktd7he2HtUGvlysWh/v693v4bVN4M277vI1or7ARweMgAc
	HQ2hgkb3cAjxXBiLYOrpd1ZoWnc//n8whCYXP3O0Xg4gvyr3JjQ09wC8xQDSd6Pg1wPPOp8RhrC
	TD5I1JhWlt3b6k0MycVO3CC3xfLyrhgtLrrYjlf/aeLnqoYrnWk3xyw0YyL/2N7dBioU8GYGEj2
	r7K+jvGzZ8aLhmYXTMk5YOy/Lw45w3kv8aRUySa1P+/RHDirYwqmin2fhF
X-Received: by 2002:a05:6a00:2354:b0:823:1bc7:ffd8 with SMTP id d2e1a72fcca58-826db7f0e9emr7744169b3a.9.1771897696950;
        Mon, 23 Feb 2026 17:48:16 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id d2e1a72fcca58-826dd640fb6sm1060295b3a.1.2026.02.23.17.48.16
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2026 17:48:16 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f199.google.com with SMTP id 5a478bee46e88-2ba9ef13a4bso4526854eec.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:48:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1771897695; x=1772502495; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a34nkWKk0xxrzLr59oDck6ElSUS/E6YyWVngWLMX0No=;
        b=Xcfjs/qSyOXcA8EG8HFa6mJfZDBP2ZX0FBPBWQhZLSOQSS0zufkrSYnpWgkFBM4wMa
         2rmkt2y022UAPlr+m1nvSCiyT5WHDCoZxwTpYMnvYRDfoKtvoyfmr6eTxKfEbU4d+RTo
         iyJMfoAl0LtGCc4w/sZ7OBsRog5cRlkyQkqdc=
X-Forwarded-Encrypted: i=1; AJvYcCWjGmOb88Tm5BlQiULs8KZg2Pa62DzYn7YMZVOsWs63Hw8+DFupLGQq3b7K8nlb8TG/8hK7UZiRQXZz@vger.kernel.org
X-Received: by 2002:a05:7022:2529:b0:11b:3eb7:f9d7 with SMTP id a92af1059eb24-1275fa9e0bemr6403274c88.14.1771897695198;
        Mon, 23 Feb 2026 17:48:15 -0800 (PST)
X-Received: by 2002:a05:7022:2529:b0:11b:3eb7:f9d7 with SMTP id a92af1059eb24-1275fa9e0bemr6403264c88.14.1771897694586;
        Mon, 23 Feb 2026 17:48:14 -0800 (PST)
Received: from mail.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1276af102d9sm8470964c88.1.2026.02.23.17.48.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 17:48:14 -0800 (PST)
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
Subject: [PATCH v5 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock support
Date: Mon, 23 Feb 2026 20:47:56 -0500
Message-Id: <20260224014758.2660318-2-kamal.dasu@broadcom.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
References: <20260224014758.2660318-1-kamal.dasu@broadcom.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[broadcom.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267681-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[broadcom.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kamal.dasu@broadcom.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.6.42.70:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,broadcom.com:mid,broadcom.com:dkim,broadcom.com:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3EBB0180B73
X-Rspamd-Action: no action

The Broadcom settop SoCs have hardware semaphores as part of the
"sundry" IP block which has other controls that do not belong anywhere
else e.g. pin/mux controls, SoC identification, drive strength, reset
controls, and other misc bits are part of this block.

Adding brcmstb-hwspinlock bindings which allows the hwspinlock driver
to iomap only the 16 hardware semaphore registers that are part of all
settop SoCs. The semaphore registers are based on the BCM7038 SoC
where they were first introduced in settop chips.

Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
---
 .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 45 +++++++++++++++++++
 1 file changed, 45 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml

diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
new file mode 100644
index 000000000000..416d8d2948af
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
+    const: brcm,bcm7038-sun-top-ctrl-semaphore
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
+    hwlock@404038 {
+        compatible = "brcm,bcm7038-sun-top-ctrl-semaphore";
+        reg = <0x404038 0x40>;
+        #hwlock-cells = <1>;
+    };
+
-- 
2.34.1


