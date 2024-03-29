Return-Path: <devicetree+bounces-54688-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EE48923A4
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 19:54:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14C831C221E6
	for <lists+devicetree@lfdr.de>; Fri, 29 Mar 2024 18:54:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63B21131E59;
	Fri, 29 Mar 2024 18:54:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KrJpwYPI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69FD7BB0F
	for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 18:54:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711738488; cv=none; b=W+AaOPVdBnU2tKYlyW1MsJWQwuXxngzQkfj+LI+bCRNleBdm2nJltnJfxzneWSr9ZwOX1Ol8wCyPcme3NhKrjWhleCW+i+jzY0ijn8dYY8Of0IJnCbej10zofdkmfRwxa2p+uzqsGM26VJZLkUk+d7HRAEeUNoin7UNikomsaZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711738488; c=relaxed/simple;
	bh=3QA/wELDjfOly3SoK3JbqflTPPsTAzGm3BpN54bG+T0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=u+t9y/JiVyoDwSJ6rRVDlirI/jq+1r+wgVquFsQPt208D0HsXhoyEunB95bB6WeerdP+EImgOQLsjnJvkqPcryTQHkaCyh5qwiTUjenxRoD4xUB+M9OG/dyuO1yqwjQlV0faGod3l0y6qZj/l6ZLx+RSa8cprgSjLepvMwZQfbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KrJpwYPI; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a46f0da1b4fso287507166b.2
        for <devicetree@vger.kernel.org>; Fri, 29 Mar 2024 11:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711738483; x=1712343283; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JEoJt6PTt2qpbe2pE1qKEsmwN83YlKQDSAv770KyGdc=;
        b=KrJpwYPIkSvRT7ZiiVNn/Z8evIwEpZSuDwLQn0USXZLCeDReT7Si7JCYnbFczliUlm
         8Njgx60v6XGHxdxPUz0vsQGobCB0mNqZGtTMmC6GwV9ukzSE4j7h7plYjbYc78HeTEI9
         WE4O+7CGZrx4pMQgIqnzk9mRZw1SPA+ZRizu99L79ucXu7BSXLJ7J48GUc0UQzSuNdJU
         zZ4+D0sAu3QyRA2fgPZrWEPQxJlYW74eXIaIiWxc7X0wgM0lCRGeI05ruxJlBXFSdE4e
         gbd1vWGBzt9XCPxW3qVoB9nZcPgKiQUWGyT5A3pDSYAAJOPtkm4L0KduYY3/B35K56Zz
         yYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711738483; x=1712343283;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JEoJt6PTt2qpbe2pE1qKEsmwN83YlKQDSAv770KyGdc=;
        b=pA1gypMobnKGaD5YAuYnFMRQ02XAn0He2nuwbh0TVFNq+YcwC6W7H1PApWjtWBJ6RK
         ++G784XXBDweK3uMlae+MrXboFImrgTvuRJMUujRbdEUp5Gjk/C39uPmhKxQ7Fsa8bVT
         sCOU3HHdj5rqK4FvdZQbUt9OxXpCy6XnXqDM5HazIRs6WykfbTJC+a6UG/3ElBolSpRH
         5nOvuGqew92P11A93IJE9f7AJKddNZCFlmzTxxTtUTb9WpvY1tYjPdVp6VBnbcG6rgZv
         r0plL87Phm7PpwMevf6PrmPcBTzDG+mJB49OqzzSWZDsgoLefStv9Fe6N1aDMscn3LPX
         /BBg==
X-Forwarded-Encrypted: i=1; AJvYcCVJptTBFsoAoB3InaSf4UOcRbZbSRuLH7IBAjeVScfDqa+j5Yj/ydCRCTUz7wCwEOgz/xOozwtkgofDRifMB7gJaopJKIm7E2sXtQ==
X-Gm-Message-State: AOJu0YxDMuo/ude+Zxcnzxi2FHRGWYO9lQupiX6O4v3iXaMOHgJwTzIF
	rmk53bVUUImkg4tlFzVSnDc0tD24WTfKegMS+bgULJPbyVULX+VGU0mJKYtTHeU=
