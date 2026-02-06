Return-Path: <devicetree+bounces-263383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KHBnBdj/hWnUIwQAu9opvQ
	(envelope-from <devicetree+bounces-263383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:51:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B28FF303
	for <lists+devicetree@lfdr.de>; Fri, 06 Feb 2026 15:51:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A6E73027B74
	for <lists+devicetree@lfdr.de>; Fri,  6 Feb 2026 14:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75610423175;
	Fri,  6 Feb 2026 14:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="K7vsvC9A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f66.google.com (mail-wm1-f66.google.com [209.85.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA90C40FDB3
	for <devicetree@vger.kernel.org>; Fri,  6 Feb 2026 14:50:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770389442; cv=none; b=FXs8eRgOCeUpSzQg/cc9tIPywwiC/FLn6Nh2OI3JIvz/o0LctVcyaWXyMom5Xl59j5dlCHCvAJ0WmFZtapCt9XLO+93t2eZCD8QQ35HCx/OgEw+wq3LjdzY2C3OjwG7JKuRE8gGMBVjFpxUoknOQVibEMhK6ZcNhNW6SwCmkcfM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770389442; c=relaxed/simple;
	bh=6oD0xU46hrNBhrgXHAVzPQZ0p5xu4kLMUsSNZxD+f5s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=r9ICRi3J9HdpQ+o47UkChM8LUvnoBPW5g5jgnzj37q3b1nn5xSoZ61vUa3XG1OuRoVZNpgMl9RDgDhCNdmpDcJOxwbU6AlsRLUYplLmQlt9fYSTigiSbMZ3y4MgkKyOYbSiSgP1wq/bvyaqmmU/+ix6D8werumJVxsNjuCcZ6d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=K7vsvC9A; arc=none smtp.client-ip=209.85.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f66.google.com with SMTP id 5b1f17b1804b1-4806dffc64cso19500625e9.1
        for <devicetree@vger.kernel.org>; Fri, 06 Feb 2026 06:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1770389440; x=1770994240; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=owoQr+sgaQRYmNT3BegKzJBkJnYeX5VgdhwZ+8X4rNo=;
        b=K7vsvC9AfMuXcKAshM958ZSl8rQk73fIdhbo1UZIFO+18wLYK6T8aXkpsZViyP+a85
         5PdL5i2QXkDBPro00s0f4TZuPX2hhsw4GHlqTAYoSCiI9Pl82+nPnwUP4OG40GfkIck4
         LQOyuWrqu/S+EQXusVroOx5PBMv+mj+AyXjYHhhkaGPtwsFvM/6Jt9j0WPs4eEohhPJ0
         hXRiPGk8QDEPAPLKahOUplkc4aqJeeTDeoJvcWz+hNoil5mfUewDxNlnz9QQ6ughiAhU
         08JvZgxIOcsRpyddvjS/DxiD/VylL87pAzkqIr1K7nJmSc/r+aunAwCy6EJlXQYKP4wY
         LClA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770389440; x=1770994240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=owoQr+sgaQRYmNT3BegKzJBkJnYeX5VgdhwZ+8X4rNo=;
        b=AOx6V3flH3mn8SdlqLooNO3Wd8gCrgUBPuq8oUDso1PSyccCcuFIHnhCzheSr6onHL
         s/NYWXgcf6oR1oG/+RapEuFMehpzcX1B3yj8FPOz6mM3XY+q4WQGNITTUl2lQaoP6o5O
         RxMy8RGgLcHN26WnFkBKfwXZxhAL3gcxCykLUm6QxXW6iF/FYug+x8A+2Yc7KsNuZ4w2
         OPinAg1vMxCmDkZvnfDcfYYQMwQA3EpWsZ1pTwlhEbMeFap+t1KayFk6cAvqlhIWbDXg
         QNwQDdgxnO/5dTpY1gZnN03AQZHzWL3LyavQhBCEvmryvnOcTl64oKQUtzbBIhNOt017
         Z1ng==
X-Forwarded-Encrypted: i=1; AJvYcCVGK8H2aMZy03wp9oKICaZ8WDEwthCFzYSNgSm/O49G+8ubyaZkOYsmFH47nQpp0Rs3zarVnESO2NmD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/ClDb5trSC7ZdW+95aQETOOrVSax+LrVtV5QYNUj9ID47VKzL
	XzIjNr4l3/7f0JN5Hj7FAPnE8OAMKD8JT2/JBQYKVkGme2GTPi4TdYcC+LtyCGbr67o=
X-Gm-Gg: AZuq6aLzLUyz6vyO8zoT+p1WUDAaKnjEyEZ0DFS2dHapTx+61goG6fh0DM6sPQi9iy4
	UDIRKFRgzlnE5DCOYW5E1AF7TwoYQw0Wn2+B2uLDOpOHUOQWbW9YDGxgpG5a3PYiGOJzyG2gOXB
	3SuK/VBEEApTXoF31bWCLkMHpfLhiO1DXkwWL1O0QumMjgaI+bxjfRFth3aHhxqA0wPzKzUqBPu
	ert8tNGqJwpVaGTxyPQtxC6PxYeZfbsPeM/4DqoSGx5LpYAJLwckALhpiy/rZmn9gMk5wOUz+vQ
	mbbVrORy/O6OdBj8MIUbliLl7wdwoRb/SkSddLUsj3iA2c7rHMPwwOd2ddVj4USYq9LSqlBAmFF
	BaJSU0fCo9Wm/ro3RmSozCXJcsPT+S6/8lJ65s0UAxbtnlI5eQKHUkXNFTKcf4RfgrnkoPPcv3C
	i4CXMUADD11B60af65G7f3+2XCQtc8RNFR
X-Received: by 2002:a05:600c:46cc:b0:480:1c75:407c with SMTP id 5b1f17b1804b1-48320929115mr34905905e9.2.1770389440362;
        Fri, 06 Feb 2026 06:50:40 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:106d:1080:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4832a38425asm3825805e9.7.2026.02.06.06.50.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Feb 2026 06:50:39 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 06 Feb 2026 15:50:29 +0100
Subject: [PATCH v3 1/9] dt-bindings: usb: document the Renesas
 UPD720201/UPD720202 USB 3.0 xHCI Host Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-1-5b79c5d61a03@linaro.org>
References: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
In-Reply-To: <20260206-topic-sm8650-ayaneo-pocket-s2-base-v3-0-5b79c5d61a03@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Magnus Damm <magnus.damm@gmail.com>, Bartosz Golaszewski <brgl@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-pci@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2168;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=6oD0xU46hrNBhrgXHAVzPQZ0p5xu4kLMUsSNZxD+f5s=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBphf+6KGB7Lr1C3sNmutKonSXTLmS6ccdl9P6Ysb/5
 wl6wKfWJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaYX/ugAKCRB33NvayMhJ0XBMEA
 Czybtgq7hhG4SnWkZyEO20jinD/7uZ79G/Ga4tFo3d4zqlmGYyyZCAAoOS7axXN21oFy+4o30J4l5P
 qIeqoHSZhQw8p+PwZW6P+bm0RHSoQcUs5qrjVh0nafMjZlTB7EnHJknZpKVIaRKwPtLdbh/yCPv5MV
 gYnV0mb1cXJtTqtMS1wcj8G/CqfXMiyHAES+IugmYXDsvjE6VMZSyjaga4qBm5jRNV5WmUnflyrJDL
 jY0NXM494QKZV1hLdvU1Si9zb4yKrZdLkkatbVRioMYvuNPDJelHdSgqufpYb+K6fgqtokre3Y07mL
 EMM+M0xaypWn2nr4OhgoO6lJ4FhpCahseRm5yujXwbMCO48tLTK5ek9+dKefx5r0ZOI2ngxZW+VByV
 zGoLSxCfTHSPkmkTNHZAett2F1ob8t5znhXdR9awrQUSh5U5LnfIrPL83ov8uyGD3WassIg2d22QeE
 aONk/5G1tWtwNN4zHP9TrIxXMuNhFGKVCHfqilc0cR6iQXLTTW0wr0nPTHWlRxDnEh7xzZV27iqp1V
 1wezoGnN2eeCudCo25xiDO0WVe7LI73EZFCFdQjQFohK0e+ylK/rUez3JEJxwkNd6q9espPVzjc4QG
 8TVYJnfwW2mN1MsLEcx//7eAXrXL8HBz423wA4w/Kz83CEbKc4NdbgiFsXmg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263383-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,glider.be,gmail.com,google.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[linaro.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[neil.armstrong@linaro.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.991];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,devicetree.org:url,0.0.0.0:email]
X-Rspamd-Queue-Id: 83B28FF303
X-Rspamd-Action: no action

Document the Renesas UPD720201/UPD720202 USB 3.0 xHCI Host Controller,
which connects over PCIe and requires specific power supplies to
start up.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/usb/renesas,upd720201-pci.yaml        | 61 ++++++++++++++++++++++
 1 file changed, 61 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
new file mode 100644
index 000000000000..34acee62cdd2
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/renesas,upd720201-pci.yaml
@@ -0,0 +1,61 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/renesas,upd720201-pci.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: UPD720201/UPD720202 USB 3.0 xHCI Host Controller (PCIe)
+
+maintainers:
+  - Neil Armstrong <neil.armstrong@linaro.org>
+
+description:
+  UPD720201 USB 3.0 xHCI Host Controller via PCIe x1 Gen2 interface.
+  The UPD720202 supports up to two downstream ports, while UPD720201
+  supports up to four downstream USB 3.0 rev1.0 ports.
+
+properties:
+  compatible:
+    const: pci1912,0014
+
+  reg:
+    maxItems: 1
+
+  avdd33-supply:
+    description: +3.3 V power supply for analog circuit
+
+  vdd10-supply:
+    description: +1.05 V power supply
+
+  vdd33-supply:
+    description: +3.3 V power supply
+
+required:
+  - compatible
+  - reg
+  - avdd33-supply
+  - vdd10-supply
+  - vdd33-supply
+
+allOf:
+  - $ref: usb-xhci.yaml
+
+additionalProperties: false
+
+examples:
+  - |
+    pcie@0 {
+        reg = <0x0 0x1000>;
+        ranges = <0x02000000 0x0 0x100000 0x10000000 0x0 0x0>;
+        #address-cells = <3>;
+        #size-cells = <2>;
+        device_type = "pci";
+
+        usb-controller@0 {
+            compatible = "pci1912,0014";
+            reg = <0x0 0x0 0x0 0x0 0x0>;
+            avdd33-supply = <&avdd33_reg>;
+            vdd10-supply = <&vdd10_reg>;
+            vdd33-supply = <&vdd33_reg>;
+        };
+    };

-- 
2.34.1


