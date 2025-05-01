Return-Path: <devicetree+bounces-172721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 02EC9AA603B
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 16:52:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE1A87A3F2A
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 14:51:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5ECA11F874F;
	Thu,  1 May 2025 14:52:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ea9v+iHW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E26F4315E
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 14:52:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746111148; cv=none; b=WJojbl/ziOCCMq8QOHg1Ej6ifJ6VMSQQYSDBDFe6rIR1oKppRkZ3qrifCA7/zEvih/hqnMsMaLaDll3mxX9V1JaDCjrrpUskOBYascAo1ksy6Dvc2yqBjqh3GKKNMxyNBRQINIxqU5ckK+CB8BmOA9Ym77egE93mKtQU6jhox4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746111148; c=relaxed/simple;
	bh=4vBN19AAg9T2It+spbWtSmKK8svHb3xb1Lx24a45eNI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=HDTaX5GGCkfOLGqRrsamRmEHYnHVF7Lt5kDZVCW9/BtFnbZlQ6j+YEkpT/KXaF95/x87BUE/JG/oCSwIpykgwy9wB83dd97Fr7ZrdHuBgFmNzFqGwcab8dIhi1Yy0d8Y8pgj25ogas9zXL2/wAyDa/Dxo41NAlAJnnD0U7yYfms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ea9v+iHW; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43cf7c2c351so1105535e9.0
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 07:52:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746111145; x=1746715945; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lJYIuRkvXgvyjv2IxF0maY1wel8nlqpI4PAniXDkr/Q=;
        b=Ea9v+iHW6PbFFrFeC7r2je5IwDvTAzoUQVrWWiSNKFapGV2IDFvr5rLolc5VDezTiw
         MZTkYiHYfusKl9F+1JmZ5gK/yh6DGFYtD6Vf3M7Ap9itQQiaTHVfHtpNzfo/qHxEBCW0
         GuqOdoxGAYuIJSYXE11zCoOg7ayElwuiIJjqLInC3zyZbKlBEzA4VjUEzYvWDRMQ/DNN
         bGWRIJExmz8XiCcbTsXgdm/117RL6vKit/sNXAih6ZFtdyeTaAep9zS6WZLx8fFJJ0Ty
         EgPbB0PYBHzfXYMlczbJ3lG1l/3SzptGIm8A53c5rE9T6CAsZ1Fye2aZAVoFR4ryA+97
         fvJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746111145; x=1746715945;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lJYIuRkvXgvyjv2IxF0maY1wel8nlqpI4PAniXDkr/Q=;
        b=VXq1dULU/TjddEsnMnO0utDFxKW9MLClGhI3nnM4FxMxFZ09LYuuupUw0fzZbsU4UW
         yUSuAtk4oAlp1OggjjNo7cK1A3E143I2pKEfRHqWrHG8B8y2L0L6DB+72Lh0tuUrxLrd
         JEhTJ/KFy63tGvrFUaZ1WszBm819dYSDSySp40OF+a8pCVl584a+/eQ4trFb6YlFGHsu
         mKPX9V/a2IEwolhMjQUAsLDIBXEhz47Y8nnYv1eJUWftC4F5HFczsuU+YrwCh9B/L629
         2TsGgYbLduuee/Jc7DQCmjLf+67PbO5XJmHk0wJP1+VMjJhxylXbcDYEOZgUE4QAb9Ca
         d3+A==
X-Forwarded-Encrypted: i=1; AJvYcCVOwnDHGB+/zZkU/YmwaQNb8r0NHERNFHII38cJsh0QatqNK58kOahXX+iW0PnekoVXYcxKF2SEP1x0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+41LC+eDZPsYRSgaVgmfinMOgA3kc9FUkUR1do/CeeFRnJyFR
	HRLtI4L98Vo8NGgtrIzW8uQOxvgEBuyEeU5Sr/+EvIXlDrM158J38gngKVmCOTE=
X-Gm-Gg: ASbGncsUqIUKBrkjnbHVAscBciJdo+ZrxBB8EGixFdElpYvy2oIsTEOJhz5XEzMuxsz
	c4kNnBQ1cTjRLqC5dmlgg+nh+nPk7oKAHyx1ecTROPBN2p1hYIiEniKwWUVYvbeHQVm2Utw2F30
	ExVN7Yqw8lz85k4LRxCAXueofWQLJJGJCx2Fuk0rMbqUPkZ41BsLIa9xfwt9JwX5TqRc17jdE1h
	D5a4i2b6AWZ4Ob8OW2wTc1lJChKqoRUtoS3GB5xGI9XY/vZ3l5uJTrJK82tC9KkEOaGsiaoTzru
	UABYX6YDRXGK2O0ijNCs+gnap8aj6NH+pOwMQcy1gpOvAlujPw==
