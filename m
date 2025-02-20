Return-Path: <devicetree+bounces-148814-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D946A3D7EF
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 12:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 165481757F8
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 11:14:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7C541F1531;
	Thu, 20 Feb 2025 11:14:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eUrrpDX6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C704D1F1524
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 11:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740050098; cv=none; b=QYbg6FFKz4YgNWdB08uIbhwlp09wWo8RN1wlNr/4yt192rWmqZCP2AsIPmGdv5+DFY6i+tGa/vmtHjZwmwnTtgFQn/dmLZ5TApzZs5EAZee5ebGH7BhiA+Klb9enHtGWtIjQBg6NC1vYqp8wvAcdwYv01UUM6Ts9h1nEJQshY/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740050098; c=relaxed/simple;
	bh=fJB6L5AnL5J+S+1HzyLzt2yON/RIJwdvkGfbsOOWwmk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Y2ls2mA1j10esYTRoGOxRbO6fu/V2lJ1dOc/zmOjxjH9FQeOBahnebyhQlCCsZ9xeU7sIEfU0Bhy8OgMWxgYiQK/JZpemLwImqnrtsoNwmq4FWtI93M4aXaOkX0tJDXzb366bfr4ulp5o9fE7ChiaRPzvvwdqI7IaVqxJMMRzC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eUrrpDX6; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30737db1aa9so7327331fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 03:14:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740050095; x=1740654895; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8LyXwrLGK4GdaCCWLeIZs0AErC/jYbMsOGckx5Nm6AE=;
        b=eUrrpDX6Qymv7/B5T21ptKcpDCHGNpyAh3+84KBoE4lCUkXvNEI+MWimjXQgepbyE2
         +TEKp5Zn04cvyAPGLThymL9FlbX0oAo6OgTSLFbN6o6uPCdbufnagfg4i+NNuoj9J00E
         Qd0OCUeb2vPePPKt40uTVNY7F4Slo+WGzCR+7vH8H9yvVfTbXQpVtkK9bDg9Bc00H2L1
         30PmlLTYnw3Zmj+USB1rBvsdxZ26xOqhNYrHLn/KRckOVvx+hVj6ztORy/ToAfi7nmS5
         q1K9bPvlV7Eojh05lOA9CnyxtIpp4/PK2wosS4SdLwvliDB3fFY/rWG70fss7B8NfUD7
         GOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740050095; x=1740654895;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8LyXwrLGK4GdaCCWLeIZs0AErC/jYbMsOGckx5Nm6AE=;
        b=kGSI3r83RlPuMRChi/6wGDHZ1VK68dXOrrC/VD05UXxn4LpHh1wAtglp39XSPXTWXL
         x8bBDz1OdhTbPZVXh24RVun8B2I2lF2L7ORsg5mlGM07xWqaOAVgCX65c0r1n6G4t1ad
         OWO50XlYBQyhYeq5Yt0FdNpe4XwN0R5LjXuDHO9LsBPqtTTbvIhM5olYtWHjqzue1SZW
         oy6j363SyrYXZ9sMYVd8jjvwIdFYn6RavxNlNT7VgHvjGUZ1J5bKRQL+3jHQqxFIhXaY
         cMbDVgXyfVrLbgt9VH+d927qi+aCHrsZHdZUR0jsEn6OridseudNRW8QBLUq4k65IaM7
         mMGg==
X-Forwarded-Encrypted: i=1; AJvYcCVRPCbKSztYcYlUBFxvJSclIZQ12yu0Hrp4WtYdUI/BunOogBq9lcEYXt0oMwTxnkhFpfcmEDnCsED7@vger.kernel.org
X-Gm-Message-State: AOJu0YwpDHnWJNuaIdUPAgo0LIPSxULyIDC+die1L6L5IXn4QD3I9OOQ
	u83APUWrA/5Rs3TKhuNxFsBrdfhq0QzuORJrKfzXA7no/h2rG6L1EhSCGyzCpsw=
X-Gm-Gg: ASbGncusb8StCepjqJiu+OxLjHPtVp8lF4hq8xYvRbyaGAm6CH7FSP+oXtbvM1qW6X2
	dhlou68rLApqrd3SZBNcLqiZUv14Y8/NnL9S6DLPxUHhzVlcwfiPKSnM7Nfw7HgHXwJNeBPqNsn
	B/UAKHQgpKaKercPhRpSXbAJN/BbPV+6O/soO9weSPs7r2TF8CBqh9RYnISypyMA3Ody8biDUcT
	3zLSgLilByVE6S+QzQOe7vJZqtStISS0Eq1lBMJZ8c4HB4UWrM0qb4FHdv0ijEqx7XmOGJM2PvF
	tUs0eWs7tL3yk2g+oAJh8WQ=