X-Google-Smtp-Source: AGHT+IHiQbZaByTqx1a8yLXtEDMIaraAkghg/jn8TQ1vw3pG3HRmO5i2EtQWeRCNZLTt6veW2dJqgw==
X-Received: by 2002:a17:906:b288:b0:a4e:4441:1024 with SMTP id q8-20020a170906b28800b00a4e44411024mr370498ejz.68.1711738482866;
        Fri, 29 Mar 2024 11:54:42 -0700 (PDT)
Received: from [127.0.1.1] ([79.114.172.194])
        by smtp.gmail.com with ESMTPSA id gl20-20020a170906e0d400b00a46c39e6a47sm2235618ejb.148.2024.03.29.11.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Mar 2024 11:54:42 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v7 0/6] spmi: pmic-arb: Add support for multiple buses
Date: Fri, 29 Mar 2024 20:54:17 +0200
Message-Id: <20240329-spmi-multi-master-support-v7-0-7b902824246c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFkOB2YC/43OwWrDMAwG4FcpPs9Dluw46WnvMXaQHbs1tE2w0
 7BR8u5ze8oIhF0Ev+D/pIcoIadQxPHwEDnMqaThVoN9Owh/5tspyNTXLBBQA4KVZbwmeb1fpjq
 5TCHLch/HIU+yJWQL2lnbOVH7Yw4xfb/sz6+az6lMQ/55nZrVc/sfdVYSpA/GRgLlbew/LunGe
 Xgf8kk82RlXlKI9CqWSjpwCJGw6aDYUrSm9R1H9ChwHCBF05Lih9IpC2KN0pXrfKvKtbR23G8q
 sKbVHmUoRGuNZK2JwG6pZU7hHNZVynnTgzjSq5z/Usiy/44Uk4ToCAAA=
To: Stephen Boyd <sboyd@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
 Johan Hovold <johan@kernel.org>, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3899; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=3QA/wELDjfOly3SoK3JbqflTPPsTAzGm3BpN54bG+T0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBmBw5lpJ0vA3Lm4pFAQDl5UcaM29FU6Ch6r0Qnj
 Sv/XR5jmjGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZgcOZQAKCRAbX0TJAJUV
 VnurEACg1vlmC9fBDZAwTHc4srOY5w9xZz0XOUprEVRhM0fxGhv05xLgLZN3ORmuoQAJ7MnX6WQ
 KFGlIjO6AL5PRe9HqwRK+zk5xomLrdxxgBTB4g2v8zreSdHikzd3MxYxiRea87m0jE6+C6cow38
 HKAH5nqmoZjn0/Fm30BXE+b19E3q7xXvtMU95De/QlW774pHjV6RLpvX+xR57/U7E9ycbR2ky/c
 LMrLyFVzWE1IkzjigaQ6+jogfFniCdLjgAeX6q3tI3Ech+zS0+iWOAvozP31gZ1SiDfBqHsVBwK
 8QCCGF5UZlBnMZp440OU2A1A6DEaH4a62TPiE2+4J4FmaJC2W/LXDEC5jVOiBbqyVreq1Fj3bIW
 ox6g6eW383GY10eVwFytxdF+RGwATmig8yqEO6sSYu2yoddYwsRD2WOWrlPWcJ+DuQvBhZGXVS+
 rsxROBVZarCwsK6FMVG44zldrB/sQfebZhpQLh2ClaAm9udC6fAPw7cGRKOaQsbsY1XGpxHURgO
 jZ/yA5k9PYuqpMWiLauFxJRmCmJxLquIb33TzUxrtUuTMwUMIBcioz/hWuUN12m2Rm9EjQ9olsP
 rfyEeG4tfUe8uta0/r2PvL8RLmeVDSuPDFVX1V2to5XRebN9pvxfXAZkFcrplqWeOcXpybor0fh
 5/chTNvcThq7a0g==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This RFC prepares for and adds support for 2 buses, which is supported
