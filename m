Return-Path: <devicetree+bounces-75523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 60836907941
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 19:05:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 127751F2432C
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 17:05:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 700901494DF;
	Thu, 13 Jun 2024 17:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ru3YE+9g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5171145B26
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 17:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718298310; cv=none; b=tDBUseppH0fdhUUsmVgYCvr76lLdW+EDN+5Fwcb2/n2W5GyA5mh14oBNCedLcbOPn8wFiQRw7YMdkKCZpamBIXxBnMkMr3ww/32I5ruyXKaOPof80DpiahyM301S08hqfsOEubuLVxX79euL4PygUlklv/PUgvLsqjo2JEG79qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718298310; c=relaxed/simple;
	bh=V6OI1zdDevRN8dC7/6y23Sk+GAv4kSLgtWhdz6coRuE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RqD12WoUdRb0d8dKHPYOj9j7gZQaE3zOeY/WzgeGj3mXbpF9A97xJtEmJnP0r7jTbEmdyC2R2iT1oHum0bUg3SFWqtvx0tSEiwhX/+vHgCySTLl5KTYjY8nq+npXQ9MV9iGBBvujSedyezE5xQbbwAL/1SW6Bu+nHvvDtiMBfHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ru3YE+9g; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52bc335e49aso1544420e87.3
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 10:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718298307; x=1718903107; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5s81hRJV5Zx9U5qH2vAOJUfHtOUwvEenRjG7i+7iL4g=;
        b=ru3YE+9gmEltZEuzUjOhJ4zSS9yrqDPsBeaKGgi638skUqP+uU/iZXh9MD/UR/4E/U
         7HUtQcbkpgMZydT9VSAnpPyE8KpGZNhW0Fm8Mgu2yPgXlQB2moWA2fEy/ntuJrl0oQhX
         j+Hn6AL7mYDqjlK/wtpR11pX0znuUU8qw4tRQ8hmNh1V2u61rZchqpFCGk7ZM/u+pL9S
         EnrzjE65gIFQfcsQJci3rSxpfRR3iKmh0ja/yW+kTBPWXhQqO0gjEXeKJU9g8eQHXoEJ
         E93rBRbb7O3B1Gb5OAHGywA3Upwpsg7rFIhrkmDrG8kGz+06UqwU3Bp2Mmi701Et2sDn
         C7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718298307; x=1718903107;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5s81hRJV5Zx9U5qH2vAOJUfHtOUwvEenRjG7i+7iL4g=;
        b=GR9Q1w8k4QaPdpGbuW1TnxMJW1l208hiAd7cE9nwuo0ky06TOEYWTrQo3b7epMU1sT
         s3YhjX4xqkj1Np3AOquhgaGD7v1D6zq0hGNkcBHjTbmdjv/nTtlUHoZvyqGWM5BLmM09
         7BKUfjXS1gHVx4/8S6DVzIDrjhMRW+KEt6CWB6JZpPjmP8JcVQojEo3wEvA8gBYokP8Q
         Gwusdhz+re0KUMCo4DKcI9fPWQu1kWVP8FJwQ13A2299UBvy4OjpnmFmj77508ydJhd5
         YyCkkN5Yhk0B1aNjaGueEi25rvaSPMEdX5upHQf2YyPzzeRflJV3mDNZr/rnjFFPmaEW
         GoHw==
X-Forwarded-Encrypted: i=1; AJvYcCUTRUf/0HnHsUjSNfYK4xr2qqAygyGcg0Jk2TH6VJP2jiDJauuDja3YSZvwt53JB10Qd7z28R7HpSENAf1ahzqbo4BQ/jnyO9ar4g==
X-Gm-Message-State: AOJu0YxkiBJrRIlcVIhKk8dmxriNrjl1v3ADH5192UK/2iiniqpEAphq
	SHBYi6uDh5TscnzpIROcm7vIaReCTwnpy169uQOt4Z+fgZqA/4RRIxajkbb9kNk=
X-Google-Smtp-Source: AGHT+IHKrwhQZ9vxGVegzTyWBoWr/raE8v/Q+V1t2Hug77JcE2x2GspnZP88cLa5rhHl6EyTzJWpaQ==
X-Received: by 2002:a05:6512:4819:b0:52b:ef61:cb73 with SMTP id 2adb3069b0e04-52ca6e6c91emr240352e87.36.1718298306813;
        Thu, 13 Jun 2024 10:05:06 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca2825733sm287312e87.60.2024.06.13.10.05.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 10:05:06 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/8] drm/msm/dpu: handle non-default TE source pins