X-Google-Smtp-Source: AGHT+IGG9LP6CikwQQLLPJWH6HucdxpA0EQEAovfivAAnbKN4plM1f13MThC8AcAbBz05v8+AbVAlQ==
X-Received: by 2002:a05:6512:b1f:b0:542:2e09:639a with SMTP id 2adb3069b0e04-5462eeda30fmr2764753e87.10.1740050094711;
        Thu, 20 Feb 2025 03:14:54 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-545297856c6sm2056164e87.142.2025.02.20.03.14.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 03:14:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/7] drm/msm/mdp4: rework LVDS/LCDC panel support
Date: Thu, 20 Feb 2025 13:14:42 +0200
Message-Id: <20250220-fd-mdp4-lvds-v2-0-15afe5578a31@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKIOt2cC/53OTQqDMBCG4atI1o3kD9t01XsUF6lJzFA1MpFQE
 e/eKPQCXb4fzMNsJDkEl8i92gi6DAniVEJcKtIFM/WOgi1NBBOKSX6l3tLRzooO2SbqyuJvjbd
 ad6SczOg8fE7u2Zb2GEe6BHTmhwjW8IZpJgWvlZRCacqpHWHBtX4ZXFN4x/wYYDIY64j9oQZIS
 8T1/DGLw/5Lavd9/wJwxaVe8AAAAA==
X-Change-ID: 20240317-fd-mdp4-lvds-e317f86fd99c
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1917;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=fJB6L5AnL5J+S+1HzyLzt2yON/RIJwdvkGfbsOOWwmk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBntw6qU4dq9Ooc3myWYJP8jGjhialgsGg3QNcOT
 GjxIqpl/luJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ7cOqgAKCRCLPIo+Aiko
 1WvCB/9A/koJ46Wd+4RE/e5z//3JgIwbLhFGDMEWzicgUR4oY1y7WUCLZE+7BLtC/LZR6A+7CSj
 +jdz+l/5AQMthKplWcUa8iLlh8ului3i6ynQi7D59MvEBhM5m4fWYIdATHMY7QDldKsjRyb5swD
 Uoa4bz98CR6wxmVNHhV9mbviGyZUw4KYTiaNJuP4hKLnGb7LMCSQSz0UkzkeTHN/uCMgMY5I68P
 regBLW0wZrjTNFDVWZmyTc+EIud38qQidP+Lh4eb3tFRTNdatHDq0LF3g5LnLWdSZ05n3NVrDF8
 3WuUEZJUz9xe/Ng30GqmRPVcXRYnIqkz3OGSwYRNttTG9f1x
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The LCDC controller uses pixel clock provided by the multimedia clock
controller (mmcc) instead of using LVDS PHY clock directly. Link LVDS
clocks properly, taking MMCC into account.

MDP4 uses custom code to handle LVDS panel. It predates handling
EPROBE_DEFER, it tries to work when the panel device is not available,
etc. Switch MDP4 LCDC code to use drm_panel_bridge/drm_bridge_connector
to follow contemporary DRM practices.

---
Changes in v2:
- Rebase on top of msm-next.
- Upgrade LVDS clock code to use clock providers and parent_data
- Use LVDS clock from the MMCC instead of using LVDS PHY directly
- Link to v1: https://lore.kernel.org/r/20220616090321.433249-1-dmitry.baryshkov@linaro.org

---
Dmitry Baryshkov (7):
      dt-bindings: display: msm: mdp4: add LCDC clock and PLL source
      drm/msm/mdp4: drop mpd4_lvds_pll_init stub
      drm/msm/mdp4: register the LVDS PLL as a clock provider
      drm/msm/mdp4: use parent_data for LVDS PLL
      drm/msm/mdp4: move move_valid callback to lcdc_encoder
      drm/msm/mdp4: switch LVDS to use drm_bridge/_connector
      arm: dts: qcom: apq8064: link LVDS clocks

 .../devicetree/bindings/display/msm/mdp4.yaml      |   9 +-
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi           |  16 ++-
 drivers/gpu/drm/msm/Makefile                       |   1 -
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.c           |  34 ++++--
 drivers/gpu/drm/msm/disp/mdp4/mdp4_kms.h           |  16 +--
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lcdc_encoder.c  |  55 +++++-----
 .../gpu/drm/msm/disp/mdp4/mdp4_lvds_connector.c    | 121 ---------------------
 drivers/gpu/drm/msm/disp/mdp4/mdp4_lvds_pll.c      |  28 ++---
 8 files changed, 86 insertions(+), 194 deletions(-)
---
base-commit: 402fdf7dbdc47d0186c4ad4fb1467a05f017bc0f
change-id: 20240317-fd-mdp4-lvds-e317f86fd99c

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


