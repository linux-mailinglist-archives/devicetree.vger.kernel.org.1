Return-Path: <devicetree+bounces-199418-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40432B10953
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:37:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 622B8169A96
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 11:37:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CEEA28136E;
	Thu, 24 Jul 2025 11:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GT2QeofJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5614A274653
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 11:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753357063; cv=none; b=WP8A7Ee5OTUxbzHSO21cOS/mFOrCg0KyrWdIybt84fYUit0hFi2+mLqIhau3+R1xa7lH0Y2qeQ+DBPKA0HB5C0832clu2LSq1c+LbiNZz5DP2pCvJ6W9hn5/LrQC10gOsGD96qaUDXQzRz1rXzodTNQsh/RBtV5nqQzcwIrJ4Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753357063; c=relaxed/simple;
	bh=Ch+72Ib5bWBMgAR5Q8004SEwup2pKwdP0I1CdDoDi1Y=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=pYUvXEU+fXAM044HpN+fWMuNSIqaarmjSkhxuiKEZm1MInXF6Hhv5++3ov1f2OaI7FjMhqwJ7bwOMjHC7fpGfz/fvhLdxrDsf5clpAfFpxLy9SqLw+bbowR5Bxb18vl7BHbYAd0JZlyYzMBTV36ndjbMl7yIYdedlJakHoJoG7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=GT2QeofJ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a52878d37aso101206f8f.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 04:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753357059; x=1753961859; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=m4xtybOJlZhvvgGB62xy7eIqO6MbQRaDpwENuMio3qA=;
        b=GT2QeofJqi3QBArX0wqOtYkPbnTNNNT6F0WVq63FMPJRlf/KU+Mk7v1zMy6UT+TmMI
         BnBHuvStYLKr18zeW+JFtEtmYbh4LWn/AyFICT/3WRsIbliGsS/O/pHv+J0pPAZiKa/n
         XO+ugeVjs8DAZoO8ZLHXuySV158Z116FXxrD2rnfDUxxfR+PEpce48N3zsQ+FE6yFDmk
         YK+qO+eUiGTJ0+uqtnTHGXvS9ijGAQODTGp1jJ9ETJhgkpwJ7Ldmrb7rf2AFjOOc7RxL
         3Yso0fp1mOjxy+IayPg712I8QUqWHagSVMvgi7SWoMPX1S6jn2GFkHYq53SsWyXlb8b7
         H+QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753357059; x=1753961859;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m4xtybOJlZhvvgGB62xy7eIqO6MbQRaDpwENuMio3qA=;
        b=A4tlnKKm8NOBikX6tHcY2vx7e1gcPXHWA2UXg/Nse7shN9yGlBnDTYTVcnryXqdkVk
         BNLWZebfyIq1KegqiUo0Xl5Fo5E5PP/CSz4OawlZEgnW+Thot737GNwR5hDw2YEvUU/h
         NlTcclmJd/sAMD8n7sAaUO44sTNbMzOnzhPxXfQ061yiRlfKN4Bs6Idzi+uGrxu7cssS
         UA4QjUdwGO/zoJz1j7WfNgW3WapgeQeIf28757YXjzxCujQTBJCziBcqsPIgg3/UXWdQ
         /nxvVg6eqACDREGP5YTi07On/46CwvIvlFgB3H20v2BMn1L2xYENjprcjoZMQ6VCNjA5
         s74Q==
X-Forwarded-Encrypted: i=1; AJvYcCXF/eGdhKQjzls0jhq0cwXc6h38pn+F1Jdc+PFYaB+7UxeFvvaaISGDncMzCDOkgfVKmcT/1yN1irih@vger.kernel.org
X-Gm-Message-State: AOJu0YzMguyDhX8mv2477qX/ExjFWcNq/e/PqCLmGfuehFgkk5c976LN
	I9Q7sOHKyo6+r3rCEyIyuAGflR8bDGI3TE4GbciuiRTz1e7eUskUXsn1+OjG0DL75ok=
X-Gm-Gg: ASbGncsXyaO0COaaHTyvoEMRoiS9uu0LKHkch+UpOGZnQjm2VnC/05r5UTu8fxdLpo5
	gKW9waQmB4mli56lcvLwnESFyWzXPTLM0z2rFQxqC53TH1ClRDQlTOud2PnQa70+VhgpGqIWuX/
	IggEdwIP4vDPdq2jtCifWqPal7XTc8xOfZqIlpQIlDa9MvLR5LJSDp9NPxWyg9zCxRuFcxh5B2i
	kZOBUr7lcyStZfV3NBypYv17296NWMo0XLaJPyr7wKWH0/S8DmTdBpNdsU/mzJ9OwywEQXK2eWr
	rvPUSiUCarcw+qSBmYWyZeHhsnF8zZ1giRVJjEJZzkZCqG1fFOopxnG5X1NkTqCinUUOATE6wRl
	jJiikMax7n1lGYPqegkqzObGw2LeI7MGr
