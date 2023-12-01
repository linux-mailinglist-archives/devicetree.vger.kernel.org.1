Return-Path: <devicetree+bounces-20747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC59F800BC0
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 14:23:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7C65FB20EB5
	for <lists+devicetree@lfdr.de>; Fri,  1 Dec 2023 13:23:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CBE52D63F;
	Fri,  1 Dec 2023 13:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tF4YK+19"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2EA7E13E
	for <devicetree@vger.kernel.org>; Fri,  1 Dec 2023 05:23:11 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-50bc8b7d8ffso3083563e87.0
        for <devicetree@vger.kernel.org>; Fri, 01 Dec 2023 05:23:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701436989; x=1702041789; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Igs/1xxmdZDx69Ib2yYmnUGtoYW4fPjWxGWyWHxaXA0=;
        b=tF4YK+19sNHdrbQlvMNiLnJJ96TCijF3XhC0LfbAhyePm4mlLQvnUdsix4Dp5cqZ30
         lQFjBznd/gUyWVawbfDJDr8VZOkROyIgJ88G4zf6JdA6d+ntSP7bAk9Yj9CJ+TrKzlVx
         CI6x0I4JInIbG/iylKCnI1jhfL1lQZn3JzhbBHZH32KsZVYsX9SfEJIjlzBmrO1ogPlw
         DmBtcSTpXgEZQ4vcSqnCXsQKXW83EK218DpnYU26c7OrmQwkiGG+dXs0jUdOzA9Jx2AW
         qHwHAWCXcVGtd3QamKrervsl1c2+cjqAgOpvxcQ5Zp4epPSmjaZfIUFoGvuogvKUSJkI
         ubHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701436989; x=1702041789;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Igs/1xxmdZDx69Ib2yYmnUGtoYW4fPjWxGWyWHxaXA0=;
        b=mP0JXUNmniytcp6ZRJheTInFDjsxBLl/22jRh2bc5uWQVC2AeR497PM1LIMfWamMRe
         BuTs1U6rVXQSI3S/H5m88cbNDQhuWq36dWnp+eAe3eFqrhoNSCFVafld9I51KOqKeMdf
         5dS9YksReEKoH8KMA1oTxHNtmT4JB/kojb9rNKe8CTsFJGC6bw0VN9gDmbVYm5wdL+zr
         SeUkcG1BrLzRSN57U2WnJHhb0F1CbMMQoxtlDXZRGCoMs8R+Wlvb/9gzxpJEnNpCkCev
         BQ4sMeDxefDsG4udby9Y1OjKXOwK4kYehA07D1YNq/433o+CaYa0kCdvXb5NBgYGk2ov
         CsZQ==
X-Gm-Message-State: AOJu0YzOCxcafBxb3yq81kHm6x3u02RAtHS92ykTVhM+i7M1Upq55hLU
	qwrWemeyMZV5Z8XbTdHolhJdwg==
X-Google-Smtp-Source: AGHT+IGC7piV6frnlDTmJAucTJLcGnBXEN4l2bs6VOfOWHWe7GrruFEgN+yKEvb3SCIRrhNJkHYZog==
X-Received: by 2002:a05:6512:2027:b0:50b:c700:f976 with SMTP id s7-20020a056512202700b0050bc700f976mr529088lfs.0.1701436989392;
        Fri, 01 Dec 2023 05:23:09 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id r16-20020a05600c459000b00406408dc788sm9067720wmo.44.2023.12.01.05.23.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 05:23:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andrew Lunn <andrew@lunn.ch>,
	Gregory Clement <gregory.clement@bootlin.com>,
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lubomir Rintel <lkundrak@v3.sk>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: marvell: move MMP boards to common marvell directory
Date: Fri,  1 Dec 2023 14:23:06 +0100
Message-Id: <20231201132306.60753-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Marvell board bindings are spread over arm/marvell/ and arm/mrvl/
directories.  Move MMP board bindings from the latter to the former, to
keep all of them together.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/arm/{mrvl/mrvl.yaml => marvell/marvell,mmp.yaml} | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename Documentation/devicetree/bindings/arm/{mrvl/mrvl.yaml => marvell/marvell,mmp.yaml} (89%)

diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/marvell/marvell,mmp.yaml
similarity index 89%
rename from Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
rename to Documentation/devicetree/bindings/arm/marvell/marvell,mmp.yaml
index 4c43eaf3632e..92a667e27ec8 100644
--- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/marvell,mmp.yaml
@@ -1,10 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/mrvl/mrvl.yaml#
+$id: http://devicetree.org/schemas/arm/marvell/marvell,mmp.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Marvell Platforms
+title: Marvell MMP Platforms
 
 maintainers:
   - Lubomir Rintel <lkundrak@v3.sk>
-- 
2.34.1


