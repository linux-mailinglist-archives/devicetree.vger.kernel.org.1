Return-Path: <devicetree+bounces-19805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9689D7FCD28
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 04:04:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C3B46B213AC
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 03:04:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC684C6F;
	Wed, 29 Nov 2023 03:04:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="hs8pfRPG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CA3E19AE
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 19:04:46 -0800 (PST)
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-6cd89f2af9dso3133959b3a.1
        for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 19:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701227086; x=1701831886; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tJGxAu392s/bORKdAjJBrcSJ8FzTjUlfAs3pgZbxfG8=;
        b=hs8pfRPGFma1EueAR2BfbQu6ZGHmezoKnRYlJB+1QWez5uW4HNwTgrlzZEKSaM3hOV
         7PAiCLSZu7G9sli1ScVvO6EHxvxuUo+tbOCjgCJGGWgiyDjanQ6N1IUkzxMK9uOumoo8
         Gq6In8LxsytvM8HW3Q+dNy2uyenZB/lahzkP0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701227086; x=1701831886;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tJGxAu392s/bORKdAjJBrcSJ8FzTjUlfAs3pgZbxfG8=;
        b=SWXGMuU7r8earNFKfx+M0axJSMzM4AmznNkxDhdg4+y3gv3GVOghyp9iQIRFVED7q7
         /AEOAwzUjztkwP1UxBYR5xgfzmGnvs12XYDCRfoleAlSJNniFAxSIixDSas9o1UXAE6k
         bi6ASsChsbDRwqNHxc7kO6vXqOLTm56LFUyPrAMpM6NPzfsPfKIft5q+F9hrDtFmurwb
         ahwl9ylF9wRJ30yYfazHNkntDpM4hGaavFm6LDDN3hTFrHPSSrTTpsMHtJyrPBzHWfQb
         Yz3Qbneh3ryEdQtY7PZUb46pCf/PU3jAPM1hWefW+WwfrRC5T02/Ty5SRDNxOlncXrb7
         7UeA==
X-Gm-Message-State: AOJu0Yxf70un1GVTRVBAlEsW5FTHwKa0sl4/hfkXwbmXDOJwatGp2Qnz
	KxKrGApuz0ANeP+DlfP3xA9WKw==
X-Google-Smtp-Source: AGHT+IGygOdS0FDYG0MeUfrKyvdo448ZeERsKbGVJU3tooOdVfsvGLB+9h5K3ZINX8K1tfa6iwgshw==
X-Received: by 2002:a05:6a00:10d2:b0:6cb:4bd5:a4c5 with SMTP id d18-20020a056a0010d200b006cb4bd5a4c5mr20961101pfu.9.1701227085930;
        Tue, 28 Nov 2023 19:04:45 -0800 (PST)
Received: from smtp.gmail.com ([2620:15c:11a:201:d7b2:b65d:af69:8a53])
        by smtp.gmail.com with ESMTPSA id u12-20020a056a00098c00b006cd88728572sm4847426pfg.211.2023.11.28.19.04.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 19:04:45 -0800 (PST)
From: Stephen Boyd <swboyd@chromium.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>
Cc: linux-kernel@vger.kernel.org,
	patches@lists.linux.dev,
	linux-arm-msm@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Alexandre TORGUE <alexandre.torgue@foss.st.com>,
	Yanteng Si <siyanteng@loongson.cn>,
	Jonathan Corbet <corbet@lwn.net>,
	Douglas Anderson <dianders@chromium.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2] dt-bindings: arm: qcom: Fix html link
Date: Tue, 28 Nov 2023 19:04:41 -0800
Message-ID: <20231129030443.2753833-1-swboyd@chromium.org>
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
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Please land this through qcom tree.

Changes from v1 (https://lore.kernel.org/r/20231128002052.2520402-1-swboyd@chromium.org):
 * Pick up tags

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


