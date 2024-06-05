Return-Path: <devicetree+bounces-72672-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1728FC806
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 11:39:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA35D280DA6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 09:39:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97CA190043;
	Wed,  5 Jun 2024 09:35:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GJexSc6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CA718FC92
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 09:35:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717580127; cv=none; b=iWs/K4FzsPBnTs2LulzGb+5a6BJ/IeUSloTMdW/gJ3qRGKDKrb4hVV5Ax0hqwR55monoogASh8OJoA42upWF+wH7LmaWz8VmmZVOGbXQLq4K9Ic4WQie2E/KCvn7kJO18mpwER7KBlbJtLHezIl+AGArKJr8Zw3d1Z07Ke05c0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717580127; c=relaxed/simple;
	bh=580RvtbqBFYqzaOF2Yuuvjfr0Qlxxfz/q9to16DIzaY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=uiTO/bkuZXafOIMk7R/1lVpm0uW6xlqtuYf1g8O8WEt7oYdv5gLQV0UNS0r+xc4Vrr5XZ7WgatHUPqXFk7c5MxdzpDwNrOidGUr+ivEzddQbYAfvW1Umc2yKheWHNFQWv4rhkLscDcZSDc9zNvQEBEUOjKDbINqjBO9rfFMtEH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GJexSc6b; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-354f14bd80cso1547573f8f.1
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 02:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717580124; x=1718184924; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pAfV5S5bw7VmcOZQaiBRtwAwj+DrF0VVg3n0PmSaq8c=;
        b=GJexSc6bJnKIZEk+jklcdKw0/OVdzZUDO4NsqzJ9RcVmYCv76WMyzXDz0nPmfp39Vh
         tRqAI5I4/U+HCiuEyAuraLw3d6qPJr0g3IjRlknyPAFu8tegVkSfyPWQxFUjXNzqBXhb
         gxxFIenuYr4xeqhrpK8Du1qK0BcFqSBJ2dMRKn4NrpGVmtzqZSBMQ0UgHWOtqhkY4N/P
         bevH2IWN2HcRJxb6D/g8wFpAbdSPX9ZlwKrubJuE8H2DH4R+NvTELF/Ry74QSsps9AWd
         P/oSg3IGPJGmv4EeodQJVcYSNDftMrFQmmumnyR9j8yfIczbsOXoWNX0acBJM7C3aqrf
         5H7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717580124; x=1718184924;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pAfV5S5bw7VmcOZQaiBRtwAwj+DrF0VVg3n0PmSaq8c=;
        b=Te06b2olwcnkDe140PDG+DBxCk0QhwAZ1uqw/0pF9b6E3Alovg9eKX0MaDLUbGUSw5
         +H/pVjhNb7YmWIrDDf2sAbHHPq3UHDPDuvWX9UOaBQjJAb5Za5pYfZlW+VLPQULvsM0w
         DcJjxb5tGv+WQ9Jzb4E4qqwNuR0ZpZDQsBAjkiWDejiG4SPDpsRDgMlwfgMlc6szzvjs
         EXgf6oa6hPt3Os83l3LNs4O0uRRwMCdwbdlYmm9vT7+QVb+Yvx6ojqtnxSso5nMyV7SS
         DeTHONBr6m71Ye0+Uviv0mPvM/vYDyAqGaW3x6OmmJqwFg/E5tmX59BvF3SBAXrWIWSm
         FSZA==
X-Gm-Message-State: AOJu0YzwYJaNXdcoKa2GtmnGelDBCLQvWYseVk3jAAul917ap5wNPa0R
	lePi8+DrXjC4hRd8O4k99eUgh0eYi51ENAzkiQEwKgBobig41lJp8F2LIpGJ+pg=
X-Google-Smtp-Source: AGHT+IHn40EKIrXWfqqJJZ3UuhBm0LI9UtFPoS/cvNPZ4oE31GshrOWngCCGNLR3f3TW+faaJL8RxQ==
X-Received: by 2002:a05:6000:178f:b0:355:13c:e7da with SMTP id ffacd0b85a97d-35e84071878mr1641063f8f.22.1717580124553;
        Wed, 05 Jun 2024 02:35:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35dd062ecd3sm14148873f8f.74.2024.06.05.02.35.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 02:35:24 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 05 Jun 2024 11:35:22 +0200
Subject: [PATCH] dt-bindings: nvmem: amlogic,meson-gx-efuse: add optional
 power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-topic-amlogic-upstream-bindings-fixes-power-domains-nvmem-v1-1-ef6f10c86a63@linaro.org>
X-B4-Tracking: v=1; b=H4sIAFkxYGYC/x2MSQrDMAwAvxJ0rsBZutCvlB6cSHEFtWysNCmE/
 L2mp2FgmB2Mi7DBvdmh8ComSau0pwaml9fAKFQdOtcN7uLOuKQsE/r4TqHyk20p7COOoiQaDGf
 5smFOGxekFL2ooa6RI15pdkTDbWx9D/WfC//jun88j+MH8op/M4sAAAA=
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1071;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=580RvtbqBFYqzaOF2Yuuvjfr0Qlxxfz/q9to16DIzaY=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYDFbAvdQ0Su97ugHNdLB7IpMr+5S2zLxEOF9UICz
 dhJSX+SJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmAxWwAKCRB33NvayMhJ0T7lEA
 CYp+hTezrQux8LxXHaEE31bWN8OqspowrvYljHZCTOhYlw9oZn61K6VHgYVjtHbWBUNpx1ZpZ2ShPH
 laKuGUjxIPSG7yYYUK4hngoIIZBFMGwOJUpNZ81FiHazy3sdtN832s1Jyg0HgzHLrmZPuJTHFRqR2d
 VmE98SXLR9mjaSLda4xuKDmWBlOdrFnbMK1+InY9HfTBmoVWDkDgfnnlWGW48hCPEH+aN3WEJU1DjM
 AMBh700+t2QR3TsCpI8770gALPKPkBzKj5PGdtVZEOGuHYFwg2SiUcFa8zvBZkIU6SZ0HCgljHo9FR
 2RV63Y8fUZPDRuashBoY5tQCNkYlLBqSJbKqVqMMZoVMTDXuw6GqjhR9hzrzZA0GvTvm5MyaTwy86f
 t3W/YQdlFesYj4/6FLGreMeyQUG5VmoZceJGentGvbZiU9mP5/zN+3Ih5CCj9QJTVm0sf3bJxhxbbu
 34E+XNDO6+WKsNpguvNTmdZeraxkGwUz32bhHAlO2b7M5n5ZwPXpJq64GYVSjXp/49uSgR4X/CcXE8
 5GzL2GBcgizJGZbjKPCUM623KvM19pUYy7cPeXzcLPi3U8jjickSxyevZgnqnMsLHxbPf2wyA2NqsQ
 da9cOVl9Yfflrf/z6hAKleAtIEeN+IeEKlkIJzbJhCIzU4cY1bA9IwHQCunw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

On newer SoCs, the eFuse hardware can require a power-domain to operate,
add it as optional.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
index 9801fe6f91b5..99ddc9a4af05 100644
--- a/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
+++ b/Documentation/devicetree/bindings/nvmem/amlogic,meson-gxbb-efuse.yaml
@@ -28,6 +28,9 @@ properties:
     description: phandle to the secure-monitor node
     $ref: /schemas/types.yaml#/definitions/phandle
 
+  power-domains:
+    maxItems: 1
+
 required:
   - compatible
   - clocks

---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240605-topic-amlogic-upstream-bindings-fixes-power-domains-nvmem-7df0dd48b1a3

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


