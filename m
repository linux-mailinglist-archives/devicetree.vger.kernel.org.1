Return-Path: <devicetree+bounces-246501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9358ACBD403
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:48:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4C23C300A6FA
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7A45314B82;
	Mon, 15 Dec 2025 09:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IVRZFBdY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E180314A8E
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792065; cv=none; b=oSwnlVEzEWrdV2Ga0m4Wzg0heIQ4up+ojc+ecwKzSl43vTkuc7591FYOA8kY+NNbIZrolfPlzbHag/7ani6egGFMf/Blf3/NhkemgPzSVz0xY70sHIoq+OQZolr3geeSLQAPbRYdnHvJ68xq3D95Ecc6dza5PnKA7k7lVf/qC8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792065; c=relaxed/simple;
	bh=W8UkbOAiAE9bqzVX8Qv9TxY5BA/gH8P0iaLknphwwlM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=uKI8PWM4BFOD6unn1uxTSIzJwS44Qs01CzWgzZE4MT5WGscEBjB7etzJ3oGGYl1i98zJ3XBPvdYeikihcUJRYHqZHhoc2bSy4If4AH0B2q2CkmYiO3kNJNv5aaNzEzqV9vSf/hAagVxTTVezENiA+oHIoL1Cnz30ZwzZoKHxw00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IVRZFBdY; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-598eaafa587so3829797e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792062; x=1766396862; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tVpOQHvvv3K/ICVRbr+RowOMf/UbaFQPOMfQT7F9GV4=;
        b=IVRZFBdYPVBfI8ZuPGCg/Au8KXjgKwVB+QFh6AO/uK0VaFBVc2iu+lPCsLdoV97rLa
         foAhK8oBZd3wx6at9gxEiiYMxPn64sEZgzksXEwLj+i1H5rRR6SMbDvHbvPfiuZsUR/t
         29G3zuvdr/Ux0VBo57nXXLCU+fj63pbJ0+W6+QS5T2VYqR/0ixdVByIlzWB2xC7H3BTc
         7jka3nNLQkSs2RM0zqn7HV47jAwzZ4WxPdVNXqdaDj1ss8mKKv+G3oI+xeQxvydBCYiQ
         sWze3XriRR7SPzU8jKfHgPQebIOj+JcgDlLNWnZe/zss9ieRQANgtP0YNnEy/leAK8gn
         Q1Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792062; x=1766396862;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tVpOQHvvv3K/ICVRbr+RowOMf/UbaFQPOMfQT7F9GV4=;
        b=pOA/i/o5KHrtBWN5Ft167NltnUZqi0BnM/DRRmwuHm4a5j6QeVHVsMWoznVsuARtcF
         La6ta4X5au0LSmwxaFB+ZWa1bkQp1+NoqFF/oyRjE0lpYZFIdcBD0HteRnZggUDmjJ8d
         Bc5JSk/0Et2PLTUKQiMnBg5IDHb1VNndqeYBlLTBa/fcZhnNd4y0Xkzu0ty2TO7Rt1rX
         sRJ5dPMVEPHDPr7ghcgRSpgNQZt3uWQauTdmdB6t/fwAvjPNyEMS0w87qiAr3w8jmg1b
         h/X0wqY34nUwCzofQBiAXoQz55bdF1zhlKr9zQHKVzNJckVggQfrNWoxq2WrJtOwG+9q
         e6tg==
X-Forwarded-Encrypted: i=1; AJvYcCXaqvjAUx9HG5o1rLdvlzbofcKNhJVUfGKI3bfwnRDCas6PxP+7RnslZnN8cQtwUsIkPRhORas26row@vger.kernel.org
X-Gm-Message-State: AOJu0Yxar812pFU7Nx/NBd7ouEaFiWKLJqEskUebRwpGosAJdprbIHYy
	lrSIpTv7C3vJb8gJw0Qcj9wBOy1ny9wrGhsAY9p5LM7++UyB+HJaZTH0
X-Gm-Gg: AY/fxX7TzAVxo6BmIg7K3sPjTu4KQ+vYyJPPLkOKutjtjgQZARtIKYYiTmPSrBaUM1C
	XrkGXwA2KdrWZ8aVsZjCrcGecN7/cKPjYFBCW3pc3IBnp38iomQPo3OLurEh8lGz+Ug37nbUgK2
	uPn0/UH4nlCrRM0qcXX3vtlzGoRQczeZGHBcFPGScw10rR3GoGJXW2YL5OL9hfB8twceRqU02XH
	I6ZDMjjkrTiZi7jDsIrM2GY9V7Y+nmAr48u7raiMlOgO1mXI4VXauR4VRxv9aEkmG7xkuB8xvpg
	UlfUZuTlFDNi8tAeONcydWDKibl/O6Bi9Z9MLm9/TjrDCfgGdcfdeGsIGTCvVg+Lm3q3tqcFb5p
	1UcGYAmup2roBh8g9H27x61cZFWRs6x9CGyqpPe1BuKIASj/xFkUnaT7abbNF+6tMmWHPm1uvfu
	tXeQcEI11FEDQufCdPQbT8kBCRvYqakceXpK7GM3MiV7shOceo3M0L1ngN
