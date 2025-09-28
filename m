Return-Path: <devicetree+bounces-222181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B93C3BA6951
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 08:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB0531632ED
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 06:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6D2829ACF0;
	Sun, 28 Sep 2025 06:41:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fazxwdIe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3B828725E
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 06:41:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759041696; cv=none; b=mr+s66ONzpZ6xdqtNjbsxYYFNzVYGLO6CogKAIy5bjrx6RoPRVBYOW11HHWajpihdYGxJjV/ccq9rwLr8iS/cbyVOv/qN7Xpk4l/N1Pej6iOKF8U7W+2qqASO5BYORdE0TyFoR/Ilr3Snj7CwSCJTAl2ZKuCpSsMt2ycIVG099o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759041696; c=relaxed/simple;
	bh=lTRg2QLZ/kUbp0pVRHtFL2EIqAXAC0du+XeXnKk6JLs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=noVu5yGJbwDuGc6nkOafs7S1wubTgduse8jE0EH9GKAiiXMFLl4l43OoWx87AdslwJx/a3AFiMnW8r05bziwlM65LEEZhHYMrIl/tCFS/LuZKzF9civV6Wp8t38i/Wrm/kO+Iaw7FaLkaSQLYZAWK5QIMB/e+8vciowrDAvpJ24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fazxwdIe; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-55ce508d4d6so3157899e87.0
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 23:41:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759041693; x=1759646493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6+l4n0MONZz4a0slWD0pvYSfJJ9WeP67vg+P79m1fQ4=;
        b=fazxwdIeIAff4lCOy76BX1Ltk9FCZx9o1s9dPsbUs9EqV4vEwKadXtKj2qn5fvjV1x
         C+Xy61VMdiG6NxX8vsyFKtEYEN89Yc+A92WPDcCeD0Ows2AVPPmLCcwfE7unLBbfq2Nj
         RBE8KgSaP3JTc9+aAg0PsJDW5Z+UK3NwZZV5VAUno10ZXUHib9qxq+Au0V7elsjzlq33
         UnZaRSOEYDjnnaMGQd64xmUi0wRBkfaYhALP1viEhMIgztV1d5RgIrfWkAaNrVo4c0zg
         ggEwvKX0Q4Vx1oEK1OAg8VVKdEXxQ37aTUaIl+YjFP2FW0WKCRrxHmx1uYVMlRHO7IE8
         171w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759041693; x=1759646493;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6+l4n0MONZz4a0slWD0pvYSfJJ9WeP67vg+P79m1fQ4=;
        b=Z5yF2U3dm0MD2j3uTPsFSdh5ps7R8e9w7vHyXlwJAJUAWExcYUbfhhUZvnWSx3BJBt
         qw5brnfzEi82sVBlAds/upXY5JDLbOF7Bac/UGpmuEUWbKPc8la0qNgxhS9a11Bhue0H
         bzSqD8QEUSYMTwo7NdALvhhDzHzomDXhZdDdKQWxs2Tm71+E84mPJX+2cG4krlc1YGGC
         c8TsTzmAZIXUJst+uqLxCY6VFXuO+vEF56AP4MeYMNLy0hoC14YoyF8oUwxusACt1A5r
         s+8zx2AnlkcJh1thA6J81a+WdDIm/K4AbjIccuH/ry3UI0UBaJ8d7FbZtu8ZxTp5hDPs
         mIzw==
X-Forwarded-Encrypted: i=1; AJvYcCUDxRgA/BmTYzIAyhV224O5hffokDwfbzjBOmqy+dzo+sB0JouwueZxLPNMuH1bBMEWJN/GpRoWtkx/@vger.kernel.org
X-Gm-Message-State: AOJu0YwqwMqy6q7tSyh50p6FV662ZkkjRoFFBmR4FrDuLzA7xmZFuj+7
	899INIzaKfKIsrk5+E4rsaPzlF+g9gwrNk57wmCdF3UUUtWsFR4ti0kZE7sfOg==
X-Gm-Gg: ASbGncs99U0apjhN6hz05x7QP+3t2BVxpqS3Bq/6X8JDkp4yAaRuQ55EjBFB47ESb0O
	uWXU0EG75L3FzN+NQknmFsgLOZyXjg23xAXRsPa+Y4khTLguWeibIbvw8ws5l3WCiGgGRVhSAhb
	AYRtlplwNX9OqBhOGDxmzLlID4NmsFA+rfaOnbR1aeobWJOCInp5tQUkT1nz2wUWyCIQKzpfrhV
	O2NY9/p+h7kWTyA5NgAbLC/VWkQf/KtzHRzofrwwSl/vrs/fx+EdO/E4s6WXkkLz2yHb14cYCVM
	L1y7NaUFFDESFjYSQnfcrGEc4UxpuuKdsCEPWyuJjnVfX1GGZSZJ4zLwyqDVicK59v+IVLRqTST
	R1Uk+iJ8wLWpjz3mBgZDEkZKd
X-Google-Smtp-Source: AGHT+IEcgaLatwY7/VhpRV9y6ZVjBLs8icf5KFY4Z30Ha7VQ5Kg2Dymj6dhwUPoRS5QtGAxYVuOHYQ==
X-Received: by 2002:a05:6512:3d0d:b0:55f:6cec:2890 with SMTP id 2adb3069b0e04-582d3300904mr3995446e87.38.1759041692491;
        Sat, 27 Sep 2025 23:41:32 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58600043386sm973735e87.86.2025.09.27.23.41.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 23:41:32 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 0/2] DRM: panel: add support for Sharp LQ079L1SX01 panel
Date: Sun, 28 Sep 2025 09:41:04 +0300
Message-ID: <20250928064106.46756-1-clamor95@gmail.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sharp LQ079L1SX01 panel is a LCD panel working in dual video mode found in
Xiaomi Mi Pad (A0101).

---
Changes in v2:
- adjusted schema with ">" and dsi0 > dsi
- fixed copyright from Nvidia to Xiaomi since sconfiguration equence is
  based on the downstream Xiaomi code.
- adjusted commit name of second commit

Changes in v3:
- tested with drm-misc-next
- switched to mipi_dsi_dual* macros

Changes in v4:
- removed unused struct drm_display_mode pointer from driver struct
- adjusted resolution in Kconfig description
- rebased onto drm-misc-next
---

Svyatoslav Ryhel (2):
  dt-bindings: display: panel: document Sharp LQ079L1SX01 panel
  gpu/drm: panel: Add Sharp LQ079L1SX01 panel support

 .../display/panel/sharp,lq079l1sx01.yaml      |  99 ++++++++
 drivers/gpu/drm/panel/Kconfig                 |  15 ++
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-sharp-lq079l1sx01.c   | 223 ++++++++++++++++++
 4 files changed, 338 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-lq079l1sx01.c

-- 
2.48.1


