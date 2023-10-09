Return-Path: <devicetree+bounces-7010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D687BE998
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 20:36:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 941731C20AB1
	for <lists+devicetree@lfdr.de>; Mon,  9 Oct 2023 18:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C8298465;
	Mon,  9 Oct 2023 18:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MOTuU/Hb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF91C3B295
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 18:36:12 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED93C9C
	for <devicetree@vger.kernel.org>; Mon,  9 Oct 2023 11:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1696876570;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=zsxGVSfsuhfbNcHVttLtmT7ohtovb+UILcIo39l8Suw=;
	b=MOTuU/HbED6GjU+KGjeUaMwHvXcQn6JyHC0R1OcGJrRe1BHU4kQskDyyLbZIKAhVtHaoef
	9BwboLXavhJ7N7kzvChXsLrRvS3zY5mQC3/BAfzcZ4YyrWq6vMfWPcVRAGfUICCxOSzFLF
	QPUzNON+WJFlLRDKsMQO+mSPgEb3mMg=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-49-pyjeKrQ2MVOALzk60uP0Zg-1; Mon, 09 Oct 2023 14:35:59 -0400
X-MC-Unique: pyjeKrQ2MVOALzk60uP0Zg-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-30e4943ca7fso3409585f8f.3
        for <devicetree@vger.kernel.org>; Mon, 09 Oct 2023 11:35:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696876558; x=1697481358;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zsxGVSfsuhfbNcHVttLtmT7ohtovb+UILcIo39l8Suw=;
        b=G7McUKaKNMfjDV0kzN+FEVAWE3G8ZrTM7qfzuSkZOD0u9VtyBLgUp43TskXDjYpYIm
         xmasxAvoWg7KzObWJqu9B2DO2A3BlDYf5BxLyfQqkrf9mXlVCzwdxtLs+5+g46MyXJgQ
         lejNuv1NOX4XgTPQLMsAzglIdPNgjyEUocUDosx0PdZ3w0WoBDHkdnozfZUE12vuNIzQ
         2Ev7Mn3SJuJYScFKxVdLHxnxMDi9gznBZcf+nONWLOEbCOZ8Ziwu3qZNEE1p3/rbqjrP
         oDxE7xl5x/f8CsZ3iNRBU+a4glP+3ZHhQKqOjM8Bak8e8wGF/UxerN0mT+MwBS+9Rddp
         UpjQ==
X-Gm-Message-State: AOJu0YyH2BAHpBlkXsgfp1hNI9RrFVrmRC98ifvRLSaplbuqQY1JXlUa
	2An17nzpKAiLx5jTjfiTpLsbjEcjmH89xqiDA4T9aMDC3HvdVi78g2PfiiksF9H/L/Dla8SdrBD
	4Vz+P2zfEkI/U8wdfUM6ZCA==
X-Received: by 2002:a5d:46cf:0:b0:31f:8e7c:6ebe with SMTP id g15-20020a5d46cf000000b0031f8e7c6ebemr13528786wrs.5.1696876557927;
        Mon, 09 Oct 2023 11:35:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG+JcBXZXNGTEmKnDAtxnhtdraUNMsB+1F+EutebIzxSPaz9pa+gYUnBEZnCiXhnydilDCYXQ==
X-Received: by 2002:a5d:46cf:0:b0:31f:8e7c:6ebe with SMTP id g15-20020a5d46cf000000b0031f8e7c6ebemr13528764wrs.5.1696876557507;
        Mon, 09 Oct 2023 11:35:57 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id f16-20020adfdb50000000b0031ff89af0e4sm10318981wrj.99.2023.10.09.11.35.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 11:35:57 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Javier Martinez Canillas <javierm@redhat.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Rob Herring <robh+dt@kernel.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-pwm@vger.kernel.org
Subject: [PATCH 0/8] drm/solomon: Add support for the SSD132x controller family
Date: Mon,  9 Oct 2023 20:34:14 +0200
Message-ID: <20231009183522.543918-1-javierm@redhat.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

This patch-set adds support for the family of SSD132x Solomon controllers,
such as the SSD1322, SSD1325 and SSD1327 chips. These are used for 16 Gray
Scale Dot Matrix OLED panels.

The patches were tested on a Waveshare SSD1327 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator.

Patch #1 renames the ssd130x driver to ssd13xx since it will support both
the SSD130x and SSD132x Solomon families and at least the SSD133x family
in the future.

Patch #2 also renames the data structures and functions prefixes with the
ssd13xx name.

Patch #3 drops the .page_height field from the device info with a constant
because it's only needed by the SSD130x family and not the SSD132x family.

Patch #4 changes the driver to use drm_format_info_min_pitch() instead of
open coding the same calculation.

Patch #5 adds a per controller family functions table to have logic that
could be shared by both SSD130x and SSD132x callbacks.

Patch #6 renames some SSD130X_* commands that are shared by both families
and patch #7 adds the support for the SSD132x controller family.

Finally patch #8 adds a DT binding schema for the SSD132x device nodes.

Best regards,
Javier


Javier Martinez Canillas (8):
  drm/solomon: Rename ssd130x driver to ssd13xx
  drm/ssd13xx: Rename data structures and functions prefixes
  drm/ssd13xx: Replace .page_height field in device info with a constant
  drm/ssd13xx: Use drm_format_info_min_pitch() to calculate the
    dest_pitch
  drm/ssd13xx: Add a per controller family functions table
  drm/ssd13xx: Rename commands that are shared across chip families
  drm/ssd13xx: Add support for the SSD132x OLED controller family
  dt-bindings: display: Add SSD132x OLED controllers

 .../bindings/display/solomon,ssd132x.yaml     |  116 ++
 MAINTAINERS                                   |    6 +-
 drivers/gpu/drm/solomon/Kconfig               |   28 +-
 drivers/gpu/drm/solomon/Makefile              |    6 +-
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |  112 --
 drivers/gpu/drm/solomon/ssd130x.c             | 1260 --------------
 drivers/gpu/drm/solomon/ssd13xx-i2c.c         |  126 ++
 .../solomon/{ssd130x-spi.c => ssd13xx-spi.c}  |  104 +-
 drivers/gpu/drm/solomon/ssd13xx.c             | 1508 +++++++++++++++++
 .../gpu/drm/solomon/{ssd130x.h => ssd13xx.h}  |   63 +-
 10 files changed, 1876 insertions(+), 1453 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml
 delete mode 100644 drivers/gpu/drm/solomon/ssd130x-i2c.c
 delete mode 100644 drivers/gpu/drm/solomon/ssd130x.c
 create mode 100644 drivers/gpu/drm/solomon/ssd13xx-i2c.c
 rename drivers/gpu/drm/solomon/{ssd130x-spi.c => ssd13xx-spi.c} (54%)
 create mode 100644 drivers/gpu/drm/solomon/ssd13xx.c
 rename drivers/gpu/drm/solomon/{ssd130x.h => ssd13xx.h} (51%)

-- 
2.41.0


