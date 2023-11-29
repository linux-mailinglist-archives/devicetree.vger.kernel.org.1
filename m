Return-Path: <devicetree+bounces-20034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 755E37FD961
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 15:29:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10F17B213D8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:29:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5152C32189;
	Wed, 29 Nov 2023 14:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="D3+fsK8P"
X-Original-To: devicetree@vger.kernel.org
Received: from relay9-d.mail.gandi.net (relay9-d.mail.gandi.net [217.70.183.199])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C4FF197;
	Wed, 29 Nov 2023 06:29:14 -0800 (PST)
Received: by mail.gandi.net (Postfix) with ESMTPSA id E9F0DFF806;
	Wed, 29 Nov 2023 14:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1701268153;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=FBe4Dzvbp9G6y5FdkNNaW8c1rBGR1yDYU7Bf04zl9co=;
	b=D3+fsK8PuCZ+x5Brl5D2kD+/MRaCPqjrL47+jeHSJzpbBIOcDEWwr9G8KQYnH8KlIno5E3
	IP2/s10jfrs+LW38zVGmGjjwkn5cnm7uBNWoRcumD8tISBsbA74JXM6AG6I6DD53wr7AHq
	lmrgE2NUAcBqdQ+Xf5xNqb8KRaYkz4qQra7tueBpZGSEjhp9RLN9B1o+oy9dEqQgb1vJPR
	0A0ovsicJanfwhodeSyPAT4l7eE7DNs30pYAF+RL3ovfIpbEQesQF14WjLO9JM/U/8vghF
	1XTRJLRZYmCwRc8xU9Ku40fXIWZlRMlDoAZlgVxbhacdvDSVO0GRw9xFFMhNFg==
From: Mehdi Djait <mehdi.djait@bootlin.com>
To: mripard@kernel.org,
	maarten.lankhorst@linux.intel.com,
	tzimmermann@suse.de,
	airlied@gmail.com,
	daniel@ffwll.ch,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	conor+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	thomas.petazzoni@bootlin.com,
	alexandre.belloni@bootlin.com,
	luca.ceresoli@bootlin.com,
	paul.kocialkowski@bootlin.com,
	dri-devel@lists.freedesktop.org,
	geert@linux-m68k.org,
	Mehdi Djait <mehdi.djait@bootlin.com>
Subject: [PATCH 0/2] drm/tiny: Add driver for the sharp LS027B7DH01 Memory LCD
Date: Wed, 29 Nov 2023 15:29:08 +0100
Message-ID: <cover.1701267411.git.mehdi.djait@bootlin.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: mehdi.djait@bootlin.com

This patch series adds a DRM driver for the sharp LS027B7DH01 memory display:
a 2.7" 400x240 monochrome 1 bit per pixel display SPI device.

This controller uses SPI both for control and for pixel data. Pixel data can be
sent either as one line per SPI frame or multiple lines (up to the entire picture)
in a single SPI frame. This driver implements the latter.

The Sharp Memory LCD requires an alternating signal to prevent the buildup of
a DC bias that would result in a Display that no longer can be updated. Two
modes for the generation of this signal are supported:

- Software, EXTMODE = Low: toggling the BIT(1) of the Command and writing it at
  least once a second to the display.

- Hardware, EXTMODE = High: the alternating signal should be supplied on the
  EXTCOMIN pin.

the Hardware mode is implemented with a PWM signal.

The driver announces the commonly supported XRGB8888 to userspace and
uses the drm_fb_xrgb8888_to_mono() function to convert the format.

Mehdi Djait (2):
  dt-bindings: display: Add Sharp LS027B7DH01 Memory LCD
  drm/tiny: Add driver for the sharp LS027B7DH01 Memory LCD

 .../bindings/display/sharp,ls027b7dh01.yaml   |  71 +++
 MAINTAINERS                                   |   7 +
 drivers/gpu/drm/tiny/Kconfig                  |   8 +
 drivers/gpu/drm/tiny/Makefile                 |   1 +
 drivers/gpu/drm/tiny/sharp-ls027b7dh01.c      | 411 ++++++++++++++++++
 5 files changed, 498 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/sharp,ls027b7dh01.yaml
 create mode 100644 drivers/gpu/drm/tiny/sharp-ls027b7dh01.c

-- 
2.41.0


