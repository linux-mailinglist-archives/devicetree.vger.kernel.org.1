Return-Path: <devicetree+bounces-125704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FE599DEFAF
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 10:48:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B061B1630E6
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 09:48:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1043714B962;
	Sat, 30 Nov 2024 09:48:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bqEg5BQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD6233F9
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 09:48:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732960087; cv=none; b=LEHh717f2JHH/LfG6MrWF6dGK+C1oY5HLPI9339UZ6m6dp3jtPo2JEZd5/lt82jgErk0ErdscC+/hfxQ03U2WzqemmCWO9QV47zGbcqiE84ihO0ghOCfphhodrtywqBLVKz6xnnGWuj7SMfCb/UNnUapQsygAKQ1Va09X4DouRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732960087; c=relaxed/simple;
	bh=GlCVO+kLbVQTddt0lqq8TR/JxbNulJ9bzIayK53xUc0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=YGO+Jxi5gWkCZWCRv3MlKz+aNvK8TJjz9W63df6oM2v6yBak4qDgVXXJrDyBw6W0gKI1N+Vni6u1QEr7nkH/3Cmbdf5aVbZaF96VdFRGTQ5FGOUh4A1NXKsYPVH5FmodKRAObGB+azGEJdoPaV1BcgZ90oDWKQ51wfYjcCC151k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bqEg5BQq; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4349ec4708bso2215015e9.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 01:48:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732960082; x=1733564882; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QMZ3vQAZGlKurLBaRPYkpSZkQS2FApMbIvFv0fZWybg=;
        b=bqEg5BQqu4Y4o0fmHWj921p/yBrisgpZrduOIG6fKdjpVdu9MCEi4d1ElcEbizf8yc
         XyeOG557hW6TnLjgmppPS0sIHF3fBq2GSvjR/DAXyqeo8DCcljOBBhxM0k8sMAFDxY0g
         2n5um9Jk4E89OLyVTha0FhkuU6RDPgNOQnysnrst+2UUqg4lNrEqejyvDauvZryr2pk2
         z75N4+U25MUbjgkuPsCgjWKISV5myC4t5LqNV73MFBaBjvUOreV4hVCKhOtVI76kwr8Z
         WrODD6XTVIucsPV9CHVnJTUMLLUNvs7yx6nDMujQWPYd/fVXU3Vwzz4/9J7A+Im/dxBC
         Xx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732960082; x=1733564882;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QMZ3vQAZGlKurLBaRPYkpSZkQS2FApMbIvFv0fZWybg=;
        b=B6qlHgV9as9i+G/e6+SSELWTFAjXMudvZwauMneiYf2kx0JveI5CjQYa9UIG2DxI63
         bPydKRo5wiqTJyahJu92fD9ZHrIa3EMmj7UYIetDMQsj3B3rGfn1hwCZMCu2n2KffAqq
         8dQvFDM5ksIOMHy1JUkp1OUxr1w/NR/H72Liqh2r+NXwjdX2Xa4JSzK+RCTbkrW7cEy9
         4q3EzG2tfOgU1UhgmrTSyPD4BGTfEGDsQq7I+F0pqYD2Z5jsxbVTW2lXW05O69+hp17Z
         ETqPvF0D0ef1VteM5px0p/L/wNbVQEx85XFf9Cy5rY9qW+o72IJ7ge29qvs1Dv0dYeep
         n/LA==
X-Forwarded-Encrypted: i=1; AJvYcCVI2G5fnVa5IU4elgW/O5SYh6DcNkvUfYwkT2FUEoVeDkgosoUM1mZ43VZf1ZoKU53KkbcH2LZUi+3A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5F+0Jp6+CjQYQ4TPZ0Pn47ZBR6VAwJrpZspWZz8oXP0kXlD5p
	IpRrwCk9XExpXgcyGiayVQ24k/NzSQijgdEjEkS3BlWCHSzBRa50ZYtRh9M4q9s=
X-Gm-Gg: ASbGncsDlf0qPWN3p5RtHnu9vQCgq0ViBB8ZFtt1vjkyedpNha4yKtBNV8ZYi8ph900
	WXEnfGF1yFSmSdMUmyleneV6JFBiyNdU7lsdTQNoa587BKwoR/7T+/pGrOhy/JZRyQTqS5LEUWI
	Xm6eH1AMxNH2oPJV5Ti0S71F/TEaAnYqwEfHYQUE10Tdy8RWisHZHMRq9nfDGbqOF/EAl3DJkHM
	hYkybPvf0yLl9haJTO4BOOTyhgqmV+Ul7MB/NA2j5VsW7guHrg/t/rhXGnMxZQ=
X-Google-Smtp-Source: AGHT+IGAD//hnR/MMYCCnkHt3edWtS0NmQaVqN57BZvJFzV3wr/U7GG9jNuDIxTQAxhDIXQ/JnVhbA==
X-Received: by 2002:a05:600c:198d:b0:434:a1e4:d32d with SMTP id 5b1f17b1804b1-434a9d4f18cmr53980355e9.0.1732960082560;
        Sat, 30 Nov 2024 01:48:02 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa74fec9sm110637725e9.6.2024.11.30.01.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Nov 2024 01:48:00 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-remoteproc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Bhupesh Sharma <bhupesh.linux@gmail.com>
Subject: [PATCH] dt-bindings: Drop Bhupesh Sharma from maintainers
Date: Sat, 30 Nov 2024 10:47:58 +0100
Message-ID: <20241130094758.15553-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

For more than a year all emails to Bhupesh Sharma's Linaro emails bounce
and there were no updates to mailmap.  No reviews from Bhupesh, either,
so change the maintainer to Bjorn and Konrad (Qualcomm SoC maintainers).

Cc: Bhupesh Sharma <bhupesh.linux@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml         | 3 ++-
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml           | 3 ++-
 Documentation/devicetree/bindings/net/qcom,ethqos.yaml         | 3 ++-
 .../devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml        | 3 ++-
 4 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index c09be97434ac..62310add2e44 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm crypto engine driver
 
 maintainers:
-  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
 
 description:
   This document defines the binding for the QCE crypto
diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 8b393e26e025..eed9063e9bb3 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm SDHCI controller (sdhci-msm)
 
 maintainers:
-  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
 
 description:
   Secure Digital Host Controller Interface (SDHCI) present on
diff --git a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
index 0bcd593a7bd0..f117471fb06f 100644
--- a/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ethqos.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm Ethernet ETHQOS device
 
 maintainers:
-  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
 
 description:
   dwmmac based Qualcomm ethernet devices which support Gigabit
diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
index 758adb06c8dd..059cb87b4d6c 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm6115-pas.yaml
@@ -7,7 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Qualcomm SM6115 Peripheral Authentication Service
 
 maintainers:
-  - Bhupesh Sharma <bhupesh.sharma@linaro.org>
+  - Bjorn Andersson <andersson@kernel.org>
+  - Konrad Dybcio <konradybcio@kernel.org>
 
 description:
   Qualcomm SM6115 SoC Peripheral Authentication Service loads and boots
-- 
2.43.0