Date: Thu, 13 Jun 2024 20:05:03 +0300
Message-Id: <20240613-dpu-handle-te-signal-v2-0-67a0116b5366@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAL8ma2YC/22NwQ6CMBBEf4Xs2TXtgoic/A/DodAFNiEtaZFoC
 P9uJR49vpnMmw0iB+EIdbZB4FWieJeAThl0o3EDo9jEQIoKddEF2vmJqbAT48IYZXBmworKMu8
 Uad1aSNM5cC+vQ/toEo8SFx/ex8uqv+lPSOq/cNWosKdr3hZkVHXr7pM4E/zZhwGafd8/m4FX0
 LkAAAA=
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2378;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=V6OI1zdDevRN8dC7/6y23Sk+GAv4kSLgtWhdz6coRuE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmaybAGNxJLg/ANFwNRgQ8s2d4ZmCLfW5rXeILz
 SUGetZ0ls+JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZmsmwAAKCRCLPIo+Aiko
 1dH7B/43p0LbaZKdVSHQbQqKu67/DTQgos56C68bQHGXcvDavLr8Ks81BXvV7JqhBwDeLNIew8Z
 ROcjWND6fsJ/kTY5bbqwX7mVpj3bY6w/g5J3Jv/WwnY/+IpWZoRvARy0dLpLRwn+s40wb0LctH/
 cPZJh/3+LDjgw+6FjoKKPim+btsmJcsNeJc/a7l1FjGIR98x67SpklgZfbpilXtIEMhsDlOTZzi
 YWVnOAccNBhuQ49f0vCzq9ef3CLyJ5izA/2swjKlKgUfVRwsju/qwscUsYeepx9AjMoWfztDuGN
 WjzW1PhDp34SXsKgTvZoslAkX7tszVGyeSQElDhXi60EZVBE
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Command-mode DSI panels need to signal the display controlller when
vsync happens, so that the device can start sending the next frame. Some
devices (Google Pixel 3) use a non-default pin, so additional
configuration is required. Add a way to specify this information in DT
and handle it in the DSI and DPU drivers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- In DT bindings renamed mdp_gpioN to mdp_vsync_p/_s/_e per pins name (Abhinav)
- Extended bindings to include default: mdp_vsync_p (Rob)
- Renamed dpu_hw_setup_vsync_source() and
  dpu_hw_setup_vsync_source_and_vsync_sel() to match the implementation
  (Abhinav)
- Link to v1: https://lore.kernel.org/r/20240520-dpu-handle-te-signal-v1-0-f273b42a089c@linaro.org

---
Dmitry Baryshkov (8):
      dt-bindings: display/msm/dsi: allow specifying TE source
      drm/msm/dpu: convert vsync source defines to the enum
      drm/msm/dsi: drop unused GPIOs handling
      drm/msm/dpu: pull the is_cmd_mode out of _dpu_encoder_update_vsync_source()
      drm/msm/dpu: rework vsync_source handling
      drm/msm/dsi: parse vsync source from device tree
      drm/msm/dpu: support setting the TE source
      drm/msm/dpu: rename dpu_hw_setup_vsync_source functions

 .../bindings/display/msm/dsi-controller-main.yaml  | 17 ++++++++
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c        | 11 ++---
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.h        |  5 +--
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.c        |  2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_intf.h        |  2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_mdss.h        | 26 ++++++------
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.c         | 14 +++----
 drivers/gpu/drm/msm/disp/dpu1/dpu_hw_top.h         |  2 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c            | 44 ++++++++++++++++++++
 drivers/gpu/drm/msm/dsi/dsi.h                      |  1 +
 drivers/gpu/drm/msm/dsi/dsi_host.c                 | 48 +++++-----------------
 drivers/gpu/drm/msm/dsi/dsi_manager.c              |  5 +++
 drivers/gpu/drm/msm/msm_drv.h                      |  6 +++
 13 files changed, 114 insertions(+), 69 deletions(-)
---
base-commit: 03d44168cbd7fc57d5de56a3730427db758fc7f6
change-id: 20240514-dpu-handle-te-signal-82663c0211bd

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


