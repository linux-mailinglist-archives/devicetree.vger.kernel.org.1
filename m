Return-Path: <devicetree+bounces-52866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A751D88ACF8
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E6E49C01C2E
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40D0816F0EA;
	Mon, 25 Mar 2024 11:13:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HvOo9NXz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 431D616F845
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:36:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711362981; cv=none; b=qZKi8nAj+uaz0U+aCRA0DgswkQsWIB8qsQp6CD4q1FQGZPtSnjua8M14lwmVfSdePwtGWLDFHGN8005q8QMZRhJBOMJbkMi/PXQPJipSjpAU4iqTOn7gtetMrA706yHyFty91J54Kt9LKkwOzl4qEgXUq6DlE9S6UeVczWZntZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711362981; c=relaxed/simple;
	bh=9EC2e/ZlUF4xrN0qiUj/v62fecqd52+/NMrB/JXkVlU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=g5zOQTd1CGa9EhGkjJMk+OxV98F4z7ojSvFHe9IDTmTM4iX5xDHYT/Yp/qWvzbtzp6FIOm4bPk3paiKVCuW7hQ0PTDztE284bWph9lVOTcGq++oIWpkCmwvRRDNWvGSWNbbOImuySTPPwLUOVCzqe+H5EkddPTm8Q8DJExZEO2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HvOo9NXz; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-56845954ffeso5676291a12.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711362977; x=1711967777; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MzqGDlYO53VtpNTfk9/2jQSIhaYzka5q6tmocMJNTUk=;
        b=HvOo9NXzgYYLU4muD87mLb5OZjw2bDcxshkSzHOoTdN2+IYUnPTsHW8Yw+ExVFZqx9
         tR7YA211D8Q1vzp6WXidX5iJWP8dPeCjPSKC7bOf1VzqlJLUMinQ6/3ts4Xcwdz6Jvsr
         ggNIXDhVT/zpc2BycfgmRDLK8Py4KrWIJMmb53noM3HCo0Eu9jbDbHOH6dm27oGJGbns
         MChXPinaiSO7PQlE4mwBDYDkX2sFrS7Z4lgiiuKs39uQIXvu/7phbIvAGTbvLfweZnZz
         bSU8pWsjEiCU5zxiVhl+MjqZpuLb9vMGtoHCk/YAWM6idnH7hgDJCE7dp0PwVacCchMn
         EQ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711362977; x=1711967777;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MzqGDlYO53VtpNTfk9/2jQSIhaYzka5q6tmocMJNTUk=;
        b=oo0KlPSAhgyrXUjBssmQySWa/O+hGV8nWhKxx8bGWGPWl6zsiuERl3gvxNm6WU4oaO
         i8E8jhWPjr+QGMUZH00g7dnzM50Yw6hN7HclX7FZfSGiruDLE8D0hSnak/ZTkUbESp5U
         H3sP2wMiyiD4XzqyYsGGoxjqlYWdajr3M22ovSio/f8BpBh7tlz7pNOw+iYQUwbMTA0S
         4NwVM/XOcf/53TEN+Dgg6ykgwiSnZd+qYMyur4MoN5Fma+CbeXoRR5r/3UDCCoxvNmHp
         5rlV25ImryUXxiSKfIYjTs8Nm27MuBSbhpYPHxxIbeAU51i5EDB8uw/BmZrjij9bK73S
         kP5A==
X-Forwarded-Encrypted: i=1; AJvYcCXp15n+Z0U7rs8kv2F0whiI+anwpju0Z066XikyUfCjxvGC0m6697VJPUCHSb4hBevKqe1Mg0/ZeB1u/5cpwTbVBtmSL4t2qUb8lQ==
X-Gm-Message-State: AOJu0YzU3MAGboo9n7bQj3yoxsqdWCACgpwVZ0rhFkYJUmHF9PG61KVW
	d+RUzrbrjexaMZ5M7omZmyask+C8Cmg6fHGcVMZpmjQwk4o15Ntm84dp4qSN2RQ=
X-Google-Smtp-Source: AGHT+IETJftRskEwl5RpRH8gvHqeBixLLouS91glYunfDQKwsjow2ORhmWr+ywgqdej1UpqdN9epjg==
X-Received: by 2002:a50:9e45:0:b0:56b:cf42:bcf with SMTP id z63-20020a509e45000000b0056bcf420bcfmr4231366ede.1.1711362977412;
        Mon, 25 Mar 2024 03:36:17 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id dm28-20020a05640222dc00b0056b7ed75a46sm2827319edb.27.2024.03.25.03.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:36:16 -0700 (PDT)
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
	Rob Herring <robh@kernel.org>
Subject: [RESEND PATCH v4 3/3] dt-bindings: display: novatek,nt36523: define ports
Date: Mon, 25 Mar 2024 11:36:11 +0100
Message-Id: <20240325103611.28240-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325103611.28240-1-krzysztof.kozlowski@linaro.org>
References: <20240325103611.28240-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The panel-common schema does not define what "ports" property is, so
bring the definition by referencing the panel-common-dual.yaml. Panels
can be single- or dual-link, depending on the compatible, thus add
if:then:else: block narrowing ports per variant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>

---

Changes since v3:
1. Rb tag

Changes since v2:
1. Use panel-common-dual.
2. Add if:then:else:

Changes since v1:
1. Rework to add ports to device schema, not to panel-common.
---
 .../display/panel/novatek,nt36523.yaml        | 25 +++++++++++++++----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
index 5f7e4c486094..bbeea8cfa5fb 100644
--- a/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
+++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36523.yaml
@@ -14,9 +14,6 @@ description: |
   panels. Support video mode panels from China Star Optoelectronics
   Technology (CSOT) and BOE Technology.
 
-allOf:
-  - $ref: panel-common.yaml#
-
 properties:
   compatible:
     oneOf:
@@ -38,7 +35,6 @@ properties:
     description: regulator that supplies the I/O voltage
 
   reg: true
-  ports: true
   rotation: true
   backlight: true
 
@@ -47,7 +43,26 @@ required:
   - reg
   - vddio-supply
   - reset-gpios
-  - ports
+
+allOf:
+  - $ref: panel-common-dual.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - novatek,nt36523w
+    then:
+      properties:
+        ports:
+          properties:
+            port@1: false
+    else:
+      properties:
+        port: false
+        ports:
+          required:
+            - port@1
 
 unevaluatedProperties: false
 
-- 
2.34.1


