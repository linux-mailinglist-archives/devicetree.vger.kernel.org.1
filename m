Return-Path: <devicetree+bounces-28006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D8781C7B3
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 11:02:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BFC02859DA
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 10:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F4F9FBF5;
	Fri, 22 Dec 2023 10:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ABOox3Xx"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D9E8FBE2
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 10:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1703239315;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=oS+qjXh8HC10X0gWfxfO5QF2dd2RsmhOYMQoP9qGsHs=;
	b=ABOox3Xxi6idu4y+NyvX4yd68tejOuj36tI1C/426GepcqeVlAwsCWtJvFzTz+p52DSReY
	0Ef3r7xrfE4FTQ5aS2YRc+S+nBG5/WNlou15CxBvc2Er7GJogcr9+NC4osScsWIxwjmjom
	zMmfOcyZ8ngPUftopng/WhlQus2KehA=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-645-3hPJFIHhPcytbDCfldyWGw-1; Fri, 22 Dec 2023 05:01:53 -0500
X-MC-Unique: 3hPJFIHhPcytbDCfldyWGw-1
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-50e40182d1eso1564768e87.2
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 02:01:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703239312; x=1703844112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oS+qjXh8HC10X0gWfxfO5QF2dd2RsmhOYMQoP9qGsHs=;
        b=PlWbK6XpqUXgGFBXsUym6xgJzv9ZrU0FyXJVN7n9xMNcqUYFj1qkUh0pt9svOvNPgG
         R5Qv2fVoMQZk5/6zQlINxPkhUrej+9nZpavZB03wT+N1PS6XNdUFD/bqAXi0KjaIm71i
         eXHl8xwlRvtdGkQZd1tAWca9pZyyg3peBoAEiaixIOKKee0cvl3u8mImkk5ltgRjxk5i
         yjITzW0rjWwzaswn+aesipGJW5Zo7NaHR5yJ79dMOcYFh8aCYZKNcZOF1BWbHSALT1lU
         5EV8zIX5Qs6F5TKb0W/RzIRYlJAjy5gWj9+jr87aKx+31V7ye206+fiZzKTN/jMqQTAw
         oBNQ==
X-Gm-Message-State: AOJu0YyFIfaoHM1ksVsLjG6s3OfILaQh37vkStvrB3N2v1zOStd6GtB3
	m9EBysGolXAgAhRD5S5bEx2DK7JoaX4W/bvOcr7JeF2nhWmf9f9E1qqxzni8tFvd2BGzzXuyG9x
	t/OQJg5sZbzD3BdesxnFRom5cednsoA==
X-Received: by 2002:a19:675c:0:b0:50b:f2b0:8002 with SMTP id e28-20020a19675c000000b0050bf2b08002mr565052lfj.1.1703239312016;
        Fri, 22 Dec 2023 02:01:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF3UUA6JbUM94lCnUrXw37J307GXHRb3FGcQu41FituqE8XKR8rvHDKTEOZVs6QkjodmX2xng==
X-Received: by 2002:a19:675c:0:b0:50b:f2b0:8002 with SMTP id e28-20020a19675c000000b0050bf2b08002mr565039lfj.1.1703239311651;
        Fri, 22 Dec 2023 02:01:51 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id h1-20020a05600c350100b0040d3f4b1c8esm4883265wmq.36.2023.12.22.02.01.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Dec 2023 02:01:51 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Conor Dooley <conor@kernel.org>,
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
Subject: [PATCH v4 0/4] drm/solomon: Add support for the SSD133x controller family
Date: Fri, 22 Dec 2023 11:01:37 +0100
Message-ID: <20231222100149.2641687-1-javierm@redhat.com>
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

This is a v4 that addresses issues pointed out in v3:

https://lists.freedesktop.org/archives/dri-devel/2023-December/435686.html

The patches were tested on a Waveshare SSD1331 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator. The binding schema were tested
using the `make W=1 dt_binding_check` target.

Patch #1 and #2 are fixes for the DT binding schema of the existing SSD130x
and SSD132x families.

Patch #3 adds a DT binding schema for the SSD133x controllers and patch #4
extends the ssd130x DRM driver to support the SSD133x controller family.

Best regards,
Javier

Changes in v4:
- Fix typo in commit message (Jocelyn Falempe).
- Add collected tags.

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


