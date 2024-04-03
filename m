Return-Path: <devicetree+bounces-55734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A2767896323
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 05:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19B5D1F2351B
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 03:44:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 117B23FBA0;
	Wed,  3 Apr 2024 03:44:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ed5zLmT0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB1379F2
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 03:43:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712115841; cv=none; b=p4r1B+uGCIQXm6N56doX6g71+juWuTf+tEJlsHlbqLfaBBfibRPyWOWphbouGRXXm3kpovDOZ2Dp5TsUCcnrrqqtc0N3oZdu4IzbDY8hqAqGwnG8DtJmc5SqPYYqWOD4MruA7eNMXxov86wN5dhY/BAwM7l++9i92rOFQECNYVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712115841; c=relaxed/simple;
	bh=rSrTFe62I9QM/1EhNPjLmXRF/kaFAIciPwvaSniEBGQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=XTGGTfCMHExTBdJg/cyTOC1W8v3XuNNhpaIyH0XsNNoV0MufnUyLxEs49Yy1aCXHyuMO1FSp+gHfZB3O4AwKGIuEbG+3YhXFMZ4ObwZZ11rCZ7LaVyKU0MYoN30nfd817T7mmBdqiPy0h4xwzjfTCsuKsBPuiWCq/e6ixkXNAOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ed5zLmT0; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-515ac73c516so471940e87.0
        for <devicetree@vger.kernel.org>; Tue, 02 Apr 2024 20:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712115837; x=1712720637; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XS0Lxu+/FVxjACw8JTLACxUWz4uzZ8rlXWaKKTuNDJE=;
        b=Ed5zLmT0t7vr3aQVd1/cThzSG2DJ1Jlpoch1q3SqFNM097NosUAHpbVU4AuKeqJAF5
         tytI4w8Fch3RNYb3wlldb61TLIOiWMLcano9DwG3tBRuh9SSqXkQcTPKHGt92U+pjNxn
         ftW965xTJLKCK0ik241qyd2QHchllEUNv/TZSPq4bmloBS4NoeNl14HKaUZ+2YnYbbjr
         rhbJukgvpnBdvLO8BlPW1nK8s54hThn+5O0axM7bBcrgSjqamxEFmiFknBDemVXzetYJ
         2amtgu0TJ7zxPPlor6DuXXYffsD6boCqUhEJna0QI1ruEV/r7n89oZr+H9GjO10gjkvk
         H4XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712115837; x=1712720637;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XS0Lxu+/FVxjACw8JTLACxUWz4uzZ8rlXWaKKTuNDJE=;
        b=dOvqK38FCcsVJ1FMT00EeXUh2/p4qgR/9JQwMwguneTKCENTmp8yIfiKwWC0vT8+JN
         pJhzR6Yr7fagzhl29rFYdDeox5b+OxOviN6GKMV8n6FFiHc48Grt8oXdkoSTMk74b2I7
         gurMr2sI9by24U1YGiz0jOLQIAlVcktXu/BkVUxA10PmVAPlT2DBHfBx3E7tTe22exWO
         wh6tXSroc7oARM8PFzh4n4mXHVZiEZ3AGIiw1PoHuHFSyg1B0hCz2mldqCJjMmaU5FP7
         oH9HJXao6LjSJk/PcnEqdp6j1fVwXvsC4+oLs/drEFsnzO6UZAg9RFMNBSqCwRMeYkUw
         9Qmg==
X-Forwarded-Encrypted: i=1; AJvYcCV5qgGR5pJdcQeKFGhJ1X24ljksZO9kzNq6Xn26012/75zmqapN4HwB2TmIddfQxUKy4clu8wZwu6PnWzO4yJLudcjvnmbM+mPbug==
X-Gm-Message-State: AOJu0YyyQQIGHGpuTzMTWwUOb9RD+Z4LNbwNDsyXxrr11+584Vp6Dxom
	L+uVBAYLHK9PgjVlok43jcOo4/jQTaktzD6YAFoziIpPihYWC7cTW4Oe5W1U8Ro=
X-Google-Smtp-Source: AGHT+IF9aIbDAcgO+2JkWLWVyE3Aa+9e7603ybY0IFrdKHtsB5NLBU4SZqZufrVWel33AjNRcwKlYw==
X-Received: by 2002:a05:6512:3d92:b0:515:c0cb:3ca2 with SMTP id k18-20020a0565123d9200b00515c0cb3ca2mr306804lfv.16.1712115837026;
        Tue, 02 Apr 2024 20:43:57 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id br31-20020a056512401f00b00516a69b1dcbsm940985lfb.78.2024.04.02.20.43.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Apr 2024 20:43:56 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v4 0/4] drm/panel: add support for LG SW43408 panel
