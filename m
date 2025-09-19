Return-Path: <devicetree+bounces-219358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A070B8A590
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:39:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E877E3B0635
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:39:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2684331AF20;
	Fri, 19 Sep 2025 15:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RcPwZbUA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCA031A7FC
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758296352; cv=none; b=NgG2L/pWyBL3R6RujVyeemWA+cESW+L6bTQAevtcjZu61p9/e1YvzEVcXY+GxuVNsOqfIdoCh23cMpQaQXwaaUrmDMvtBoRO7ZuBjIPac7W/Ltsqjat8Rn4xaFAcd/njssliG/XvCSoe6Hr7a+5Pihihy8lRB9qCIhCjrkDEhJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758296352; c=relaxed/simple;
	bh=K0k+4kNcMJsdNdrqorQ4S7Pg5Q5SSIopCK9d++okImQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=jgiuMb6XLUlSVUuJFq0YYlamj82clSpqO4VSb5xOF9PHWcr1qCZrcyPMF60cPx+XOHfG3d1oSjm2icb5XWNYUduwDvMRbW3IeUtzUTKLUp1Y875LNlBMZaDYDWEyCie7KpIWVfHwQxxthjT8pR8PJ+M7bTVRZr1C3cXxnlHYYiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RcPwZbUA; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-55f74c6d316so2544977e87.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758296348; x=1758901148; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uctKhO+/UeiiSpqt6MjSlg1WxmH8h+yZMn/dalnwyT8=;
        b=RcPwZbUA1+8xlMSkpVoYoLeXBt44D10Ob/IWJdXthnBnDsTEFwNB9decoIl14+2+oL
         s+qwYmtTJYzjLjMKiaAr6GduPKVBmlf/Xh3Tosvdldgfb8KTXIkyjRwTYjhOGKSmPGuO
         kyZsJiOILUHgp2zHoRnXU0LVpyeGuQ2NTJ6kpndg+Fh5DSphO8CCs/ZjpfEA4YbL0oZU
         GlSODIVOKtjvVAmfyISK7NWB4aEkgCFJJqdOpWhY7syzdE51u1Fn9ssERcBbX3mF5mO4
         pwVMAmt9MpKDU/E/9Xo4g1c0QgnT4hN0m+sxWpzlPX+mCjW/3arPa3baiFCFwtaN6esK
         +tdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758296348; x=1758901148;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uctKhO+/UeiiSpqt6MjSlg1WxmH8h+yZMn/dalnwyT8=;
        b=aLhxkgylBF6oOlhor1mvVvCBj5QT19AwGVw7zCDTkHpUGI5tr94YZxu+G7StJXMoki
         ZdrdYZBUYT+zZSv/6sZlLhHPmh0CqlwmBxR5gQlRJGtk3gkM+iJ9bfehncb2yMXFuXat
         +xaPb/mrP3hV/+U3DMH3CdfQh16j4BAInJcDM1Db5Q8iKIF/LYjik2Vt432DqbIqE6aB
         uDuaiZrtwusx+Y+Ytlmq/gsyglI2+GrkS7I7o9+gGgG8aiqAnvP9ux2CRIb/xaZY45WI
         WNW8t9LyV3wnh6ii9HmQcZYL9zd4OWqRmf3zchAGln5/7UTz9PlVni0eIU9wobT4nz4D
         g5Fg==
X-Forwarded-Encrypted: i=1; AJvYcCV7b5PevRhxWgABTgio4FWfUhCnscH8JJWn0YeijyXJCl2XJpLuwQKWX7NbISyOeacbZgQWUuIAp/rm@vger.kernel.org
X-Gm-Message-State: AOJu0YzP/HHNwj6g5LwzSgJMNwIK7mNWj/kQvtUSk7itiuSJRd8gIQli
	0HiYhr00P79WBVM598aBWdybxaRPXv75Hs4d4mZxc+qN+MauisLd9YVz
X-Gm-Gg: ASbGncvGKLkzOxTZsT+05KiFefVnMv8jKY5j+GhDgPyWWe2ZvZPrTdLoECSw9Ga8KXD
	quGXxTmSQe2CCM2NpdriTmlHHH19U6SBxa/518yuajIffdUWBlYu7/3pLYOlmoyGn+5P9Lu0Dib
	AjJ+0AAcA4q8Q9JbQH4qtwuj5N7dXCf47eDtGhJW8YJ05g2VSJ7J5eAUrsDwSS++d11NhD8vtV8
	nZoIQIWgzKJUif6fvWOIPsKSreDDDTLNoaNAOGOsMeYBWVyZb1xvY/dI7zW2AkTV9BFc+5DGXGt
	gLYLlWuY1xQ2qKa1dlX+m7wRwW15qnVrmAvv7nb7PDymx+kB6jv1a8iXybLK20ahCPUxPUP2Dwy
	S5fClWAU/cK/MGQ==
X-Google-Smtp-Source: AGHT+IGJfZhXf/HH8Pyz+cqkoqEOZKpxJz2zqRcH4yC3gZ73i2LnNl7A6Sca09TBNTUOc4JHpYxYMA==
X-Received: by 2002:a05:6512:6508:b0:55f:6c5d:759d with SMTP id 2adb3069b0e04-579e45216bbmr1104441e87.49.1758296347969;
        Fri, 19 Sep 2025 08:39:07 -0700 (PDT)
Received: from xeon.. ([188.163.112.70])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44771sm1485769e87.20.2025.09.19.08.39.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:39:07 -0700 (PDT)
From: Svyatoslav Ryhel <clamor95@gmail.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Svyatoslav Ryhel <clamor95@gmail.com>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 0/2] DRM: panel: add support for Sharp LQ079L1SX01 panel
Date: Fri, 19 Sep 2025 18:38:37 +0300
Message-ID: <20250919153839.236241-1-clamor95@gmail.com>
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
---

Svyatoslav Ryhel (2):
  dt-bindings: display: panel: document Sharp LQ079L1SX01 panel
  gpu/drm: panel: Add Sharp LQ079L1SX01 panel support

 .../display/panel/sharp,lq079l1sx01.yaml      |  99 ++++++++
 drivers/gpu/drm/panel/Kconfig                 |  15 ++
 drivers/gpu/drm/panel/Makefile                |   1 +
 .../gpu/drm/panel/panel-sharp-lq079l1sx01.c   | 225 ++++++++++++++++++
 4 files changed, 340 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/sharp,lq079l1sx01.yaml
 create mode 100644 drivers/gpu/drm/panel/panel-sharp-lq079l1sx01.c

-- 
2.48.1


