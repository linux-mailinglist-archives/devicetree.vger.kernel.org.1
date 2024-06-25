Return-Path: <devicetree+bounces-79742-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8A8916A50
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 16:29:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E369B1F21969
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2024 14:29:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0526A16C6BF;
	Tue, 25 Jun 2024 14:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="FRb4xkr0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E67316C44C
	for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 14:26:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719325580; cv=none; b=n6QN2VjCltku5JD1x39DegZPBzY74KMvxy4ZLxLH5USM+FQKIdcVMn5APyk1xnZ7xBmE4yFKQwM8r11hk2z7s6W5yyexoyvTlixP03yrrYYkdEB5icIfkNGr0RGnwoySlUHhAz5fCQ0VlVplnaKfQ/Mg1jHbcqwuj1C8lJgVrXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719325580; c=relaxed/simple;
	bh=LCSdddfJ7Z4mnK+aitn1PNeqaIztUYavzKGIhHHipts=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Vf/514UqSedOAIPJOn6Z22V3YUewEc1PTl1hwOtlIY2LIW1aymt02CTmJ1RQu9oMsN/QpxEH2K5JHs2AiRqPWEQCOoPR24nEqhk4VoX5sHadqoMHx+aA0GPCCDmyxFxeCUXoweNyF4VE1a/B1rhvNnEX6ed5Bnuor937Mj0ISiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=FRb4xkr0; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-421b9068274so48636345e9.1
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2024 07:26:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719325577; x=1719930377; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nnbM/UqNU7kz2IjENEyTCA2M982ffhA9NZXJCqFpGNo=;
        b=FRb4xkr0a0LWth+QZtZh+hhgoP++LkDP8dRqhbdSTF2XYvREVzCpzPQe8foWX78p6a
         fx4Hui0/aK5If36o/KfaOjuaEkXUQyD1TgDC0kIklEVbgRt3Dnl2BoEqQnc/fvt7KM1R
         2tdM22LF2/ZVElbYmLhGEbwdc2V/e03xuThftC1mOpCxQGqYU6LQUGEzYx/c9HiSJVVp
         p5x5VjGEJhf2a29/EWkfaPQ4LU9WeiR94qpcoODnXLYEpl0wunPmsOhBu15ngKrG2TDP
         nLW4qC5hqcJruZRZfyC2VMepI0/nUVnHJj3phNCK7uorGmssLR8SxjAKcbmUVDvO7yPe
         drOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719325577; x=1719930377;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nnbM/UqNU7kz2IjENEyTCA2M982ffhA9NZXJCqFpGNo=;
        b=USkuGYN10R+6CPfb3i1Z1QlLLJkwlVbdFjcrvuINVB70lNQOyWyWNHZR/lAuHhiGBN
         AoJugMho3TYCDRf+0DgZlDBny6nnHy7bIl+PKVdy9EdHaL1VmvhYZIEDoen7cDo4TJQ8
         4Nz/wkpspJpU9SJ6fEwNk1UktpmsF6GxMD6JAN64ou7VJF1J5tLlZOdzdjjwBd8ys97F
         d0taY9jhLJyHUwRB5SyEMz9xb+2Dcipen12J3pUGFmv7GiIKFmnKmPi5mGj/WJn5d/iT
         e/K4bYeOTjcGjppkCY//KSsR2gMSNy3qlIfdTE04MQO+r2SH7/RG2S08Rx/kum/FsSAR
         k/Dw==
X-Forwarded-Encrypted: i=1; AJvYcCX6LoGOCFJ5S/PQt7Ik+EmQHU7h0mEzwdwZkjx8xuctpOuHhm7+t4LCdLPzPQ8XAEgUAI8AzYj8yPsUICCl12ECvP+NidfbsfFqRQ==
X-Gm-Message-State: AOJu0YyZ4cwOxIDlFcXOcwXvEK5GIjgn6BnPqYDM4UJX/vDTNutMcWrB
	lwU9mTq3QKfzu0o28lEaEXlcC8S+dghiJQYUxWjEpIrwz9l4WCtCr1AchsmIrlo=
X-Google-Smtp-Source: AGHT+IHBC8yMvfpBU0+onzKrlaDVCnHDVjQCoibye6hJmIGdRXQU3TAea+VE4GZP205tIEuuyYEmpg==
X-Received: by 2002:a05:600c:4853:b0:422:6765:2726 with SMTP id 5b1f17b1804b1-4248b9cb18dmr53858545e9.30.1719325576775;
        Tue, 25 Jun 2024 07:26:16 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:b30c:4c5e:f49e:ab33])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247d211881sm213770685e9.46.2024.06.25.07.26.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 07:26:16 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/3] drm: panel: add support lincoln LCD197 panel
Date: Tue, 25 Jun 2024 16:25:47 +0200
Message-ID: <20240625142552.1000988-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit

This patchset adds support for the Lincoln LCD197 1080x1920 DSI panel.

Jerome Brunet (3):
  dt-bindings: vendor-prefixes: add prefix for lincoln
  dt-bindings: panel-simple-dsi: add lincoln LCD197 panel bindings
  drm/panel: add lincoln lcd197 support

 .../display/panel/panel-simple-dsi.yaml       |   2 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 drivers/gpu/drm/panel/Kconfig                 |  11 +
 drivers/gpu/drm/panel/Makefile                |   1 +
 drivers/gpu/drm/panel/panel-lincoln-lcd197.c  | 333 ++++++++++++++++++
 5 files changed, 349 insertions(+)
 create mode 100644 drivers/gpu/drm/panel/panel-lincoln-lcd197.c

-- 
2.43.0


