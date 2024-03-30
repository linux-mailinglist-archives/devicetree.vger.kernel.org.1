Return-Path: <devicetree+bounces-54863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C6390892D9C
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 23:21:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E9A531C20E8D
	for <lists+devicetree@lfdr.de>; Sat, 30 Mar 2024 22:21:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FCE24DA10;
	Sat, 30 Mar 2024 22:21:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S7jYKe8m"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27C717D2
	for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 22:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711837281; cv=none; b=oXW6axyo+Rt2X9d6Klv0UYdbhWeOkhtsooxG28FbF7du058IWC2HYLL2GfwPEAvQyq0P+0BCODjIPZ8EL5iyn0jqkgMe9bvcQr1EoXcJGQI/nYEw35eSTgrX6/dL6Uh+6otm+ngtP087BBBBsD3Gf1Pt0L81Tj/B14eZGmGWYiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711837281; c=relaxed/simple;
	bh=Oc9kcICFBM05I/E/I4AVoBzP2f/9gloPVHobW/2H4Sc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=HhqwkxYhZ9gDDSQZIvglYTKryLmpiCRosUG56IhQE1mKhPEF3nzmTZLi5ziK3aKHs+Ue4frcqr42jz2NlcliOwYBt2joAvWE4/+xuUr/CmAdX9Grs/l1F/vugl8ppugjO1hu1PXmUbhVU6A3Cg5eIkJ8S91vbQiSTB8L17mCf3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S7jYKe8m; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-513d247e3c4so2833134e87.0
        for <devicetree@vger.kernel.org>; Sat, 30 Mar 2024 15:21:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711837277; x=1712442077; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0XPGOUCDwaV1EzZ064paZOD8RnQFs1ddJgtwbPEEUz4=;
        b=S7jYKe8msBG0Hsn9CYMRKdMJJSwT1C1KDhNhWuJJHVT+tL8mNXWKFyF+N0xZnPGV7w
         Bk395XN7yob2caKMRGEHJe6VxJAokee7Kuj72ZuuItUajPwWtTCX/PtXOjRFqsIhxjts
         WKUR6aB21G3DVDKrpcp8XrK9Cxw26zWJvuIGkjkr16KV03F3awH9lwtKlw4fenCUcdO3
         LU3p253gOI4kwjlGq6OetGqNdKqLFLukYdPM/lNlK7YfHvzfBF8Z5O570IQA8o7szYfn
         WLR+DJOlOy6aCjAf/IRfozcLCEQurAHZMiYsp9nOqaxvRboDSJywiCRgfsnf4iyxjfLJ
         UmHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711837277; x=1712442077;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XPGOUCDwaV1EzZ064paZOD8RnQFs1ddJgtwbPEEUz4=;
        b=pbLRsP4HwwuOjXz66cAsvnqkRytzuA3/QPevjKn6MBjf7A72H1oIt2+hi4hOfJYIWR
         y/d0IWIkTKHhhjyuzv0n3NjjOYbww3xUJzx3kTLybdwBfSg4FClVHJqBjO8K1ags/s0w
         pqDTt6/uwYJCuF+NLlMlT7wivmtowTIoy27PMeJ0EqavBWoAnyowCtBB1fVk+ANWRRn8
         M25LAfVw49O9PF2g754M4xpXanK9nNMl3oCAOk3V433yXaRufIb5IN6YrqCvNwn6pvHy
         ZXxmUP36xjHuQt8qPQt+Hj0uJwPK4KoAi3lDamVRsJRaUtTfgqQ2/ZZ5DptrUgTWAMVi
         DrqQ==
X-Forwarded-Encrypted: i=1; AJvYcCW33m7dYugB8CVzC7yLHhKWYf029g2w2zS20N3c2mv505FTRpSOnkNzbgMCNiN1KOq6wPzPI1OrxGELMvGbNHNy+Ntwa1LNFxSrTg==
X-Gm-Message-State: AOJu0YxtrO2Dq9X/bcfoh16n8ZwNK/Wx/3F12fAW/tcbSUlelpLiwK/b
	fx7AB/lT8FWGl9aCSDj5Er3U0+7mMdyY5xQ6cTzz0hqKDIkaTgUeWiJVCyday6mllnMR20EF3m+
	G
X-Google-Smtp-Source: AGHT+IF+x3Qdox2g6SjvSt6ZfLOJ3gFe7c5YL+555P/qahnN8Eg7hcDHoGbL+RaMts29GpUddkiBTg==
X-Received: by 2002:a05:6512:3d1b:b0:516:9f65:fcf with SMTP id d27-20020a0565123d1b00b005169f650fcfmr965650lfv.26.1711837276931;
        Sat, 30 Mar 2024 15:21:16 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id j18-20020a056512399200b00514b6e2fd49sm993992lfu.169.2024.03.30.15.21.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Mar 2024 15:21:16 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 31 Mar 2024 00:21:15 +0200
