Return-Path: <devicetree+bounces-18489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A330E7F6E83
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:41:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 595EC281910
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 08:41:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 771693D67;
	Fri, 24 Nov 2023 08:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FtwETeUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CC9E10E0
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:32 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-5094cb3a036so2170781e87.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 00:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700815291; x=1701420091; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=szbyE8B5HmerWTS9QCGM8GNA9TtBAZ10zn0t2kxJOBs=;
        b=FtwETeUXOrVFirW9bCw1CRmYiTQX1v3Ojm4sXm94hT2cOGhOY+8Q8ogPBp896bwbh0
         r2lOHm0WxIHPR0GNHjSg3chitfyQbzdofBhVGrU0eNFaEzwQYqYZ3gVtjh3lC7iAOqLm
         W1qTCFqMN4+IQ+XC9eAZA2fpgPdiyOt98fj2bCBwfvl9fKEvRD7RuZW3ePcjUwF9CHtn
         sIaFFov8JAUvvID8mGjHS0vQWzBXKpYQCraDnaXgQZZBlTYNsugxrW65Nb5W/uHXcSWB
         Mbjcm87jwsH373EH8fu/Klw+A2rDgmSOsGLl60V/zGfj7tNfqK60pGxdWD+ohhRMGj7Q
         Ki4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700815291; x=1701420091;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=szbyE8B5HmerWTS9QCGM8GNA9TtBAZ10zn0t2kxJOBs=;
        b=Q8MK/0cvdxd37z5qtjXLv2V8idKpv4UScZi+8QrI5lQFyd1MZZN/pAVR90zWUoZZpo
         HU4SXmbvyX3E7pXE7PSQen/MCobs7myGqoTElvOe0+kL3ZYukuOXcCYHhA43Xjvra0yh
         YoMRnZo2W0jgSZ94PyvXz5h06QIT2Keupg24/UTJLPqHCbnQvCoN6LTzxT2HSg28loCB
         9JSP0Z3hYoqbfaqLXJ8CrpnCquAAFm0BcV6yvA6WzLES99NrvpQq7ouSnn/6bVTMmJbg
         HNDZi+LqmMjQO+BSVGRlvBV28M1K4S6JKm70yHUIhcR1thXpMombBb8qk0RFcmX/kYWf
         KVFQ==
X-Gm-Message-State: AOJu0Yx1cClsKXTCPFzPjKov2Us7wrfO7CzyYSCEhepg6XhMcSh0iutu
	YHxqOKYCZbSgBNSF9jYW7ARPQnsQoA2xBnQtNJJgo84v
X-Google-Smtp-Source: AGHT+IF8wC4ZbNV+iRqsapT1X1L6KArgTHWCtJUniE+JBLrichukip7x/MNUSFgjU69zSXGhwIYP9Q==
X-Received: by 2002:a05:6512:2026:b0:509:4916:8b6f with SMTP id s6-20020a056512202600b0050949168b6fmr1088541lfs.37.1700815290893;
        Fri, 24 Nov 2023 00:41:30 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id c11-20020a5d4f0b000000b00332e67d6564sm2534562wru.67.2023.11.24.00.41.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 00:41:30 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 24 Nov 2023 09:41:16 +0100
Subject: [PATCH v9 05/12] dt-bindings: arm: amlogic: Document the MNT
 Reform 2 CM4 adapter with a BPI-CM4 Module
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-5-95256ed139e6@linaro.org>
References: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
In-Reply-To: <20231124-amlogic-v6-4-upstream-dsi-ccf-vim3-v9-0-95256ed139e6@linaro.org>
To: Jerome Brunet <jbrunet@baylibre.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Jagan Teki <jagan@amarulasolutions.com>, 
 Nicolas Belin <nbelin@baylibre.com>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Remi Pommarel <repk@triplefau.lt>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-phy@lists.infradead.org, Rob Herring <robh@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=886;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=dsHeljQP++qeke1zASpQ3YPnuH6eGTAu4r6z8mvmrbM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlYGGv3r2urKVQCnv1GMSXAcUHF2wbzkyg1d49b8yI
 ncf0ylyJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZWBhrwAKCRB33NvayMhJ0VlcD/
 4y1L+GLLwogkpqrR1xVtyGU3WNktnmQpmbhriYFVjc8mfDK6pfyBAzykOOFUyjcoCgKWxV1oJTuxod
 n2fNJepwZ3udvXq/phRAoM+JgB5VwPl02d66w6yh2mRT0xsuthdMpZ6GVLhbcP++Rm6wgxEcX9p/cl
 HRUp2NPx6OZGj49CiOwd4JQIe2nejmgGDUlTtfXBx0UrpPjamVyrNvMBGIIdLVH9mDQNONWT1rQM/L
 kSTuU57hLl926SrMVJ4DP3qFu/14HhsgOLiIPMgZjSVyiPWu3h2FGpFHOsXi8u4wUdJO1o/HOUy40V
 Mic7Q/lZFY39/kVxbZ4ICyg8QT9p5CzDwYXuLTYST5SCoBr7yLEBEraTke0toEJOpzx3meHPsl3ghp
 9BOlz3g/+AVzEyoz3yjDqnifU8Z4ZCG/pVJ3VAH88P7pXL8LkGyqfrzZSnWg9tiDwRC9P34pFG0CPs
 vZQ+OaIsqPpSEN6et5R/tN/luhPgfUia87H5KA3QYFyemEKu037HhZcdomNkQnxU+uBNy377thMRdD
 BxLMWftl1gzwElohUV/HuoVhcZbLRQy3xkepA0QjbquW5+cKI4Jog/261FPx6rw2ZHOLpxSyh2BoTG
 AEQOfpbdxt+xlZIRW3QRefScRXlSnVfYvXehYP9LUfxILN5HJYzvwxQy0xeA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The MNT Reform 2 CM4 adapter can be populated with any Raspberry Pi CM4
compatible module such as a BPI-CM4 Module, document that.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index caab7ceeda45..2154a4614fda 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -164,6 +164,7 @@ properties:
         items:
           - enum:
               - bananapi,bpi-cm4io
+              - mntre,reform2-cm4
           - const: bananapi,bpi-cm4
           - const: amlogic,a311d
           - const: amlogic,g12b

-- 
2.34.1


