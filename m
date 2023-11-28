Return-Path: <devicetree+bounces-19442-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4FF7FAEF6
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 01:21:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD4311C20AEC
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 00:21:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D63137B;
	Tue, 28 Nov 2023 00:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j0HaNRlM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3BF01B6
	for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 16:20:54 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1cf7a8ab047so37149785ad.1
        for <devicetree@vger.kernel.org>; Mon, 27 Nov 2023 16:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701130854; x=1701735654; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=b9LcCMDmTSdehjuq3j0tEJnIQIb6+TDJYhvhvJwU+wo=;
        b=j0HaNRlM9mX4bZwsZGFVAiz0eTkwB/pdJTDOabkRfx0fXjD+BG8NEjs+UgHvBdx9p8
         SZUt107ra1xcyurkJA4DZwHGWm3OG5s2lXKYeoM+M6wy12DdKJuRDLngUnCBOQwt2njK
         etgNzmp1epSToBuG6kIer8nyHFs7tD6fboSXo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701130854; x=1701735654;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b9LcCMDmTSdehjuq3j0tEJnIQIb6+TDJYhvhvJwU+wo=;
        b=tfRNJVZcXsR34vFNVOmGBnoOoYQ7ZPfFOn10Yd4kJr/NIcxsNAAHjlSWJX8r+L8Se9
         XOQD7VwPAE9sa3FbXKL/z8xPBkCQlaIIQ7Vjf2lJjIMYEQCNQeE031zyChXFbRRr5p5N
         qRTJvOcx5xM9ZHjyD5D3XzDSuS/3RpkDz5co9Gtd8eQhRX80MkrLZYbQOV1moEZSfmSw
         r9nEewastTnv5LvpdFfSpN5plcc2BuVjsyz0xjUnjVdZGugzPM1f3VM4wcCwLHVcpF74
         PKX1gNAv/MOkU2+/6IdCAFBM7QBB+5VRbo4MU9UpCQIwElThpFAfv1X2IGerIfO8C0hl
         Zn7w==
X-Gm-Message-State: AOJu0Yx+YcmJrK/yh1ThTfawreaWVCMdTYQTt69S4YaqnF0MnlXstA4N
	XR62EjlHCrXv4TnEdaQn5RcsMg==
X-Google-Smtp-Source: AGHT+IGFzSIOfg8sKm6Au/0ACHEqu0Oge23/jZd49oSPNDz1XcwfEzxfUkI9Gck94hxyHvZcKR6OQQ==
X-Received: by 2002:a17:902:d303:b0:1cc:2f70:4865 with SMTP id b3-20020a170902d30300b001cc2f704865mr12921138plc.26.1701130854419;
        Mon, 27 Nov 2023 16:20:54 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:11a:201:6438:b5d1:198e:8bb0])
        by smtp.gmail.com with ESMTPSA id c5-20020a170902d90500b001c60c3f9508sm8878786plz.230.2023.11.27.16.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Nov 2023 16:20:54 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	devicetree@vger.kernel.org,
	Alexandre TORGUE <alexandre.torgue@foss.st.com>,
	Yanteng Si <siyanteng@loongson.cn>,
	Jonathan Corbet <corbet@lwn.net>,
	Bjorn Andersson <andersson@kernel.org>,
	Douglas Anderson <dianders@chromium.org>
Subject: [PATCH] dt-bindings: arm: qcom: Fix html link
Date: Mon, 27 Nov 2023 16:20:51 -0800
Message-ID: <20231128002052.2520402-1-swboyd@chromium.org>
X-Mailer: git-send-email 2.43.0.rc1.413.gea7ed67945-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This link got broken by commit e790a4ce5290 ("arm: docs: Move Arm
documentation to Documentation/arch/") when the doc moved from arm/ to
arch/arm/. Fix the link so that it can continue to be followed.

Fixes: e790a4ce5290 ("arm: docs: Move Arm documentation to Documentation/arch/")
Cc: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: Yanteng Si <siyanteng@loongson.cn>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 7f80f48a0954..8a6466d1fc4e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -138,7 +138,7 @@ description: |
   There are many devices in the list below that run the standard ChromeOS
   bootloader setup and use the open source depthcharge bootloader to boot the
   OS. These devices do not use the scheme described above. For details, see:
-  https://docs.kernel.org/arm/google/chromebook-boot-flow.html
+  https://docs.kernel.org/arch/arm/google/chromebook-boot-flow.html
 
 properties:
   $nodename:

base-commit: b85ea95d086471afb4ad062012a4d73cd328fa86
-- 
https://chromeos.dev


