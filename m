Return-Path: <devicetree+bounces-85735-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 984149313D9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 14:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CECEB20AEF
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 12:16:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA14F18A952;
	Mon, 15 Jul 2024 12:16:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wgAYISVh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E304213B295
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 12:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721045768; cv=none; b=Qn/uePNYURw6ssiRzytgKXVjsT5vl9zdn0MwO5pF4G+iAThvsGEqg9TMhYtuUkOiY53zs0BNOrGqC03xvwjwbG8ftjb0PjKX94l8TsMz+elaIBCIuZ7ub5+XS/GMPCjkifcERXQ2cEkVtPeKuwYXwbJrkrHkJwsLgBEnGzNZrVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721045768; c=relaxed/simple;
	bh=J7WGTQBpJaNKFTWx2R562yv5x7E3DH7etc/yD3RZjww=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=iU+4gJg6BuFgG8mwD5kgH6H0NAoNYaauqnsxMVlWi1HdiP30UsZkBm9XKhqsAE+qwAVyQvMfQMyvztXA9o/k5JS6w/JSKWbKTQdqs3kQ6OFzmpO42h/5udzjA2khw5/f6AYxvTeoiV8ff+OmlIN6OfMGsecIZy9gslpSMirZAa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wgAYISVh; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-4257d5fc9b7so32517745e9.2
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 05:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721045765; x=1721650565; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0Vr1Igs6Grx1TdlXBKwpA/hLnY4uL3rKsZy+M8J+TL0=;
        b=wgAYISVhtJwLP0d1jvz7QW3lm4WyTU56qP7PqeGeZGbIC7FqBXm+uUsI7dJkWwbWvm
         q0xhFa0+vhLwV1OcWtrb0sHBZ3oyHWVedJ8npXhqmgSZ1ER/C5+yI4V7/nunjzdosx8B
         N3n8PFtjIL9mu1Rom4pGj0sRJEUNW4XnCl7JrehzWKS8WGtlvQphw7UnIyDvy87TQP8/
         k2Lyi3hcEy1ZJG2KYzpHVhbFvMk8ryBBj9sQ0Ae8Hn7Q8dl45dWWgjPWqPifDAqkpF8o
         he/5bglctrNSXVW+G6vWh+n1UqcAM19rIzdTEXsHUqOU+PXIrDLlj3fUwxmfTcL2gwDK
         xmNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721045765; x=1721650565;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0Vr1Igs6Grx1TdlXBKwpA/hLnY4uL3rKsZy+M8J+TL0=;
        b=uuLmg3VbI/iPwDf7ldtxtmpzJuMxQQvp+Cwo14aIjA+XcPT4wPk2c2HAAQ/caskMZn
         NBk5VM4ralNUpKvxxm0mhXry1YNE66nV0tEGTNx11zITc5jTwbT56XYcKzf+9AJ6NbCu
         8P7inox1gRxg2XQL3BnCOGn8Q4nRzlNVYnJ9EhzNmo7SRNrif/pDmektXm/uuYXVKy69
         4UbaK/2/AGuwYYxLQZnvgpcNr0M5E7AYLBk5J3oyaBid5mFktwKhuBVO654a/+pBmMIe
         OLcVgJ9EM+tjA4HCqsZFnTTExxGTEqmQlbLea4Xb1Cdm8lmIbv3SkMB5MvLwGB/kWQB0
         VdGw==
X-Forwarded-Encrypted: i=1; AJvYcCXi5o79RM+V/w1QqSYIXKBOMHqysmvcZPRAIcZZrUUwdY3l7Jn8whTdFePoeD1oXDu4sN7zhUVDz/QsyWhPwEQ1VDsmy3fCggDo1Q==
X-Gm-Message-State: AOJu0YxRcgYteJHSnQ74Y9H505nZtzT73PPRrEwmp2Hq+b550dHZ7YhH
	WmogSQcdu8qMb4IaUb0NDRvPrmKdMvlXq1oJ2BztZeEFfZA3ih8+St+rVz2mYR8=
X-Google-Smtp-Source: AGHT+IF1eIglBUYPcY54eeaj425QXF1pkXmSnnMaa3Z7nS7TIbwkFjDf7kr7CW/lZQwMQMB2loSrag==
X-Received: by 2002:a7b:c052:0:b0:426:5c81:2538 with SMTP id 5b1f17b1804b1-426707cf827mr140078155e9.14.1721045765216;
        Mon, 15 Jul 2024 05:16:05 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff1f:b240:886b:1a3a:7569:3d95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3680d9771aasm6369201f8f.0.2024.07.15.05.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 05:16:04 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH v2 0/4] drm/panel: atna33xc20: Fix the Samsung ATNA45AF01
 panel
Date: Mon, 15 Jul 2024 14:15:36 +0200
Message-Id: <20240715-x1e80100-crd-backlight-v2-0-31b7f2f658a3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOgSlWYC/4WNQQ6CMBBFr2K6tmZmSlBceQ/DosAUJhJqpoRgC
 He3cgGX7yX//c0kVuFk7qfNKC+SJE4Z6Hwy7eCnnq10mQ0BFXBFsCvyDRDAttrZxrevUfphtqW
 jUDWhciUHk8dv5SDrEX7WmQdJc9TP8bPgz/5NLmjBckMFOURPjh+jTF7jJWpv6n3fvzY3h9C9A
 AAA
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Douglas Anderson <dianders@chromium.org>, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>
X-Mailer: b4 0.13.0

The backlight of the Samsung ATNA45AF01 panel used in the Qualcomm X1E80100
CRD does not work correctly with the current display panel configuration
and drivers: It works after boot, but once the display gets disabled it is
not possible to get it back on. It turns out that the ATNA45AF01 panel
needs exactly the same non-standard power sequence as implemented for
ATNA33XC20 in the panel-samsung-atna33xc20 driver.

Move the ATNA45AF01 panel from the generic panel-edp driver to the
panel-samsung-atna33xc20 driver and fix the panel configuration in the
x1e80100-crd device tree to make the panel work correctly.

The panel and DT changes can be picked up independently. Since v2 uses the
existing "samsung,atna33xc20" compatible as fallback, the DT changes work
even without the driver changes.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Use fallback compatible to avoid changes in driver (Doug)
- ... this allows applying the DT change as fix, so add Fixes: tag there
- Add review tags (except Krzysztof's, since the binding changed quite a bit)
- Link to v1: https://lore.kernel.org/r/20240710-x1e80100-crd-backlight-v1-0-eb242311a23e@linaro.org

---
Stephan Gerhold (4):
      dt-bindings: display: panel: samsung,atna33xc20: Document ATNA45AF01
      Revert "drm/panel-edp: Add SDC ATNA45AF01"
      arm64: dts: qcom: x1e80100-crd: Fix backlight
      arm64: defconfig: Add CONFIG_DRM_PANEL_SAMSUNG_ATNA33XC20

 .../bindings/display/panel/samsung,atna33xc20.yaml      |  8 +++++++-
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts               | 17 +++++++++++++++--
 arch/arm64/configs/defconfig                            |  1 +
 drivers/gpu/drm/panel/panel-edp.c                       |  2 --
 4 files changed, 23 insertions(+), 5 deletions(-)
---
base-commit: 91e3b24eb7d297d9d99030800ed96944b8652eaf
change-id: 20240710-x1e80100-crd-backlight-632f9bf936ef

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


