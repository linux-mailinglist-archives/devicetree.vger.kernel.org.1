Return-Path: <devicetree+bounces-26597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D9460817075
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 14:28:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 894F91F24C22
	for <lists+devicetree@lfdr.de>; Mon, 18 Dec 2023 13:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F14FA1D132;
	Mon, 18 Dec 2023 13:21:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="XMQCPFNj"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E00D0129EF8
	for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 13:21:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702905687;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=QgMgRDSHYmMiI0OrgNFQA61j2Lc6QloANV8tk9hWb9Q=;
	b=XMQCPFNjQ8ZS208v059fftiSgkjhjn7QZhYabMRdltya+pVt0JVF3YAMPk/LueJNzYfJRR
	Z79boo+m6XNJlG54CHLE2jFI7DUppMlF5P8bQG+llzxQijKJzcRiXwen5hoeqti3R5C4PQ
	5YK0E7FB15Eda/WDOphnZQ8Z+2ztjiM=
Received: from mail-wr1-f69.google.com (mail-wr1-f69.google.com
 [209.85.221.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-637-yoazvTt-NC-5i3jFjk9Zqw-1; Mon, 18 Dec 2023 08:21:26 -0500
X-MC-Unique: yoazvTt-NC-5i3jFjk9Zqw-1
Received: by mail-wr1-f69.google.com with SMTP id ffacd0b85a97d-3365791d24eso1704130f8f.1
        for <devicetree@vger.kernel.org>; Mon, 18 Dec 2023 05:21:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702905685; x=1703510485;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QgMgRDSHYmMiI0OrgNFQA61j2Lc6QloANV8tk9hWb9Q=;
        b=fId8W7g6v+slP/dxVjCnrRi896G+9tFghX42f/kTdzmx0vbOORB9HKNeHThZiDX6vf
         eq9FZmDSHSp61qhpJvMrBIDuVOVU3ADDcTzWISY/mhRqGD3tgxK2AL3yy1mxXpZDonmo
         Uh6qqLuJUsNlsKuBsLShmNMwxWHCIh7Yw67hr3yyTC/J7uZkol1QyEMeKId6dWRd6LTh
         AvBtPR64JYQmIw7mbZciuIrBcSWnRozQ2rAa+z521lg3FO1cGxrhueMhpTmSe0qFH9Ua
         lqjIGnVhfrQ9xew5GC47pId6AkDx1D+e/fbmGY2q4wUHC/vbGeZA0YFmtKiSdMsYjy7v
         3rXg==
X-Gm-Message-State: AOJu0YyTbSsUDeNHbaegodJncS84qYvleYJu/Yd10ZJ/mc1ZT1s6puNT
	H54bR1lTNB/KUwCJOCYEqHVyqAEx9txApqhY+66Uzhp3NUQd2bPRcXp6rYrmECshxlFTC+uugs/
	4PE0vr1LYUXb/oQt8yNm0Dg==
X-Received: by 2002:a05:6000:ccf:b0:333:4c30:dae4 with SMTP id dq15-20020a0560000ccf00b003334c30dae4mr7208818wrb.45.1702905685118;
        Mon, 18 Dec 2023 05:21:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGeADstQsPMxdpXUY6VIcyZImy7z4H6FSe/tPLdOt2UZrsYef/bw1noI6ZXdZaCctcd3r5dsw==
X-Received: by 2002:a05:6000:ccf:b0:333:4c30:dae4 with SMTP id dq15-20020a0560000ccf00b003334c30dae4mr7208796wrb.45.1702905684680;
        Mon, 18 Dec 2023 05:21:24 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id j4-20020adfea44000000b00336471bc7ffsm12370217wrn.109.2023.12.18.05.21.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Dec 2023 05:21:24 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Jocelyn Falempe <jfalempe@redhat.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Conor Dooley <conor@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/2] drm/solomon: Add support for the SSD133x controller family
Date: Mon, 18 Dec 2023 14:20:34 +0100
Message-ID: <20231218132045.2066576-1-javierm@redhat.com>
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

This is a v2 that addresses issues pointed out in v1:

https://lore.kernel.org/lkml/20231217100741.1943932-2-javierm@redhat.com/T/

The patches were tested on a Waveshare SSD1331 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator.

Patch #1 adds a DT binding schema for the SSD133x controllers and patch #2
extends the ssd130x DRM driver to support the SSD133x controller family.

Best regards,
Javier

Changes in v2:
- Unconditionally set the width and height constraints (Conor Dooley).
- Fix indentation in the DTS examples (Krzysztof Kozlowski).

Javier Martinez Canillas (2):
  dt-bindings: display: Add SSD133x OLED controllers
  drm/ssd130x: Add support for the SSD133x OLED controller family

 .../bindings/display/solomon,ssd133x.yaml     |  57 +++
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |   5 +
 drivers/gpu/drm/solomon/ssd130x-spi.c         |   7 +
 drivers/gpu/drm/solomon/ssd130x.c             | 370 ++++++++++++++++++
 drivers/gpu/drm/solomon/ssd130x.h             |   5 +-
 5 files changed, 443 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

-- 
2.43.0


