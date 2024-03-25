Return-Path: <devicetree+bounces-52871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59FFC88ACFF
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:06:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E13AEB323F1
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 14:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE62F18C782;
	Mon, 25 Mar 2024 11:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hbh/xgSn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD01518C9D6
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:48:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711363723; cv=none; b=otKWb+E59DSopEUW3+w8qi5yR/diG/Q62W4kbA20AeJGdRprQpLnDNdr9axlAlIKRrIg8hZJfcFNGFtLsBmv26aRd3Sfz6M6l7S6lirXWoz5xPYdW1m2LKnaXwxh2SQ+jP3YbSXjRIzBD7Fizw8ZZYm1lGBvhZ1YjT11on/Q1O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711363723; c=relaxed/simple;
	bh=2ymQHq92dFt5ftZpOQDXAFXnvGbioEFB3yZ5dxZ8PX4=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=kjBQdqfJFLMH7YXWFO+pYEFt2oXUZDepFiwOWXZhJCN66bR/I+qIKqmn2YCEJsJVlAf5158Z+uydLd6GTU9TEM5bTnb1FjYfKNF3D/s3Vtq9OizgPjbUowxYyAZ55zPfDumy2/plcTxiaXqbDB/SSrrC8bBv9wbHY3plgeDN8CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hbh/xgSn; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-513d717269fso5225641e87.0
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 03:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711363719; x=1711968519; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ipt8Nni/JGxfVH6xjAHK3ADWRzeEAUH7NmYP0XN00dA=;
        b=Hbh/xgSnldbXoXCPSuyqkZ9srFfEFplg9HpwNkajsfrCkjMljhP79sc/Nsw6mnQP//
         K7fmbMuROB3AUuc/cIgIX7XpCimLVxcYvCpmQQQHqqpAtK6cx746hX7OAXcXlzcEUF8i
         JO/7M6qZBkYyvz2VQ9LTPfKNzEgY/Z1RV1PvcDvdZk2wC1dM/iFIxK8V8q7QVlbC7Umj
         Mg5HircVmTP8JAmftqAdg4llSex0FByyBRlPQ3SzPU05dXPpdZh7v7VvX5P3nnt+8Nux
         EBvEerIO1lj0VHWe/jsMcQc4YSEqvTev3jT530H9y9bMpGHV01gE9areVnAp7Nc0ZJN2
         3a4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711363719; x=1711968519;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ipt8Nni/JGxfVH6xjAHK3ADWRzeEAUH7NmYP0XN00dA=;
        b=xPdswJuSDpTockQhEf9n5KwieLN4y152tVfmWCJMKUgZ8k3z4f7H8x6gb/Lz3XI9k0
         acVqbik/1daSO44D8EIzs3WdzBIV3plZRJVpbsYkB5+V6CCBMEZQTyWUj5volLTg1uTp
         Tk4EP6G6ms66cGoDiNpFwOu+7P4xl0ON3ZFEQZl0+vv8+VDKRtEdPQtRTHYsCxZEZxQb
         zVu/ZoLTVhCG9yJ1IOwO5UucZTiH4NLcqi25mIpa6rll3khLSram64ULQ6q79Kzd5s0C
         v7rjUwwu0ofVx2GxRPzzJXgXzzvIiMal64jgmX288fLpW4U7e619a4eX9ep2DqvGD5f8
         lY7w==
X-Forwarded-Encrypted: i=1; AJvYcCVEVi7vI1RMWtg0XV2SS6sYcQtlDDYQKsilr0LR0f8r2mYb9NPKSk+s8OCKL/aYdSCuFem9qWRYqOE/Vz3PfoZt+D4+IhJ49whkqw==
X-Gm-Message-State: AOJu0YzD+DtfzZ2giA2zooxWyIVtu2XT7sg3FQUVz7qjRbjlxFxlPOLk
	0dNDnN4o2qKdhX+KR5ETU+FVTQnPTOBTGohN+BSWUsDZ97EtcKhXIuOyMD7pzAY=
X-Google-Smtp-Source: AGHT+IHQzqJeE/IoQzxHE7jCIJWL1TTDdd8bA1fBeZ5XLg80Uh92cwV9vAQl/+qFaFpTQrZejIynHw==
X-Received: by 2002:ac2:5dfc:0:b0:515:ab85:34c2 with SMTP id z28-20020ac25dfc000000b00515ab8534c2mr1795658lfq.29.1711363718839;
        Mon, 25 Mar 2024 03:48:38 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id df15-20020a05640230af00b00568d6a20717sm2859339edb.52.2024.03.25.03.48.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 03:48:38 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Li Yang <leoyang.li@nxp.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	linuxppc-dev@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] dt-bindings: timer: narrow regex for unit address to hex numbers
Date: Mon, 25 Mar 2024 11:48:33 +0100
Message-Id: <20240325104833.33372-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325104833.33372-1-krzysztof.kozlowski@linaro.org>
References: <20240325104833.33372-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Regular expression used to match the unit address part should not allow
non-hex numbers.  Expect at least one hex digit as well.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

v2: Change '*' into '+' in the regex.
---
 .../devicetree/bindings/timer/arm,arch_timer_mmio.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
index 7a4a6ab85970..ab8f28993139 100644
--- a/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
+++ b/Documentation/devicetree/bindings/timer/arm,arch_timer_mmio.yaml
@@ -60,7 +60,7 @@ properties:
       be implemented in an always-on power domain."
 
 patternProperties:
-  '^frame@[0-9a-z]*$':
+  '^frame@[0-9a-f]+$':
     type: object
     additionalProperties: false
     description: A timer node has up to 8 frame sub-nodes, each with the following properties.
-- 
2.34.1


