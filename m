Return-Path: <devicetree+bounces-259017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ICSaJiuSc2ntxAAAu9opvQ
	(envelope-from <devicetree+bounces-259017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:22:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FDED77BC7
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 16:22:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5E372302B830
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 15:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6309430E85D;
	Fri, 23 Jan 2026 15:20:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="huZrbUX8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB305478D
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 15:19:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769181602; cv=none; b=dFygVzDHpPIn0TxNAbv0wONf0dXj4bSfzES4qaFItG0dh5PF82JFbPKgE809Lvaae47NOIyR1BJa7yRJMudVKJ2LoECcowbX7v4JjSFW3uHnDtcyin6YVbO6sW93PXzgW2+tjGYBQFjOTfwIC/Dblemxp8tYmK8COIn1KW3eNXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769181602; c=relaxed/simple;
	bh=BSZ1MDE8wxCXd7EIJh9BUUuqyCo90gHzf1ChmuvIVq4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=AWF/ITKyjR4zmg27WuhQdJqM5QxURYE49T86hKF57HV8xKl6hNxOkPdF0s9GknjMbKExgKrSZE+o37zoI8u35HnQcmCDRN5m/sD5lBcnBZ3lEWby4Nv4jGQtpbEtdmbvCB0BctHW0HqgC4RJ0BDdxz/7XJXDTMWVvJ1L7rJiBXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=huZrbUX8; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-c613161b489so882588a12.0
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 07:19:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769181593; x=1769786393; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=H6hhkgAe0intcEq/enp1QU3shhPSkOOO7s/1htAdYgE=;
        b=huZrbUX8RGdeyTyqlKl5NTIrPDmuAaDzwt87vLj7Xe+yrEB37ADLwWEqoR2bYapkXP
         D9jL0kh+ido+zd4HKLGM3ePmZmxjZokYrkwdaIR7MLUDiDzw9ympeMIAlqS6OztOSNru
         MjSW7Ipch+jfF9w1awFuCTdPFl0Y/Oof1arETgrVL2whvUUPXqlr1g6sTCu6RFXL/H/6
         yC140Up3qUYnsFLHeenn0G95tn2/zB8iuvdIRRa5srk6Ho8xNre8A4l5IUY+aYT4VDhD
         YCz/9rJVXOnlzfpC6xj/WxM/JbXMI0O6LGQQOo+OlXrXnphY0//0W7fkK80hJ2yBImd0
         Tn3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769181593; x=1769786393;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H6hhkgAe0intcEq/enp1QU3shhPSkOOO7s/1htAdYgE=;
        b=e1O1HOQm2Nbd/3v9FQbQUJw3kPc483TL1kmQ1z8hhPqKuvbUCwqg58eXapSAwoajv5
         J2VoLvaVajwYSB8DgqTtz4KeW0fIpIlNMv9bp/b+BCo16jJXF9/vhRTdH6cQJ7Iken8w
         QEJewRNgJU9AUhpdvtcYGth6JiLqedlS2n+jGFY3uro6k4wTskDVDcDlZKItq1uobgsQ
         VPNqjFvPzAn5aRz6suRbF5M+HYQTIAk9bnN5h8UJnm+i4Q7cjOwcwJVEtPKQ9kkj+a8U
         jSrTSqkNRd+rOdZT46Ld/q+DiSixsvW30ZrJ+j6A+jU6akRcOGFK+lqSRhlTwLnFVgQl
         Xujw==
X-Gm-Message-State: AOJu0YyrGFKE/9iosRhADfqi8bMevgyb6UUqTA1Lz7LiJhA5HziSD/6m
	eiAM1nml5afH6hjOk0mXnZ6Yxc8uKWwpO+App/wFVvWsV1DVO/QXZ9gR
X-Gm-Gg: AZuq6aI7+U3/ICnVTn/gFAm211gVSuvXpSJA2O6kzTOZjxibB9uW0ExPfmapbajqSkr
	WM9LMLb50e8+3ExMhbpxVOOS3BBKd/P/eY7doSgIXEi5EqgrZy+tOWWpJ0EXrODN0NRa4CzM2UD
	HlxWiAna/HaLNh91rCJpCe6v0PwhR9mNbl8Nh6VrhPwhR/kO/pGzw2AVV4G9cQhwBfL+4H+lfW+
	WuhQ6y3QZf4C15iewexxzKz9Nabad8O9G9b88dpNq4oC4ZFE8jFbNHBqb01P0TSgvUzc4BtFtxK
	0jjqY8xh46Sg5j6nR2uUsV8640+jkh1V2BOiU4ZjVQy9s8WUChFtAbFiNWhQjV0ConeGJiIo8xq
	YdOrYVQ1SIpiyU0CgTtwI9YzIdaBP85t/nNf72tPsPCL07gI+GqjznH5Tk0S5wHl2GU19M3Fptc
	C3TEYFArm0w3/D7MzaI66RzB+3bO2ZT0JRzqT7iw==
X-Received: by 2002:a17:902:ebc9:b0:2a7:8486:fe65 with SMTP id d9443c01a7336-2a7fe57115bmr24829855ad.22.1769181592874;
        Fri, 23 Jan 2026 07:19:52 -0800 (PST)
Received: from LAPTOP-872M7T80.localdomain ([223.181.117.144])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a802f978adsm23475575ad.64.2026.01.23.07.19.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jan 2026 07:19:52 -0800 (PST)
From: Akhila YS <akhilayalmati@gmail.com>
Date: Fri, 23 Jan 2026 15:19:47 +0000
Subject: [PATCH] dt-bindings: nvmem: nxp,lpc1850-otp: convert to DT schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260123-lpc1850-otp-v1-1-8bd957dd9c98@gmail.com>
X-B4-Tracking: v=1; b=H4sIAJKRc2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyND3ZyCZEMLUwPd/JIC3dTUZNMU42RjA3OjZCWgjoKi1LTMCrBp0bG
 1tQDga1h7XQAAAA==
X-Change-ID: 20260121-lpc1850-otp-eec5d3c3072c
To: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Akhila YS <akhilayalmati@gmail.com>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-259017-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[akhilayalmati@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,2.99.9.200:email,devicetree.org:url]
X-Rspamd-Queue-Id: 0FDED77BC7
X-Rspamd-Action: no action

Convert NXP LPC18xx OTP memory controller binding to YAML format.

Signed-off-by: Akhila YS <akhilayalmati@gmail.com>
---
 .../devicetree/bindings/nvmem/lpc1850-otp.txt      | 20 ---------
 .../devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml | 51 ++++++++++++++++++++++
 2 files changed, 51 insertions(+), 20 deletions(-)

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
index 000000000000..d37e928e7a35
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/nxp,lpc1850-otp.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/nvmem/nxp,lpc1850-otp.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: NXP LPC18xx / LPC43xx One-Time Programmable (OTP) memory
+
+maintainers:
+  - Srinivas Kandagatla <srini@kernel.org>
+
+description:
+  The internal OTP memory in NXP LPC18xx and LPC43xx microcontrollers
+  provides a dedicated non-volatile storage area designed for permanent,
+  one-time configuration and data storage.The OTP controller manages write
+  protection, programming sequencing, and error detection mechanisms to
+  guarantee reliable and safe permanent programming under software control.
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
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
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