X-Google-Smtp-Source: AGHT+IEscX5IahyoV/eRtQh77jTXcANYfmic7ETf5PGiDochYM6dDXqHCgY2w9TfMWBhu1Fc9dpY5A==
X-Received: by 2002:a05:600c:4f8e:b0:439:9fde:da76 with SMTP id 5b1f17b1804b1-441b740c97fmr6862565e9.0.1746111144682;
        Thu, 01 May 2025 07:52:24 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89d15dasm14558175e9.16.2025.05.01.07.52.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 07:52:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Colin Foster <colin.foster@in-advantage.com>,
	=?UTF-8?q?Jonathan=20Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>,
	Marek Vasut <marek.vasut+renesas@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jeff LaBundy <jeff@labundy.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: mfd: Drop unrelated nodes from DTS example
Date: Thu,  1 May 2025 16:51:26 +0200
Message-ID: <20250501145125.59952-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2572; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=4vBN19AAg9T2It+spbWtSmKK8svHb3xb1Lx24a45eNI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE4ptulClJmxd6R/zFbeEq5+2oIrFLOFC/OsgF
 Eg7qxfabImJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBOKbQAKCRDBN2bmhouD
 13VyD/9mmygI3FArCUXOD4f6QaOXP7dD5Fsgyiy2iRtSSwwySLD3Eesa1LzWAQ/TGmj/aJyw9fG
 DaYo9NoeywhAaeLW0WiLRFO2k1kjtddAc68IqPFohTHpgx4VcDi4fMcvvFyYbkpwit5SJp48sgi
 +LCuw7oS9K5Ohmyqf1NAIan/guJfvKY21AgAD1nm0qU27Vdh/mHKeejNP/PXv3y2dInBCMAiUMw
 yNewJrcoNeS0RRVFu35bjLUoo28vLof3ZrTBp/xZMXMFRNhVvpny7sIAdBRhQ6YiVP4fhOff9R0
 mH8FUbY1NUr5d7vM3GoSyhSTbJkJoWzt8druiwrzJMrIueQdsb2PnTXnlygcXFfXuQHFtoGAnda
 9bSmOVsxc22KuzIl7SrhX4Q/ZpqlmKsyLEH47JLIwSW+jWYpEezBZToVUlG1e3Jz/NBZErXq55r
 H8AclkEQLS2reCTfmSXi/ENGdXy9AVDxw5sN3JycBuqfADNGl52aYtT7oYMnt84aclDBLlHMcfd
 quFI1oTHupbzyamJlnPwfAtMVnoPBB/haC3VR4w97JOsD85+eH4rj85Gm2zmhHol0aaXIiBy/Mf
 lRAAMgvFGwwYovncTDj/UYqejjABZ1wt7jfh5x249XFIPS+7vDd1lBofEJzBCOI2TcEXJto2CO6 w18oNZQkiq7aUYQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Binding example should not contain other nodes, e.g. consumers of
resource providers, because this is completely redundant and adds
unnecessary bloat.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. Move pwm-leds removal hunk in iqs62x.yaml from next patch to here
   (Geert)
---
 Documentation/devicetree/bindings/mfd/iqs62x.yaml     |  9 ---------
 .../devicetree/bindings/mfd/mscc,ocelot.yaml          |  6 ------
 .../devicetree/bindings/mfd/netronix,ntxec.yaml       | 11 -----------
 3 files changed, 26 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/iqs62x.yaml b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
index e79ce447a800..3fc758664614 100644
--- a/Documentation/devicetree/bindings/mfd/iqs62x.yaml
+++ b/Documentation/devicetree/bindings/mfd/iqs62x.yaml
@@ -90,15 +90,6 @@ examples:
             };
     };
 
-    pwmleds {
-            compatible = "pwm-leds";
-
-            led-1 {
-                    pwms = <&iqs620a_pwm 0 1000000>;
-                    max-brightness = <255>;
-            };
-    };
-
   - |
     /* Single inductive button with bipolar dock/tablet-mode switch. */
     #include <dt-bindings/input/input.h>
diff --git a/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml b/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
index 8bd1abfc44d9..b613da83dca4 100644
--- a/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
+++ b/Documentation/devicetree/bindings/mfd/mscc,ocelot.yaml
@@ -76,12 +76,6 @@ additionalProperties: false
 
 examples:
   - |
-    ocelot_clock: ocelot-clock {
-          compatible = "fixed-clock";
-          #clock-cells = <0>;
-          clock-frequency = <125000000>;
-      };
-
     spi {
         #address-cells = <1>;
         #size-cells = <0>;
diff --git a/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml b/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
index 59a630025f52..06bada577acb 100644
--- a/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
+++ b/Documentation/devicetree/bindings/mfd/netronix,ntxec.yaml
@@ -63,14 +63,3 @@ examples:
                     #pwm-cells = <2>;
             };
     };
-
-    backlight {
-            compatible = "pwm-backlight";
-            pwms = <&ec 0 50000>;
-            power-supply = <&backlight_regulator>;
-    };
-
-    backlight_regulator: regulator-dummy {
-            compatible = "regulator-fixed";
-            regulator-name = "backlight";
-    };
-- 
2.45.2


