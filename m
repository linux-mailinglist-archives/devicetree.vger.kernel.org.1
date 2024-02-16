Return-Path: <devicetree+bounces-42406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CF78A857716
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 08:56:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E5361C214BB
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 07:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85AF017BD4;
	Fri, 16 Feb 2024 07:55:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pz82xz6F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3B117591
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 07:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708070156; cv=none; b=ttIT/yjOcjJhVanId7hx2bkaAP/uwn5+JOFW/3U7Gji/lO5jK5W/yVIBLj4hvlpLhfSiKkzxwFLuGmofMj6wWd1BEo8FVNOOLReCtGjUHAaeQ5a2HU4gXOQqWlGKq60K48v/F0jmpv5BHVke6w/xKqRKbCJtfPt8CQ6USZNrS8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708070156; c=relaxed/simple;
	bh=ZVzrVy1/dsPXa4PwcU5c5D0CsNAw12gX/R30zzhgXlM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UqGV2juFW+2QxgqlWKmlOE1tSYH07imaBVAKLaoHg1gylm8Ip8yL2lpERreSGwvfZSqSak4R6fL6qPZPCobhRCep6plLsgk50wAxSGP2mDmS7BCVH2VyXF5c90I21JOxOU4JyJOA8pbVVCqRxmyXHReD0VvKMWbg+Ymzs3gEROY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pz82xz6F; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-563c595f968so1465816a12.0
        for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 23:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708070153; x=1708674953; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4woXQ1xn8Jnb6pq3jxwkjqjmVUPaNj/HjXqJl0aJYaQ=;
        b=Pz82xz6Fy/Y5PzrJYFRkE7HQfEf0n7K2NiwL9Gp+ko9HTzmqxUDyiG5mz/btoGn4kS
         kl7tiuRGLjHXQDOTWCSsCZkdPhZGtN8j61lJURpKHjiv5q9WL0BBYsxa8oPGdEQkEIMS
         O2K0CZnPfmB8jPqsOEt1DbvQ/mf482gwdjjgwVJnlMG0yaL413oCiDLHhcX+eaOogF/i
         RMTRZg506cgTAh+No1C1KBT8BzziPFgJHyiLxPCOoDv3NxPSh2sKKzWmvwCLIWPDwWH8
         D8yEagpQc0lEFY67pjRO7BX6xrz/4CmL6hZCjB5oLcboxLOUzHsscL7nQGY8Wx0rirKV
         Z/9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708070153; x=1708674953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4woXQ1xn8Jnb6pq3jxwkjqjmVUPaNj/HjXqJl0aJYaQ=;
        b=GNkIWiryRHj52MkYIoIo/l6RKTS34DXjDdkZMCPt9Kwye7d3JUfDHXRqII0lyBnWX0
         wgCWcsZ/aWyH17WK1texrfSsTXu7ENnXXmpgnLbqQ85FZD9kvbyxeCo4bt6w4SLrp8vQ
         7qJJoF8Jo/kNxNKUJd2AebcSShkD/tYcKfKFmXRx58/Tfop2TLFrpiyMr5GKgwwlkZ+P
         u1EaWfWYNE+Gx5xxhvRXadrPkNL9lyCDGkImZ2IvUUkZtO/E4aFZTVNsC7daRItpKnNl
         5h7BZNe5ZFEyCID03D4kWb3iLYBVLUmSseeVjWKQuhH2zgxUWJlwNcWNHQI8D8BljJ9k
         8Qog==
X-Forwarded-Encrypted: i=1; AJvYcCVKK+gs0cOcRa0+t8zjur3uYaDgRubnbL19yKneLv+lYz28N3JbBD7Aj9G3bf6uUPqBaz9HedV5cOSIXTb4Ez/OUI7FjsxZgWCayA==
X-Gm-Message-State: AOJu0YxS96feQQD3d7Wrc7qyYqnrc5uQ+lDHOZbBFZaIzoKHKEK/pCQr
	0BlRAClsoDqruX/BW6IAQb7ifIrX6a9pnWxeMeme58SQj4cpcoEN/y6nzy4z0gw=
