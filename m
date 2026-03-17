Return-Path: <devicetree+bounces-276797-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mDQLKPGWuWkJKwIAu9opvQ
	(envelope-from <devicetree+bounces-276797-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:01:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BA12B0809
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 19:01:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AB9C53076519
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:31:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5079C379988;
	Tue, 17 Mar 2026 17:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MmHj0736"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088FB1E1DF0
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773768696; cv=none; b=HX3hqanGQM19Td2Jt+1TkToa4w3D0p21lgOybOEcWf4TMLVVfpaGhEtFxpIO9Uel0Yu+ac8hr8PAtOySI/osNZm41EWaUCJmesmx3Yz0+dJisKrahSFQnIYkATXmRkYCTMsK+5cl604ykrYiGt1qTdeCMxbH2542CTKc+Ca9S8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773768696; c=relaxed/simple;
	bh=6hlNGJ8C2rtzkiaQz/hYOtypGUYIK/Wh9HQp8FIVkjU=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XsAb4NzbMDeB1EqTRxj7DkZx86mz9nGgnSt0H7fPaORCHw/17zJoUXB0ZCHBmRe5Z/r1xhlAoL554Hd02/i0K0mJ4Mau4a8E5y7n8P+XWK8LTY8++8q+glCsRWCHEGjMgrBIChOWziMr24WwwDh8L50602J7X+zuZPQa6h1o6E4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MmHj0736; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a8fba3f769so28851345ad.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:31:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773768693; x=1774373493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z1ffVkrIYrhdQ/G3EnqYe2fK8Yxo/+BsbwKp30PVRVU=;
        b=MmHj0736n1jbXLfP3fzpInjtWAVUJ3VHnZn/XGqvLc8clCErczoehf8yZDEB1d6uJ5
         3PUVVwazFXdhgfs2TiAXBknlPfCmWi4NszYUU2rt18FBJ2Qab7RgFppJL3H+H5u+Yut8
         GwnaUQS4KBvkIMAxNzrRgboIdI5eyc0LVYEaIlJ4IriGxMfkvqoWK8tZB+dzZKcCtrV4
         RZbabHX8WvOv+P7fCfz+lYF1JVACGTMaPpnWkUsRQwcGu5SYZ5D97rm3/JEtKtOhO9/9
         6bFdD6/7+4+UPFo/C2Ybk/pT5YtbSXMg3+a5e24ndOymnknegP2n6hv4NS39XNHS2GMe
         hHFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773768693; x=1774373493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z1ffVkrIYrhdQ/G3EnqYe2fK8Yxo/+BsbwKp30PVRVU=;
        b=APR3ySYBrcidqZgbSfBgjP/49SNRLZm6IjUzDD+1tAj1DeSLepXdWd2DemInIflJmq
         AKePPSz/un4uA3/k0+EzVuZiCmzvcb4VUWd1i+qxWejh/5kdYbBNfo74LQs9wl3nyv2c
         9QtfY9/Z/jdRYMEUGYQu/Rcl62F/bMq/Y6t84KmlP2w1D99vEF2lSRIgwYFjol17TSqf
         PT9Ye/KkPD/457CkvbpjuJkiIJtfRDiYJTchWeh92DxEhDzZcOX0jLAMhv3XbuU5ktao
         db8w9F6/OariHBCmtfZiMAeUBe7UplKsu4feTm0kbiGu0V3iaM654TGtuMKIcGX38TeB
         NHDQ==
X-Forwarded-Encrypted: i=1; AJvYcCXbhCV8Fb3rqnt+MSiGE49eODgFNKaAq9gq1filrxcL5m+qrf1SfGnjsVw9S0wPkyzneS28swGmHw91@vger.kernel.org
X-Gm-Message-State: AOJu0YwaOvhM3qhvoW1fs8GdN1rawf/adiTA3kr7tMMdPoxIFvCsAxUM
	pt+uilyFAxootBTNtqilA7ZaA+gvDdnx1EK8RH0rgVwiDbTAPj9vrKvx
X-Gm-Gg: ATEYQzwb23lnOn+hS9OGgaA37AbFD+JSwN7F+CHmTlpthDGkgRhjrWs2J+fMjNQfEUn
	dEy7nO122z6oRT5AXx6rF0CtrmX4T4nUEeGI5Ct6/+iyY75Ph9+dEeCxzf3AQeNP30bBmMyT2zj
	GvNi0gU+YtQcBuYALRTsVhDkHiWxBes29Vh4538gcaud3SCJnCV9gyuF2bfJRcNg7YSkSV1Vf3F
	YLbvTQbp6k33Wfje7Y4Y/MjZtY3psCDzjJaSpPKuMGTesoNRvwJoLCt9pm3ib8O095meQD46lhV
	FJNGubdu5E2WrRrRlhz3F68JhXoTA4ub+kYQ4f2nYjssy76dW+ZcGbQy5nHBEbuCLLlxVPx1V/S
	hcPEr3HiIfE7O0JkTaH45QkdUQXltdDpb/PlP3/1kNvNiHv4b/uSji5XUy+hm2ugs3DQydqH6zD
	l91H2IXI+P8YOpIFi7ofpN1E7kATIODQKwmw==
X-Received: by 2002:a17:903:41d2:b0:2b0:5968:a6d5 with SMTP id d9443c01a7336-2b06e364202mr3114835ad.18.1773768693200;
        Tue, 17 Mar 2026 10:31:33 -0700 (PDT)
Received: from kalyani.. ([2401:4900:88f5:ac25:fbd0:e3bd:86f9:3d41])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b06e60526dsm1868795ad.62.2026.03.17.10.31.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:31:32 -0700 (PDT)
From: Kalyani Patra <kalyanipatra2003@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.baluta@nxp.com,
	simona.toaca@nxp.com,
	d-gole@ti.com,
	m-chawdhry@ti.com,
	Kalyani Patra <kalyanipatra2003@gmail.com>
Subject: [PATCH] dt-bindings: display: convert via,vt8500-fb binding to YAML
Date: Tue, 17 Mar 2026 22:59:56 +0530
Message-ID: <20260317172955.250192-2-kalyanipatra2003@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,lists.freedesktop.org,vger.kernel.org,nxp.com,ti.com];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	TAGGED_FROM(0.00)[bounces-276797-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[kalyanipatra2003@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url]
X-Rspamd-Queue-Id: 84BA12B0809
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Signed-off-by: Kalyani Patra <kalyanipatra2003@gmail.com>
---
Note: this patch is part of the GSoC 2026 Device Tree bindings conversion project.
---
 .../bindings/display/via,vt8500-fb.txt        | 36 -----------
 .../bindings/display/via,vt8500-fb.yaml       | 63 +++++++++++++++++++
 2 files changed, 63 insertions(+), 36 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/via,vt8500-fb.txt
 create mode 100644 Documentation/devicetree/bindings/display/via,vt8500-fb.yaml

diff --git a/Documentation/devicetree/bindings/display/via,vt8500-fb.txt b/Documentation/devicetree/bindings/display/via,vt8500-fb.txt
deleted file mode 100644
index 2871e218a0fb..000000000000
--- a/Documentation/devicetree/bindings/display/via,vt8500-fb.txt
+++ /dev/null
@@ -1,36 +0,0 @@
-VIA VT8500 Framebuffer
------------------------------------------------------
-
-Required properties:
-- compatible : "via,vt8500-fb"
-- reg : Should contain 1 register ranges(address and length)
-- interrupts : framebuffer controller interrupt
-- bits-per-pixel : bit depth of framebuffer (16 or 32)
-
-Required subnodes:
-- display-timings: see display-timing.txt for information
-
-Example:
-
-	fb@d8050800 {
-		compatible = "via,vt8500-fb";
-		reg = <0xd800e400 0x400>;
-		interrupts = <12>;
-		bits-per-pixel = <16>;
-
-		display-timings {
-			native-mode = <&timing0>;
-			timing0: 800x480 {
-				clock-frequency = <0>; /* unused but required */
-				hactive = <800>;
-				vactive = <480>;
-				hfront-porch = <40>;
-				hback-porch = <88>;
-				hsync-len = <0>;
-				vback-porch = <32>;
-				vfront-porch = <11>;
-				vsync-len = <1>;
-			};
-		};
-	};
-
diff --git a/Documentation/devicetree/bindings/display/via,vt8500-fb.yaml b/Documentation/devicetree/bindings/display/via,vt8500-fb.yaml
new file mode 100644
index 000000000000..1ebea3b82f30
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/via,vt8500-fb.yaml
@@ -0,0 +1,63 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/via,vt8500-fb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: VIA VT8500 Framebuffer Controller
+
+maintainers:
+  - Kalyani Patra <kalyanipatra2003@gmail.com>
+
+description:
+  Framebuffer controller present on VIA VT8500 SoCs.
+
+properties:
+  compatible:
+    const: via,vt8500-fb
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+  bits-per-pixel:
+    description: Framebuffer bit depth
+    enum: [16, 32]
+
+  display-timings:
+    $ref: /schemas/display/panel/display-timings.yaml#
+
+required:
+  - compatible
+  - reg
+  - interrupts
+  - bits-per-pixel
+  - display-timings
+
+additionalProperties: false
+
+examples:
+  - |
+    fb@d8050800 {
+        compatible = "via,vt8500-fb";
+        reg = <0xd800e400 0x400>;
+        interrupts = <12>;
+        bits-per-pixel = <16>;
+
+        display-timings {
+            native-mode = <&timing0>;
+            timing0: timing0 {
+                clock-frequency = <0>;
+                hactive = <800>;
+                vactive = <480>;
+                hfront-porch = <40>;
+                hback-porch = <88>;
+                hsync-len = <0>;
+                vback-porch = <32>;
+                vfront-porch = <11>;
+                vsync-len = <1>;
+            };
+        };
+    };
-- 
2.43.0


