Return-Path: <devicetree+bounces-272131-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UKsxN0jbqmkZXwEAu9opvQ
	(envelope-from <devicetree+bounces-272131-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:48:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE4322215C
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 14:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A2A6301DD6C
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 13:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE6F3612FC;
	Fri,  6 Mar 2026 13:48:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="z+axEiQK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6407234D917
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 13:48:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772804926; cv=none; b=dKyOFBbNqwaYlCAHcPnNsQxXn0Jon/bvFRDO8ntS7LjT/eV/pfdc32Zhp7oxYT1Pbr39JImTWXmGJI4v/4vu07WkMIK2Qpd83Uz6pBtJXoW8b62KP3iDmc5W9TU35Om3NeRG+pAbae7AAKFNTR0bHP98MYhrRuDZ3YKbgFZQa6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772804926; c=relaxed/simple;
	bh=S4AYyFcTsusx6JymB78ndk1LzxPjBUj/RxkWMGbPmis=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JThXjyKA2mzpFpk8OjaAzlVotbEFY2aP+FHYlMZm3TL6nUaAMUFE5QeInOg8tRcLoYmvnC/5qV2NjP+YKpfWAAL43I2xXnRzBoxMv+v7ER040iv9V5/NNpEldUiCK0Y7Lujimy3iFXM0cNhkg8rjWQnpByCGuijSDAZhVp1sKxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=z+axEiQK; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-439b9b190easo3752633f8f.2
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 05:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1772804923; x=1773409723; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ix3uV33RQkJIwlvd9fVLf03DEoMJ43/Z6jDu2eagGtM=;
        b=z+axEiQKsxnQ517nvve/uhAJapQ7CMCQEyCeDQ3MdFAqjR++TUU1Q+woOwN/F6zEpN
         z8R0iJn+Hpor4agBzVj+ZfX5hOzhO1d/wfMswIjBKyIF47OZZdIGzhckPWucdMXJbkus
         P3yz/2qNiopibjBJDPkXQgKRo//Qxfx/RwXWS/1/Zvi8F8ujLgv5vmwpi6Fx35LvDV+0
         VLgwOkKpbsOixER+ZljUGEpaz1l0WrSAIZMqdnLpZ7L5KGjoJc/+BfucRMC8q9rmOgz5
         cdL5mblYSCRERnCqdj8HA+i5WhQggaGRnTZ+jJmoM4dhoo7nS9kbMxsKbQr+4Z+TmZSU
         nwTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772804923; x=1773409723;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ix3uV33RQkJIwlvd9fVLf03DEoMJ43/Z6jDu2eagGtM=;
        b=uV4Q7ZqICyZRhpF/R3T2IS/h9gSG0KE7YL+ioiGiJUZsDXvsVnIlBMbkIPYZfojFNz
         oBXMSF9JuOeUHUVxcEmCzrHPbad7KsAeSJ8gPBZDlXaYyxlRSBcLEtghT91t/GcUCJxv
         4ZZehAqU4Q+rKi9LPlML/OARknLT+UuqBxTeF3ZcD31ETSWFPD01rqNvOGTi5S3tbRtr
         fl7NaAKa5L0h7CUI5j/mlLF8Cx3fnPLZlhP8TMh0mQImrjEaByThX5GwtZVTZFb80UJZ
         zUAyhRXN6abQuxnHoSg0GYSpWnpVQvuRjwKUL7cQsWyRfIA1SZ4vfxexjVr+ZGNsveKF
         bDww==
X-Forwarded-Encrypted: i=1; AJvYcCVtSbtgPVPsbqaF+Rf5Fu1wrFxrnAlXMd8j0Eu1vzHZSY1wilo2l7hxZLWmYVpvVr0gyUpbUbAvxDqH@vger.kernel.org
X-Gm-Message-State: AOJu0YyUZm5y6Sri/sQRJef9IF7u7jaTjmH1YZ7jUppaGDGX7T1fIeYr
	GtDM3Ftye/F9p53JaIad62lR91uCMW/nCVULEu2ApGw/db+ViIV0NbTFZ3k2Z3NzqOc=
X-Gm-Gg: ATEYQzwT63KW9N2gY0kX6bNtaKcerH8rt5Te32kVoBSauaP+tlf7gjaGTZjws/kq29y
	uYcx5hy44+eW/3H5rOrNskws8vxStcnCvXgjhw7ryj/tke6kzPO/gR57uTRUhK/fOnqx+dVOzsB
	uZuju+dd6/EZUT2IIJZ2c5ROCr4dOK73nCDbomXrkcJ2ysxn9ISY6ZoFSBUik+Q1IKb3BLj5itT
	uVQr6cAkwDsvZNyyawbTd7+zHQKhKle7nqkbWw7R/pwHoe8Qc0bYxfX+T5vPdF9/OS+XjHp6iLE
	4m1ysvzK1KVKFWXKDKGvPrEEwAN4N+XUk826NHvjZTS9NUJ5oak725V85FXKJsKDO2llYISlncd
	Nv30czXmDicG/W7Hf5GP7f8xDXayOA/hv+cn+YfiYkJcLUKHkxEcdlIBfI5H1nu3ltnCsC/Jllc
	h5Gllg7JzjoHkLDCM321wlwaRXRgURyFa2KhFeEp5hLLfnrtjSbPN5OA9z2qlvSn0tvfSsZaMDu
	v59MwhE7GYT2XQ=
X-Received: by 2002:a05:6000:2911:b0:439:beee:43aa with SMTP id ffacd0b85a97d-439da351b41mr4056912f8f.16.1772804922768;
        Fri, 06 Mar 2026 05:48:42 -0800 (PST)
Received: from [172.16.240.99] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dad8daf2sm4304767f8f.2.2026.03.06.05.48.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 05:48:42 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 06 Mar 2026 14:48:37 +0100
Subject: [PATCH 1/3] dt-bindings: clock: qcom: document the Milos GX clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260306-milos-gxclkctl-v1-1-00b09ee159a7@fairphone.com>
References: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
In-Reply-To: <20260306-milos-gxclkctl-v1-0-00b09ee159a7@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772804920; l=2517;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=S4AYyFcTsusx6JymB78ndk1LzxPjBUj/RxkWMGbPmis=;
 b=kTbKHsy8jRCEnPD2m5k97hP71fQLFbaGxDIxGv0EHdi8iyAguyE0P3/OXLbhWgeCUxmf6Letx
 C6vAaAw7wgHAHz6VS+U+eRiZmOrn0Q3QwZXfYemKr7ZsfwtKizk9pHi
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=
X-Rspamd-Queue-Id: CBE4322215C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272131-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[fairphone.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,3d64000:email,devicetree.org:url,fairphone.com:dkim,fairphone.com:email,fairphone.com:mid]
X-Rspamd-Action: no action

Qualcomm GX(graphics) is a clock controller which has PLLs, clocks and
Power domains (GDSC), but the requirement from the SW driver is to use
the GDSC power domain from the clock controller to recover the GPU
firmware in case of any failure/hangs. The rest of the resources of the
clock controller are being used by the firmware of GPU. This module
exposes the GDSC power domains which helps the recovery of Graphics
subsystem.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 .../bindings/clock/qcom,milos-gxclkctl.yaml        | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/Documentation/devicetree/bindings/clock/qcom,milos-gxclkctl.yaml b/Documentation/devicetree/bindings/clock/qcom,milos-gxclkctl.yaml
new file mode 100644
index 000000000000..47dc6bb66120
--- /dev/null
+++ b/Documentation/devicetree/bindings/clock/qcom,milos-gxclkctl.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/clock/qcom,milos-gxclkctl.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm Graphics power domain Controller on Milos
+
+maintainers:
+  - Luca Weiss <luca.weiss@fairphone.com>
+
+description: |
+  Qualcomm GX(graphics) is a clock controller which has PLLs, clocks and
+  Power domains (GDSC). This module provides the power domains control
+  of gxclkctl on Qualcomm SoCs which helps the recovery of Graphics subsystem.
+
+  See also:
+    include/dt-bindings/clock/qcom,kaanapali-gxclkctl.h
+
+properties:
+  compatible:
+    enum:
+      - qcom,milos-gxclkctl
+
+  power-domains:
+    description:
+      Power domains required for the clock controller to operate
+    items:
+      - description: GFX power domain
+      - description: GPUCC(CX) power domain
+
+  '#power-domain-cells':
+    const: 1
+
+  reg:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - power-domains
+  - '#power-domain-cells'
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    #include <dt-bindings/power/qcom,rpmhpd.h>
+    soc {
+        #address-cells = <2>;
+        #size-cells = <2>;
+
+        clock-controller@3d64000 {
+            compatible = "qcom,milos-gxclkctl";
+            reg = <0x0 0x03d64000 0x0 0x6000>;
+            power-domains = <&rpmhpd RPMHPD_GFX>,
+                            <&gpucc 0>;
+            #power-domain-cells = <1>;
+        };
+    };
+...

-- 
2.53.0


