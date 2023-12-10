Return-Path: <devicetree+bounces-23547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 46C8A80B972
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 07:56:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 408C9B20A67
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 06:56:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6857723DD;
	Sun, 10 Dec 2023 06:56:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=jookia.org header.i=@jookia.org header.b="CuI2HDI0"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta0.migadu.com (out-185.mta0.migadu.com [91.218.175.185])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9C20F3;
	Sat,  9 Dec 2023 22:56:27 -0800 (PST)
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jookia.org; s=key1;
	t=1702191385;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=anKjJLW+Q6Owr4nvVHJwGKumqbTmyNrMralbG/U98v0=;
	b=CuI2HDI0zS2hFtuHeYQY5X8oZk5JLwtSodVsK6s92nfok1XdIQjhHThC3FfEob25So2kIK
	BPlYPffHXHEVH4Z4jzf4J1IxKpG3EVoybDPHRKBH1uHth3/DTcTyf6tOBZdY4cJ4PBoPcU
	6SoCj+x+9ValK0WjfbitVU6bVCwKmLDChI6H30HF7uY7OKTcrw/LvNDf8LxrxKHtaa6Zf4
	gtC6MD08mlwPLD5OFENHy7pt9VLsYKwBIsJl6P+LHnLC6IKXk/SrfO9xopUU4uSEcIrzSL
	KExu12YlXKyzcieZBStRrHkeELC+wZIEW3LUPPE9lGSN70RnGbI5TfR3DwT52g==
From: John Watts <contact@jookia.org>
Subject: [PATCH RFC v5 0/7] Add FS035VG158 panel
Date: Sun, 10 Dec 2023 17:55:48 +1100
Message-Id: <20231210-fs035vg158-v5-0-d75adc75571f@jookia.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPRgdWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyTHUUlJIzE
 vPSU3UzU4B8JSMDI2NDI0MD3bRiA2PTsnRDUwtdU3NLU2NjC6PUlCQzJaCGgqLUtMwKsGHRSkF
 uzkqxtbUAWpvSAWEAAAA=
To: dri-devel@lists.freedesktop.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Paul Cercueil <paul@crapouillou.net>, 
 Christophe Branchereau <cbranchereau@gmail.com>, 
 John Watts <contact@jookia.org>, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Migadu-Flow: FLOW_OUT

Hello there,

This RFC introduces support for the FS035VG158 LCD panel, cleaning up
the nv3052c driver on the way and documentating existing panel code.

This revision is mostly a resend and ask for more feedback.
I have tested that it works on next-20231208.

John.

v4 -> v5:
- Add Reviewed-By trailers

v3 -> v4:
- Mark panel_regs_len as unsigned

v2 -> v3:
- Dropped patches that add extra sleep time

v1 -> v2:
- Fixed a variable declaration style error
- Cleaned up device tree yaml

---
John Watts (7):
      drm/panel: nv3052c: Document known register names
      drm/panel: nv3052c: Add SPI device IDs
      drm/panel: nv3052c: Allow specifying registers per panel
      drm/panel: nv3052c: Add Fascontek FS035VG158 LCD display
      dt-bindings: display: panel: Clean up leadtek,ltk035c5444t properties
      dt-bindings: vendor-prefixes: Add fascontek
      dt-bindings: display: panel: add Fascontek FS035VG158 panel

 .../display/panel/fascontek,fs035vg158.yaml        |  56 +++
 .../display/panel/leadtek,ltk035c5444t.yaml        |   8 +-
 .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
 drivers/gpu/drm/panel/panel-newvision-nv3052c.c    | 515 +++++++++++++++------
 4 files changed, 437 insertions(+), 144 deletions(-)
---
base-commit: bc63de6e6ba0b16652c5fb4b9c9916b9e7ca1f23
change-id: 20231210-fs035vg158-57953382edb6

Best regards,
-- 
John Watts <contact@jookia.org>


