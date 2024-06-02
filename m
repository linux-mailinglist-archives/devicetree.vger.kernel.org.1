Return-Path: <devicetree+bounces-71607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 345F48D7679
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 16:56:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5712B1C219DE
	for <lists+devicetree@lfdr.de>; Sun,  2 Jun 2024 14:56:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4C774207F;
	Sun,  2 Jun 2024 14:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IknShLyU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52B14175A
	for <devicetree@vger.kernel.org>; Sun,  2 Jun 2024 14:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717340191; cv=none; b=TNR5Ulx3M94qfc90CgL2EDEXVCOuMEhlD67/lX9k1sgITeVh7fG0GdT/GdI/2aWzmn3tdL9nEK1rI7rzcN2gxzSPclvOsFGjKEpnyIzBn7vAh0G3Ft+oPC1O9OgpJX4fPpTUMuUadXbpTrEggzZ7FRC4JdOCnvD1yFelelmnsSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717340191; c=relaxed/simple;
	bh=2ObBelmRt/in8OEiAUq7o4JF6ZbVPYm/ooscKE31fCM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=CC6XROCfH7vUl9jGMg/ROx4B/ejNN5GWWuGpb6OrsqJM+N0Ey7jlsl+KqOoXrG/9UAwctE6MtQuBr+ePZtomn1QK1Qgg+wJau2l1py/QBLAldqfsDVDZhTQle7SbNNgmnURKdcZUuQNXz8RJ0VFqh90HQG23u0Gya12AEkxlwWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IknShLyU; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57a4ce82f30so1056689a12.0
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2024 07:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717340188; x=1717944988; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rHezFptI8xV5SgappCWjVOVv4jKoYs7pCH3rjH5W6Fk=;
        b=IknShLyUTfn0X98ykl28lUUE1PXxwiub4Dk8N74Ii47usF5E7mNESRb9yXsfBfeOUM
         eozInZgCp6rmWe8v7pCHmL6yb7OG97J6yI+UNR2J9k2ife5AAG4j0QeNfYlJBRIWSxXv
         n73h9N64GxE16NfyVrqovy02CRVzZS3Y0+p3Tm7mQQ7NwaO+V97OV0ZnenyTfckbqg3L
         CJXnZaPmnamAQHxQ2lWO+pMNkSGpb+o+noL05riZLnT3Z4HQkrf2MTrW/OV3blkBEtVN
         NrESdyQhDIlz9u8xXFcv2Drm3iEk+N0BqPBwWCgIN2EmY+Ybjk2gJDu468WrV5QAGvmX
         kP9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717340188; x=1717944988;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rHezFptI8xV5SgappCWjVOVv4jKoYs7pCH3rjH5W6Fk=;
        b=DInCV/Y7DSwsSk2BTDQyQg5XIu6A3HrUcgJMfHbkHerzMMEApTEAvjcSfuhIvldrgg
         diJop8nzkzhJxp1qrorjXB5P2thP2OOym3dRgJDf9dLwgJhJNdy6ymeoXKbeuYNN+4zo
         HCDq8rsYa4V0Q6GsCoChCOkR8v3YIWS1PgF8QmmfsU9fWrTl7VdaW7JYAbMavhDtK11x
         ahaw4e5jfs+Q9DRVP/h6uQGonaMDAum28hz1PK6DqKW00yZ4KvrgjvNVT+fYMBXa6Jnc
         RY6QoiCCNGzTXRQUNvtElumVegPWnc2QxGXNegJCmZaOQaGz3iE+bG+qoZrBUL4IRz9B
         WHOA==
X-Forwarded-Encrypted: i=1; AJvYcCUp6R9cFaNrsQa/spjUnHX3Pm1uicyejQsCZb1Zwuhizn6K/bXYQkvHiy2094T+WCLNQKpQzPONcs/vR1P2LtwiQIn9Mt+UA2ZqJg==
X-Gm-Message-State: AOJu0YyJ06/rsYIKbOOV0kLm6HoJvGonKpd2pDRgUqSX9t780l1Xw7Tg
	bddvgbWfNFfQzgjHHbQdVcwc5Ch361bBVQrSYarqPr37T2eur1a6bE36olPmhbA=
