Return-Path: <devicetree+bounces-259535-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNajFiSAd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259535-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:54:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F5289C53
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:54:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38BC53036EBC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:53:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 669AC33890A;
	Mon, 26 Jan 2026 14:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TUZ/hFVa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18196329E4B
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:53:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439194; cv=none; b=A88+gf+ed9YN8LRzpu2t7eM590pMfvQixKXf0tz+ZU/Qf9G2DmfgVDX3jKB6iQde0oDBhSK0zmxXNzhn/oT6YqfYDWuSXzGX7qZn+wpgokGBinnRxT1JrY8W2P9gRzyEfbuIiGZt640jQwyO33DWq+DO5C5rXgQTvLY3JAb3Cjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439194; c=relaxed/simple;
	bh=FbgWorkVYAARgSVoRiW3gh4NDJIBVt6Kze/Ky/1SgJw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=KrB7eXExQp7bUWYxHayohuR496o8Bkx4xOf8xxTlP+binUjoZ4l7hE83/LP5OQzjmIOVImU49cqA1musu1I70FtM5Cf5Ws5JwqErA6oFKdWQY5UFDvUQmqcDwur2cq4OMdylENUHjBrZgriQn3OI3YrVu0aF+jbkyplOMdoT46k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TUZ/hFVa; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-82311f4070cso1997584b3a.0
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:53:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439191; x=1770043991; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TVvbb9+hZF/9C3/NVKPJTsfvF9X2aKso7Sjvx8952EU=;
        b=TUZ/hFVaHMBLH1qwnc4S6cQ2t8eaw2VF99VcRp5DuBZPpTlVNdTXfnxRNUaP05o+Et
         3WdyF7YwDKONBCTjBv8ytDJAW3ec8EOoEtqKqVXSbEzNDkbfSmpOisLu4BZhES49KhcG
         kvoENI+B1av/uxBYH4ugF7h0paQyZM1UvakLSTqJFRmn0akEIgPnAwIkvVHxN65+2ckc
         cNz5nxPb+XDA3HDoYT4ZTao6IOjj2sgR7WDvHBCaxTNhvq6e8z9gIU5ChTEkdTv9Ym30
         6N9+SXnxB9i+u6YqIxXvwOd/9xaVshTESEUWXLNCUabKMZkSLAWDQ+KSR2yGAji016W0
         N+PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439191; x=1770043991;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TVvbb9+hZF/9C3/NVKPJTsfvF9X2aKso7Sjvx8952EU=;
        b=OnXA6vHoo7P8TrJElb8EN3D2viZ/MNTpuYd3dbGASJAR4GgDvB6l+j8/bzgqJbLSBT
         e9JTwl0PFmcW5g9veoFIlAno/p37oo7pfkBL4L9MgGGX2AsPAJ/Cke9hKOMds9uWmd/q
         nzoZMAVvLxKUn6kxPs3L7bM0fbvWz8qk97VMgLB5ZO+ESu42CYBJAc44uI9BPaTMnY+q
         vD1sDXs7qgTI10n07Gy406bVOPX2NorxHAde+T0fCUup6RYzGky61l3O09r5HhJUmcyo
         WWAlMMwYtBE8JRKxSZQxV/cQmyy5K2drXOmbm8DFezaa2hcNFhNzfxcWQ2CSGl4pqRsv
         3Ggw==
X-Gm-Message-State: AOJu0Yw0zxWEfF1n1SFzUW35pCTj0gWKfWBkt6L+itIkzEp2244AzT4s
	ifVV6KIqRIAaW3i8iXqWSRTDKKpiPgW/RM8lLZlFtC3FWAx+D1qRAcWz
