Return-Path: <devicetree+bounces-224244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB2FBC202F
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 18:00:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D91BE19A2D04
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 16:01:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2500E2E6CB3;
	Tue,  7 Oct 2025 16:00:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="w40GcyIV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 503321F873B
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 16:00:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759852839; cv=none; b=Sr47FRUd5tjXMZQhv2GbHS620f8+sxo6kLQpIQTEmE4/YW+9ixAr6NLEc7U9lQ1cXFHpTwCuL7dPbWuiMG881GUGpTFHkbqklPf97AV1WJ9V0LgDSBX3G9/vrwyuvG5/m4We/+stYEcAA97KR7lXLHabEWVJ1FneTXF01pj3fxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759852839; c=relaxed/simple;
	bh=o+OJ58HWM0DIrIqi/TF3GdVjuFQu1dVzJaZpj2W8Jas=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=lKJSR+zlEj5vQ1x3wRu1BdW1msoS650ETv/pPhv5nqFYROQD5eSE9fLK4XlMGDaxxaWS6uI+UxWZr/Ls9nsLhDNRIWW8mJyLe47OTsgsINGGb5aT12Be5zQ8wyAo5UCo2LiLi3VhUJdGrHml6Ko1N7x4TfD3fmnvyh6ESnp+gBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=w40GcyIV; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-637e74e9104so6948603a12.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 09:00:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759852835; x=1760457635; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mjKb1ezpRpl7M3iFhpiWd2sjqaAYaZ6YNqsdcXvRIf4=;
        b=w40GcyIVeaZq96mjq8lWyjZCFKP7nKLPxHAyD6mlYR5Xj5Wbm5xacQRhskoYyHYey+
         8TsYI0coO/BW9q8JPk9UzvwQD6DoF3bKmKqRlx0MorFnKBcRsFnuseZd/jjybminJzFY
         pDa/xakBwVH0+XCqq/S7sEO3jvLL/riggR9aqVsvhmYBXYVGlevr8CuvnptqUmGIftpj
         dQCfqdV4c0KlSI1BBmvW87HsBvkCR5XiGRbcB1/SoUiQm0ETO9JWkV4IB3euNsketwIL
         LuMDULwDVzhXc/EjRa4/NwyLvvziTk4BvCvBFFdAycPi1c+AB978X4oOx4hdzWvlH31T
         zCYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759852835; x=1760457635;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mjKb1ezpRpl7M3iFhpiWd2sjqaAYaZ6YNqsdcXvRIf4=;
        b=rcGDAH+bujg8CYVBrGk1MNLLCpHSn03mCJL+LYNwplKNqerRnkbICDrb6gtUEj0PeK
         6YrEym5M3//knAY8QlWjV4qP3pdWCVf4p1VDfL7D61iIj4+ccKpfbtFh4c00cII0vWEt
         K4Ojr0Q6P3gfsdSva3cfqHDS+kCTcm7UaixsE474hRELGyqwYCbyaZpgM28ajjS5sfvN
         EiGxGNMpZrH9aOebGHk8IX7/dSdBlCxq8ZYAFYpcanIvJWaNTOAxajbPx/3dTNymU9g7
         77ONCcttTFm6QVnBZywQHMQozfMJ5Bbzhtn5b6nbPCnNdPocDFTeZeSdWF36spCaJ3mf
         1mEg==
X-Forwarded-Encrypted: i=1; AJvYcCWqRkTuF0ZZnRX751mp64OoWQNrfzyWECJG4TvfdJmcKBkypbFaZBr89F4aWrEjTf/87RVNNKD8tSiT@vger.kernel.org
X-Gm-Message-State: AOJu0YyH5xTDDcDveJ7M7vztJufwCaCs1rpxgU6eHxXXxsSM+AFqNtPi
	6W2pz4AvWo3QVxnEj7udd7GQiJTq3mIic5ejxSjp7hIZc6n7ZqG1kRlhRcSqoUdDMv8=
X-Gm-Gg: ASbGncuD6V79g+zdgjtFPE5JzefHWty0TTT7VA57PP/J+vxYG5K6Fpjo069pQ+TcAr2
	fYNZkSnQmr7YTwgYiW0cgAI/29FpIhLgTUviMooV++X1Xeic9jsG1ueVo/oHjDYMUDDiDYnc3Xp
	rPRUCQBcBjokcNeoz/Q/9mk/o7bJOp9YbumTA+tUxk/6imw6A7T9xWCU7F6M3w+XKu30Ht4Zxda
	7G1R3UJG56gy8GD1iTRhmg93WOQP3H3FWmsBM1tLXFIPo4iuz29ZhuMc9YSTRVUjI2y9MCJ8zw5
	sgF/YyJIs001lHVXJgjPKCJ5+6I/vZexbaNtXEQ6RSJuzcj3SSTDmLXunuV9MYAIHilWC/TrqnG
	DPYSzBnBRztg/OIFWUSvzhRBJaXPxfe3ll0TB/e5y7ak0cxt75NiXKcEmUgSzpu4QwcldrpRcb4
	cD6Sk3yiaErwdYXYTKBkhVqD4EbNM5LHtwfbHeC7ft
X-Google-Smtp-Source: AGHT+IGyutPnseJcYgmno2XcoY0l08n3SSLeGdWklnJBKgIvM1+oFnfvYzhNSc6Fhvupmb0TG3Vp6g==
X-Received: by 2002:a17:907:2d0e:b0:b3d:98fa:b3fe with SMTP id a640c23a62f3a-b50ac6ca199mr13352866b.63.1759852835469;
        Tue, 07 Oct 2025 09:00:35 -0700 (PDT)
Received: from puffmais2.c.googlers.com (224.138.204.35.bc.googleusercontent.com. [35.204.138.224])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b503c779df2sm96445566b.34.2025.10.07.09.00.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 09:00:35 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Tue, 07 Oct 2025 17:00:34 +0100
Subject: [PATCH] dt-bindings: phy: samsung,usb3-drd-phy: add power-domains
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20251007-power-domains-phy-samsung-usb3-drd-phy-v1-1-3cb5f80a72ef@linaro.org>
X-B4-Tracking: v=1; b=H4sIACE55WgC/x2NMQ6DMAwAv4I8YymkJEj9SsUQGgMeSCJb0FaIv
 zdivBvuTlASJoVnc4LQwco5VejaBt5rSAshx8pgjXWdMQOW/CHBmLfASbGsP9Sw6Z4W3HV6YJR
 4y8lZ2zs/ePIBaqwIzfy9R6/xuv7tiLp+eAAAAA==
X-Change-ID: 20251007-power-domains-phy-samsung-usb3-drd-phy-b52245676e6a
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

The USB phy can be part of a power domain, so we need to allow the
relevant property 'power-domains'.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index e906403208c02951ff2bf5ed8420d53ad70eb29c..2e14e5fbb1331d2bbb7c3e2f37df1280415c79ee 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -51,6 +51,9 @@ properties:
           settings register.  For Exynos5420 this is given as 'sclk_usbphy30'
           in the CMU. It's not needed for Exynos2200.
 
+  power-domains:
+    maxItems: 1
+
   "#phy-cells":
     const: 1
 

---
base-commit: 3b9b1f8df454caa453c7fb07689064edb2eda90a
change-id: 20251007-power-domains-phy-samsung-usb3-drd-phy-b52245676e6a

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