in HW starting with version 7. Until now, none of the currently
supported platforms in upstream have used the second bus. The X1E80100
platform, on the other hand, needs the second bus for the USB2.0 to work
as there are 3 SMB2360 PMICs which provide eUSB2 repeaters and they are
all found on the second bus.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v7:
- This time really collected Krzysztof's R-b tags
- Added Neil's R-b tag to the 4th patch
- Split the multi bus patch into two separate patches, one for adding
  the bus object and one for the secondary bus, as per Neil's suggestion
- Fixed regression for single bus platforms triggered by casting to
  pmic_arb instead of bus in pmic_arb_non_data_cmd_v1
- Fixed bus object allocation by using ctrl drvdata instead
- Prefixed the spmi node property in x1e80100 schema with '^'
- Fixed struct and function documentation warnings reported by Neil

Changes in v6 (resend):
- Collected Krzysztof's R-b tags
- Link to v6: https://lore.kernel.org/r/20240222-spmi-multi-master-support-v6-0-bc34ea9561da@linaro.org

Changes in v6:
- Changed the compatible to platform specific (X1E80100) along with the
  schema. Fixed the spmi buses unit addresses and added the empty ranges
  property. Added missing properties to the spmi buses and the
  "unevaluatedProperties: false".
- Deprecated the "qcom,bus-id" in the legacy schema.
- Changed the driver to check for legacy compatible first
- Link to v5: https://lore.kernel.org/r/20240221-spmi-multi-master-support-v5-0-3255ca413a0b@linaro.org

Changes in v5:
- Dropped the RFC as there aren't any concerns about the approach anymore
- Dropped the unused dev and res variables from pmic_arb_get_obsrvr_chnls_v2
- Link to v4: https://lore.kernel.org/r/20240220-spmi-multi-master-support-v4-0-dc813c878ba8@linaro.org

Changes in v4:
- Fixed comment above pmic_arb_init_apid_v7 by dropping the extra "bus" word
- Swicthed to devm_platform_ioremap_resource_byname for obsrvr and chnls.
  The core remains with platform_get_resource_byname as we need the core size.
- Dropped comment from probe related to the need of platform_get_resource_byname
  as it not true anymore.
- Dropped the qcom,bus-id optional property.
- Link to v3: https://lore.kernel.org/r/20240214-spmi-multi-master-support-v3-0-0bae0ef04faf@linaro.org

Changes in v3:
- Split the change into 3 separate patches. First 2 patches are moving
  apid init and core resources into version specific ops. Third one is
  adding the support for 2 buses and dedicated compatible.
- Added separate bindings patch
- Link to v2: https://lore.kernel.org/r/20240213-spmi-multi-master-support-v2-1-b3b102326906@linaro.org

Changes in v2:
- Reworked it so that it registers a spmi controller for each bus
  rather than relying on the generic framework to pass on the bus
  (master) id.
- Link to v1: https://lore.kernel.org/r/20240207-spmi-multi-master-support-v1-0-ce57f301c7fd@linaro.org

---
Abel Vesa (6):
      dt-bindings: spmi: Add X1E80100 SPMI PMIC ARB schema
      dt-bindings: spmi: Deprecate qcom,bus-id
      spmi: pmic-arb: Make the APID init a version operation
      spmi: pmic-arb: Make core resources acquiring a version operation
      spmi: pmic-arb: Register controller for bus instead of arbiter
      spmi: pmic-arb: Add multi bus support

 .../bindings/spmi/qcom,spmi-pmic-arb.yaml          |   1 +
 .../bindings/spmi/qcom,x1e80100-spmi-pmic-arb.yaml | 136 +++
 drivers/spmi/spmi-pmic-arb.c                       | 953 +++++++++++++--------
 3 files changed, 723 insertions(+), 367 deletions(-)
---
base-commit: a6bd6c9333397f5a0e2667d4d82fef8c970108f2
change-id: 20240207-spmi-multi-master-support-832a704b779b

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


