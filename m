Return-Path: <devicetree+bounces-232207-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EDB47C157A1
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:34:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39DB91B26E6E
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 15:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9AF3451DB;
	Tue, 28 Oct 2025 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Nq89a0xs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85862344038
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 15:32:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761665543; cv=none; b=SxM/mviGcUlrm19Ahc87e54zyadsXaaFJp67siBEEiaaC3qW8LCdHQ+D0oB47IBnkaBNrJOdi1bZAYbHKSrnbe1FsBtSQxFPYRYoMb9qUmw4k8AxBb0FDP4RE+1RyJLyY/3i5eFvA98LXMw1Mhb4ZTPnOclLieTYZqeateQ/a1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761665543; c=relaxed/simple;
	bh=3z9rwk41Pg52P7Yxil/4SJxUHQCqpx66TBBOfkc5/Yc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MJnIYz05pwSv/4bDXW8XO9I6GrFNxSgLjri0ymlnQ8qBG1plJb/Q91FeSOgPOjns2FbpQQ46DAefJPjBm2gJHLosrF77DbqTfab2GeFQlugL30pmsnWWEfGuRqZU1qHSsCLEpLWWc8XyUC848vuMKQq7FdgIBVGsE6OfDVlIbRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Nq89a0xs; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42844985499so711572f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 08:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761665540; x=1762270340; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OUuSoTVVQxjwpTBtYstRhX26TwXazaiUV6XtnoKelVI=;
        b=Nq89a0xsgrVa3+pmruT2Zm4/7KRAk5k1YcOSOWhOjgGU4W9DXhPbcpAL2GjLMG6DbY
         Gb1dTOJAA+W6gYZ6qfQNkZo7QaI2sznDpu+IH3Z2glCIoqEEdz7bDJcIiq5ZKgZ2Bi42
         FJXB+YcRjfJbNz10NFGEQox8hTDgp7zsYqP0cD9G8yaZeAkudGc9HJxcePyZBUocW+lr
         i4z9w4fPpASzyErsEJLZlPsZ0nX7Xs/eQJUwC6cE55t/58KMGJJ0D5Lfq4VUetPHqL9b
         SoE1sPEYcxRaJIr+EHi5FnzLjK1qK3fcBAWplQADxR4Sl9ZZ8lxu1B/YVIO4vOX8hrYD
         g+ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761665540; x=1762270340;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OUuSoTVVQxjwpTBtYstRhX26TwXazaiUV6XtnoKelVI=;
        b=f1xmtxej+RPer2vSRcb/xev8ExZ6hrPKTJ+gA7Y0GqkIEJfvoS84JNBhaLfr6SPvrS
         aKkUZ16m9CnLEykVwf1bivyY89ffD4n9hV3zNFdnehBmiHinDotWgxehxafhL+tvunUW
         9/7uwa98s0cf208oFwN43+aqlfClzo8gSRM3/S6ISQvPN11S7uWkDYeOESmdrK/GSIf6
         gboMYuSeZMbPLCNSvWO0XU0iQlCtS+ZS1GBqJ1oesjN3ehxWaTiKxSwr4/UwDIcn66cn
         zaX3qmoCC4+88q6kO+2wNSO7rm+qZUaI2nHLz52jqQ6SmIYmG2NbAAP7sSE2jcTdD0b2
         Ekzw==
X-Forwarded-Encrypted: i=1; AJvYcCWRqEPpg366U91ZH77U84TOR9lteEeyKM2DsxhLFtLAbBwDwUJxPsA6Bzf/C1e7Ssq1ycBa3D8gbKp9@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0tIzs/Cro/Q/gqNTS5AWt6ZLeentCahz8QJlVMetLO04MdkQH
	pu62bVMasQufYrZFuQa2oSq13X6lDt3Ftym5ddNHyO0cuv9AMYGHxm82iRK2saETxgg=
X-Gm-Gg: ASbGncsGpyHWrTMu9eiCNEI3gzdRAsWcBcO6JscEGWTewBnfYN3hRgmEvD3O25iU4Jz
	S6z8dPor/Iv/Nrtx6Lx1KyYRjx+9zwA44Lq4mfzwho4eVoFFKm1K2e+dMKoFti6m4am6Me2iYKE
	5jk7MxUEXkcVueoOTZEedrc2yW7UPwO+OtRuCRrOKgqdU9e3Bhl0vOOQa3Czth6QslEb9CWW0U+
	nZbwMZqvObTl3QF5wDxGGAuIjitcaVF0KdDMwkWu1Z1sSrFyW5UlLoKQcUVbWiVBbDlV2STryR+
	fvfTpDkpJJ9FU/Em1UmL8txnHifeiriAmkhHd+199vUwjnUrU0578Z47vpcAn4dTBgmhlcP3eNI
	N5MPA86OFXhc58ALMrUB3NwB6FfAZ5rY4XGEBmW5TXoWHXqE8jhyXAyIp1xS7GM1rIeHckoZhc/
	l33svEKVkEvz3FYRmU
X-Google-Smtp-Source: AGHT+IHi7kYLo/c438YHatwxDQS/wbU2HAcbDHr3uJ59MX3KF62WRi2wj3EezmJCvNrLdyKHm0ezoA==
X-Received: by 2002:a05:6000:2c04:b0:426:fff3:5d1a with SMTP id ffacd0b85a97d-429a7e72689mr1845178f8f.6.1761665539576;
        Tue, 28 Oct 2025 08:32:19 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d9e80sm20844417f8f.28.2025.10.28.08.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 08:32:19 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 28 Oct 2025 16:31:53 +0100
