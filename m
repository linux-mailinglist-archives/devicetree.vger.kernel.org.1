Return-Path: <devicetree+bounces-57901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E56B889F2B6
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:48:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1493A1C23836
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B35A15F308;
	Wed, 10 Apr 2024 12:47:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="HZryfxtr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A27A015E81B
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712753220; cv=none; b=M02Z5X2HIGDQjbOyeV1zCducIt4mOi5qSe5OCuVjMpxjmAjvEpW4C+NVwKwfYhosWVUHLMvaaGIz97lDUmgZuudhq8QpHUYSe1+my5XGBf9iNRFCn77xxdN16q3kuEu2CzLfAggGDewy481eOFoLLdzEaivzUGvhN/lGMBKjSDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712753220; c=relaxed/simple;
	bh=wf7ju8vqsLnPRCFf/XISMutA94e5S8E6OhesXhPqqxY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lES/2Amcz8+lKJkF1TCHupS/Fh4l6yHfrdlIAgh8J6G203Etvm5jC6PQICNhr0PcioX0m88zRxoxOK6HEK0HlJbOCl9XXlTX/Tg/AQDfx3g2wHQUNBTpDquSDhzI7zJk9vbm+a3ojeTkB6grQLgZLtjvzjm+GLy0+rhNauhvuuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=HZryfxtr; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-34682953048so297154f8f.3
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:46:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1712753215; x=1713358015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+WJda3ss7hoIdDj+/OQZmjsnCcOcWE53qMUaI5LDqg=;
        b=HZryfxtrIz5VXzJyoWCLnD96ko07VR4Kf+VTiIlbagZseuBPwnrcTZibdPsJRh8ZJQ
         VcQuhi7YoeUZFcDzxn928KEtpyuNB4vqkSgtjtUep8Qt8bYKkJdfQ8YFqpApcvilxIrg
         uxSENXI+ib97lha2GcXI2z7ayCvwkQFP84tja7gsoJc1yxqvhmuKVMLyrUAbXaTShVeI
         C1v6JraGclfV6esDqzRIUSpQ3PCq0JUv4gYb87dOCGhInqHLciZzgKYZodIbcCluJj13
         V0ZWzr21zQv9XwEjH9p8dnAZRln8B7BtcGjJ6xNY19L+JlL+SRI35dq+W3D7b7Ql98GP
         BHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712753215; x=1713358015;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j+WJda3ss7hoIdDj+/OQZmjsnCcOcWE53qMUaI5LDqg=;
        b=gNKbMLGM6uRp0tAb61vdEq1QNL59O+fiy1/QXhjFzmKPxZ0BcbFVE60slYXeEXj/3O
         BG8aKhuPq2yH5x2TRMOf6HjgcuoJMMdVBFCNiriMyy3ljb9ZSNlP/frPLxK4EM+o/mrP
         EkZ8/HE5Kj5Mj6xe7jnid8bYa6QqX5JaxamPCMaZczDw53c+2nzWxW+SHFzTGRq37oOK
         rIAK8EoQd7MnhTx+StYo07AehnW5TZi9Hl4L5ZyPVJChpftmx4GXJxsnUvavpalkr01n
         qlEhT+nIS61MrVqPStjFRcpjn4y/Is3PClcFBBefFYahOjv/cE0TCrFr88LVAspzqXo1
         yOWA==
X-Forwarded-Encrypted: i=1; AJvYcCWIlPDTgUh2PGYueqZQW8yvY+pVLV6RXK5HGwVSk5HrN3kFs+QRp8w3pEV/BKf/ha8sQQ2xD4qrwy9E5DCvV4zMyaQzVo6RDVvDPQ==
X-Gm-Message-State: AOJu0Yw2JY6Va0CvB0Z33pi7sKbZvNf/w2INo7HS/TToLr7+Az0b8JCt
	yUdtyzY1KKaOpIHkqPSV/pMLBr66nL3xif1l/9gVzoqumHLvVXn2e4yvBSQvks4=
X-Google-Smtp-Source: AGHT+IEMD5NLD7GnAz7Fnhxb7rz8Ka8o7MjK0O+Jpjw70GJ1GLUqicj0kPjIH2WTWtR3ljiFvgSD2w==
X-Received: by 2002:a5d:6e0b:0:b0:346:66d8:f7ac with SMTP id h11-20020a5d6e0b000000b0034666d8f7acmr1868640wrz.31.1712753214829;
        Wed, 10 Apr 2024 05:46:54 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:75a:e000:6908:7e99:35c9:d585])
        by smtp.gmail.com with ESMTPSA id v13-20020a05600c444d00b0041663450a4asm2150929wmn.45.2024.04.10.05.46.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 05:46:54 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kalle Valo <kvalo@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Saravana Kannan <saravanak@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Amit Pundir <amit.pundir@linaro.org>,
	Xilin Wu <wuxilin123@gmail.com>
Cc: linux-bluetooth@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v7 03/16] dt-bindings: net: bluetooth: qualcomm: describe regulators for QCA6390
Date: Wed, 10 Apr 2024 14:46:15 +0200
Message-Id: <20240410124628.171783-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240410124628.171783-1-brgl@bgdev.pl>
References: <20240410124628.171783-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

QCA6390 has a compatible listed in the bindings but is missing the
regulators description. Add the missing supply property and list the
required ones in the allOf section.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../net/bluetooth/qualcomm-bluetooth.yaml       | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
index 528ef3572b62..d844acaec1d3 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qualcomm-bluetooth.yaml
@@ -62,6 +62,9 @@ properties:
   vdddig-supply:
     description: VDD_DIG supply regulator handle
 
+  vddbtcmx-supply:
+    description: VDD_BT_CMX supply regulator handle
+
   vddbtcxmx-supply:
     description: VDD_BT_CXMX supply regulator handle
 
@@ -180,6 +183,20 @@ allOf:
         - vddrfa0p8-supply
         - vddrfa1p2-supply
         - vddrfa1p9-supply
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,qca6390-bt
+    then:
+      required:
+        - vddrfacmn-supply
+        - vddaon-supply
+        - vddbtcmx-supply
+        - vddrfa0p8-supply
+        - vddrfa1p2-supply
+        - vddrfa1p7-supply
 
 examples:
   - |
-- 
2.40.1


