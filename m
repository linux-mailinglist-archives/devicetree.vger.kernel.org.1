Return-Path: <devicetree+bounces-14738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 182B47E65E7
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 10:00:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8CA95B20EBE
	for <lists+devicetree@lfdr.de>; Thu,  9 Nov 2023 09:00:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185DF10973;
	Thu,  9 Nov 2023 09:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TG8TngJn"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92CE510A19
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 09:00:21 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A089EA4
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 01:00:20 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso4145785e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 01:00:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699520418; x=1700125218; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JrO2KXQhu+sFkGuvNniLZEdI1TmrpVNM0kvtI/PbIVE=;
        b=TG8TngJnGVnarMf04DF3sJ3NgCA1Q7A4414CsBzOYv+OaJWeX0zpX2uH3NCAqOOjaT
         MQP8wqy2rvnHOeXnyRrZewipaRKiMdXzhJsSAatIiU6LP7f84eXXfI2c9CDGZqmZYHAl
         0TQ7bSQlTUoTCr0EQm+QZM9MbReGY7MmZm773uxGF+GpQ+cQWawBsyFy098Jvspo871i
         qZV8qEiSlF3iJfyJ2/n0XfsiD3b+F59JdPgpVLVdiplC0OveMO2C9vcBA0Fgld8v5Tlp
         Jues2/jcKj0Rj1k/JMWqK23vnI19gOHHrCkyKHN1BKnkhsbvwLmZOvZx4+yGFNh7UZyp
         3aRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699520418; x=1700125218;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JrO2KXQhu+sFkGuvNniLZEdI1TmrpVNM0kvtI/PbIVE=;
        b=ZWqFbRcyQcBD49uypM8dLXE7a5+CJER/Nva9iN6qBZ+wcfPsqcN7q6E+g9ZpTQeUeN
         v7gdoM5JXlK09WqjC4Xer0Xf7CaPBuB+U3bJuQWaxSEFuc5bpfuh1WOUQk/sT4oT3y5o
         TVg3jug44c2oX/YvSd2REI6Yf3cCIoTGhYStqF/XUFQrQiDgx53FhzLoQJB2yMleOGuI
         8eXd+Dv01pF9OwrSM7dApNA/NG3xO6fY8VsA5ye9MGsJfjq9TgK6wHWqsi1eYRhkJb+/
         7nlgOzsmRxLgZwePYPYW2iD9BJOZMYkEErHex6HeNELTQvtIhQbZYLGaZCoey2z7kpmN
         Zv8A==
X-Gm-Message-State: AOJu0YzdNAcBvvJD+8tv7BXsPIc+xvzDi0blM/LMB1uiEhvrD44s2zAS
	FASaDGhMmaImFxha9oQw+1zV+g==
X-Google-Smtp-Source: AGHT+IExaL1sx8nDn+rJD854g00atvCrBi89tjscYYozw6EEibCZul8Cp/47U7ttMGU8Qu5+Bh9FLQ==
X-Received: by 2002:a05:600c:4753:b0:409:7d0:d20b with SMTP id w19-20020a05600c475300b0040907d0d20bmr3758579wmo.24.1699520417969;
        Thu, 09 Nov 2023 01:00:17 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ay36-20020a05600c1e2400b0040472ad9a3dsm1428484wmb.14.2023.11.09.01.00.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 01:00:17 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 09 Nov 2023 10:00:05 +0100
Subject: [PATCH v8 04/12] dt-bindings: phy: amlogic,g12a-mipi-dphy-analog:
 drop unneeded reg property and example
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-4-81e4aeeda193@linaro.org>
References: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org>
In-Reply-To: <20231109-amlogic-v6-4-upstream-dsi-ccf-vim3-v8-0-81e4aeeda193@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1151;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=CRQwljGCl55mlBg//zbF+X1DQ9wf5iznuCDzWEp0CuQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlTJ+XLEMPnR15x7zvUzrwjt+1YsganDZBalmGC+RA
 Tf2EoGGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZUyflwAKCRB33NvayMhJ0UnsEA
 C3ptUF1pzarK27aLq3ZZOcI7vsOeQNmB2GL83mvBZGwxGnMdToCwxC2k/nnjtzd7yBcEdsLBvp/iHP
 f83oTz7PiPxdPKaVjuMFnThXlUjx/hYnp0ZhSXKveK4kYH7bYh/6380ZVHgn2JluJHnj0tgnQyaWyI
 PvL1KM75WnOWcOJuqhbT+HuMkrFo8e5WIavxSUI8hA/QFRf8S6FsfF59OdUmjgtMPaGkyPdWKBeLKi
 TXrScBS0e67A54pXlGh+LKFGgExlH96OyDpz7ObKrkEoEgCtA9ppZ8GGhLfbPmL+i0W0hgKuwJVB9r
 wCabgDTqfkkdOYY9Sgga4keMXAlfnqZcAohZ8JfVnBvF1GVG9phzg82WZlXAbPB0ksXDl4q4vopKO7
 kBZRhAjbL+Rr4a73Ys1b9t8/O6rpuqRf/r6q4m2fXHUvnE2fZnfyxOgNg0OUHaY4T1mjyipGR3v76s
 6fomEBEZz/gxC3+KVN0LnzaMfB/zWaxEqmNJx6JjUmf387UFUFYO41i4iJy9Us1dj5p4vF0m/CmSpL
 tXrYMtAEd4C5w7PTsXBIezuSTipdZJvew2jYQUP6ylkVQtwgwRyHF3J4X5CuimCRQhf4JqVwXG2ve+
 CWmv0WlfK/uc3UYlVV1+Z4cT52PPrDmjgofyS+UPpJDYJUNYIZedj5m/lK1A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Now this bindings is referred from amlogic,meson-gx-hhi-sysctrl.yaml and is
documented as a subnode of a simple-mfd, drop the invalid reg property.

Also drop the unnecessary example, the top level bindings example should
be enough.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 .../bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml          | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
index c8c83acfb871..81c2654b7e57 100644
--- a/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
+++ b/Documentation/devicetree/bindings/phy/amlogic,g12a-mipi-dphy-analog.yaml
@@ -16,20 +16,8 @@ properties:
   "#phy-cells":
     const: 0
 
-  reg:
-    maxItems: 1
-
 required:
   - compatible
-  - reg
   - "#phy-cells"
 
 additionalProperties: false
-
-examples:
-  - |
-    phy@0 {
-          compatible = "amlogic,g12a-mipi-dphy-analog";
-          reg = <0x0 0xc>;
-          #phy-cells = <0>;
-    };

-- 
2.34.1


