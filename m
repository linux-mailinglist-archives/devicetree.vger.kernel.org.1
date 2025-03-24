Return-Path: <devicetree+bounces-160154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B4557A6DA7A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4343F1891D89
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:54:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CD525F962;
	Mon, 24 Mar 2025 12:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="A6dVcf4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E68C25EFA3
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:52:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742820766; cv=none; b=te1MMC0xin+Vj6bLX6Ti/7t0P1WBjm2xqQO/6z/SfkX+FDXlf//4SD+QDrOBeZpHoevJck1lWCENVNDCzVDpVRAT6cJZf/SX9yhcyPiAcLxh1bx0ny69HAMHtiETWS/iKhZn0/DyWX+GCqdH6DghMwlOOoUfHYcE/mcqreUQwAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742820766; c=relaxed/simple;
	bh=nq18JtxBJtNAIX2CZtMajdEApqZ+taDn1bWvq4LSEp4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=hFe7G7t8oXAsGqr2oqPL4CRjBRaEUPD0TUD2eUSgI2EC/CoFz1hsAbEHPRqjaD425aGl3pxnTf47O+kengd466p/Oe9dcbF6ntob9FujhQh1HX85yAFhjbj31uP63aYjE55wsRLrht7jYr9xmluldSbFqbLLry+AHg7V1H8BGbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=A6dVcf4a; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-391324ef4a0so495417f8f.2
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742820763; x=1743425563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=72JCJOMx53Iw0msa6ZgjXoc2/P2YAnqDlDwWLnOfpuU=;
        b=A6dVcf4aiKvBfHcpB53+xDvl9QMw0E3LuES8lP08dSTu1fPcVG4gzMu6xDGJmQaTjU
         74wVzvN78ahAMaZeXTdPSs4v1B0do7X2zvAZvS0q7mojlM96Uhy6nAKkYk54ZblSzaDg
         eODUUwJAav8IE3+xdBecciqJL0p6EOxI0lmUnB+ocCNNH2TWFDNuZKyvXMyM2QNjhNNp
         x4ukRzYqyO+u+4xde76Lcslf8PjjQazClIDxOr5caxqJleXnTBavNA83FxXEbgj9iEPQ
         NPsi4V6AiTCAHgRg6Hv5scCSqHQEmJIfLP0uH8LOS1mRyt/eDBOJf7IMJyUe12zKtwKw
         nUFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742820763; x=1743425563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72JCJOMx53Iw0msa6ZgjXoc2/P2YAnqDlDwWLnOfpuU=;
        b=i29gh+hSyb+Ayn5i8cdfmtIWKcu9nqo2HVni3Mh16DW7AypG0GvbFi2j9Oi4C8nvoM
         eVy3x6UBR/Z2kvrU9uKZu7cywgIuFA8fYg1ysWnm5+kUxm4vkBJ9Y/NGX91i77qCInym
         MFAv0KNPYkSH83RmPXHuxrX7pjWhgpu0HNwXJo73jD2Yml1mmN/CdOQZtUn4qk6OJYGM
         KpCMEG0nUaKSuou/7QDvG8aFZHSDeiTtHJpXtjVlyq7AG/VVIliPF1lgi5LCze+nFayf
         0vanzUq4avMFfsK2UvAOk07H5DjM5Z+BvC86je2fpOGzXcOn3mKZf4m25WN6n2gXRF75
         C3UA==
X-Forwarded-Encrypted: i=1; AJvYcCUcDCc/DnSINmfduEuFyu/Ym9ZuYpVt9Ymy5IszAg2F6ye4NO6HJqztvD9g0xppaByVhxYSbwwHZ78u@vger.kernel.org
X-Gm-Message-State: AOJu0YxMc765Nmf8S5CZup8UB2CVqHHqRI3hysawci7S2NpANadNghac
	PHPvFM20DyaNnF4qijdQpy4nvX5Ixh0c+izhUqoR8903cpl76f7sn54NXbz1mEQ=
X-Gm-Gg: ASbGncs6ab5K1fMXrCOKOgETfcv+q5+Sx65DEXC+TeCSpUwv9f43qOagVnnGmIv2mUX
	FxRHMvUSTTZpwE68IC7If8oHSldKvff5ut2if1+ooLi1uzYz2BnfLJj5dfcaHW6Tvd6mol185rR
	S5vgWLfYdKtaLnV8N03I/P/ZPGYRlz5fQwdr5/dJ35QS2IA0GM8XluqdtZ97KNiP5oygJJ359kz
	jl6YmHtgXfMZ+EM8D9MuLwB/D/rc9jfBlmrF4+VTfLVxzZnWZKfQ9JPZfM9H5F2CUfKOty3Eosz
	d9jB7Xxtny/fi7RoK7g3mWIrhD45+BfituerQB/K6S/LZBfYZL1mPRz8h0Yk2PSOyH2r
X-Google-Smtp-Source: AGHT+IG1z2NVJpJhN3ud8o4Am8/PaU698t9GntqKjtvZTM6FnpwxjCYqBRlF7gCoxVd0XB60+Pn5lQ==
X-Received: by 2002:a05:6000:401e:b0:391:1319:9007 with SMTP id ffacd0b85a97d-39ab7c2fbb7mr3331354f8f.5.1742820762583;
        Mon, 24 Mar 2025 05:52:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9f682bsm10811402f8f.101.2025.03.24.05.52.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Mar 2025 05:52:42 -0700 (PDT)
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
Subject: [PATCH 1/2] dt-bindings: mfd: Drop unrelated nodes from DTS example
Date: Mon, 24 Mar 2025 13:52:38 +0100
Message-ID: <20250324125239.82098-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Binding example should not contain other nodes, e.g. consumers of
resource providers, because this is completely redundant and adds
unnecessary bloat.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/mfd/mscc,ocelot.yaml          |  6 ------
 .../devicetree/bindings/mfd/netronix,ntxec.yaml       | 11 -----------
 2 files changed, 17 deletions(-)

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
2.43.0


