Return-Path: <devicetree+bounces-196473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F153DB05868
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 13:06:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 25071564859
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 11:05:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5A0C2D839A;
	Tue, 15 Jul 2025 11:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RkXW37NZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221472586C7
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 11:04:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752577494; cv=none; b=VhX9ngflyeMKfgAgEhfWx0PhWzM0gVnRcPo79ZyNqrZUGdvwaiywr9wmC1K2B7iN2HOOM7GA2MKMjIU8pe9lg36RBhcsPI0ysAbx/vu13v1ogq/8UBvNnE0y0W8xzEbLpBOdR2M/AXO5SN8aTQk58lgl8ROlWnhwGuKkrDx3ZiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752577494; c=relaxed/simple;
	bh=p3QGp6MibxuVev5xgCfzB8TWg8YFWN6DNRGpzchTuBQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EPqJJ5x7EazqBRW6MF16RBgesnQ7p1clzB0Cdlg+5mykDs6W5hYY3VPc9Pz1U/alXq0DB1mC24weFy27dJ/aRxe2BMdwyygetG6ldspZHlmSId+d9AG1KlC2sDjw+zfJTniVhWc8lKhzfr+5ic2PjkkqVRm5WbtOAUL5ACBDgSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RkXW37NZ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752577492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=VWMAjYtNhkJh5mbP6XrZahkgyK59U5VmPrOphqHUics=;
	b=RkXW37NZlEj8kRdqqx7h8e93L1ZUa4fGx3SvHzcWL2QNcReB0y8x3UdFb3NLnBVm+bSQR2
	cmUIHtccic8IO1jHUKmDSOLzqcQdJpj7Ugm/iO6ZxZW4h4LEqTopl2kOupKFok6FWRFx7h
	+k7uKJw9ZRcMrncc4rFnTL6dxtQljNc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-220-RW2UH4GxPGyxNQeK456XLA-1; Tue, 15 Jul 2025 07:04:51 -0400
X-MC-Unique: RW2UH4GxPGyxNQeK456XLA-1
X-Mimecast-MFC-AGG-ID: RW2UH4GxPGyxNQeK456XLA_1752577490
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-45600d19a2aso25699335e9.1
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 04:04:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752577490; x=1753182290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VWMAjYtNhkJh5mbP6XrZahkgyK59U5VmPrOphqHUics=;
        b=CJ5gu175jdP80p1R7Ql6tHgpjnKgypsbDaVxzfHpf6FD7XP5CWMLl1bcddSTefvA4f
         VnKbPdWoT9v5372Ujnvf1xcJrfwnGWZFDlHabNcqy7fsYoyO7v+hiiHj8K1xlkX90caH
         Be1c7UlND9eIltj5t4TA3TvABUaSBu21eqBb1dkIdZrgBDxU9Zsgtjx5fYlxw1U+EbwJ
         nC5apQiUyejSrD1EvD5HGa57E9vfyAOvF3BGodUklPHBG8pD6ONtU3Uc72d2qDj6wIyE
         PMdD2E1K5Yhlqao9O7uQz3Wem40ezcguVrfpdYaarqCsIEPnqXhutTrXX5ZmVoiYNGFo
         v6cQ==
X-Forwarded-Encrypted: i=1; AJvYcCWI6/kHo9iNIjP8jMDCTzDVI5EpwJKLPDj0fDHsOui4YCRrTiglIAPWr4r6rvOeu7vuCVic6oGsQTdB@vger.kernel.org
X-Gm-Message-State: AOJu0YzQo/D/SrnBWhOvPH9nBo695LzzY9FMSIYLzggabthOtnw3FM5f
	+R/J4GMEsx2qUVzM8UreGFdtMAg7/9GUlvGIPwGFT1Rx+PJycCpTzr9WNJCO1OMmmCfRv6IITWb
	K9A1fxxRGW9ZXy1NLC3VKvrJYlL8Mu4ZarK7CKo8/dg7pwbaYOrzb8grz4ij2qpk=
X-Gm-Gg: ASbGncuzuySNRNbpBL9FvEzIHd8a02N/N6lLhSrw6CsAW7+ME2UM916yTTK7+Uc/4t7
	sLd6QSEXlAHrbFPim54fB7R0DmHNcLcao/66ewJiQu4QVgUtbxqodj08SgLoM5QNWj8RzVCb8KJ
	gRHfihTBj172flDosADk0J6K/hfx59Qg1+PEPzUfVHHa7Z5a40XFh3+YBX1avs16wuAwtHHY6/7
	RrAoJHcV5scNRAOHeMAZ/+6pkjos/LaecRNQCSBR7vbmuBu+oULhqdtWiM2e8pIe+voHURD0hFP
	DsMoyt+KGOyYuZ58fZ5oGGtjbtS27JVR
X-Received: by 2002:a05:6000:2003:b0:3a4:fc07:f453 with SMTP id ffacd0b85a97d-3b5f2db184cmr10464894f8f.8.1752577489611;
        Tue, 15 Jul 2025 04:04:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHl07y9vuHH7yDtGi3ONbzAtFfjZ48gg7A4ezv99KtO+nnd+7i/98kznjmeFhZWjFWsfGpUhA==
X-Received: by 2002:a05:6000:2003:b0:3a4:fc07:f453 with SMTP id ffacd0b85a97d-3b5f2db184cmr10464856f8f.8.1752577489121;
        Tue, 15 Jul 2025 04:04:49 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e0d732sm15109798f8f.52.2025.07.15.04.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 04:04:48 -0700 (PDT)
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
Subject: [PATCH v3 0/5] drm/sitronix/st7571-i2c: Add support for the ST7567 Controller
Date: Tue, 15 Jul 2025 13:03:49 +0200
Message-ID: <20250715110411.448343-1-javierm@redhat.com>
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

Changes in v3:
- Fix reset typo in commit message (Marcus Folkesson).
- Explicitly set ST7571_SET_REVERSE(0) instead of relying on defaults.

Changes in v2:
- Use a different parse DT function (Thomas Zimmermann).

Javier Martinez Canillas (5):
  drm/sitronix/st7571-i2c: Fix encoder callbacks function names
  drm/sitronix/st7571-i2c: Log probe deferral cause for GPIO get failure
  drm/sitronix/st7571-i2c: Add an indirection level to parse DT
  dt-bindings: display: Add Sitronix ST7567 LCD Controller
  drm/sitronix/st7571-i2c: Add support for the ST7567 Controller

 .../bindings/display/sitronix,st7567.yaml     | 63 ++++++++++++
 MAINTAINERS                                   |  1 +
 drivers/gpu/drm/sitronix/st7571-i2c.c         | 95 +++++++++++++++++--
 3 files changed, 151 insertions(+), 8 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/sitronix,st7567.yaml

-- 
2.49.0

base-commit: d5ca45b508916144d1e8be1102bedab405c1f6fb
branch: drm-st7567-v3


