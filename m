Return-Path: <devicetree+bounces-10582-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F0B17D20CF
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 05:12:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C472DB20DDD
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 03:12:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08C1DA56;
	Sun, 22 Oct 2023 03:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C315A54
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 03:12:15 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D176E8;
	Sat, 21 Oct 2023 20:12:14 -0700 (PDT)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6b5af4662b7so1731006b3a.3;
        Sat, 21 Oct 2023 20:12:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697944333; x=1698549133;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+zd+0FlCpxjN0Ur53m7FdMqpc+SVtrfNr+NITjaBoxE=;
        b=EThJDrF2Rp271Zrr05WmLqTDhgW2aquJzYtRQaOsDDJiuTJWqtRUWYEPhSaS1OoM0S
         R/3A0cTrYBdt8+bMkotFK1KN8a8skUnElGFYdxXqgVtkgYUNvTmzLvC8S0lh2TMH2aem
         1jWJ5QrU7FRwQk+0tVGxv1SxztgoJXtG56j5K9nb7Bq82zLs2U8N5dRxy5RXFqXRmHYu
         sxVfrDjyiKVKfioWoL8Y+IgzT95HKRjtKbuSgwC16EheFB+ExRm5gB6NOc1ZhxDO6I4S
         AbFl7mYViIghZNeRcYe3gsRJsEoNZqsk9bJU8+v4HkbicwwEtqyKGd/kw8faTVmrGXMU
         k8JA==
X-Gm-Message-State: AOJu0YxGNJ8OLA1Cz+1YT5Qr/tsLJqxqe+RW5QuNbGKoNBkGglYjQ210
	PRMLsw8vfrO6TNNAsHwN4lnr6B9u7aoPb89l
X-Google-Smtp-Source: AGHT+IE+nTRcMsN9zRkItzQBzFRpACZVO1Gt/XiL8tBeShilF3ZdtRdDmlvfvoeyW9DP3i4iGYIJKw==
X-Received: by 2002:a05:6a21:7795:b0:171:c88a:890c with SMTP id bd21-20020a056a21779500b00171c88a890cmr4485675pzc.25.1697944333424;
        Sat, 21 Oct 2023 20:12:13 -0700 (PDT)
Received: from dev-linux.lan (cpe-70-95-21-110.san.res.rr.com. [70.95.21.110])
        by smtp.gmail.com with ESMTPSA id n8-20020a170902e54800b001c9c879ee4asm3789589plf.17.2023.10.21.20.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 20:12:13 -0700 (PDT)
From: Sukrut Bellary <sukrut.bellary@linux.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Angelo Compagnucci <angelo.compagnucci@gmail.com>,
	Nishanth Menon <nm@ti.com>
Cc: Sukrut Bellary <sukrut.bellary@linux.com>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: iio: adc: ti,adc128s052: Add adc08c and adc10c family
Date: Sat, 21 Oct 2023 20:12:02 -0700
Message-Id: <20231022031203.632153-2-sukrut.bellary@linux.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231022031203.632153-1-sukrut.bellary@linux.com>
References: <20231022031203.632153-1-sukrut.bellary@linux.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The adcxx4s communicates with a host processor via an SPI/Microwire Bus
interface. The device family responds with 12-bit data, of which the LSB
bits are 0 for the lower resolution devices.
The unavailable bits are 0 in LSB.
Shift is calculated per resolution and used in scaling and
raw data read.

I have been able to test adc102s051,
hence adding just the missing ones in that family.

Lets reuse the binding to support the family of devices with name
ADC<bb><c>S<sss>, where
* bb is the resolution in number of bits (8, 10, 12)
* c is the number of channels (1, 2, 4, 8)
* sss is the maximum conversion speed (021 for 200 kSPS, 051 for 500 kSPS
and 101 for 1 MSPS)

Complete datasheets are available at TI's website here:
https://www.ti.com/lit/gpn/adc<bb><c>s<sss>.pdf

Co-developed-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Sukrut Bellary <sukrut.bellary@linux.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
Changes in v2: 
        - No changes in dt-bindings
- Link to v1: https://lore.kernel.org/all/20220701042919.18180-2-nm@ti.com/
---
 .../devicetree/bindings/iio/adc/ti,adc128s052.yaml          | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml b/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
index 775eee972b12..392b4a3e867c 100644
--- a/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/ti,adc128s052.yaml
@@ -16,6 +16,12 @@ description: |
 properties:
   compatible:
     enum:
+      - ti,adc082s021
+      - ti,adc082s051
+      - ti,adc082s101
+      - ti,adc102s021
+      - ti,adc102s051
+      - ti,adc102s101
       - ti,adc122s021
       - ti,adc122s051
       - ti,adc122s101
-- 
2.34.1


