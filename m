Return-Path: <devicetree+bounces-42500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D09A8579FE
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 11:11:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 903A51C22D3A
	for <lists+devicetree@lfdr.de>; Fri, 16 Feb 2024 10:11:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC6101C69D;
	Fri, 16 Feb 2024 10:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="WMtzc6KF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF7AF1CD06
	for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 10:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708078255; cv=none; b=A2rhDo07NHu/UkQbEnRbhRDejmLwealLOPTnyu+Bp46NtqoLuIX/7NoqyUxemplWmzbicGHVRv//bF1KpZEgAqFURym0i8fXE7GTjxVguIla/xVOyOudsnMQ88MegKpt0N6jH9OPSU2CjKdGUdSbyNAaIhARMq4yND2pOdWKlqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708078255; c=relaxed/simple;
	bh=+qmlePUCPEw55YerfIXLhUwFG622mu45eHNIVx7KqrY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QwRMYEO61rYYXUPamjv2h2IB1GqC5u+hUwrXlrWNYAtFA4jZL/Gg3iL91quqsJ55xTXpKHr4jZrpSpb1BJfOTeVJPfvtawjD0yK3NfXFYpikoQkj3amXPLobdpRiE79LX6xCkGzTADKszl2qaqvtEj5QExm2+KeTgHmFYPhQ9yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=WMtzc6KF; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-55f50cf2021so2498240a12.1
        for <devicetree@vger.kernel.org>; Fri, 16 Feb 2024 02:10:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1708078251; x=1708683051; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZMRql7L8hsqbp6cXp+TzNFFLmZVefcT65u0H9tbQLBo=;
        b=WMtzc6KFUxTL3bR8yQbxMxvz4nUy/y/Duk4HJAP6KQDOXanlz0dWk5FzAzCoXVHNgU
         GrQOXCzirhXUBV+xiWZsD14fAd1yXPWz96x5MLhm39oOIN+mQ47STwY/fWkfktrrh+E5
         i/zTNT7zOBDPprB5P38C6HC6uFMZfjS5ytgZ/E24T6F5qcjTVg6+yBSEHf/vBqSO5Ttb
         oL9KCkHWL2ctAmYS3X1wEI/WxZDQAwDL30OBqJxVnm/ozw/32ljIy5ZHQ+nyDJiPpc/1
         a85XUaWUcxvD0nKoaU89bfVCVHMoz5l2iY5BfQx8vaCreAXprrpyNS5ReAYSWYRZG9MA
         UTAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708078251; x=1708683051;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZMRql7L8hsqbp6cXp+TzNFFLmZVefcT65u0H9tbQLBo=;
        b=EVnbJNJQFhz/2zyz2lhw+mNOPox5kXPWyrnGJA8e/u4oO0k/yoSOWVgWE40WWUJ3Q5
         Z4gB4UzbqlXysaEAphlBOI5ETTloYsPNiRebYws++GdylevH7P7LP3jyJdnCagCGQyL8
         MPGIB1kDvQPQKpl+eDV7yKgeHhgn1wMbV8HUYn3qDvRQn7zjWTvmmlveoQpH3/Ouf1FA
         bJS9lhH93huoFUz/kdMSSKzdO/sDNTxIDH8juwu7ixe0XUgg1/WgLGUuaAtUgzt2TE5c
         z+ZkbPkEmSeApxRZNxQSNcUxYrUwu1vo/kjN1UVDT8cds2ypNrShMtaNTR4l6UYsiQyB
         H3Tw==
X-Forwarded-Encrypted: i=1; AJvYcCUe03Cz4JIQlJjiWBdOKztYWXYkieiPIOiQlORV7R7yNUglkS3iKOCQhMYhCZj66z+YHyh1y3grhobu0nNqbljYwBvHZTyJSskv+w==
X-Gm-Message-State: AOJu0YyUvFOG2JFlDe3xkI8LPLIyEdq0DjR2yUwK0qOtxlbggobH5Fft
	06KD0fkJJRnsBjarOSIHqu9csRxfYunq8ffZeyz5fOsNeFQRpFjcVvEtsbxw4GE=
X-Google-Smtp-Source: AGHT+IGrFTfr1Ah+H+VEMxSBiGjCEBAP5CJc6Ef5z0y9q4E2tBIqwXWKDxCN1lwogTQUbwXHelSW8g==
X-Received: by 2002:a17:906:b847:b0:a3d:6f46:ac3a with SMTP id ga7-20020a170906b84700b00a3d6f46ac3amr2958890ejb.11.1708078251164;
        Fri, 16 Feb 2024 02:10:51 -0800 (PST)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id s18-20020a170906169200b00a3d1897ab68sm1398019ejd.113.2024.02.16.02.10.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 02:10:50 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/4] Add display support for Fairphone 4
Date: Fri, 16 Feb 2024 11:10:47 +0100
Message-Id: <20240216-fp4-panel-v3-0-a556e4b79640@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKc0z2UC/22MwQ6DIBAFf8VwLs0uipqe/I+mh0WhkrRAoCFtj
 P9e9GSaHuflzSws6Wh1YpdqYVFnm6x3BepTxcaZ3F1zOxVmAkQDCJKb0PBATj+4BFLUy7olIFb
 +IWpj33vreis82/Ty8bOnM27rv0pGDhzJKFKjlKJrB0M2htk7fR79k22lLA42wtEWxe5pQsSuM
 a1Uv/a6rl8cd01w5AAAAA==
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Andy Gross <agross@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4

Introduce the bindings and panel driver for the LCD panel with the model
number 9A-3R063-1102B from DJN which is using the HX83112A driver IC. It
is used on the Fairphone 4 smartphone.

Then we can add the panel to the device dts and also enable the GPU.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Update compatible to djn,9a-3r063-1102b
- Add defines for manufacturer-specific DSI commands
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20240110-fp4-panel-v2-0-8ad11174f65b@fairphone.com

Changes in v2:
- Driver:
  - Drop "bool prepared" from driver (Dmitry)
  - Use drm_connector_helper_get_modes_fixed (Dmitry)
  - Use dev_err_probe in error path (Dmitry)
  - Fix width/height variables (myself)
- Dts:
  - Don't drop simple-framebuffer (Konrad)
  - Drop disablement of gmu in dtsi (Konrad)
  - Set zap shader path (myself)
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20240105-fp4-panel-v1-0-1afbabc55276@fairphone.com

---
Luca Weiss (4):
      dt-bindings: display: panel: Add Himax HX83112A
      drm/panel: Add driver for DJN HX83112A LCD panel
      arm64: dts: qcom: sm6350: Remove "disabled" state of GMU
      arm64: dts: qcom: sm7225-fairphone-fp4: Enable display and GPU

 .../bindings/display/panel/himax,hx83112a.yaml     |  74 ++++
 arch/arm64/boot/dts/qcom/sm6350.dtsi               |   4 +-
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts  |  53 +++
 drivers/gpu/drm/panel/Kconfig                      |  10 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-himax-hx83112a.c       | 372 +++++++++++++++++++++
 6 files changed, 511 insertions(+), 3 deletions(-)
---
base-commit: 91f11e5814cfbad83ee22fbcf96b0eb41302d889
change-id: 20240105-fp4-panel-50aba8536a0a

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


