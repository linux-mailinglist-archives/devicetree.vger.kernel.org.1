Return-Path: <devicetree+bounces-22475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 931E38079D7
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 21:54:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D0AD282464
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 20:54:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 606DE43172;
	Wed,  6 Dec 2023 20:54:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=melexis.com header.i=@melexis.com header.b="M5bk+VJF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DC521A5
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 12:54:19 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-a1915034144so22723166b.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 12:54:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google; t=1701896058; x=1702500858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSietH4+/fXGllVTIYLzbC7uzQTL9XZQ4bRl86qjl6k=;
        b=M5bk+VJFOOeXn6+taFdpYztLh2ejZ+V7XjEvxosuKXlaP9J2irDDgwSYPf3drbN93K
         1cMmR+JR6tl9B/7URAkIEBW2p9aSbB9unekHzOoKZYTWR/peU4QsEJdlLbvUj9VpCGdE
         wdjhfQpmEygnThPYpr1KGxVjqk7sAfC8KQS1jq1uIIep3CHsT6ABTACrbZYWKIugjgQc
         0U9f2NMxfGS7ndjFIDrSpQvmB2gE8+j9as1bqY70oMql2cuIYIAPrQB8YZe8msi4KWcX
         jYHKt0ysdRf+OFUCmCNjUWnBJEiuv+2knAd7jFSCEpPED3rYZacKozRDB9nyzI9W/ivw
         RSKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701896058; x=1702500858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JSietH4+/fXGllVTIYLzbC7uzQTL9XZQ4bRl86qjl6k=;
        b=Wm8Z44UQ3zoE+QrXWKaviB5W8vzFOHqGSukAzZFSvbHRvy96PN7XCMt6opSE0u4xwp
         N9z9xaZ75RDEqR1h0fYBXRXp8cSKY76d6XKbedsV03REZOyHZR/uWFnaxoDjTgvLN4+5
         P8Ob+GMRes5uJ4A/TNbJHj+4NWUOHzFXb6h0FoEdUewlE61JRJcp5xVx5alWDtRcF515
         Gwaigz8bue6y8+sidg8NNBlJS21f4dlIicWpnyQjtDMSBNezQP1B/qXuFxLPEDFy3T96
         EfKOg643MWHcF113TiMXqOeG9hxFPlh1G7DMaGgIan9YKCU3OFLBdri8sIYOQMbWI9ZT
         vCuQ==
X-Gm-Message-State: AOJu0YzRBHyxsEHV/GqOOPMiZTqLyKuNycmzCIdenxI2amimSwCBoqhB
	ikRnkxUUJJcKKLyplju12icOfA==
X-Google-Smtp-Source: AGHT+IEmX1xbn70oD4xbfUR8BF5o3lXgqB/N53BpWMa4EO/sJCLDWKoz+SdXWAAPtv2TVkbSzcqXrw==
X-Received: by 2002:a17:906:3c43:b0:a08:f837:7802 with SMTP id i3-20020a1709063c4300b00a08f8377802mr897228ejg.14.1701896057918;
        Wed, 06 Dec 2023 12:54:17 -0800 (PST)
Received: from localhost.localdomain (d54c3956f.access.telenet.be. [84.195.149.111])
        by smtp.gmail.com with ESMTPSA id y21-20020a1709063a9500b009fd585a2155sm414181ejd.0.2023.12.06.12.54.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 12:54:17 -0800 (PST)
From: Crt Mori <cmo@melexis.com>
To: Jonathan Cameron <jic23@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Crt Mori <cmo@melexis.com>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/2] dt-bindings: iio: temperature: add MLX90635 device
Date: Wed,  6 Dec 2023 21:49:42 +0100
Message-Id: <0313c3b9f7490c32891627feb5ef35d5e5d9aae9.1701872051.git.cmo@melexis.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <cover.1701872051.git.cmo@melexis.com>
References: <cover.1701872051.git.cmo@melexis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for MLX90635 Infra Red contactless temperature
sensor.

Signed-off-by: Crt Mori <cmo@melexis.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../iio/temperature/melexis,mlx90632.yaml     | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90632.yaml b/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90632.yaml
index 4a55e7f25ae7..03bb5d4fa8b5 100644
--- a/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90632.yaml
+++ b/Documentation/devicetree/bindings/iio/temperature/melexis,mlx90632.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/iio/temperature/melexis,mlx90632.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Melexis MLX90632 contactless Infra Red temperature sensor
+title: Melexis MLX90632 and MLX90635 contactless Infra Red temperature sensor
 
 maintainers:
   - Crt Mori <cmo@melexis.com>
@@ -27,9 +27,24 @@ description: |
   Since measured object emissivity effects Infra Red energy emitted,
   emissivity should be set before requesting the object temperature.
 
+  https://www.melexis.com/en/documents/documentation/datasheets/datasheet-mlx90635
+
+  MLX90635 is most suitable for consumer applications where
+  measured object temperature is in range between -20 to 100 degrees
+  Celsius with relative error of measurement 2 degree Celsius in
+  object temperature range for industrial applications, while just 0.2
+  degree Celsius for human body measurement applications. Since it can
+  operate and measure ambient temperature in range of -20 to 85 degrees
+  Celsius it is suitable also for outdoor use.
+
+  Since measured object emissivity effects Infra Red energy emitted,
+  emissivity should be set before requesting the object temperature.
+
 properties:
   compatible:
-    const: melexis,mlx90632
+    enum:
+      - melexis,mlx90632
+      - melexis,mlx90635
 
   reg:
     maxItems: 1
-- 
2.40.1


