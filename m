Return-Path: <devicetree+bounces-223442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBDCEBB4ED3
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 20:46:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 874F83A6EBF
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 18:46:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6070A27AC57;
	Thu,  2 Oct 2025 18:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e2PUofOZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D019E2F5B
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 18:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759430760; cv=none; b=C5bw3OEqbyN0wouUaMejfCmyDAMXSKvwr6TkjK8TgM+13D0QD3NqGkaYZQPqnm39FZ3TwbREjJfUVF4wpLbKfVffcUxfylI3sb1ce5b2NFtqr8dksLiRa3BwrbhzhvbvpCDGisKbBjWtUAOnyXdSsIcGcjwebCCmzG7q/0VRUak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759430760; c=relaxed/simple;
	bh=Ascy4a+Xeii0NZTr/g7kAFe/Ox0HSoQnoFLYu2nFJE4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=VmfWKR+oojUtu4EFWbadh1BNkquaDlf6Taxk13JmkaOYL7dZXTfFVEAsnkqA27MPKsizXuPTUC0Ty23E5O1y1mWogii0zgQmqfZ+DvUA615OY1vLWsrVU/YNB8syFlLbXmP1Ir3ppAfn1a8tKyKBTd3vCFaxja+FnjPSVACwG3A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e2PUofOZ; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-3383ac4d130so1360494a91.2
        for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 11:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759430758; x=1760035558; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/gi5q0a0nZyS/dfJX3MGDVRu/hHYpidRpZ3Oro0wuwY=;
        b=e2PUofOZbWliyOxrhK/5zDwlNnhjjh2r/Qm/LFQjAbfjAOroVdm5n+hCsiHpxyrSFR
         o6sTEzVFOddbNqRSN1UiAW3BFgDMlKLg1f6+xRn/JUcgajp9R9LZAEfA3svvYkW09m0E
         +5UgKtEutBc74yHQi158b6jvQGL3aPjcsXXcKFcfxFEkwCi4+Li44Cn9VInAWTS7OLBX
         Yv4TGSqpTUkNKHelTr9CkTcpiJMPc4zaTMYFYA9Dle5crbO2QZTRtG8A/xHdWRdbRWYm
         lfQBbun2mPempeBm8TNUe9j3Zk2kWiNb97gVyceP4TfruPHzKulU8xGc5uvA4W/uwd+b
         Bhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759430758; x=1760035558;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/gi5q0a0nZyS/dfJX3MGDVRu/hHYpidRpZ3Oro0wuwY=;
        b=X5+GYdeVsEc3nUj8myp1ybBqeCNG0J1i7hpqlEBAvEJXAQSQVZpKK7l/sZNSjUiX66
         D5C9ODLxRmH2jk29G39hiuh/D3cgyiw1Ghfun++y2BFxjgekV1gyGmIUS2ZdvmCGNlie
         oGY5sNsrpMfbV5AAx423x0eGMvsRo7bjte9khyF6a+GT0WxUjrb+yrQ3r1jYJIog9MLw
         rE1JclLNgN1qHJYAFGFqlnbTjzJHuogM4ySZvzE3Mc3jQheJ53HhAXx1ZlThyA8OJmEa
         +4YgXa+uUoAZJV5+yw8+LJ/T9OQTbUQxFxZovjKq3ypqYM6cpXVizjCFxSpyoPnzfMFu
         hiXQ==
X-Gm-Message-State: AOJu0YzVUbDXDRLep/wUc3UZstbdgxKpp92KEcsN7VqjjRtEbWaeQO1J
	nCIOlnjXuWnXxZctgsO6cuD4ZBV7rXE7k+Sopzej5UlCkjwNSw0rcxxXwZ6TwP5u
X-Gm-Gg: ASbGnctij0wXuQ7Q8r/Z22bi1XrVGjBL/xJdO3vnPW/XhKwQTKPmTm4NasMC2j/2I/F
	QcVp5Wznd0sKfzYENkBwd7yJZ2WuaRszJw2XdXN3fJEYioFZygKRnI5X0FuqTWbpZKxub1dwOJA
	55qJUKxZb7ll0smGY2UlLCmfNTm0TZQOBpRIj9zUo84ty/LB5kp34nXIblda6W0EHMYsNovd3N3
	mDNCydPM0aTtcDwJ9GxKUwo9DxzkHPXvWzgxV7ETwhCzl7RyPrIHyswFfcfPI5iEJyvSrzsD5Li
	x9WEKJbT61PHH3dUswv/Tv49bszLeLAV5qS9FIVFvnb2gSX0QRGGqBDWQziZIxiqh770YBglLHy
	kF0pb2jYsbDsMoJCAQTb8oO2HrQNMDCAzmiDfoUGfcuR1cSssDH2kk9GI
X-Google-Smtp-Source: AGHT+IFD/xR7zKZYq6ViRMZbh2WKNDPDZW4cTflRTL1qJCjXE32+dlrH1auWCgKPbeZC9OKbs2Dm1A==
X-Received: by 2002:a17:90b:17c5:b0:32e:528c:60ee with SMTP id 98e67ed59e1d1-339c27ba49bmr384189a91.24.1759430758146;
        Thu, 02 Oct 2025 11:45:58 -0700 (PDT)
Received: from archlinux ([179.110.144.170])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-339a701bf31sm5600336a91.19.2025.10.02.11.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Oct 2025 11:45:57 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4] arm64: dts: qcom: sm8250-samsung-common: correct reserved pins
Date: Thu,  2 Oct 2025 18:44:59 +0000
Message-ID: <20251002184459.15742-1-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

The S20 series has additional reserved pins for the fingerprint sensor,
GPIO 20-23. Correct it by adding them into gpio-reserved-ranges.

Fixes: 6657fe9e9f23 ("arm64: dts: qcom: add initial support for Samsung Galaxy S20 FE")
Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
Changes in v4:
- Removed accidental , instead of ; in the last line

Changes in v3:
- Actually fixed <40 4> indentation
Sorry, I still had my editor on 4 spaces a tab

Changes in v2:
- "Fixed" the formatting of the <40 4> line
- Added Fixes tag
---
 arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
index 96662bf9e527..7696b147e7da 100644
--- a/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250-samsung-common.dtsi
@@ -159,7 +159,8 @@ &pon_resin {
 };
 
 &tlmm {
-	gpio-reserved-ranges = <40 4>; /* I2C (Unused) */
+	gpio-reserved-ranges = <20 4>, /* SPI (fingerprint scanner) */
+			       <40 4>; /* Unused */
 };
 
 &usb_1 {
-- 
2.51.0