X-Google-Smtp-Source: AGHT+IERZgKay407I4D3jDF8XMysUJ/xtWwqu7R7su3O8OwYKnNPkwEB6giHEVwhFI9RhUnxNQsFwQ==
X-Received: by 2002:a50:8748:0:b0:57a:33a5:9b71 with SMTP id 4fb4d7f45d1cf-57a365b2bd9mr5495512a12.33.1717340187967;
        Sun, 02 Jun 2024 07:56:27 -0700 (PDT)
Received: from [127.0.1.1] ([188.27.161.69])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-57a31b993aasm3764341a12.3.2024.06.02.07.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Jun 2024 07:56:27 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Sun, 02 Jun 2024 17:56:24 +0300
Subject: [PATCH] arm64: dts: qcom: x1e80100: Disable the SMB2360 4th
 instance by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-v1-1-0adf4dd87a9b@linaro.org>
X-B4-Tracking: v=1; b=H4sIABeIXGYC/x2NQQqDMBAAvyJ77sImVbH9SumhSTZ1D5qwKyKIf
 2/ocWCYOcFYhQ2e3QnKu5iUtYG7dRDnz/pllNQYPPmeRvJ4OJ7IEWHaDOsi0TBpqdhvM9oS/H0
 kzFoWjJpwoGaHMIX8GKAlq3KW4797va/rB2Cnp9h+AAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1521; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=2ObBelmRt/in8OEiAUq7o4JF6ZbVPYm/ooscKE31fCM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmXIgZCJt7eLK3kMSxR7NGGEOcYD0tC41NYOWeB
 rCJTVSp5zOJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZlyIGQAKCRAbX0TJAJUV
 VkImD/9yH3m+NRfYG7iC1CB9cgok2e3kurQYQrZwBVmDYeQWeZT6UmAVhkq01grjSoLtEBePiwh
 iXNZoBZvZQ99DqSNhTNVK0OE8neD3/zMsGTzefMXmpwvfijZYiObi+BfxP7LViqg6fAm0bb08Fj
 H4JvreJkGRPSmXFbSWF2X/hmF2Mx9n8+0mr9NISb0MyHgH2HSX1Q8oRDNqM83ddtMdnlcB5LJGF
 BYIbSDAkQPvlt3W15nvZ9EL7IOA6D+GniFwL6mt0puhjpcQISnMsh4p+Ogk79o/wSU2GBG6hud+
 +6qZaATiHk6Rud6HVHOEBufFXlkqIdpHA8YVxE/oFF/BBLtJ06erh+nSC/y6rpZfs2Vcf4wotMs
 szZOId/aHlzxZo05/HGLCxDzXIC661GbhTqNXYTvMWZbOrEUnsPbLzST4t0AyGumIJtFf+hlxyp
 u0VI/B3X3ZHAEgp7YAorCpcA249bFkIEP3RG5BClWuxvwDzgNFHRvMOVjuDePGJJO0omM5eHa9C
 Y9EofjRet7epPNIHEnELC1khtwyJpdC1OP3FA199M94kfZb+3Iguz+XgOuL2FCDmyOqXwtp8ree
 qHZeWbqkfe/kAwHI4yZDGcAlkxw92VRxbFzwbeKZbCdxU0acVlRZF0LK1eG9XmgAAThdAc0uRZW
 /R9SPkzJPh57bgA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The CRD board doesn't have the 4th SMB2360 PMIC populated while the QCP
does. So enabled it on QCP only.

Fixes: 2559e61e7ef4 ("arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi | 2 ++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts    | 4 ++++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
index a5662d39fdff..e34e70922cd3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi
@@ -522,6 +522,8 @@ smb2360_3: pmic@c {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
+		status = "disabled";
+
 		smb2360_3_eusb2_repeater: phy@fd00 {
 			compatible = "qcom,smb2360-eusb2-repeater";
 			reg = <0xfd00>;
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 3de7565dda19..0db2f3ecad31 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -502,6 +502,10 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&smb2360_3 {
+	status = "okay";
+};
+
 &smb2360_0_eusb2_repeater {
 	vdd18-supply = <&vreg_l3d_1p8>;
 	vdd3-supply = <&vreg_l2b_3p0>;

---
base-commit: 0e1980c40b6edfa68b6acf926bab22448a6e40c9
change-id: 20240602-x1e80100-dts-pmics-drop-4th-smb2360-from-crd-501e8bb8bf95

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


