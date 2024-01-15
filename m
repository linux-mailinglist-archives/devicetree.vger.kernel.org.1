Return-Path: <devicetree+bounces-32125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8896C82DF39
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 19:21:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 991BA1C21633
	for <lists+devicetree@lfdr.de>; Mon, 15 Jan 2024 18:21:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D921718EA1;
	Mon, 15 Jan 2024 18:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p9jv8g1c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D2418ECF
	for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 18:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55965fd00aeso881875a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jan 2024 10:20:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705342822; x=1705947622; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vfqDNdJii/JwczmpCcKHtey65uDHFKVGPKm3GAmlP5s=;
        b=p9jv8g1cY2LjoakEladZbsX9fkCxeG5doIoKFumXvdqSw0PSDoZ7QYPqj60kHivXR5
         N2VUgmBC96BRun5Xzn8wexnnUvBtxvqVLlJzJ3k1+s+bQbZbAyJ5i2H1DXkZDFMmyOVQ
         XRJ8kPuUd7QbBbx3XMLnyi7pogmMh/TUNJGbK2AfLmWc2mCeVUYT9xea5N3t8Te3hW7X
         eIOh6hQ4VPeiIVOX66JcVODOWrL+6MrL7NWzPICsjmXjLCPe2dfMYobJ7sy7XNnzC4ok
         opDnlSk1syUBbyY95YEmvyweTn7LxM93MkUqWLvUIsqZdJfJQ8gDXCwKcFcjHydyiYal
         cgBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705342822; x=1705947622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vfqDNdJii/JwczmpCcKHtey65uDHFKVGPKm3GAmlP5s=;
        b=J9Izss5L320DQ7LwT161wKsJgoJRklx1V+GMyKTaEwFAVAhcvkqKQYPjQ0vR2PExjK
         WOdSoipBpT5AhJ9yZw6Fj6+l1+W5BRaAqrM8Xgix0L/vmGH5Osx67jsdJRsreUobTDV9
         wol3qWCLxEq1xtzvU6GSVQmnZmle2yPdLrcEDHtPILxnn5jkI4slLUu0jwBebBOGNJty
         ylUiJ3Mr6bV7AfjLeM23s1xZFzrZTt8idEpKvpebMNwjvpFEZmt/x8k7lFj1KsDmvQek
         c9fnkZ77XF8tOcTNyP/ksRnJ+8jffxPmb5wjKNm7Z35+1AekBmT3G9OJ0Lar5lTHspIX
         XKyw==
X-Gm-Message-State: AOJu0YwT3I63eXIUSHiZKD9uqdfNk08pxGogOaiSqIoJ/3hwOs0kw18n
	xqZbRWnOTH3fGCXMvn6hHCTiFW9xtD9eng==
X-Google-Smtp-Source: AGHT+IH4iiT1305wjSx0qw7+JZyagxUkxX2NGFDlrUVaieyWX/cQtizfU3/Ag65NHQO/QGBhgiuxeA==
X-Received: by 2002:aa7:d80d:0:b0:559:565a:8fb0 with SMTP id v13-20020aa7d80d000000b00559565a8fb0mr751869edq.84.1705342822468;
        Mon, 15 Jan 2024 10:20:22 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id l26-20020aa7c3da000000b005546ba152f4sm5761795edr.71.2024.01.15.10.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jan 2024 10:20:21 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Herve Codina <herve.codina@bootlin.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	alsa-devel@alsa-project.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: Do not override firmware-name $ref
Date: Mon, 15 Jan 2024 19:20:17 +0100
Message-Id: <20240115182017.1610055-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dtschema package defines firmware-name as string-array, so individual
bindings should not make it a string but instead just narrow the number
of expected firmware file names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/sound/fsl,easrc.yaml        | 4 ++--
 Documentation/devicetree/bindings/sound/infineon,peb2466.yaml | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
index a680d7aff237..0782f3f9947f 100644
--- a/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
+++ b/Documentation/devicetree/bindings/sound/fsl,easrc.yaml
@@ -51,8 +51,8 @@ properties:
       - const: ctx3_tx
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
-    const: imx/easrc/easrc-imx8mn.bin
+    items:
+      - const: imx/easrc/easrc-imx8mn.bin
     description: The coefficient table for the filters
 
   fsl,asrc-rate:
diff --git a/Documentation/devicetree/bindings/sound/infineon,peb2466.yaml b/Documentation/devicetree/bindings/sound/infineon,peb2466.yaml
index 66993d378aaf..5e11ce2c13ac 100644
--- a/Documentation/devicetree/bindings/sound/infineon,peb2466.yaml
+++ b/Documentation/devicetree/bindings/sound/infineon,peb2466.yaml
@@ -51,7 +51,7 @@ properties:
     maxItems: 1
 
   firmware-name:
-    $ref: /schemas/types.yaml#/definitions/string
+    maxItems: 1
     description:
       Filters coefficients file to load. If this property is omitted, internal
       filters are disabled.
-- 
2.34.1