Subject: [PATCH 04/12] dt-bindings: bluetooth: qcom,qca6390-bt: Split to
 separate schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251028-dt-bindings-qcom-bluetooth-v1-4-524a978e3cda@linaro.org>
References: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
In-Reply-To: <20251028-dt-bindings-qcom-bluetooth-v1-0-524a978e3cda@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=3588;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=3z9rwk41Pg52P7Yxil/4SJxUHQCqpx66TBBOfkc5/Yc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAOH0kgeunM7TOUwA1g3EPkxP8WrJnh2knMhTX
 t/oqDLYZUeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQDh9AAKCRDBN2bmhouD
 10PvEACaiU5oOK0iZt63WKr3Qq5TVXNL1T/rUAjkBESArSBCemo+pmNA3Mwpd+A2EqLSwDpvDw2
 esXHsBL678k0gB1x+kcZgsSPigFO8tFKiDUv6PGUHK6c9XXIp8/QLx7HPTAnJp5t+byJCup1aS2
 33/DeQFRdJDigoFhive/X5NLOqubprYtb4bLvcILSubX3ghnJ0Vsl06NBTsXo3H3jB/S7ucDOYA
 8OGG5UsN0b3ioPHLeOLu/CLUoEd9vun4SsmBT8H8ZDcNvK7j7hWWVeDwnJEGi6eIx6cXIR13dBN
 0lDW5OR4AHByNikB43kejKLpW7T/VXEoiE8HkXQBf9RCvuLjPiXql/Yd8qpmtSZChrBcZtnPNrt
 ZyEwfPRfcgcFDnnq1Ox2l8oI4kUqoe3TNS2T84nPBK3X7FCtawHS/5Ecrl67YA64/Lsb2zzB3OT
 1J27JQfQx2quKM1ip/pJMw9XpDnMGYYDhnrKAWgMBVnuQ1jEt+imWRviUYmXIOwPpx/OdIdZvOg
 tCENz3hkOAIPA/YMvei/X6LJP4sceUYzXA2lPcTKslfgemlyoJb5+hz1bs5Kaf0ikqHqde8SbTv
 6tmE3CNhSHeBshT/mnJCRW7gNorUUxVz0CVwzfGAiQJLxtqxmGmy1eS5SV7NXNO/Pz7yKSYRUx/
 APdZx5NE5q+FwaQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

One big Qualcomm Bluetooth schema is hardly manageable: it lists all
possible properties (19 supplies).  Split qcom,qca6390-bt to separate
bindings, so device schema will be easier to read/maintain and list only
relevant properties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/net/bluetooth/qcom,qca6390-bt.yaml    | 64 ++++++++++++++++++++++
 .../bindings/net/bluetooth/qualcomm-bluetooth.yaml | 15 -----
 2 files changed, 64 insertions(+), 15 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml
new file mode 100644
index 000000000000..cffbc9e61cd6
--- /dev/null
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,qca6390-bt.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/net/bluetooth/qcom,qca6390-bt.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Qualcomm QCA6390 Bluetooth
+
+maintainers:
+  - Balakrishna Godavarthi <quic_bgodavar@quicinc.com>
+  - Rocky Liao <quic_rjliao@quicinc.com>
+
+properties:
+  compatible:
+    enum:
+      - qcom,qca6390-bt
+
+  vddaon-supply:
+    description: VDD_AON supply regulator handle
+
+  vddbtcmx-supply:
+    description: VDD_BT_CMX supply regulator handle
+
+  vddrfa0p8-supply:
+    description: VDD_RFA_0P8 supply regulator handle
+
+  vddrfa1p2-supply:
+    description: VDD_RFA_1P2 supply regulator handle
+
+  vddrfa1p7-supply:
+    description: VDD_RFA_1P7 supply regulator handle
+
+  vddrfacmn-supply:
+    description: VDD_RFA_CMN supply regulator handle
+
+required:
+  - compatible
+  - vddaon-supply
+  - vddbtcmx-supply
+  - vddrfa0p8-supply
+  - vddrfa1p2-supply
+  - vddrfa1p7-supply
+  - vddrfacmn-supply
+
+allOf:
+  - $ref: bluetooth-controller.yaml#
+  - $ref: qcom,bluetooth-common.yaml
+  - $ref: /schemas/serial/serial-peripheral-props.yaml#
+
+unevaluatedProperties: false
+
+examples:
+  - |
+    serial {
+        bluetooth {
+            compatible = "qcom,qca6390-bt";
+            vddaon-supply = <&vreg_pmu_aon_0p59>;
+            vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+            vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
+            vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
+            vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
+            vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+        };
+    };
diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index c8c0fa52d98c..e04ff0a8a45a 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -21,7 +21,6 @@ properties:
       - qcom,wcn3990-bt
       - qcom,wcn3991-bt
       - qcom,wcn3998-bt
-      - qcom,qca6390-bt
       - qcom,wcn6750-bt
       - qcom,wcn6855-bt
       - qcom,wcn7850-bt
@@ -181,20 +180,6 @@ allOf:
         - vddrfa0p8-supply
         - vddrfa1p2-supply
         - vddrfa1p8-supply
-  - if:
-      properties:
-        compatible:
-          contains:
-            enum:
-              - qcom,qca6390-bt
-    then:
-      required:
-        - vddrfacmn-supply
-        - vddaon-supply
-        - vddbtcmx-supply
-        - vddrfa0p8-supply
-        - vddrfa1p2-supply
-        - vddrfa1p7-supply
 
 examples:
   - |

-- 
2.48.1