Date: Wed, 03 Apr 2024 06:43:54 +0300
Message-Id: <20240403-lg-sw43408-panel-v4-0-a386d5d3b0c6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHrQDGYC/4XNQQ7CIBCF4as0rMUwDFjqynsYF7SFlqShDRjUN
 L27tBtjNLr8XzLfzCSa4Ewkx2ImwSQX3ehziF1Bml77zlDX5iacccEQGR06Gm8CBVN00t4MtJa
 SWwHQSDQkn03BWHffyPMld+/idQyP7UOCdf2BJaCMWikVs01leatPg/M6jPsxdGTVEv8n8CzwC
 rVUJZQ1qg8BX4Jg/IuAWQAhLJQaQMvDm7AsyxMCbYOBNQEAAA==
To: Sumit Semwal <sumit.semwal@linaro.org>, 
 Caleb Connolly <caleb.connolly@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Vinod Koul <vkoul@kernel.org>, Caleb Connolly <caleb@connolly.tech>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Marijn Suijten <marijn.suijten@somainline.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2546;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=rSrTFe62I9QM/1EhNPjLmXRF/kaFAIciPwvaSniEBGQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmDNB7zhW4VN0Mt3Ykhe6mHxo5gmToVRRcty6L/
 96qwd8KEIOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZgzQewAKCRCLPIo+Aiko
 1dVYCAClZrnyDMoReMxsjxTCAr/g/ubBgEsq1nJgZqpasnETIH5l5OYfw0UyhSXvud3I3ZcTSJh
 DbErxRU911vMObQNS6sOz+RFRKMlHsRlrqRC7N4qgsz1I66c9qYWy3Ptqzl0iuZtbw1zoDmkPG7
 cKivUpmPkgC/VEpCnwZ7/3kJB7zPSV85vrpdlksU/uoXvf2V43wpW2RSq9rDZA0v30hHzZpnRsU
 eYTJJk7ZNoHPyJIjXeJJIp+mKGhsWwSdT1s7M9HI8m+u8uqVRkN3v2ABOB3MIkqyeOXi1VlbKN7
 V+qSIsXcZSIzug52vGfCWnQR+VeXJLLKz+n0zQo67XWCrRcx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The LG SW43408 panel is used on Google Pixel3 devices. For a long time
we could not submit the driver, as the panel was not coming up from the
reset. The panel seems to be picky about some of the delays during init
and it also uses non-standard payload for MIPI_DSI_COMPRESSION_MODE.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v4:
- Fix order of mipi_dsi_compression_mode_ext() args (Marijn)
- Expanded kerneldoc coments for this function (Marijn)
- And added arguments validation (Marijn)
- In the panel driver send the COMPRESSION_MODE in LPM mode like it was
  done originally
- Expanded the .clock maths to show the reason behind the value (Marijn)
- Moved the mode out of the match data (Marijn)
- Link to v3: https://lore.kernel.org/r/20240402-lg-sw43408-panel-v3-0-144f17a11a56@linaro.org

Changes in v3:
- Fixed return type of MIPI DSC functions
- Replaced mipi_dsi_compression_mode_raw() with
  mipi_dsi_compression_mode_ext() (Marijn)
- Link to v2: https://lore.kernel.org/r/20240330-lg-sw43408-panel-v2-0-293a58717b38@linaro.org

Changes in v2:
- Removed formatting char from schema (Krzysztof)
- Moved additionalProperties after required (Krzysztof)
- Added example to the schema (Krzysztof)
- Removed obsolete comment in the commit message (Marijn)
- Moved DSC params to the panel struct (Marijn)
- Changed dsc_en to be an array (Marijn)
- Added comment regiarding slice_width and slice_count (Marijn)
- Link to v1: https://lore.kernel.org/r/20240330-lg-sw43408-panel-v1-0-f5580fc9f2da@linaro.org

---
Dmitry Baryshkov (2):
      drm/mipi-dsi: use correct return type for the DSC functions
      drm/mipi-dsi: add mipi_dsi_compression_mode_ext()

Sumit Semwal (2):
      dt-bindings: panel: Add LG SW43408 MIPI-DSI panel
      drm: panel: Add LG sw43408 panel driver

 .../bindings/display/panel/lg,sw43408.yaml         |  62 ++++
 MAINTAINERS                                        |   8 +
 drivers/gpu/drm/drm_mipi_dsi.c                     |  45 ++-
 drivers/gpu/drm/panel/Kconfig                      |  11 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-lg-sw43408.c           | 323 +++++++++++++++++++++
 include/drm/drm_mipi_dsi.h                         |  15 +-
 7 files changed, 453 insertions(+), 12 deletions(-)
---
base-commit: a6bd6c9333397f5a0e2667d4d82fef8c970108f2
change-id: 20240330-lg-sw43408-panel-b552f411c53e

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


