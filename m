Return-Path: <devicetree+bounces-27074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4771D819194
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 21:34:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7A47B1C24425
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 20:34:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E9A11DFC6;
	Tue, 19 Dec 2023 20:34:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XKzFCZ55"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD8839AC4
	for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 20:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703018075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=G3PrML/moN4j55SwG+/o34m/ejkpgfVZcKcfEFV4pS4=;
	b=XKzFCZ55iq9OZ5Larnz62035GsxsYIZXYe9qkZEYMa+aelvzagg6e4ckdhnWIvooIzh+qT
	t56TYNu1zvaTxeHEpJr4guSbntIJj/gAiXCh73asNBuMxF3v1HXs9hssE2yXsDt/O666MY
	NV+uQCf43WCwJSOpVmQIRZdDdK9UTh0=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-213--stWjhQROUOG5WyWrwo0dw-1; Tue, 19 Dec 2023 15:34:34 -0500
X-MC-Unique: -stWjhQROUOG5WyWrwo0dw-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-40d2a2a5522so8170455e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Dec 2023 12:34:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703018073; x=1703622873;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G3PrML/moN4j55SwG+/o34m/ejkpgfVZcKcfEFV4pS4=;
        b=XuZfvSfOWwBjkf3rXDEgzooBz8N1NXX1Odsh6kwRDH2oDWbfZLA06CzTfXvk9eyVK7
         8I3R+xtWuVVrcDUCo4Q/18Q2DZDI3M6+FFJTvrRwOdc/bReFflGqA7ED2HBK+tLKpZHw
         671HwW+vDow1nlF8cSW+Kvyq7OzVRHHi/bkpFW3wPsqw+dWIxivUP7211uH45Ce7mYRy
         LT3biq8+OVzmFr63gc5y5dAMoMvc+yKnnXtw3XqdxdeXLqQEz6sH59abffEDcTB25ykX
         3fVccNG/U9TZy3+uelBlNgV7L4ftC1wVSmMj15TodzjItRFaXT1+kNDrE7dcBI9gIcqT
         aT9A==
X-Gm-Message-State: AOJu0Ywa95x6e+pIo5FfpiAFJpTSK5iQM30RxWDXeDsuasHvYGsRs99t
	yY5t3wE4lF0M8/T+fBDGtwBVdf04p8gJNmNjQuKOSbTH1IrD1v6T8zyTYU10ClQ5jgbX0QaU088
	YIN0eXgaEuNNpltbPc4mmJg==
X-Received: by 2002:a05:600c:34d3:b0:40d:1744:6cd8 with SMTP id d19-20020a05600c34d300b0040d17446cd8mr1763000wmq.234.1703018072860;
        Tue, 19 Dec 2023 12:34:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE23XRYfTnL6CdjKlBDQ8esfC/c4AICDWtZHNoDhP5YZ2smTAkHdm4ruh5KSDtDSEL4FQBdew==
X-Received: by 2002:a05:600c:34d3:b0:40d:1744:6cd8 with SMTP id d19-20020a05600c34d300b0040d17446cd8mr1762989wmq.234.1703018072538;
        Tue, 19 Dec 2023 12:34:32 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id i7-20020a05600c354700b0040d2805d158sm3965414wmq.48.2023.12.19.12.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Dec 2023 12:34:31 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Geert Uytterhoeven <geert@linux-m68k.org>,
	Maxime Ripard <mripard@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v3 0/4] drm/solomon: Add support for the SSD133x controller family
Date: Tue, 19 Dec 2023 21:34:05 +0100
Message-ID: <20231219203416.2299702-1-javierm@redhat.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hello,

This patch-set adds support for the family of SSD133x Solomon controllers,
such as the SSD1331. These are used for RGB Dot Matrix OLED/PLED panels.

This is a v3 that addresses issues pointed out in v2:

https://lore.kernel.org/dri-devel/20231218132045.2066576-1-javierm@redhat.com/

The patches were tested on a Waveshare SSD1331 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator. The binding schema were tested
using the `make W=1 dt_binding_check` target.

Patch #1 and #2 are fixes for the DT binding schema of the existing SSD130x
and SSD132x families.

Patch #3 adds a DT binding schema for the SSD133x controllers and patch #4
extends the ssd130x DRM driver to support the SSD133x controller family.

Best regards,
Javier

Changes in v3:
- Move solomon,ssd-common.yaml ref before the properties section and
  width/height constraints after the other properties (Conor Dooley).

Changes in v2:
- Unconditionally set the width and height constraints (Conor Dooley).
- Fix indentation in the DTS examples (Krzysztof Kozlowski).

Javier Martinez Canillas (4):
  dt-bindings: display: ssd1307fb: Add vendor prefix to width and height
  dt-bindings: display: ssd132x: Add vendor prefix to width and height
  dt-bindings: display: Add SSD133x OLED controllers
  drm/ssd130x: Add support for the SSD133x OLED controller family

 .../bindings/display/solomon,ssd1307fb.yaml   |  20 +-
 .../bindings/display/solomon,ssd132x.yaml     |  12 +-
 .../bindings/display/solomon,ssd133x.yaml     |  57 +++
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |   5 +
 drivers/gpu/drm/solomon/ssd130x-spi.c         |   7 +
 drivers/gpu/drm/solomon/ssd130x.c             | 370 ++++++++++++++++++
 drivers/gpu/drm/solomon/ssd130x.h             |   5 +-
 7 files changed, 459 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

-- 
2.43.0