X-Google-Smtp-Source: AGHT+IGaXCp3iXbFfvdzWjy19MkdsX0WMpXD1ostEPx4tu/T5Xn5vpatIkn/c6mAwYBFMlhrLBrFTA==
X-Received: by 2002:a05:6000:2003:b0:3a4:eed9:753a with SMTP id ffacd0b85a97d-3b768f1f1f8mr2202991f8f.13.1753357059579;
        Thu, 24 Jul 2025 04:37:39 -0700 (PDT)
Received: from kuoka.. ([178.197.203.90])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b76fcb84e6sm1872425f8f.61.2025.07.24.04.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 04:37:39 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Cedric Encarnacion <cedricjustine.encarnacion@analog.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: hwmon: Replace bouncing Alexandru Tachici emails
Date: Thu, 24 Jul 2025 13:37:36 +0200
Message-ID: <20250724113735.59148-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1981; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=Ch+72Ib5bWBMgAR5Q8004SEwup2pKwdP0I1CdDoDi1Y=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoghr/GnjXzvQ60wvCOq0vNu78z2WriA1n8XV2W
 gkstNWlfI+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaIIa/wAKCRDBN2bmhouD
 1yCXD/9REw52ljejZoRLYQ7RGRHhi307FZCvpUqHgJWF00hZpXNTMCEmEFGjekCaJnmkE+h/WqP
 ZEFgO5NRF5iWFTOxiqE+GY6Q+TZ+kIJ/ZJQPYOYPkG+UdN73/DFHAYHsE3uLwv62uTkw+AytxVR
 9jPvJOG/edKURpzOFtNNL0+ur24aMldu3Csm5hkEtSVf+l2zqp43J5YcZO/mgLd31VBBSUh4d2r
 bD2HE5uJCFTTg/xcL5yQ2Rlv9vNxPRmajXdHrLh3Mor5KaiBPhwNCxribQCqFCenGfTOQJh7q3h
 fj8VIlaeW7nopamV3/+mJ7bG8tiJxB5V/1SKXpXL5SUBuDLFNVT7gK1kSzFAAripp/XC/rYvM4n
 xv/6tHMVusThs00SDywSM117/JE4mNLlHuZFqUXiLeLn/aYGJE9gWcvKN6YrCtIUJNba9ZRKc54
 pts0BEHTfBJg7LeYxU+0clJ/kEJmwN4xnoCPnV6NB6naQm2sxpqKab4fS753oqxw5dg2nI+lk+i
 KADrjGMJP7nwjlAz9O/YvNp7UepqP2sndQ1N2NO/uyN8qePS2nnOOiWO3dLxVKMsrS60yJ9qU8p
 q542/LqB3c8FN0Ng64pVyvGpTAHznAvlP9n+zYGHQSSc0fljlSPFOKWxXbR0skY9t5+h5EflOar 1iNPaJCd8pnW6qQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Emails to alexandru.tachici@analog.com bounce permanently:

  Remote Server returned '550 5.1.10 RESOLVER.ADR.RecipientNotFound; Recipient not found by SMTP address lookup'

so replace him with Cedric Encarnacion from Analog.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

I don't know who from Analog should maintain these devices, so I chosen
author from Analog of one of last commits.

Cedric Encarnacion, could you confirm that you are okay (or not) with this?
---
 Documentation/devicetree/bindings/hwmon/adi,adm1266.yaml | 2 +-
 Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/adi,adm1266.yaml b/Documentation/devicetree/bindings/hwmon/adi,adm1266.yaml
index 4f8e11bd5142..fe87a592de45 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,adm1266.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,adm1266.yaml
@@ -8,7 +8,7 @@ title: Analog Devices ADM1266 Cascadable Super Sequencer with Margin
   Control and Fault Recording
 
 maintainers:
-  - Alexandru Tachici <alexandru.tachici@analog.com>
+  - Cedric Encarnacion <cedricjustine.encarnacion@analog.com>
 
 description: |
   Analog Devices ADM1266 Cascadable Super Sequencer with Margin
diff --git a/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml b/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
index 0ad12d245656..38a8f3a14c02 100644
--- a/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
+++ b/Documentation/devicetree/bindings/hwmon/adi,ltc2992.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Linear Technology 2992 Power Monitor
 
 maintainers:
-  - Alexandru Tachici <alexandru.tachici@analog.com>
+  - Cedric Encarnacion <cedricjustine.encarnacion@analog.com>
 
 description: |
   Linear Technology 2992 Dual Wide Range Power Monitor
-- 
2.48.1


