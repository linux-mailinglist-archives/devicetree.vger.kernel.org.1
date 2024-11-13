Return-Path: <devicetree+bounces-121417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 795E49C6B07
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 09:55:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FC8C28610C
	for <lists+devicetree@lfdr.de>; Wed, 13 Nov 2024 08:55:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3D6718CC02;
	Wed, 13 Nov 2024 08:54:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="CbhkbCUx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A94618C933
	for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 08:54:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731488080; cv=none; b=D28fNpmRKbbwEVg9saA6T5Yiw5p+arc/GE2nLsQe1Mpeh+vzyW8Y5MhctivKJvKjOS0ezYYQ/dCdwoo/ji6LklvzXHc4hRSeZ2thKLzsNiiFdjp67fljgKOYhjIPkQf/Av2gRv+m3+Ux34BcNlgO5DMbUvpdOL5ryeZEtJaUgJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731488080; c=relaxed/simple;
	bh=EKXsanBSlktV8j6BmaKsiXKrUF4+8qHGiv//AccUDB8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Na6ogOhynwmMI7HCP4cZ3v+INLsr3npJhSBUbODstoqngZOj2ZJxjCF1fvBUiKUZnr/ADwgUqwlKHxt0sWFoni8+UD04ktT5BeiprhV1kn2mlqqLPzyNzLQCd3PXESUEETvd6oIMGrcIvK4btPPptrMD1SimYGlyR7lidslYr2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=CbhkbCUx; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-72097a5ca74so5544998b3a.3
        for <devicetree@vger.kernel.org>; Wed, 13 Nov 2024 00:54:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1731488079; x=1732092879; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gEgoAjBfgzailS1tISV2BNkAznvBP4wgjOEuQVpA80w=;
        b=CbhkbCUx1w66GDKDlzYJT5jYmJnabKxH/v+5L/f9LohHwSZTSiMovs+qSCwXREBmdS
         gR/eccTX3QsW6/K5QlcC4dBA/DoFAnwyf1VNLvbfTS4WY09JouJA/HlI33M1fchmXlzy
         Nmwkf+L5sgN0X5JFy2WI502dzb3Jo9bHOoFAD43VuvZqgbRbUAg4w5bMm05AEMxJl4Lg
         iEDZokxN4c7fRpAVzTZ2u6CJf2OoJLCbIMABAaf34Ci6e6trJlqTyz4HZwvQc2JuS3Nd
         EmHYjwcBlWGwKdDSmQtTwMgMBb9QQ4wfBtHwnrF2ZhT74G7xhbfpI6KlPYKeDY9Hnff5
         C8bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731488079; x=1732092879;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gEgoAjBfgzailS1tISV2BNkAznvBP4wgjOEuQVpA80w=;
        b=kWkGjyJ/ME/Nsa2W/2ofolUs0P8NGTEEJfbK+d2fYZ/3iKfnsMn7OtiAtbX6+N7fbP
         00nY4aiJ9/qfG/fjTVumdGYOie3gGbTxAg6+LHz1Uj6TW2EmKJ24nPJ5WW/jaOFmzOwz
         kJow8XcrdVLpuUVSNDZkMeOPWO1stSLKGBGyLGLlykXWkAXmfYpOwWj6qtJucvV7gMrJ
         +tv1AGzk4SRzqdxthMeZHt1kIGJphPojT58r438YXiYjb8S2tRMzx8ZLS3bB8bsVzGz0
         sWmFPc1CQxUJhRpP9rY50XDrxgka9DyDliX2iNcrVb9zPA77QLc99NW9mJSuKqDqod1G
         lN0A==
X-Forwarded-Encrypted: i=1; AJvYcCVIQqXOOelfwezVFI1nc7+UeiSf60s96rMmjRb6ehlovPB5fiytc+VomgMFBUMooUUFagUJiDY9xZM7@vger.kernel.org
X-Gm-Message-State: AOJu0YwiqV3d3iwQbDIHnsDXVGHu34XUiWYAdP95FQXfJKdU7hb6QxSA
	uI0DQmTQYg0GVWPcE7ug8vi4pbjgWkhp/TkhvdaoYroY/CuG1Gi9vj5omHh2
X-Google-Smtp-Source: AGHT+IFuU4Y92FgMstRU7nXxKESV9IJYwrxKQT0+60u3aaUl5uG63Ptgsvg/YBluwzd5Pns5l3wnfQ==
X-Received: by 2002:a05:6a00:114f:b0:71e:b8:1930 with SMTP id d2e1a72fcca58-72413380e98mr26240502b3a.16.1731488078719;
        Wed, 13 Nov 2024 00:54:38 -0800 (PST)
Received: from localhost ([2405:6581:5360:1800:a83:68dd:5f1c:4ed9])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7245fe8e286sm317379b3a.16.2024.11.13.00.54.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Nov 2024 00:54:38 -0800 (PST)
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To: linux-rtc@vger.kernel.org,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Olof Johansson <olof@lixom.net>
Cc: linux-amlogic@lists.infradead.org,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH 5/5] dt-bindings: rtc: hym8563: Remove hym8563 binding
Date: Wed, 13 Nov 2024 17:53:55 +0900
Message-ID: <20241113085355.1972607-6-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241113085355.1972607-1-iwamatsu@nigauri.org>
References: <20241113085355.1972607-1-iwamatsu@nigauri.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The hym8563 binding has been merged to pcf8563.
Remove hym8563 binding file.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 .../bindings/rtc/haoyu,hym8563.yaml           | 56 -------------------
 1 file changed, 56 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml

diff --git a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml b/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
deleted file mode 100644
index 0b9f39ef0edc39..00000000000000
--- a/Documentation/devicetree/bindings/rtc/haoyu,hym8563.yaml
+++ /dev/null
@@ -1,56 +0,0 @@
-# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
-%YAML 1.2
----
-$id: http://devicetree.org/schemas/rtc/haoyu,hym8563.yaml#
-$schema: http://devicetree.org/meta-schemas/core.yaml#
-
-title: Haoyu Microelectronics HYM8563 RTC
-
-maintainers:
-  - Alexandre Belloni <alexandre.belloni@bootlin.com>
-
-properties:
-  compatible:
-    const: haoyu,hym8563
-
-  reg:
-    maxItems: 1
-
-  interrupts:
-    maxItems: 1
-
-  "#clock-cells":
-    const: 0
-
-  clock-output-names:
-    description: From common clock binding to override the default output clock name.
-    maxItems: 1
-
-  wakeup-source:
-    description: Enables wake up of host system on alarm.
-
-allOf:
-  - $ref: rtc.yaml
-
-unevaluatedProperties: false
-
-required:
-  - compatible
-  - reg
-  - "#clock-cells"
-
-examples:
-  - |
-    #include <dt-bindings/interrupt-controller/irq.h>
-
-    i2c {
-        #address-cells = <1>;
-        #size-cells = <0>;
-
-        rtc@51 {
-            compatible = "haoyu,hym8563";
-            reg = <0x51>;
-            interrupts = <13 IRQ_TYPE_EDGE_FALLING>;
-            #clock-cells = <0>;
-        };
-    };
-- 
2.45.2


