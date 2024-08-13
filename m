Return-Path: <devicetree+bounces-93407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F7AC950CC5
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 21:03:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 441551C22803
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2024 19:03:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DC291A3BC4;
	Tue, 13 Aug 2024 19:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="g6hHk7Yx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5971B43AB0
	for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 19:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575798; cv=none; b=ByroMITrnokKyEYs41l2+9xt+383dJtSFEIKmorwR2KcvnIJj+eco4gstfBa+OgGy/KASzF0pxZdeunt7Qsm/RwA3wFqWa8IvgC4BHpgEPfHWkZOfC4Jh1pDQxvqF4wqy3j7zjTbITkzD9GplNl6avvqPjIQJuXCXdws+OUXQs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575798; c=relaxed/simple;
	bh=wZZi2FnrSd3Y6ntD+VqvzTWx0ibV9Sj/dK6MjW4hzrY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EB8/4kMIsQ905SZfnT3aPNox6s3Q0cD+1wiWylI43CKKM5LuF6A3PDRFWYtD2kQ1JqKSODL5ECb+sR/i2TPEAqc6pEYHaR5F5lT0jk6KCMkjX/7eNznUeys8NbCaktWoJ7sBcFFbMhroUGF2iB/zEkzQ3RjuHV2+1YvZCd771xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=g6hHk7Yx; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-52f00ad303aso7846537e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2024 12:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1723575794; x=1724180594; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fpSg/3y828Pw97blr6HDnxsdU+5aKQgCf2MNnTGXTPg=;
        b=g6hHk7YxcXKw9XYZlz/rldPNPtP9sSxJ3sP5e9/TD+gaMjqzohmlaZeYju6RqwpK3s
         EW0YwOgAKdyl9GFH5qavww7ownEi0yz+UHzqKtdW2ThprXl+rQQEditJeq3TgyjN2FUE
         mbEd9Vk6WF/WHVu32tWpkTG7SA+mqCzGMXQhzZdKoXv9KRXYEtWTH7h1WOOIsIGKIRZM
         uIT//+AZ2sQCMC9gON8jVUTrD+OewaVnYf48Rspq19wg5V6bSmNlcuuFLgNZ8a+SIlfG
         Sya7cPzOOX29nHuhRPMkGljQIKFbJbYai10US3rO6qkz2NH5I8MdO3VfXUiDa2kpKFJv
         JygQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723575794; x=1724180594;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpSg/3y828Pw97blr6HDnxsdU+5aKQgCf2MNnTGXTPg=;
        b=veRMLpCgxNKgaIq5op2pH5eaf3YOfSizsMzfY/FNWbt6x97uBgHtVkd+AS28iNvLd6
         ympu1vxRnBp3Lf1zWnQYoEe1jYFWu2CCTXeYeoNwGr+sNwOVHPkFyFphfv6oxLWP4QjD
         nk09Up/XKsZHmymC0y1Jwk0zEiJjK1KS4mfbwCSkp5Lizfdr269wmsab7jEMJa4FV3FV
         NZrBzEUQ+E8XrHde3NU3kDgemycyDh5EGS/rQ++0l24BTJ7OQ6LYPm7zFafi8VjtGho+
         ZvvwaKrEY4DC4+ILa6vF6l0PupyH4eUP9yHkF+B1KD7vYHZgKdeIWYpYdyNExnjT9yKB
         kSVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJDIq5MDR98NFGyV5oYk3WY/4uhEE4PurOFvTQU6n1tBZCno3DCNrfeHfNWC1J45HwmpH5Wjato5uJrXdMIo+INtage1Yu3CJ8Dw==
X-Gm-Message-State: AOJu0Yyp/tikLhY8AN6VhWnwDgcjaMEnowSS7KaZ9D3fzIgyzCn3VGi/
	vlG/xafFr3JjBjhfDHK1Bt9wF5g5GtDAmoM0SgV5NKulRG01ndlnBOiiK0czWC8=
X-Google-Smtp-Source: AGHT+IH+VagueuQIXMxGnIX0w5CylWhKwU2nLQR+DMf+tI3DEgtgkMQnem1H9OyA00MT+ZbTBm902g==
X-Received: by 2002:a05:6512:2351:b0:52c:b479:902d with SMTP id 2adb3069b0e04-532eda5b0famr222373e87.4.1723575794356;
        Tue, 13 Aug 2024 12:03:14 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:3979:ff54:1b42:968a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4290c72d8ffsm229487185e9.7.2024.08.13.12.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Aug 2024 12:03:14 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Johnson <jjohnson@kernel.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	ath11k@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH] dt-bindings: net: ath11k: document the inputs of the ath11k on WCN6855
Date: Tue, 13 Aug 2024 21:03:05 +0200
Message-ID: <20240813190306.154943-1-brgl@bgdev.pl>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Describe the inputs from the PMU of the ath11k module on WCN6855.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 .../net/wireless/qcom,ath11k-pci.yaml         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
index 8675d7d0215c..404974d77826 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k-pci.yaml
@@ -50,6 +50,9 @@ properties:
   vddrfa1p7-supply:
     description: VDD_RFA_1P7 supply regulator handle
 
+  vddrfa1p8-supply:
+    description: VDD_RFA_1P8 supply regulator handle
+
   vddpcie0p9-supply:
     description: VDD_PCIE_0P9 supply regulator handle
 
@@ -77,6 +80,22 @@ allOf:
         - vddrfa1p7-supply
         - vddpcie0p9-supply
         - vddpcie1p8-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: pci17cb,1103
+    then:
+      required:
+        - vddrfacmn-supply
+        - vddaon-supply
+        - vddwlcx-supply
+        - vddwlmx-supply
+        - vddrfa0p8-supply
+        - vddrfa1p2-supply
+        - vddrfa1p8-supply
+        - vddpcie0p9-supply
+        - vddpcie1p8-supply
 
 additionalProperties: false
 
-- 
2.43.0


