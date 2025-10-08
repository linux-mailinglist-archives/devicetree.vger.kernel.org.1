Return-Path: <devicetree+bounces-224437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2BFBC3D3B
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 10:28:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45E213AB7B9
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 08:28:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AC092F39A7;
	Wed,  8 Oct 2025 08:28:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i9LzUjXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2B92F3632
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912121; cv=none; b=pt18KgZ88F6pzBC3jw7mWToVV592fcbulo4tapsevQs/M4I9qPHaGIptKOT5Xzzlx8mRCV6lAHBoXpJtRsQ69EwybkdWTm+hb64tIyuMKKt6Gu65l8bayegfKcNXhiIgC/kSj+7D59/1lCKxPCs9WbLkJvePymPop8koOSeyhzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912121; c=relaxed/simple;
	bh=OKK/sJXtOy2H/hU/K2/b5lACA7f2zIZiTfFC5Kd2Tc0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=mGpFYDI+J+CGvAbJ8H3exC1A38z0NF+7U7a9f7rRJWR1sp4Ai1yd1St/tCpmaqF65ZqlM7c3nutEe/jeC05o7AKBTEROWWXZkuTdhra0OlTvCzy850qVE6BJl+rcPc80u9t2dvcDyIfzIOSBzXnSs3ES+eZXe8l4kuKoXH9N92I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i9LzUjXL; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-363f137bbf8so68025451fa.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 01:28:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759912117; x=1760516917; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WDL2+5qpXYINNhwEmiyG4VFEg02NXEqwf5yd4xv3H20=;
        b=i9LzUjXL1gpkHUEQ26xLyQoy2OafwgKN1YCpqh/WCgTziktTfNQwGuHaEvv/2jgUGW
         DCkJ9Ohvz7OjaPqUzzyqsJB1vS61hkBOs7zu4/VY5ScB3GiMdBkj6D80u2ZWnvqpYFSl
         K/hEYTW5Jrnrnl+f8U3d8eHqbuaeVovTCG54UAUBFJbftY5bGnJGnNIHMExQDkme7epg
         MpRN8Y+nAhGf2E3Lh33TGIOJRks9XUnLlrMRNUBoyw3l1VeV1myDR6G/DEziQJuSO8bf
         wR2Oz0uwTn/8AInYk3rmk6oTnt501blIIP0BsgDAbmo709JaM4WB//sT2CFmp8afGtLK
         EA3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759912117; x=1760516917;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WDL2+5qpXYINNhwEmiyG4VFEg02NXEqwf5yd4xv3H20=;
        b=w8YtgwFEA6oVZM5VzeJL9vjmGdeT8zKJkTEjUn751jnzpeXhF1tXiCn6y69HQRTr4X
         GToKosXvteSlZhNalEWiBJ0k6nOjmCxJrCJgcvADmCSIEiaXhFo/R4EiHPSSwJzf/QNE
         FHIG+vY+npMbtPtHYp9s+A8MoID8xKcaJiW8knpmje2v1AdbwPBfEAvYDOEWuE+kIrhd
         8B5qx8fNdzAJnsA2nFkP4u3jBq9bWf5bHvKdLDZJ8xIOP8+ZqmpKa4EYij4jySwL0+TH
         32Q0PValwcNC7nDXhgL8fq6PIZpTtkgukfjzVn+Br6hS+pLPiMizKtb3+MfZJ6FAqqS1
         po6g==
X-Forwarded-Encrypted: i=1; AJvYcCXL6uCRoQhHWh5YZb/cSCwa4nfp+cWRdz4asZppRMOd1TBMPwA269M4mnFBUpc9VxBizNlpd4iCnGrh@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+qFqvUg+EAU/iNCkgpNTntEoire4OlWP2ziCuAid4k1PnJUdy
	YDWnCL477B8Y7/tSBILF98Q+cWg4Lj8oelSVL5JiDGA+fxGJEnjyoZxJ
X-Gm-Gg: ASbGnctfpir2CgbCaTA9xsszIIYezkbIOw3sXb8qygiqHqwln07ZcOI44SVO0jyibcy
	wjk0fM/H2DWnCI3423uri40bBTebWgWZMhAqMYOYQ0cY4IZaMjS0J/NjLwYQ4PrZ/p+GTMQBUMd
	W5Cn1PeluhQMH5dt0rom/qaQNOZ0b4OQdrocyY7B1t4qjkOJA6PHmEFmqsurXysDiIevRiD+X/c
	1X3p+8uh6caEozjFuVHTM+ErXWG4Tvd1DladxMqudhW5JwmFJQlNrNGOGpf469/ezdyCkc56mHX
	h169mIsbWLo+d2t9NX96B3krOf/JwZEDkDV6KAXHBkZOUkSjKObONNrUZlh0UuPxdzRZSn2Wu1+
	/4GmPs0OFkqdZlkEcA4UItBsRltUo7SMiLhs9GQ==
X-Google-Smtp-Source: AGHT+IFQxyHSbODYuzrHx4CLDnLSfhATzRQS4eJZQ4bwmDnpLeGrbfUB1YUBpZ6Ww46Qx9cA5lS5uQ==
X-Received: by 2002:a05:651c:2210:b0:35f:246:a751 with SMTP id 38308e7fff4ca-37609cf7d65mr6119911fa.5.1759912117289;
        Wed, 08 Oct 2025 01:28:37 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124649sm6968733e87.15.2025.10.08.01.28.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 01:28:36 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Douglas Anderson <dianders@chromium.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>,
	Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-tegra@vger.kernel.org
Subject: [PATCH v2 0/7] Add support for panels found in various Tegra devices
Date: Wed,  8 Oct 2025 11:27:52 +0300
Message-ID: <20251008082800.67718-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add support for panels found in various Tegra30 and Tegra114 devices,
including panels in Tegra Note 7, Surface RT, Surface 2 and Ideapad
Yoga 11 T30.

---
Changes in v2:
- dropped gpu/drm: panel-edp: add AUO B116XAN02.0 panel entry (picked into drm-misc-next)
- expanded commit descriptions
- return accum_err on prepare
- switched to devm_regulator_bulk_get_const
---

Anton Bambura (1):
  gpu/drm: panel: add Samsung LTL106HL02 MIPI DSI panel driver

Svyatoslav Ryhel (6):
  dt-bindings: display: panel: properly document LG LD070WX3 panel
  gpu/drm: panel: add support for LG LD070WX3-SL01 MIPI DSI panel
  ARM: tn7: adjust panel node
  dt-bindings: display: panel: document Samsung LTL106AL01 simple panel
  gpu/drm: panel: simple-panel: add Samsung LTL106AL01 LVDS panel
    support
  dt-bindings: display: panel: document Samsung LTL106HL02 MIPI DSI
    panel

 .../bindings/display/panel/lg,ld070wx3.yaml   |  60 ++++++
 .../display/panel/panel-simple-dsi.yaml       |   4 +-
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts     |  13 +-
 drivers/gpu/drm/panel/Kconfig                 |  26 +++
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-lg-ld070wx3.c     | 184 ++++++++++++++++++
 .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 +++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  65 ++++---
 9 files changed, 496 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c

-- 
2.48.1


