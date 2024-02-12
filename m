Return-Path: <devicetree+bounces-40831-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8C185178E
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 16:05:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2FD8F1C21931
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 15:05:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E28E3C068;
	Mon, 12 Feb 2024 15:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X7bGCzN7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93B983BB35
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 15:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707750334; cv=none; b=oeH/7pb8TX0twovK4mBHKPFb9AaFd2g75D2hZHP4+EySKStr7AsW5NYGdmB5daiRBJibmlJg23yf1iRmot0ekiBSCuYGrF0RW2blXeRZi30XricNIE3UiDvY3diegOFVDSb7y1mZSbJEEBrD1MUZ7lG7XS4LHiSE4LlNiSC0Jxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707750334; c=relaxed/simple;
	bh=ijbj3IqQCfTZLzXbvUzzrbikJOV76OHvQ+d4I0u2caI=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=gpOPPSuD0BKzmwBGm4K3bD9Jq+avJyRIZ1uUuL852+ZBxod/UEJVbaCOcEeArC4LgrUIdqqX88U5EjyXzAu36nNeN8bTsDLH0mhBWlFWiuQJP7gcFlfeHEPuFqzLQqC6j97uAW5WVhcndi6q6vzgEMEq/HgmfDmXWav1H90Cs3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X7bGCzN7; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-41097f9a9a4so14243255e9.2
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 07:05:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707750331; x=1708355131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/yto7n5XdCQfe87Q/OSzP2SPFCIrT5OClSSJADOnSk4=;
        b=X7bGCzN7iijqwRpcJjrHNGyJ1JG7O/J0DsZ9QKkl4IpW2O1J8pluOUgiuuXvkRW7nP
         q9070D1CSxSXynjUPBe/5fbL971U86YM0A7xexjRA6Pnyh+AbsUeZgTaYiaSPJHtB1xl
         5wdOw3QqgLXrWiGgYKK9G57xKfVcf7DhT1cOytkQrf+4UVoAq5pew6+dZknUT0eUc4yO
         IBMvd7AcsMJqu0AoT6uuz4hoDs2qI8UAyqAJoFg9QUH4OfVLc8HbR5feQ+BzZg4x2zkH
         8/DQrG4BbFehME0lc1DPCZ+uKepViCn27FKrajuFVIGRP2zJOoWN2bdrA/09A29Gs6Vo
         vNvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707750331; x=1708355131;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/yto7n5XdCQfe87Q/OSzP2SPFCIrT5OClSSJADOnSk4=;
        b=lcllTkCSBIhca/7EyCPOAIWKUtTxAviyF6bGIl+kXOSiJ4wgI+LFnJHX+n0j3p+093
         xVJa0DY5rKWqxWbcxMMphP4EyoUqI93j2sySt2Hw4Ab70TaG0AHukyXsGUNcLt0R0DA4
         4JTDFOHuYcDXozD3Lu/jYyuvp4CVkIWdznCw3OHe2mt0mDS1ph+D1BHp673nHkYZOBab
         FcfKBbQNwkr+mJeq5ip8lyaY7zWDz4zYKRubt6XF+E4ioLwoIob8mW+u00+F22WOf2Az
         viH/f15juNWuDyKNEfj2Jac+Kxe1LW5XUuRXZEu2ITZCkT6I/3yKNqtEEyo1y094KpXG
         putA==
X-Gm-Message-State: AOJu0YwkvE9nT+Pcu/pTEq74UAguLXnGWSFde17Ga2Jln59DRCm8IAca
	8aNnlLbopokddKc76m6ATwdadEq8yW8etmsQkNy4tPPWNRawgVJkzLI+cwCJgLsLinzIOVP9W/O
	d
X-Google-Smtp-Source: AGHT+IGWTQcMuM+kZp1i1K9zuaYXN38OndozZ8aJHwDI1b3JMoDPaWKfRFB2bHd7EJRkSuVnC4L2wQ==
X-Received: by 2002:adf:e80e:0:b0:33b:378c:9dea with SMTP id o14-20020adfe80e000000b0033b378c9deamr5287875wrm.50.1707750330910;
        Mon, 12 Feb 2024 07:05:30 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOMj/xHz+fj7l3rVphEegTmCpYFN/7NQbVncR7eVCv9Bv+bdvAbVP778oaBLcKn2ueNH/pbpfvSHIXcV4W2DpKYAw5MNNrGN7Y5gY6uGOxf85ByzbKG1Dx1WBuCOy+5Nu7tp/edj/fIYqEsPa8eTHa3fcsLfxYVt0SnsrOaw==
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id bu13-20020a056000078d00b0033b6d5a1244sm6964223wrb.12.2024.02.12.07.05.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 07:05:30 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] docs: dt: writing-schema: explain additional/unevaluatedProperties
Date: Mon, 12 Feb 2024 16:05:23 +0100
Message-Id: <20240212150524.81819-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240212150524.81819-1-krzysztof.kozlowski@linaro.org>
References: <20240212150524.81819-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add to the list of schema contents expected keywords with their
explanation: additionalProperties and unevaluatedProperties.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/writing-schema.rst    | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-schema.rst b/Documentation/devicetree/bindings/writing-schema.rst
index 2e5575e6a4e5..a35859f3be00 100644
--- a/Documentation/devicetree/bindings/writing-schema.rst
+++ b/Documentation/devicetree/bindings/writing-schema.rst
@@ -71,6 +71,26 @@ required
   A list of DT properties from the 'properties' section that
   must always be present.
 
+additionalProperties / unevaluatedProperties
+  Keywords controlling how schema will validate properties not matched by this
+  schema's 'properties' or 'patternProperties'. Each schema is supposed to
+  have exactly one of these keywords in top-level part, so either
+  additionalProperties or unevaluatedProperties. Nested nodes, so properties
+  being objects, are supposed to have one as well.
+
+  * additionalProperties: false
+      Most common case, where no additional schema is referenced or if this
+      binding allows subset of properties from other referenced schemas.
+
+  * unevaluatedProperties: false
+      Used when this binding references other schema whose all properties
+      should be allowed.
+
+  * additionalProperties: true
+      Rare case, used for schemas implementing common set of properties. Such
+      schemas are supposed to be referenced by other schemas, which then use
+      'unevaluatedProperties: false'.  Typically bus or common-part schemas.
+
 examples
   Optional. A list of one or more DTS hunks implementing the
   binding. Note: YAML doesn't allow leading tabs, so spaces must be used instead.
-- 
2.34.1


