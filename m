Return-Path: <devicetree+bounces-7974-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E43457C65F2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 08:58:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 216D71C20A8B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 06:58:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6588BDDCC;
	Thu, 12 Oct 2023 06:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="duo0jvjO"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B397ADDC2
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 06:58:31 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE30CBA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1697093909;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=gQEDK0zRsxdao/USWhxq2/eyquvh3FKOLJOV9l+xrLE=;
	b=duo0jvjOa/oOASPc6952ix0fKB+vhPglm6J6QzZ7/scxPUPLQNMWtL4+Vt21WKw1/uJWgf
	SLJEDDXRzjExfEGlXU1oLyqm4M26p6hRXCCVisinruaOAhHPEqq3wFA5aj/KWgEm6iqIOk
	hSg9vtOe6H0TAak07gmyTie/uCQF8Cc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-590-zm6OBPFtNi2tQPi4eaayyQ-1; Thu, 12 Oct 2023 02:58:27 -0400
X-MC-Unique: zm6OBPFtNi2tQPi4eaayyQ-1
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-32cbe54ee03so408060f8f.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 23:58:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697093906; x=1697698706;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gQEDK0zRsxdao/USWhxq2/eyquvh3FKOLJOV9l+xrLE=;
        b=D4OBzq4caXbO1KwT6Z/JrhVbL2zSm3DXaqeMHEVwYG3atDrxOS3pW5C6/88EQH+ceY
         7CTO8OUFx6hvIMhEqJX7zRCI0ta/tFZ64yXyXZMpFZoFoyLlRAYps5YFuawndmkwKLXI
         owbo4/9SKlKcj3VKAaip2PJEU6+cONS6S0f6VRamUCo/in70k00ja7NTdBLr+mMn0LHu
         AMxuHkQ5H9TsOyY9YlacFl8bhd655Qph972aCSBaVJwBVNjLoUZmW7yBx/yWK0DKqEiN
         UusmuqBi6Bycxciw1bgtp82vD04+KRagui8IzFRGtKr6elhCFT4/qP02NNsYDvTd9VmE
         v6iQ==
X-Gm-Message-State: AOJu0YxAYGPLIpQfxlP1vsDAoWkdbZbCj/He60qmoDbfrYlPpAv/mhrP
	OBdubkqcvI3oCh44sMvhgr+HehUenuYkwSSAFCbCflF2iYcuN2PrXpQTAd4rS0qg76CsRrJFvgr
	gYmQAsrNkV3mkmKE2AlAzfg==
X-Received: by 2002:adf:cc8b:0:b0:313:f463:9d40 with SMTP id p11-20020adfcc8b000000b00313f4639d40mr18345667wrj.65.1697093906337;
        Wed, 11 Oct 2023 23:58:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEzNihkYzTu2tJnnUcYJA6WaMhrtpm35B3hFdl4wrfrsDprJD4URFLUpjs1H44prEQ12HB8DA==
X-Received: by 2002:adf:cc8b:0:b0:313:f463:9d40 with SMTP id p11-20020adfcc8b000000b00313f4639d40mr18345648wrj.65.1697093905990;
        Wed, 11 Oct 2023 23:58:25 -0700 (PDT)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id q15-20020a5d574f000000b00323384e04e8sm17393266wrw.111.2023.10.11.23.58.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 23:58:25 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Conor Dooley <conor@kernel.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
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
Subject: [PATCH v2 0/6] drm/solomon: Add support for the SSD132x controller family
Date: Thu, 12 Oct 2023 08:58:09 +0200
Message-ID: <20231012065822.1007930-1-javierm@redhat.com>
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
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hello,

This patch-set adds support for the family of SSD132x Solomon controllers,
such as the SSD1322, SSD1325 and SSD1327 chips. These are used for 16 Gray
Scale Dot Matrix OLED panels.

This is a v2 that address issues pointed out during review of the v1:

https://lists.freedesktop.org/archives/dri-devel/2023-October/426039.html

The patches were tested on a Waveshare SSD1327 display using glmark2-drm,
fbcon, fbtests and the retroarch emulator.

Patch #1 drops the .page_height field from the device info with a constant
because it's only needed by the SSD130x family and not the SSD132x family.

Patch #2 adds a per controller family functions table to have logic that
could be shared by both SSD130x and SSD132x callbacks.

Patch #3 renames some SSD130X_* commands that are shared by both families.

Patch #4 adds the support for the SSD132x controller family.

Patch #5 splits out some properties that are shared across both controller
families bindings and move them into a separate solomon,ssd-common schema.

Finally patch #6 adds a DT binding schema for the SSD132x controllers.

Best regards,
Javier

Changes in v2:
- Add Geert Uytterhoeven's Reviewed-by tag to patch #1.
- Squash patch that uses drm_format_info_min_pitch() to calculate dest_pitch
  with the following patch (Geert Uytterhoeven).
- Store ssd13xx_family_funcs[SSD130X_FAMILY] in struct ssd130x_deviceinfo
  (Geert Uytterhoeven).
- Don't mix switch (family_id) and ssd13xx_funcs[family_id] (Geert Uytterhoeven).
- Replace switch (family_id) by an .set_buffer_sizes (Geert Uytterhoeven).
- Move the rect alignment to a per chip family function (Geert Uytterhoeven).
- Align the rectangle to the segment width (Geert Uytterhoeven).
- Drop patches that rename driver and prefixes (Maxime Ripard, Peter Robinson).
- Remove unnecessary 'oneOf' in the SSD132x DT binding schema (Conor Dooley).
- Remove unused DT nodes labels in the binding schema examples (Conor Dooley).
- Split out common Solomon properties into a separate schema (Rob Herring).

Javier Martinez Canillas (6):
  drm/ssd130x: Replace .page_height field in device info with a constant
  drm/ssd130x: Add a per controller family functions table
  drm/ssd130x: Rename commands that are shared across chip families
  drm/ssd130x: Add support for the SSD132x OLED controller family
  dt-bindings: display: Split common Solomon properties in their own
    schema
  dt-bindings: display: Add SSD132x OLED controllers

 .../bindings/display/solomon,ssd-common.yaml  |  42 ++
 .../bindings/display/solomon,ssd1307fb.yaml   |  28 +-
 .../bindings/display/solomon,ssd132x.yaml     |  89 ++++
 MAINTAINERS                                   |   3 +-
 drivers/gpu/drm/solomon/Kconfig               |  12 +-
 drivers/gpu/drm/solomon/ssd130x-i2c.c         |  18 +-
 drivers/gpu/drm/solomon/ssd130x-spi.c         |  27 +-
 drivers/gpu/drm/solomon/ssd130x.c             | 405 +++++++++++++++---
 drivers/gpu/drm/solomon/ssd130x.h             |  33 +-
 9 files changed, 552 insertions(+), 105 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd-common.yaml
 create mode 100644 Documentation/devicetree/bindings/display/solomon,ssd132x.yaml

-- 
2.41.0


