Return-Path: <devicetree+bounces-20278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 146027FEAC1
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 09:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9A8AE28414A
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 08:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E65F225D3;
	Thu, 30 Nov 2023 08:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Kha8WSqG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67A5E10E3
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 00:33:43 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id 46e09a7af769-6d855efb920so403652a34.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 00:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701333222; x=1701938022; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EyouFVwGEYxssEwFR57NReaaTx4QlR2tWMXVmiHfDAk=;
        b=Kha8WSqGjKJU5KXb9t+F6TJf2pd/u3Bty0vSpBwtYQMjv+2A6JgmJId5XhTk3on/hw
         5Wy8d/UAWSYg+dx/qPcXCFxjWo27CLwaf1KE6FpOJ+N4gM/idXWV4yBlm/TpqYsshFau
         abKsIdQdRmnuvJ+DJyRgjtc5gaoAX1bencGCY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701333222; x=1701938022;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EyouFVwGEYxssEwFR57NReaaTx4QlR2tWMXVmiHfDAk=;
        b=IPIASIhSCcX7eeT4huXqa5t8hAfcqlZnjlpajDnPGCF4IzYjaixkAzHQfv97+QNdBZ
         RKZHsgiuuadSu6IkK26KPxSO8uLPDNA/i1801DTsSlXlknIol0AGa8ib8BU9HRLueP94
         PrL4qx8nhTRTV7Nv9/P4zsDBZ/MhKqSEhXyeNNPmN2p3M2H+y2Tx27kobHCe4Wpr1yyC
         rXa9N0mw3nMeqt1PzD0mjvs29vD75fRRgjBm39YNJJwdK7YjXGAkzWfFX44qrHmDhd44
         zhFwkh0wahYncM5yhB3zaiCXWTcr+G0+RxnTlIi4BpLBbKSOJbSC600f9800oq21AJf9
         PrfA==
X-Gm-Message-State: AOJu0YxrybsT87BMYTh3EGNBymSLlQhHt63RZ+8DbvqrZKhS81fk7w9U
	EGbB5SGP1uEO48Eatu/0FyYg/TbuQt5vNQQJsZc=
X-Google-Smtp-Source: AGHT+IGWCAAHmgXLrSSPxognNtvv4rTt1aiPoIZHEqHwPAu/XCpwkjPbK21OntZ4MLW1NQrPkMEvbA==
X-Received: by 2002:a9d:7f0c:0:b0:6ce:37a2:a93e with SMTP id j12-20020a9d7f0c000000b006ce37a2a93emr25823140otq.3.1701333222791;
        Thu, 30 Nov 2023 00:33:42 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:7c8f:dafd:65c3:2bcf])
        by smtp.gmail.com with ESMTPSA id b8-20020a63cf48000000b005c2967852c5sm712015pgj.30.2023.11.30.00.33.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 00:33:42 -0800 (PST)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Lee Jones <lee@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Benson Leung <bleung@chromium.org>,
	Guenter Roeck <groeck@chromium.org>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: cros-ec: Allow interrupts-extended property
Date: Thu, 30 Nov 2023 16:33:31 +0800
Message-ID: <20231130083333.932862-1-wenst@chromium.org>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"interrupts-extended" provides a more concise way of describing external
GPIO interrupts.

Allow using this instead of "interrupts" plus "interrupt-parent" for
cros-ec.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../devicetree/bindings/mfd/google,cros-ec.yaml          | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
index e1ca4f297c6d..e514eac9f4fc 100644
--- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
+++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
@@ -75,6 +75,9 @@ properties:
   interrupts:
     maxItems: 1
 
+  interrupts-extended:
+    maxItems: 1
+
   reset-gpios:
     maxItems: 1
 
@@ -199,9 +202,13 @@ allOf:
                 - google,cros-ec-rpmsg
                 - google,cros-ec-uart
     then:
+      oneOf:
+        - required:
+            - interrupts
+        - required:
+            - interrupts-extended
       required:
         - reg
-        - interrupts
 
   - if:
       properties:
-- 
2.43.0.rc2.451.g8631bc7472-goog


