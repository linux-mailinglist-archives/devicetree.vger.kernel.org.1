Return-Path: <devicetree+bounces-195994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FB5B03C1C
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:44:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E7C7188E1E0
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F16124466E;
	Mon, 14 Jul 2025 10:44:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Fj3+4kIP"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C62223BCFA
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752489881; cv=none; b=VqM8fteA0XIBoz4WLg/c/of5Gi4yb9ueSzDdoJwIYLZ7RN2IJFxbcNs8XGB7P4BQPlHqbEiqwCEoiDzLC/c6bEZr2tMneXEgyL/yjE9BYaOXLwRfG/SqmDtd9XuCKEdyIccYRu8AmS0JfbVUVCrFgeLp9oa0QZx8k81xPcyo9t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752489881; c=relaxed/simple;
	bh=IZmvZ9WPBWI/TeQx9w45tvln8ykXKfPUu46LNGR6eIk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=TdchS7Qyr3WNPcFv/DI8f9majFLrwajDH5ru0w8jUAX8sggF0ha6UQeUaYm/onyxrowe85ylyICQMgUOa/OnwWPCnqc/hBrKL6GDUvv4WAvyrDWaoVYPGn5gsmPNHiG7j5ul4XEkSCMkQkb0zcJibnQEWFHGPJ2vNUSgYbanBrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Fj3+4kIP; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752489878;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yyAlKBmaunFz8ZQhBWMNPAv1OQI+eMdSmuzjRTl34ZM=;
	b=Fj3+4kIPAuW0vlrFEFVgG6HCpUQ80vlINTN0rVYaAWZtL5y7t/cF1nbrN07vaJyShPMv3p
	MJn6MqjKFEjGssRNhZFpSchnPduMAnIr0zHaj9QCc5q9itOOfooH8WjTDVHTz1T2l+/XJ8
	tzGQUqXyfHBOcgNGvlDJnGTEFWbQLXs=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-41-Q30Q16coPnq2XPm2R5yFMw-1; Mon, 14 Jul 2025 06:44:37 -0400
X-MC-Unique: Q30Q16coPnq2XPm2R5yFMw-1
X-Mimecast-MFC-AGG-ID: Q30Q16coPnq2XPm2R5yFMw_1752489876
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3a4f85f31d9so1602181f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:44:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752489876; x=1753094676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yyAlKBmaunFz8ZQhBWMNPAv1OQI+eMdSmuzjRTl34ZM=;
        b=mf4e45MCIFo+G+7BUR659ghridaUOPa9XNptCy3/DdHnRGKSxPUt/ufxdZ+tHOB+uj
         Qz5//WvqX4L1GT6rFyBxOpidH5o/n2Sjhww8FYuDzhoED4VLChsnwkfjlTXRKg4bCwhP
         WZ7GebqTwd2AI4cXEtyLV4Dvt7lNBwiiPgjF5UVmh6Aegfuo0IxoukRfsNJVFRuFEbhe
         ZpBhCAYiu8RrTAiS+tm8FmDojaLWu7SI665J9w4DHeNdKSLLtp5QWjBkWlBhqUJwmvA8
         +ceQvFl+V3EQ18+itU4I4OvHEgN8HK3ZVOfDBtEnfpV8HXtBzEPNPhlPKNO1U8x/QJYj
         g+8Q==
X-Forwarded-Encrypted: i=1; AJvYcCX66iR+zLkglAUrBzvt/s1R0aV63d3tsgetuhX4fhEE8/Nno8S5AKvH0IOrsk+R6nJsPOf5nXaoIQ72@vger.kernel.org
X-Gm-Message-State: AOJu0YzRJR5VFM00sPnWpOw4VK6JjZK8yFQDR8xCG0AWCTBoEKS0PSPJ
	gTXxfAYti+eDbux/uYjtbcBtGAc/OSqZnmvGAgGccI2QeotQJ6bt6UBlT5oOf17FjlcfUGZxNDE
	REUgx74NS6HGM9sXvuxbc0BBtHA5Qy2LRhAfgVfuceaLcpFDOj5b0Pp3F7d2nBkU=