X-Gm-Gg: AZuq6aIt0MYB8pSp6vpXwBN7dOgyg0ij7xBUC6BB2YrfmZcdJne3k6T6+09tPVf5wcP
	/UA1W2j3d6tAfXqlPqYyedK0o3iehF5taAR6TpCxBl4Y6cEbOXAPPfy6Ych/i+T0+x7cRCbgqY/
	OqnfT8CtUAjmSNaaTssO5jjCxGE3M9BuCuACzLgM456Xo5Mvxqkrg3eyjJbeQYZD9UEvVBKuJA/
	I2qOPTbb7HHThQ6MUo59OB+gGHbmhO7J7FC9oyLJVTCdlK36mkJw1/JNFb1VMdqcDdUqW87M0F1
	1V+WlKEf+quxrua2g+0Vo+VIIZQwGESi97LEkktp7pFpZrs2iqOQDBSovpO2kn+/Rx3Trl0zUjn
	yjvz511ZZ31xxqpthicC13ntqR86vB+Jf7qxUt6LDKURXB5iaI7x/KztdcbvqS+7hrxKEE7KWbQ
	Yoo5GuAtAzTGc+bulxMQZbPP95G1FPWHDuOKg=
X-Received: by 2002:a05:6a20:1446:b0:37c:b74c:d8c7 with SMTP id adf61e73a8af0-38e9e5b9a78mr4248473637.22.1769439191326;
        Mon, 26 Jan 2026 06:53:11 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([122.168.71.68])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c635a141fc4sm8490754a12.8.2026.01.26.06.53.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:53:11 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Mon, 26 Jan 2026 14:53:01 +0000
Subject: [PATCH v2] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT
 schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260126-lpc1850-otp-v2-1-bdcf08901d9d@gmail.com>
X-B4-Tracking: v=1; b=H4sIAM9/d2kC/1XMQQqDMBCF4avIrDsliVi1q96juLCTqQ6oCYmEF
 vHuTYUuuvwfvG+DyEE4wrXYIHCSKG7JYU4F0NgvA6PY3GCUuShtNE6edFMpdKtHZqpsSaWqDUF
 ++MBPeR3avcs9SlxdeB940t/155R/TtKosXnYtqqtbaltbsPcy3QmN0O37/sHDucjuKYAAAA=
X-Change-ID: 20260121-lpc1850-otp-eec5d3c3072c
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259535-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[2.99.9.200:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mleia.com:email,devicetree.org:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C1F5289C53
X-Rspamd-Action: no action

Convert NXP LPC18xx OTP memory controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
Changes in v2:
- Add "Vladimir Zapolskiy" as maintainer.
- Remove unnecessary description for the yaml.
- Remove "#size-cells" and "#address-cells" from the properties and required.
- Link to v1: https://lore.kernel.org/r/20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com
---
 .../devicetree/bindings/nvmem/lpc1850-otp.txt      | 20 -----------
 .../devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml | 41 ++++++++++++++++++++++
 2 files changed, 41 insertions(+), 20 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt b/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
deleted file mode 100644
index 853b6a754644..000000000000
--- a/Documentation/devicetree/bindings/nvmem/lpc1850-otp.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-* NXP LPC18xx OTP memory
-
-Internal OTP (One Time Programmable) memory for NXP LPC18xx/43xx devices.
-
-Required properties:
-  - compatible: Should be "nxp,lpc1850-otp"
-  - reg: Must contain an entry with the physical base address and length
-    for each entry in reg-names.
-  - address-cells: must be set to 1.
-  - size-cells: must be set to 1.
-
-See nvmem.txt for more information.
-
-Example:
-  otp: otp@40045000 {
-    compatible = "nxp,lpc1850-otp";
-    reg = <0x40045000 0x1000>;
-    #address-cells = <1>;
-    #size-cells = <1>;
-  };
diff --git a/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
new file mode 100644
index 000000000000..a0cdf083267d
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
@@ -0,0 +1,41 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nxp,lpc1850-otp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC18xx / LPC43xx One-Time Programmable (OTP) memory
+
+maintainers:
+  - Vladimir Zapolskiy <vz@mleia.com>
+
+description:
+  The internal OTP memory in NXP LPC18xx and LPC43xx microcontrollers
+  provides a dedicated non-volatile storage area designed for permanent,
+  one-time configuration and data storage.
+
+allOf:
+  - $ref: nvmem.yaml#
+
+properties:
+  compatible:
+    const: nxp,lpc1850-otp
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    otp@40045000 {
+        compatible = "nxp,lpc1850-otp";
+        reg = <0x40045000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+    };
+...

---
base-commit: cc3aa43b44bdb43dfbac0fcb51c56594a11338a8
change-id: 20260121-lpc1850-otp-eec5d3c3072c

Best regards,
-- 
Akhila YS <akhilayalmati@gmail.com>


