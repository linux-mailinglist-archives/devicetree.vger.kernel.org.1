Return-Path: <devicetree+bounces-52867-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2E088A3C8
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 15:12:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C88F12E0349
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:12:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30A47146D72;
	Mon, 25 Mar 2024 11:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oyyvSCR4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1307E16F82B
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:36:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711362979; cv=none; b=ivCiRMs0YYKHgyNJb/Ynyhpxc8TBTwbfxsaoDj3inz10BW9sP+t6N5HINfb69dFMmORH05WR0NWRlRX476a33fKwoAcKnT7WKehz1oSOaUJPirk5DC9rGJ7JTO6sFWqXufe9k76iU+pj0fLUbtd/Ti2iZ5QguU/NFMH5SrwhvjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711362979; c=relaxed/simple;
	bh=jqvU3Y2sBVXpLMRkDMJYk9Nm5Kg4ldvtAjFdlImDn3k=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SzSdEO9O5kJSK0qbNRrctsfbGS2Lxx6pl8GQe9b4RonC4KUAwbDs+b5lcWbOfJukD2RvUkLgpg9/3vaM99DOVwyds01uVCSsdAEvsG8/tvrXbef4P7CVQXtzj42MhRq0G5nsxkC7ovvBv0HmFqsOszEeyw4wf+hXVtlQLzqZtOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=oyyvSCR4; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-56c1a65275bso147147a12.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:36:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711362974; x=1711967774; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9sOPezhldmxSnr8OT7bAHjF4t98n/YFRx58g6GLuW1s=;
        b=oyyvSCR4onxuZ5WG3yDM3NZKytDqtmFRVbIBEHpGrgxbLccCUF+vAoFQgcKlehRMT4
         6Xx7dsnoSY6AjQhQ50nS7vG92eynCwz0r2yskCLi75Dh5gTQzUwZ/pcEZo/F+p7k20Qa
         PubTvMCGTobjcqOWjWNddyO7eP4dEcrnI+eNFKNyIixxxTxbXWAEFJ5XmpXRomDW80ol
         ubeLYROG/gf99pUY8diaxrn7uB/Klz4oxya5L2u91yh2FC1diujmh39SJS/Hb4mTN6m+
         BO1TIlHe8Yd7FjfDJjiu5X01bBaexh1T9Dt2U7OJcWxQ46uT/IHTZbXMcHQPr53D83Gn
         V6Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711362974; x=1711967774;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9sOPezhldmxSnr8OT7bAHjF4t98n/YFRx58g6GLuW1s=;
        b=ne/PGBJM8zxd6FiLWV3MmjS88PgZVfNW7rlj59R3HjpukZILBBNYFH0+ON7jPz8c5s
         ZcmnAuuwwNxVyWdYPpo/QsG/QEr8RYeSqD/y9B77zl2/Ci9q0cozYQ+x7QL0mOJu9Rup
         IiIDpLdPoUcgp0VLJs9/ZFAAGYU2DN1jfoqK8uRn9MAFSqsBIOrIPXbsLdXmnWXT5CBR
         MmfZDBNev9nyeEp1Qh0hk0TNFkVMHdneCiQVRC3in6jB2x0Eo9ciFJDwWDyuqQ2G3VJ5
         Ctmh/BdIGtTJh2TW8pJ2CccCcrJe7hviJxKrCOT7wp52Et7WABcm0zzXXAhpz4Ha1l5T
         4yJg==
X-Forwarded-Encrypted: i=1; AJvYcCUjrDnNdOhFLpwusRxOm8Hc6bPt8BV0P3Om6Tp0JdQchLAchXqpjj/A/WccEePw3BQe1dhuso791S4/L+AHMHyejwEByR27tv/m5w==
X-Gm-Message-State: AOJu0YyEvqE7Ye6BQ7dzOaZ0SVqmxj9ZjF3p724BrHuuBqNlE2Ha7+a6
	osYwR6D27o4CTRFkdTqAdNeWUGIqifiPhtlLUdL67cFHLk3dpJxAzGpuzLdkbBI=
X-Google-Smtp-Source: AGHT+IGxM8s228b1XWbE+SeGTrM1fDdyMya66yBrGFVuE7WBvD2ok2jlRcn2B1rUDQ1HBTx/Bvze3Q==
X-Received: by 2002:a50:9e44:0:b0:568:d19e:7ab0 with SMTP id z62-20020a509e44000000b00568d19e7ab0mr5606866ede.36.1711362974289;
        Mon, 25 Mar 2024 03:36:14 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id dm28-20020a05640222dc00b0056b7ed75a46sm2827319edb.27.2024.03.25.03.36.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:36:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianhua Lu <lujianhua000@gmail.com>,
	Del Regno <angelogioacchino.delregno@somainline.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v4 1/3] dt-bindings: display: panel: add common dual-link schema
Date: Mon, 25 Mar 2024 11:36:09 +0100
Message-Id: <20240325103611.28240-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add schema with common properties shared among dual-link panel ICs.

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes since v3:
1. Re-phrase description of binding and ports (Laurent)
v3: https://lore.kernel.org/all/20230823081500.84005-1-krzysztof.kozlowski@linaro.org/

Changes since v2:
1. New Patch
v2: https://lore.kernel.org/all/20230502120036.47165-1-krzysztof.kozlowski@linaro.org/
v1: https://lore.kernel.org/all/20230416153929.356330-1-krzysztof.kozlowski@linaro.org/
---
 .../display/panel/panel-common-dual.yaml      | 47 +++++++++++++++++++
 1 file changed, 47 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml b/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml
new file mode 100644
index 000000000000..cc7ea3c35c77
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/panel-common-dual.yaml
@@ -0,0 +1,47 @@
+# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/panel-common-dual.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Common Properties for Dual-Link Display Panels
+
+maintainers:
+  - Thierry Reding <thierry.reding@gmail.com>
+  - Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
+
+description:
+  Properties common for Panel IC supporting dual link panels.  Devices might
+  support also single link.
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  ports:
+    $ref: /schemas/graph.yaml#/properties/ports
+    additionalProperties: false
+
+    properties:
+      port@0:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: First link
+
+      port@1:
+        $ref: /schemas/graph.yaml#/properties/port
+        description: Second link
+
+      "#address-cells": true
+      "#size-cells": true
+
+    required:
+      - port@0
+
+# Single-panel setups are still allowed.
+oneOf:
+  - required:
+      - ports
+  - required:
+      - port
+
+additionalProperties: true
-- 
2.34.1


