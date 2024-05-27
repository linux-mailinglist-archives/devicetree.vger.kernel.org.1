Return-Path: <devicetree+bounces-69315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDFE8CF8D0
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 07:39:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 771BC281B07
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2024 05:39:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADC0D518;
	Mon, 27 May 2024 05:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="llzHtWdZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F8A12E63
	for <devicetree@vger.kernel.org>; Mon, 27 May 2024 05:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716788333; cv=none; b=uwOl2YhTKk49/IoxPvn1PUvR6hwoo6Elnr3XwQ+tkC7NBgtKmrXLaJHwwJMP9PUtApDVOLonZLFVMDAgJE7LJtmnKMIq6qUINL2ClSD95LdjoGHTnNvKcxd3+zBSoKkaeMXcnKw38Z09cfPbhFFDHOd55XuRnHxELl8OPPlpaIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716788333; c=relaxed/simple;
	bh=rPfFrJBnAulSY0rHFnC89I3kUqU3f8YhptHrQUiyOjs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ibWznGYNK2GMJPlCRU4ZubQB1zQhBe3795Xd6XymGlUpPl6e48TPwQPhz9uYh6LRK1RPV6VJER3Vu1xSp0i16rpjkkqxlpyQmfr/+qrfUOfyvsYqzRdd+r4FBPoUF9CxPNZIDlvJCBOHmdsnS9dy8RfC0Xe/BddKgKfHrOBJj0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=llzHtWdZ; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f44b594deeso19692555ad.2
        for <devicetree@vger.kernel.org>; Sun, 26 May 2024 22:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716788330; x=1717393130; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BaoVf9eqjsot1BqIU97nmYIfRRMIaK539UE6et7+tDo=;
        b=llzHtWdZETdpjrArQzPaOL8x9iLXERTfQOyOlSOAdDTxNQtLxlSEqBkxqOUA65h6YV
         31lY3M1FXCB0NqtIAWt2be4mGVU0c0WLQF+FxjSlSgz/649c/3rUjvJiUmMXjchQ6vGH
         Gb+Atf+uSmCxHP3yN0Hb4cb28+XeUBdEMi0PRqfzZfO4rh0yal9SJvr+eJHUb7YKEVOz
         ZZpSECMqB0w84qft7cMSi2kDPv/IZ/XR4NKNqFl8ILsNmv9i/yEAiaFOnCI8LYJ2x6NA
         rZf7l95Uq7StT5zBbYVhMbO42B2nW2ynb6TibWXsYURhKygwjl5rfHHugCcX5+vqYOb0
         c4kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716788330; x=1717393130;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BaoVf9eqjsot1BqIU97nmYIfRRMIaK539UE6et7+tDo=;
        b=bfXWbaVBDG6uC4SEbbaqlxT2uTxQO58lp1Y7/8p3IQjxdpIhjmPaa3NPfOFfjPlyAI
         rNk/GjjYvFkOPHSXs/fRNGJsG3I3x9oq3A0vJaSDlGAYGEKthHnwha6MfHUaiY5O+0m/
         rnccfuJ+Qr7/UZojy+jkJeqeC3U0luHbfGxHSLbd2mfrdFm8YS5GmOGPBdDFzaNihdhV
         aCmR9/60lRYjnJYCZzWbMsh1VlURN4LzrPSoeiopHCwF1sa/thvh69KEq9r3kkPFfRhc
         aoimgYdgD2r2hy5i1KscR8PaItfEKnkbp19JTfdRdRaC5STYGt4IEOi5rkBw94m/16rQ
         FU3A==
X-Forwarded-Encrypted: i=1; AJvYcCW+46cL8Taw39GA2wjkdcA3cBhBPJ5inSLPIiFa5NleNcQiBB5oWzNRCC5jRnSK9/fNN4qaY7Abq3g0nmy1toQgt+uN/L+BzyPIjA==
X-Gm-Message-State: AOJu0YwRnFIgEyNu/Uvscf8lyDtnhXyJrdG73Qz2SGcNB4h5Tl6zMEyy
	UjQTT7miZqvgceIP3txE8eVjUgpeiaI08GV/lHRZo+XijF/juKH5NADBhhDTHus=
X-Google-Smtp-Source: AGHT+IFgjVG9f3Ott/fxxmfPHjXa9BW1PEsQItCSb61Ct/TUAu2hJBRMUrECg2TYxwxIN8qtRkc9yA==
X-Received: by 2002:a17:902:c946:b0:1f4:92d4:d126 with SMTP id d9443c01a7336-1f492d4d135mr31439365ad.28.1716788330623;
        Sun, 26 May 2024 22:38:50 -0700 (PDT)
Received: from sumit-X1.. ([223.178.210.94])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f44c9684ecsm51903745ad.177.2024.05.26.22.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 May 2024 22:38:50 -0700 (PDT)
From: Sumit Garg <sumit.garg@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	stephan@gerhold.net,
	caleb.connolly@linaro.org,
	neil.armstrong@linaro.org,
	dmitry.baryshkov@linaro.org,
	laetitia.mariottini@se.com,
	pascal.eberhard@se.com,
	abdou.saker@se.com,
	jimmy.lalande@se.com,
	benjamin.missey@non.se.com,
	daniel.thompson@linaro.org,
	linux-kernel@vger.kernel.org,
	Sumit Garg <sumit.garg@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND2 v5 1/3] dt-bindings: vendor-prefixes: Add Schneider Electric
Date: Mon, 27 May 2024 11:08:24 +0530
Message-Id: <20240527053826.294526-2-sumit.garg@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240527053826.294526-1-sumit.garg@linaro.org>
References: <20240527053826.294526-1-sumit.garg@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vendor prefix for Schneider Electric (https://www.se.com/).

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 1a0dc04f1db4..4ef38573e411 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1211,6 +1211,8 @@ patternProperties:
     description: Smart Battery System
   "^schindler,.*":
     description: Schindler
+  "^schneider,.*":
+    description: Schneider Electric
   "^seagate,.*":
     description: Seagate Technology PLC
   "^seeed,.*":
-- 
2.34.1