Subject: [PATCH v2] dt-bindings: usb: qcom,pmic-typec: update example to
 follow connector schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240331-typec-fix-example-v2-1-f56fffe4f37c@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFqQCGYC/32NSQ6DMBAEv4LmnIm8kIWc8o+Ig7EnMBKxLRshE
 OLvcXhAjtWtrt4gU2LK8Kg2SDRz5uALqFMFdjC+J2RXGJRQtdBK4bRGsvjmBWkxnzgSatd0kqy
 5X7SDsouJSn04X23hgfMU0npczPKX/rPNEgVeOyGtrm+1bOg5sjcpnEPqod33/QuTXSVvswAAA
 A==
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3401;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=Oc9kcICFBM05I/E/I4AVoBzP2f/9gloPVHobW/2H4Sc=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmCJBcricaIiHddrBejVu6XApq90lPrz+UyzOaL
 MmslELd922JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgiQXAAKCRCLPIo+Aiko
 1SnyCACjI3jZcyF8lv/PfbC7h7LpkxjJVFoEqIGjQQ0uJNVnplc27e2UQGG1fpyLbbDQgQEUwP3
 rmurUTUJveKBLHSQJ1fs80Qe9/ZNBZ2YLRBE/vEA5u/RXkKoGSiSgOlSbLk4i2IfXTXWPKHsAyz
 84sJQUpm5yIxaBu8NrAeYw0NnaoMBJEVcJsgrDuGpKUUUhB7FW8fApu+0yroEiMyrtN63xcUV2v
 O2bGuho1A5A6REMw/Xtdr15nkzJC6mbjYg6PxDPL+qy61fuiLlzvN0XxZ/N60JZf39D5ne95O7k
 euRzdwIcCJFYFyYsOMyDhOhTuzIBm0hasGa5sU32VgH8Umna
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Update Qualcomm PMIC Type-C examples to follow the USB-C connector
schema. The USB-C connector should have three ports (USB HS @0,
SSTX/RX @1 and SBU @2 lanes). Reorder ports accordingly and add SBU port
connected to the SBU mux (e.g. FSA4480).

Fixes: 00bb478b829e ("dt-bindings: usb: Add Qualcomm PMIC Type-C")
Reported-by: Luca Weiss <luca.weiss@fairphone.com>
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Update examples to follow usb-c-connector schema wrt. ports definitions.
---
Changes in v2:
- Dropped patch removing the role-switching port. We do not use it, but
  it can become useful by other designs.
- Link to v1: https://lore.kernel.org/r/20240322-typec-fix-example-v1-0-6b01c347419e@linaro.org
---
 .../devicetree/bindings/usb/qcom,pmic-typec.yaml   | 34 +++++++++++++++++-----
 1 file changed, 26 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
index d9694570c419..fe757619e535 100644
--- a/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,pmic-typec.yaml
@@ -192,15 +192,22 @@ examples:
 
                     port@0 {
                         reg = <0>;
-                        pmic_typec_mux_out: endpoint {
-                            remote-endpoint = <&usb_phy_typec_mux_in>;
+                        pmic_typec_hs_in: endpoint {
+                            remote-endpoint = <&usb_hs_out>;
                         };
                     };
 
                     port@1 {
                         reg = <1>;
-                        pmic_typec_role_switch_out: endpoint {
-                            remote-endpoint = <&usb_role_switch_in>;
+                        pmic_typec_ss_in: endpoint {
+                            remote-endpoint = <&usb_phy_typec_ss_out>;
+                        };
+                    };
+
+                    port@2 {
+                        reg = <2>;
+                        pmic_typec_sbu: endpoint {
+                            remote-endpoint = <&usb_mux_sbu>;
                         };
                     };
                 };
@@ -212,8 +219,8 @@ examples:
         dr_mode = "otg";
         usb-role-switch;
         port {
-            usb_role_switch_in: endpoint {
-                remote-endpoint = <&pmic_typec_role_switch_out>;
+            usb_hs_out: endpoint {
+                remote-endpoint = <&pmic_typec_hs_in>;
             };
         };
     };
@@ -221,8 +228,19 @@ examples:
     usb-phy {
         orientation-switch;
         port {
-            usb_phy_typec_mux_in: endpoint {
-                remote-endpoint = <&pmic_typec_mux_out>;
+            usb_phy_typec_ss_out: endpoint {
+                remote-endpoint = <&pmic_typec_ss_in>;
+            };
+        };
+    };
+
+    usb-mux {
+        orientation-switch;
+        mode-switch;
+
+        port {
+            usb_mux_sbu: endpoint {
+                remote-endpoint = <&pmic_typec_sbu>;
             };
         };
     };

---
base-commit: 13ee4a7161b6fd938aef6688ff43b163f6d83e37
change-id: 20240322-typec-fix-example-3d9b1eca853d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


