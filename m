Return-Path: <devicetree+bounces-194942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4032AAFFF30
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 12:26:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F8885A4A0C
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 10:26:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0781C2D8771;
	Thu, 10 Jul 2025 10:25:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JU8iazpe"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 620E12D46DE
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752143151; cv=none; b=LfIO7KYgJeFIH7k7avtDTOXwlNF6eFFY4Jbt1PucQGJ4EbmXQWxeeGv77lcZKWRnHISwdCuHOo1hmIkacYKv9xzyJuuQmCtt3tGU4L3V/TWXTNrAuFBelrOfycmH3OY09xGeV405b9JyfAh2lqQOCr4j4RtSoRbUlJqmF7GUqz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752143151; c=relaxed/simple;
	bh=YX5iIzBEC8wBhwRMB2EufE02wlzwKShJxxQ7NFiJwds=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DPJYGT/wQRU9pUTVOIRkFPl10f//SNNn3JK4F4LVZeFDn5f0CfL6g6FEnRJeop1ZA0/rYjZBpNlgLggkl1EPdcdmD/OCZ3Nbd5R3N4WDi5K1EG5WKLm5f3Kd3gP9LA5FWl6dJr0L1sxZEY5zZ9cOpNDMS8NtprhZAppG82fqJvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JU8iazpe; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752143149;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=1ND1pGEOAughrkErjCqE+57XmE0dcte7108oeuugxKk=;
	b=JU8iazpeHk45ZdNIMTt561wqA4/AenV1eIr0xx8w/S3WEIRta5jVrXu3Htlri3ko/c6GOP
	KsdoxCi4k809pqvZS0gV1dRw9fFghHLVagbG/1Wvct2nL1wF6B3lyQuXPBWdKX67hLpTQi
	n5iYDQeCu4enNuVDU+GRbYYnowrGBW8=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-357-1PIY-3F_M0GQyr-8JYBdGA-1; Thu, 10 Jul 2025 06:25:48 -0400
X-MC-Unique: 1PIY-3F_M0GQyr-8JYBdGA-1
X-Mimecast-MFC-AGG-ID: 1PIY-3F_M0GQyr-8JYBdGA_1752143147
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3a4ff581df3so428499f8f.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 03:25:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752143147; x=1752747947;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1ND1pGEOAughrkErjCqE+57XmE0dcte7108oeuugxKk=;
        b=KbyZIleaKsoBiSU2eJNTrvSAuaF2QGMDNIKa2TUagGkzuG9dTVeO/jIcf/K+6ZhN7X
         ZhdWz6jB+pQ90T/ZvMa2lnxwAgu8dXLewvkJYF3oo8DBmfW1P7jGXO0aOBwWpB44PCV0
         uEhhmp/DLaRouC6eQUF8o4EWjDblCQ/GtkEKJq2TV4Gz0Gnp1WrMROAE04bZL6XXrMUF
         r1XMmX2HYQNA8EgxKxc9YiDtbXsIqJmsgQbH2wm2FsSkFrUyYBD+YIJfUviM9ycBHPx4
         KwQMgEgjAxq/dynyYAwPvedrul6ql5RriuAbsKLPWMd338q4umML/YgWTOx68rTysyCX
         sFtw==
X-Forwarded-Encrypted: i=1; AJvYcCVExyKP5XpBw5+xk9rkKXsTBGxu8C/o9pz1HDYXw3NR/540/KwdgBvOXHjlTHXhPmrdDxR1zC0o+6T/@vger.kernel.org
X-Gm-Message-State: AOJu0YyJl8U5FwIG/Qq6iO5+fxbWcjUv+EtrmUr3aBU6Ocdw+gfVU7nt
	7G1BWikSU5MtThn3CKUjfUhQNhHwU429t5F9Sq8PrY8jdfzBiJqOk4D0fsl9n6JY4onyjlR+8gp
	fkizz075fIyZIfF3q33dSd15iYBYZeoxfGfRqoEsDNCGKXk7Iu6fgYxh0UQwsSIo=
X-Gm-Gg: ASbGnct0eV1NsAybiZ34FkZXgIo3WxzIN1w6AQUm46e+74s4xyK5moDcHKoQyeK4ISU
	mZp6wKXE9oxmpyydNWCVXBSeiSUOvHugfOvRnjk5WgBH/dkM0Bi+EFDsskgTYsuDl6ydFCaIAGT
	y+AuNX/UehrNpa0FsoKyJT88tUCZY+MiodqizLVpaqQKKgPKHnSdauZqInf4dotUeJP4VE18J8Z
	mmN4kjpu6eGZQ2ozXzCj7FHshN8pYtq/IyJyHoGzkthppDeViKQr7OWNtglbD5ZgjiHArE0GpqT
	Hax0HuUUdAif3oa9sV0l477UyBz7FD1gQnLnSBtPUpZ+/9Y=
X-Received: by 2002:a05:6000:230a:b0:3b5:e78f:f4b3 with SMTP id ffacd0b85a97d-3b5e7f142e5mr2661623f8f.11.1752143146936;
        Thu, 10 Jul 2025 03:25:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGw0Fp3hGMQ2ioeBb7L40qD3wSKjLbm3xoYLDE8V5zfgO85zTk2YhsvuUsIz4ABFDvjQSMY4g==
X-Received: by 2002:a05:6000:230a:b0:3b5:e78f:f4b3 with SMTP id ffacd0b85a97d-3b5e7f142e5mr2661593f8f.11.1752143146504;
        Thu, 10 Jul 2025 03:25:46 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e26daasm1512820f8f.91.2025.07.10.03.25.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 03:25:45 -0700 (PDT)
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
Subject: [PATCH 0/3] drm/sitronix/st7571-i2c: Add support for the ST7567 Controller
Date: Thu, 10 Jul 2025 12:24:32 +0200
Message-ID: <20250710102453.101078-1-javierm@redhat.com>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch-series adds support for the Sitronix ST7567 Controller, which is is a
monochrome Dot Matrix LCD Controller that has SPI, I2C and parallel interfaces.

The st7571-i2c driver only has support for I2C so displays using other transport
interfaces are currently not supported.

The DRM_FORMAT_R1 pixel format and data commands are the same than what is used
by the ST7571 controller, so only is needed a different callback that implements
the expected initialization sequence for the ST7567 chip.

Patch #1 adds a Device Tree binding schema for the ST7567 Controller.

Patch #2 makes the "reset-gpios" property in the driver to be optional since that
isn't needed for the ST7567.

Patch #3 finally extends the st7571-i2c driver to also support the ST7567 device.


Javier Martinez Canillas (3):
  dt-bindings: display: Add Sitronix ST7567 LCD Controller
  drm/sitronix/st7571-i2c: Make the reset GPIO to be optional
  drm/sitronix/st7571-i2c: Add support for the ST7567 Controller

 .../bindings/display/sitronix,st7567.yaml     | 63 +++++++++++++++++++
 MAINTAINERS                                   |  1 +
 drivers/gpu/drm/sitronix/st7571-i2c.c         | 55 +++++++++++++++-
 3 files changed, 117 insertions(+), 2 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/sitronix,st7567.yaml

-- 
2.49.0

base-commit: 93eacfcdfbb590d9ed6889d381d5a586dd1ac860
branch: drm-st7567


