Return-Path: <devicetree+bounces-30519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA038281D9
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 09:36:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DC1E1F220A0
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 08:36:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8616A2EB1A;
	Tue,  9 Jan 2024 08:25:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jne6Vmfs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E387324B44
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 08:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cd2f472665so28309351fa.2
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 00:25:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704788727; x=1705393527; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bF0e2DswE8UKYjFIoLXFl1yZqY+5X+76YD12d4yPwPI=;
        b=jne6VmfsWnglhZ5hZ/AtzN71O5CFi51tqwOts0LgrWcxhj/8Aq4tHuwIjPQEEMfF9k
         jkf3HdDJdS4DNQcByP3yF7Xcd1/jO9Dhrl2U5EH5llr2E5sLf9U6SY7iUt6tlBbYNLFq
         xjseQ52UXLjrmy/dxdaNI+gwDbxGporC+hHrIXJzOcVxeORXCGFssybElXlOBv+gWJHW
         Y6lskTYWIy0JAxcQjrDHdZlal7Sis/Q8TD80DAapNA7zdsU8cJ2b9gg2NXe41YNSyDYS
         wSdK1RCoRJL1g2lY+LitfSBMSaDNSfHUGY3E3SnZWn3WoH5eZ20sYDdORhlGMLm4X0+M
         3vVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704788727; x=1705393527;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bF0e2DswE8UKYjFIoLXFl1yZqY+5X+76YD12d4yPwPI=;
        b=Zpg8/D1Aq/pzH2mIzFfnk6DPazS3Y0Mz7WGPYT6fFD2DHCoWaVVm2fxnYaMDJ8toQj
         lZ6jup7fHx/nWv7ROSqiMJMlMMdfQLH6mwZaaPjXNrM+xrDwiZ3nLkeS7iIDlMJ1kNK2
         pm+AH2UkAwttrKtZZAWkZZFFJ9YXZcE0f/AogcoLg1b2oC5b6WHZy7XjXcOD9uOnGX+v
         4ord9/KWL2CigHAX1K0+VkBtguuIrEpphFKJ7NbPN4YcFoEY9TwkoeEjxUke1jdoDUvQ
         kjx1/R5qYOejyIhGQGXmOgPuucOjRwOnF3meIt/STpzDcKE0j0WYxM7jC3/QipgbLu+9
         mNXw==
X-Gm-Message-State: AOJu0YxugdfhDRcSeq5Dwyi1tUaYxgxT0cAkRFBrnS7ZwDxESh3YEX22
	HMT4Hv//gEuRszVSnK+6VwYtT+CzYJ1i2g==
X-Google-Smtp-Source: AGHT+IHce9pwoMQCmYuFyy27eF86az3UFNmvuySoMfUb1ulxBX9WdKecXWR4AOlTd2FgpgkGxKdHhQ==
X-Received: by 2002:a19:f507:0:b0:50e:7c70:fdf0 with SMTP id j7-20020a19f507000000b0050e7c70fdf0mr1673226lfb.85.1704788727037;
        Tue, 09 Jan 2024 00:25:27 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.112])
        by smtp.gmail.com with ESMTPSA id f2-20020a056402150200b0055732bd1fc0sm683275edw.82.2024.01.09.00.25.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 00:25:26 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Peter Rosin <peda@axentia.se>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: mux: restrict node name suffixes
Date: Tue,  9 Jan 2024 09:25:11 +0100
Message-Id: <20240109082511.15278-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Make the pattern matching node names a bit stricter to improve DTS
consistency.  The pattern is restricted to -N suffixes to decimal
numbers.

Suggested-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Some time ago I did such change treewide, but mux was left out:
https://lore.kernel.org/all/20230530144851.92059-1-krzysztof.kozlowski@linaro.org/
---
 Documentation/devicetree/bindings/mux/mux-controller.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mux/mux-controller.yaml b/Documentation/devicetree/bindings/mux/mux-controller.yaml
index 8b943082a241..571ad9e13ecf 100644
--- a/Documentation/devicetree/bindings/mux/mux-controller.yaml
+++ b/Documentation/devicetree/bindings/mux/mux-controller.yaml
@@ -74,7 +74,7 @@ select:
 
 properties:
   $nodename:
-    pattern: '^mux-controller(@.*|-[0-9a-f]+)?$'
+    pattern: '^mux-controller(@.*|-([0-9]|[1-9][0-9]+))?$'
 
   '#mux-control-cells':
     enum: [ 0, 1 ]
-- 
2.34.1


