Return-Path: <devicetree+bounces-26199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC2A815E69
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 11:07:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 887FDB2188E
	for <lists+devicetree@lfdr.de>; Sun, 17 Dec 2023 10:07:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A382C1FC1;
	Sun, 17 Dec 2023 10:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="PmAuttU6"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0EAB1FAD
	for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 10:07:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1702807667;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PwCXRxshfx8ZM0R5hK4eeYL2KSGd//EyP+jsBCrOQIw=;
	b=PmAuttU6Xalfw6hKTj2v/KXAIddajiSpNHQud0EhfbqxkwbNtiGA7blXYiXIV0JTDS7HXG
	r6HGP1NwuNToXPVXoqJXiRh0avhsxnWhfyC8/1OFO0L5P4q7ZXi/+IvMBfHEKVJRf6gsT3
	4CdrXeCWIgnWfvrjlq2jMagckxVa7JA=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-166-F5touGrSPZ-zR0uFc97Ssw-1; Sun, 17 Dec 2023 05:07:46 -0500
X-MC-Unique: F5touGrSPZ-zR0uFc97Ssw-1
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-40c49cb08fcso16316665e9.2
        for <devicetree@vger.kernel.org>; Sun, 17 Dec 2023 02:07:46 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702807665; x=1703412465;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PwCXRxshfx8ZM0R5hK4eeYL2KSGd//EyP+jsBCrOQIw=;
        b=WvzWjjtFZCi0EaASLpBeXdVQqG6Xs1YS/kshSQFPiDb4A753SYQrRvQTJEiDFOiKSN
         H6BjaZ5UM6TAOnRwZb/iXUfs32tmpd+Nf6V5P5U3IlNhoCmr49MKqhKiLrS1o1X3cCqF
         nd15VaYVZozIOfwwzfn9byEDCAAU4b2NX5aSs9s6iOLY3kzjva12VpOGsnQqVL/uMGd9
         hmU3SGDLnAyHQCUhm+2W1BJ/MT1yIahjY8A0J+fh2O10oJTKfEtLvRSU4h/b/R/TKL5Q
         mgnv/mJyNIwm1xy5jix+JCesc/XxYJ3/KFGwayl4qDKd4B7qpQIVBPslMzlsaK7r9pTK
         rB0A==
X-Gm-Message-State: AOJu0YzocO7Rx9F2MnwaXDYezP+Ze1NM/wBqtutMVn/C6WuNR4tBa3ui
	zmCOW3ugFjuRUZs+NrP9kuIEbwYsI1DYnLXfEDPSb3btSyr4X0NyFm0lVimqo7gpIsp4mHHGSMV
	Q0R8dDN1WbIzgtrrQwz667g==
X-Received: by 2002:a05:600c:5012:b0:40c:6bfc:4bb1 with SMTP id n18-20020a05600c501200b0040c6bfc4bb1mr1982306wmr.38.1702807665087;
        Sun, 17 Dec 2023 02:07:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFr/dUnxatgvI3QmEkCMBXVdE2DJBX2ZugmD4z83PXtxRvr9gelZBQVfY9JdfW/nkdU7628ww==
X-Received: by 2002:a05:600c:5012:b0:40c:6bfc:4bb1 with SMTP id n18-20020a05600c501200b0040c6bfc4bb1mr1982297wmr.38.1702807664778;
        Sun, 17 Dec 2023 02:07:44 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id w7-20020a05600c474700b0040c41846919sm30661883wmo.41.2023.12.17.02.07.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Dec 2023 02:07:44 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 0/2] drm/solomon: Add support for the SSD133x controller family
Date: Sun, 17 Dec 2023 11:07:02 +0100
Message-ID: <20231217100741.1943932-1-javierm@redhat.com>
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

The patches were tested on a Waveshare SSD1331 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator.

Patch #1 adds a DT binding schema for the SSD133x controllers and patch #2
extends the ssd130x DRM driver to support the SSD133x controller family.

Best regards,
Javier


Javier Martinez Canillas (2):
  dt-bindings: display: Add SSD133x OLED controllers
  drm/ssd130x: Add support for the SSD133x OLED controller family

 .../bindings/display/solomon,ssd133x.yaml     |  63 +++
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |   5 +
 drivers/gpu/drm/solomon/ssd130x-spi.c         |   7 +
 drivers/gpu/drm/solomon/ssd130x.c             | 370 ++++++++++++++++++
 drivers/gpu/drm/solomon/ssd130x.h             |   5 +-
 5 files changed, 449 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd133x.yaml

-- 
2.43.0


