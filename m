Return-Path: <devicetree+bounces-3058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 680CE7AD3AF
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:49:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 10B342818BB
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 08:48:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CFA7134C2;
	Mon, 25 Sep 2023 08:48:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD9812B8B
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 08:48:54 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 75853DF;
	Mon, 25 Sep 2023 01:48:52 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-59c0b9ad491so69179667b3.1;
        Mon, 25 Sep 2023 01:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695631731; x=1696236531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zb+624UUBKDcwZQ/7XWg8oIcy8SQSu42zOyMRW5Nuus=;
        b=hE7jb3K8YR+HPu2kT+YNTkssl4j0ZW9H2Xstkz1fyFGOSfX+Zn3o4sGKbb0orMdWVD
         TrU8qy10fgsCqJIEZm42AwRlMYJ5x9sjns0wGepEZHctsFatrpDfDOaj6NnWSoe3hBBL
         M4NmGD9LjkdOYTX4qvxha4iF6Z3zU1SKC35pIh2tFv6Tm4C5y8yYuYUBML4ZvmyeGtR/
         r2gWj/TNnPr6kJZYiGxEXT4uEyp7dRhTBTRNrkYn1+HP1uGhFb3tZeKg32zv1tB4ML2L
         5SoUW0PF39+c5inJJ0rkp0lEnWBk84ZDM/QTqyLmP/s8yX6TfIgrf4rUqf4jtmrsuWfB
         PsgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695631731; x=1696236531;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zb+624UUBKDcwZQ/7XWg8oIcy8SQSu42zOyMRW5Nuus=;
        b=tyNopvKbJ2IM/jJTaR+we46NPqfsQGKJCPQ6FR9sY3bIKLqAwpkeGYDgvPJxFIAuEg
         zBxtTulLKuPV6M2Rz2GveOThCgbW0WadcufWhEwPjKhToHuNdjJu8UfIAE8wunQYei1Q
         q9E2tGeKnRUmIKycaxyCpeHy24kgiVcMY0UgHN+X+EtK7Seg9Wx9AQ3ztfGYyZnP+HsS
         1EHw4ZpGaTrj2uwufoGnHrqehm56cq6oIG9LVC1bqDi4q5J7XpEgFb6VbhddExsirsCm
         R26aB+KlzAX/o6IG4ICX8otQBF6BxaJKFYJaWBVf8K1mFiNbw1tC+yBRSCIa7IN3w2kl
         D9Bg==
X-Gm-Message-State: AOJu0YyFoGmeUO3MTa7GeiICtE2WsdZMDVxl04vI0QX5+SsfYJOpU8fg
	d7iAxP/AWu6tvaji7h3FLq25FeR1B7E=
X-Google-Smtp-Source: AGHT+IFU29zrG3SjBujwd+KAgtwsYpBqn5wmDwpSdgFLT+FMFp+ImF92sjUZ9nT0gsa8EHM8i5MfcQ==
X-Received: by 2002:a5b:54b:0:b0:d06:f99e:6345 with SMTP id r11-20020a5b054b000000b00d06f99e6345mr4627203ybp.22.1695631731355;
        Mon, 25 Sep 2023 01:48:51 -0700 (PDT)
Received: from octofox.hsd1.ca.comcast.net ([2601:646:a201:19d0:bc97:e554:1bd8:be33])
        by smtp.gmail.com with ESMTPSA id t63-20020a638142000000b0055c178a8df1sm7406376pgd.94.2023.09.25.01.48.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 01:48:50 -0700 (PDT)
From: Max Filippov <jcmvbkbc@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Max Filippov <jcmvbkbc@gmail.com>
Subject: [PATCH v3 4/5] dt-bindings: serial: document esp32s3-acm
Date: Mon, 25 Sep 2023 01:48:24 -0700
Message-Id: <20230925084825.4160708-5-jcmvbkbc@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230925084825.4160708-1-jcmvbkbc@gmail.com>
References: <20230925084825.4160708-1-jcmvbkbc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	FROM_LOCAL_NOVOWEL,HK_RANDOM_ENVFROM,HK_RANDOM_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add documentation for the ESP32S3 USB CDC-ACM controller.

Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>

---
Changes v2->v3:
- add a reference to serial.yaml

Changes v1->v2:
- fix description
- rename node in the example
- fix example indentation

 .../bindings/serial/esp,esp32-acm.yaml        | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml

diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
new file mode 100644
index 000000000000..e385ca9d9e2b
--- /dev/null
+++ b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/serial/esp,esp32-acm.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: ESP32S3 ACM controller
+
+maintainers:
+  - Max Filippov <jcmvbkbc@gmail.com>
+
+description:
+  Fixed function USB CDC-ACM device controller of the Espressif ESP32S3 SoC.
+
+allOf:
+  - $ref: serial.yaml#
+
+properties:
+  compatible:
+    const: esp,esp32s3-acm
+
+  reg:
+    maxItems: 1
+
+  interrupts:
+    maxItems: 1
+
+required:
+  - compatible
+  - reg
+  - interrupts
+
+additionalProperties: false
+
+examples:
+  - |
+    serial@60038000 {
+      compatible = "esp,esp32s3-acm";
+      reg = <0x60038000 0x1000>;
+      interrupts = <96 3 0>;
+    };
-- 
2.30.2