X-Gm-Gg: ASbGncuX8Xjt3V6wy24UlK0pFXngOFQ6SiqJp9Xr1ZrjNsKpBZqI67jGgM0Bjrr7WZg
	sR0V3bK/IlxORWsC2AGFmKj88c08PxsauNT4AhW0Dy1OmeJD5ZL5ZaqQEGAx2gRzkQLTyPC5cgo
	hq7/uWeEPKiC+LSRPJUyt1Y71UoDzA5p9Kq046qQQjSTcWvDBUyBptby3YwGsQBF/AAxwSLoxc1
	asM2gJgh8mPiycV5U4M8mu5XnXIwoDlT64i+Z7N/pW9YwFxGpb9Fj2HxIIo3T6LxlevKsNXu4/a
	xloMRL2ueJ4a1ZluxtQK9X07gtvrBtzt
X-Received: by 2002:a5d:58da:0:b0:3b5:def6:4b2 with SMTP id ffacd0b85a97d-3b5f18d975cmr10641409f8f.45.1752489875941;
        Mon, 14 Jul 2025 03:44:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHndWVX2/3i6ySGFYkMs+g/Veyvvo3m6eT3vBl5Tmlx4cdn8hhICuraqnULOXZmnGxtJAOd6g==
X-Received: by 2002:a5d:58da:0:b0:3b5:def6:4b2 with SMTP id ffacd0b85a97d-3b5f18d975cmr10641383f8f.45.1752489875477;
        Mon, 14 Jul 2025 03:44:35 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd15bfsm12317589f8f.19.2025.07.14.03.44.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 03:44:34 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: ipedrosa@redhat.com,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Marcus Folkesson <marcus.folkesson@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v2 0/5] drm/sitronix/st7571-i2c: Add support for the ST7567 Controller
Date: Mon, 14 Jul 2025 12:43:59 +0200
Message-ID: <20250714104421.323753-1-javierm@redhat.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch-series adds support for the Sitronix ST7567 Controller, which is a
monochrome Dot Matrix LCD Controller that has SPI, I2C and parallel interfaces.

The st7571-i2c driver only has support for I2C so displays using other transport
interfaces are currently not supported.

The DRM_FORMAT_R1 pixel format and data commands are the same than what is used
by the ST7571 controller, so only is needed a different callback that implements
the expected initialization sequence for the ST7567 chip and a different callback
to parse the sub-set of DT properties needed by the ST7567.

Patches #1 and #2 are some trivial cleanups for the driver.

Patch #3 is a preparatory change that adds the level of indirection for the DT
parsing logic.

Patch #4 adds a Device Tree binding schema for the ST7567 Controller.

Patch #5 finally extends the st7571-i2c driver to also support the ST7567 device.

Changes in v2:
- Use a different parse DT function (Thomas Zimmermann).

Javier Martinez Canillas (5):
  drm/sitronix/st7571-i2c: Fix encoder callbacks function names
  drm/sitronix/st7571-i2c: Log probe deferral cause for GPIO get failure
  drm/sitronix/st7571-i2c: Add an indirection level to parse DT
  dt-bindings: display: Add Sitronix ST7567 LCD Controller
  drm/sitronix/st7571-i2c: Add support for the ST7567 Controller

 .../bindings/display/sitronix,st7567.yaml     | 63 +++++++++++++
 MAINTAINERS                                   |  1 +
 drivers/gpu/drm/sitronix/st7571-i2c.c         | 94 +++++++++++++++++--
 3 files changed, 150 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/sitronix,st7567.yaml

-- 
2.49.0

base-commit: 8f80b1d66f927e818e5205fccf572b2adc5e318b
branch: drm-st7567-v2