X-Google-Smtp-Source: AGHT+IHoPZVnm9BbXcgInP2ilGSzLiPiaclXBBpn9sYk9dbDCEc44kZPqVVYud9+2sVsXAttyWunMA==
X-Received: by 2002:a05:6512:1154:b0:598:8f91:a03e with SMTP id 2adb3069b0e04-598faa9a579mr3684964e87.50.1765792061998;
        Mon, 15 Dec 2025 01:47:41 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:41 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: [PATCH v3 0/7] drm/sitronix/st7571: split up driver to support
 both I2C and SPI
Date: Mon, 15 Dec 2025 10:46:42 +0100
Message-Id: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAALZP2kC/3XMywqDMBCF4VeRWTdlMlGjrvoepQsvUQe8kUhoE
 d+90ZUUujwHvn8DZywbB0W0gTWeHc9TGOoWQd2XU2cEN2EDISUSKRZu1YmWwi0Dr6LWKq4wlZi
 WMQSyWNPy+8w9X2H37NbZfs66l8f7J+SlQNEozKnKM6mwfXRjycO9nkc4Qp6uWP9gCjhTCbUV6
 awhecX7vn8BvYGANuUAAAA=
X-Change-ID: 20251024-st7571-split-c734b06106a4
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2062;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=W8UkbOAiAE9bqzVX8Qv9TxY5BA/gH8P0iaLknphwwlM=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9kXqsDsKrB5XoyS4zF7twRJHLomiAKaEXtkA
 HdAZR7UbJWJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZFwAKCRCIgE5vWV1S
 MuS/D/9akjh2+4q6Cm56D/b1gZ/YczdpAaSTMkyr655bVSWCmc3ash9RJ+xJXil/9mjTOFyQMa2
 5goIOE7TinPim6MmXS18Euk3PHQMucxpDP2JTJabRmRCjirRnUbxwVIwtwPNQMN4ciAkz0bx4a3
 cZE6+6PnbfSwugFrLOlS/2+mrJK8P82+7vjBzwbkqZ1GCvbg5xJS3IgAkkAAgwXxYOoysOAObhb
 inaflnBUEGdqvaEW2m4/5hxqmd29eL3AiaixG+/YLZB0YdxdWZk/7irecbc8tBSvQvRYitgUQNQ
 UUkPexIc/jVx69v0/IXmLdW40yc0ZuXGY8aXaIfijSvf8jI1xK/XaWth31x9fqTAU3Imv54VzR2
 7vlzvaHmNakQ3Z2VDBVDfgI5OdArX0biKHBNzlxTRZwu9IQYnF2/0b0fM7xwlGBFhExWNjYW3vy
 05il9zG87hyex5McRP+/txkHIR4tT4NOUekOO5fxmxGccxr4oVz9z0W4cCZvMWekhimAhNsU7vD
 63VY6lZcwz9RQ9Z96aaGvcuBrYxSp6kmGJ6QQ2NGQewt9dkX9DiC5x3KV4dK/1H2esHX7K4IVp6
 CJvx955eDjcrvRmlYD8k3Htx9J8t2P7/MMbNMBZyjRzl8TlJY4P7PT7nyKVALEl6Rncsg0Wkz03
 u8N+nmHOzAE3RQQ==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

This series splits up the driver and finally implements
support for ST7571/ST7561 connected to a SPI bus.

I've not tested the SPI interface myself as I lack HW, but the
implementation should be okay from what I've read in the datasheet.

Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
Changes in v3:
- Add SPI example to the bindings doc (Thanks Javier)
- Select REGMAP rather than REGMAP_I2C (Thanks Javier)
- Fix gramatical errors in patch description (Thanks Javier)
- Link to v2: https://lore.kernel.org/r/20251027-st7571-split-v2-0-8352fb278d21@gmail.com

Changes in v2:
- Add MODULE_IMPORT_NS to st7571-i2c.c st7571-spi.c (Kernel test robot)
- Link to v1: https://lore.kernel.org/r/20251024-st7571-split-v1-0-d3092b98130f@gmail.com

---
Marcus Folkesson (7):
      drm/sitronix/st7571-i2c: rename 'struct drm_device' in st7571_device
      drm/sitronix/st7571-i2c: add 'struct device' to st7571_device
      drm/sitronix/st7571-i2c: move common structures to st7571.h
      drm/sitronix/st7571-i2c: make probe independent of hw interface
      drm/sitronix/st7571: split up the driver into a common and an i2c part
      drm/sitronix/st7571-spi: add support for SPI interface
      dt-bindings: display: sitronix,st7571: add example for SPI

 .../bindings/display/sitronix,st7571.yaml          |   25 +
 MAINTAINERS                                        |    3 +
 drivers/gpu/drm/sitronix/Kconfig                   |   38 +-
 drivers/gpu/drm/sitronix/Makefile                  |    2 +
 drivers/gpu/drm/sitronix/st7571-i2c.c              | 1003 +-------------------
 drivers/gpu/drm/sitronix/st7571-spi.c              |   76 ++
 drivers/gpu/drm/sitronix/st7571.c                  |  918 ++++++++++++++++++
 drivers/gpu/drm/sitronix/st7571.h                  |   91 ++
 8 files changed, 1187 insertions(+), 969 deletions(-)
---
base-commit: 6a7cef9f953e9edb2364edb769ac116126e6b98e
change-id: 20251024-st7571-split-c734b06106a4

Best regards,
-- 
Marcus Folkesson <marcus.folkesson@gmail.com>


