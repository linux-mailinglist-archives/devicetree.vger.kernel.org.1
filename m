Return-Path: <devicetree+bounces-236581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF08C458EB
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 10:15:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id F1031347A31
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 09:15:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F95B2FE56E;
	Mon, 10 Nov 2025 09:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i8sZF/QX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1CE299AAB
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 09:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762766127; cv=none; b=XPAv2cq7lGuXJlCSde/OMpsxwI9dbIc0pox56Oskb6JmJZTHUyi05pgcR6NdTfqgWYCdALzyRRzU3W5+TOb+tER8I6CisUSSPukiT0VKS/wv4jquHagHnerpg2BG7cg/O4QV0mF8ewqSMoGmiCgoW+tAFtIiIgBfcixPztaLfFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762766127; c=relaxed/simple;
	bh=AAy4P8dvMHeneV0IgwHSPlPKzVlb7cPq1pIPErAgdos=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pVkFMAdqLmmIus0k56+AjLuuNILg4lpISNh1Yar6z/ptmguM8LifnPMQkqE0sRbRMFC5HVifIghiB36Hxjr0apP/mtSGUwrOJSbUldSrKXCufeMSKRgVMMxUCN6kuWJ49ePyWCG1b1DxIvBaSipv+EA9oAohnX2iQdwBm7Lfr+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i8sZF/QX; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-36bf096b092so21832151fa.1
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 01:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762766123; x=1763370923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=i8sZF/QXlQPY+qiEh4soUumRZDPKVA6eX07Uy9ERGiT2k4GHQu6azi160AeoxD8nl1
         NgWDaqt7IrKj+3lJbwDXhpyObq0cze/b1VD0DphTzj9oivxjlnbL68EwKerhiBICnqIN
         3dqZEafDhFBhkkH/r2x0oCGwO8w1rC72FM2mslAAN31rqz/NM0XkrfLXiOYjIuXQ8B1+
         Uurk2ch4uFgBWnXM2KoqKxCuVB2j2VGySJqo7FFhN3jxhSvSwLuEgEsa9ERSHWGaBwab
         +qCxNmBO6L6hpb0aVr42yiFW81nUzFGlYK4GHKBjETzFI8tGgIZdQ+U2YopEWLSmirER
         kn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762766123; x=1763370923;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JZ9/LjENMEgkqGr3qDNK6DAWAvXersuPBKAH6ygTJP0=;
        b=j4EURT5mUEpUW2ijCONBUlMUJMl40YlQD8K0rShx8tLtKDfOBlDu16QvtFAmkCzdpV
         +viFu6D9T+qY03d6ThIMmDX5wfWAehVtlYrMXGmfHLM5pnbD2u+TcQ+TKiN0PrIv26eH
         pxO6tuzQLe33aqvYBikEyn5Gu+X9K6CvoaDpq4z0UDgJyynfRjqk4jS8/MCQyqNJm0GE
         MLq+FS7MxR3BhwlxeFnjPMMVibE+VCaagHZkKchg3pfzWHo2YZ156KEUWm6kpQEH4xG4
         xQ1sjohwH8Qvj5Gg8MxLtXlTmasLmvgZsFx34yUoA+5euCoF/XXKSkIpFHLGmAAITtuL
         D4kg==
X-Forwarded-Encrypted: i=1; AJvYcCW+soFt21fwaOZAhDI04rreLd6o6JLxafOEUJWYDCTMsSj1q5YOr3w7JLbINgzcuGJtxGCBd+x3iYJU@vger.kernel.org
X-Gm-Message-State: AOJu0YxJGfq+BTfBMruwlzo1wSYo+I0+EY6D0kTq4XtzUZi9mES/DC3U
	wEpPOFiolxCh7tSjBTusgzJQTVz8IBC3uY+Uyf5JNOE7a801H6H9FhCk
X-Gm-Gg: ASbGnctQP7mIjbzAnY9cSyiL7GDA/kGyEMXR6bUX0nIy2d76rfa3tMLgXI9PsjJNitq
	7nSCwo78PQS6aD3uJHMS7r/u0P9BLuuOPhq6t6lLXybvoZUhjLQV72edzjv2/klZk4aWgFLDzX9
	G+rImLltXn0t4HguSR6tIo+60r8UtHhA79Toq7jvZdqnEHMf1oS8uzmkw+OcSxk3qUH4A9XFvpO
	aikdFL+Y4xdxB0wq03TnUTsFsQU6j2LsScCWcbS44vtj4NDinzrGIKlepb0u/LIMctLlHeA+WSe
	ZK0/5SGq59QFmclYlBjLfMpFFVRXp2H6VVOPTmlCmWoYyEze3nd5wosmhgkULN7rWFgHSkMaaZ2
	gzIWDUp2o1G/eIv1NuK4+Af7k2dqRvbU0azBEAK39CBeBOcS39v5USSn3NXLl48dbsucS/haNfY
	4=
X-Google-Smtp-Source: AGHT+IHKflfppJ9fE4B/jxYw4Ee0cwdoj93J+qONHoGq9+fPDTkw7v1R2iIj+5ReVkBMNZS93KUhOA==
X-Received: by 2002:a05:6512:308b:b0:591:c346:1106 with SMTP id 2adb3069b0e04-5945f1594a0mr2128941e87.9.1762766123168;
        Mon, 10 Nov 2025 01:15:23 -0800 (PST)
Received: from xeon ([188.163.112.74])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5944a0b76f4sm3852006e87.73.2025.11.10.01.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Nov 2025 01:15:22 -0800 (PST)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
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
Subject: [PATCH v3 0/7 RESEND] Add support for panels found in various Tegra devices
Date: Mon, 10 Nov 2025 11:14:30 +0200
Message-ID: <20251110091440.5251-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.51.0
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

Changes in v3:
- lg,ld070wx3.yaml > lg,ld070wx3-sl01.yaml
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

 .../display/panel/lg,ld070wx3-sl01.yaml       |  60 ++++++
 .../display/panel/panel-simple-dsi.yaml       |   4 +-
 .../bindings/display/panel/panel-simple.yaml  |   2 +
 arch/arm/boot/dts/nvidia/tegra114-tn7.dts     |  13 +-
 drivers/gpu/drm/panel/Kconfig                 |  26 +++
 drivers/gpu/drm/panel/Makefile                |   2 +
 drivers/gpu/drm/panel/panel-lg-ld070wx3.c     | 184 ++++++++++++++++++
 .../gpu/drm/panel/panel-samsung-ltl106hl02.c  | 179 +++++++++++++++++
 drivers/gpu/drm/panel/panel-simple.c          |  65 ++++---
 9 files changed, 496 insertions(+), 39 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-lg-ld070wx3.c
 create mode 100644 drivers/gpu/drm/panel/panel-samsung-ltl106hl02.c

-- 
2.48.1