X-Google-Smtp-Source: AGHT+IFVGyleBT79P5or8proe5kFI+ATkmSb4+QBORhiqzXCsxM2pApjEt6JV6ZQp6Hf1YfvWRRFwA==
X-Received: by 2002:a17:906:e28f:b0:a3d:8a86:a8fd with SMTP id gg15-20020a170906e28f00b00a3d8a86a8fdmr328626ejb.30.1708070153082;
        Thu, 15 Feb 2024 23:55:53 -0800 (PST)
Received: from [127.0.1.1] ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id f23-20020a170906561700b00a3d828c54f1sm1300750ejq.135.2024.02.15.23.55.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Feb 2024 23:55:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 16 Feb 2024 08:55:47 +0100
Subject: [PATCH 2/2] dt-bindings: hwmon: ti,ina2xx: use common hwmon schema
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240216-dt-bindings-hwmon-common-v1-2-3c2c24ff1260@linaro.org>
References: <20240216-dt-bindings-hwmon-common-v1-0-3c2c24ff1260@linaro.org>
In-Reply-To: <20240216-dt-bindings-hwmon-common-v1-0-3c2c24ff1260@linaro.org>
To: Jean Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=982;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=ZVzrVy1/dsPXa4PwcU5c5D0CsNAw12gX/R30zzhgXlM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBlzxUE4J4/L7ZafIL3OBHnnbATlGtubCb7t6a0z
 CXacpF2haaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZc8VBAAKCRDBN2bmhouD
 18+zD/sHILZlIo2qTx/705U2YYDxyQVUEUdiSlYq1isRtDYIkEnPxDlSpWLvWA3lNhXrAOOCEUX
 Cw96TmyKiVq0Dui8aUwB5CFiYD3MBJjsO1h3w7kyb6ViswrguzxQKGFGgmgk/82OYCnoepwT3Cw
 /gbeQTuyHpllntn1nz1MDIUptm6KNvbv1oFNyyM75ECAKyLSo34t1lTmrLWY7bv1ReibVvF+d1h
 MMwZqku8OI0RCYvQmFqHR1bFSDx9Nrp502uRSrl80uFygayzg/e5qD6z2AqQqEgiiuxKbaj+5cD
 m/VFbTwZaaWwrPuA4seTAJVx9VeJM/E6sA/WLCSzijLrLY0W4kuV3Jof8iAd4v9CyEfopzeasFJ
 vBhJfSTCszXejzRquRM89XgB+kWTaRiQIB3Eqmv8E3J3wc0Ng+P1WOcRGQHHqmcJltA7/M38oq6
 TLP+m+joukkIxDuQk4uRgqLYN6hAGzH9eZ2VPtGdnPR2tACqPApj/0kF6ed3WC1JHWPHmOHwnM3
 Nc5dC2nD1kYLu7GYCqf7YXJQBS/kxEdThVt3n/pkAJcGwnt74FNB0YuD0heogg2eAiidawfEE2k
 ZSsRubA2fN3natXHMU9NKiOGsZulVpx3ulxQYXkKGzjmR6412jx49hna4B5Z3yQ1kvlAlzbvNPs
 8gAg+ved86Oh1Wg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Reference common hwmon schema which brings the "label" property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
index a099bb71415e..df86c2c92037 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ina2xx.yaml
@@ -36,9 +36,6 @@ properties:
   "#io-channel-cells":
     const: 1
 
-  label:
-    description: A descriptive name for this device.
-
   shunt-resistor:
     description:
       Shunt resistor value in micro-Ohm.
@@ -73,7 +70,10 @@ required:
   - compatible
   - reg
 
-additionalProperties: false
+allOf:
+  - $ref: hwmon-common.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.34.1


