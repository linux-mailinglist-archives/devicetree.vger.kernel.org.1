Return-Path: <devicetree+bounces-217638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFE8B58BD9
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:32:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 974081BC37E2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:33:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9E221C5F1B;
	Tue, 16 Sep 2025 02:32:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="BUzvrCc9"
X-Original-To: devicetree@vger.kernel.org
Received: from out-181.mta1.migadu.com (out-181.mta1.migadu.com [95.215.58.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 355F335979
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:32:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757989961; cv=none; b=ZquOxJe57qiYSrHodMbtGdVrdOhquOR3RuSm75y6IT/5ziGddmNQeoaiOUwmNCRlXDJ7yOJAYBXRK/M/AWhTORlBAArWFPm9KolrmWTBxAkWzypqDSlKw5Y3GPyNLLPexpKdtXIMWLlGNEk0vzcMFSNaN3QMvmTmKJB89l4nWZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757989961; c=relaxed/simple;
	bh=xtXOrVDKWq9hItYsvRgoikFPE/gt5zgc/6CnhlgNlqI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ICvTecHIJwu+J0RrZRjUC+zBgTBOofrqluecKbPL+T6O1XW/Kr4h3p8jcj4hJmWULa9Ju1K0QGhz9Y0M/7XrUaA2Jb8HUkb98/X/A7XHcgCBu6Ffsr2aUVYh/fFACmMXaudOuarp1miPvSKi3hSJbh/wv21PflVw/uC3OVjrMVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=BUzvrCc9; arc=none smtp.client-ip=95.215.58.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1757989957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4icW8A4a35n6WvR9rcmkx2CYARUOFbnRrSBlDazcjz8=;
	b=BUzvrCc9XmxkNzPz77iaEPBr/iMAZjMf1QlFs/jRpEg12PHPbKKbDPxm45EjieO5Z/G4MX
	OxmF+0rigSpIeVWoff06a+RPqorVk6X/BCDWR9WLDkei30iYnxLc6h2ekCGOV+rxMbd876
	H0OdNHVKl4gNWwliwtlByPTQJSdA1UxVUKGGilIiQ51jcx4lueKEePZEW66TXtZvtfd1pR
	mDWDxOpDMaJY1e/IhZ1WQvuw/Dk9OG77GEreBOyMsv5ea9XaAxROklgfks5GSfMzSrVqzg
	HXHC2UjGq4axgNKXc1Wo/o1fHtpkZEvJ4xmTwtb1qmjL6/Za/bY6M/ap1LeRDQ==
From: Paul Sajna <sajattack@postmarketos.org>
Subject: [PATCH v2 0/3] Add LG SW49410 Panel Driver
Date: Mon, 15 Sep 2025 19:32:11 -0700
Message-Id: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACvMyGgC/3WMQQ6DIBQFr2L+ujRANWpXvUfjAvCrtBYIUFJju
 Hup++at5iUzOwT0GgNcqx08Jh20NQX4qQK1CDMj0WNh4JQ3tGeUPN7jthrihMGV9HU3sbZVTRk
 UxXmc9OfI3YfCiw7R+u2oJ/Z7/4QSI5R0vFFtXdOLlPLmbIgv4Z8YbThbP8OQc/4Cd4REWK8AA
 AA=
X-Change-ID: 20250910-judyln-panel-948f177c5c5c
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, David Heidelberg <david@ixit.cz>, 
 phone-devel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757989951; l=1894;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=xtXOrVDKWq9hItYsvRgoikFPE/gt5zgc/6CnhlgNlqI=;
 b=Zpqt7mmrtm6w48ZT7caipO8SieSLsxOXVq91KU7AxSl5YiS9Zu/lxFz7NzpZg82s20/7mDYBz
 JMhR7ssVOpJC44T4oUUGnKXmtqKneCC+njGNHAr5WxT9181EAj1MTcu
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

This patch series adds a drm panel driver for the LG SW49410 panel found
in the LG G7 ThinQ (codename judyln).

The basic driver skeleton was generated by https://github.com/msm8916-mainline/linux-mdss-dsi-panel-driver-generator
from the vendor device-tree.

The panel driver works but during testing we noticed sometimes the
display goes blank. Source of this problem is unknown but seems to be external.
i.e. It could be a conflict with another driver or an issue with
aftermarket panels.

Comments were added explaining magic numbers, and devicetree
documentation was also added

Once this patch has been accepted, I'll follow up with
a devicetree update for sdm845-lg-judyln
that includes this driver, along with several other improvements

Co-authored-by: Amir Dahan <system64fumo@protonmail.com>
Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
Changes in v2:
- use "multi" versions of functions
- remove DRM_DISPLAY_DP_HELPER
- change dt-bindings to panel-simple
- Link to v1: https://lore.kernel.org/r/20250910-judyln-panel-v1-0-825c74403bbb@postmarketos.org

---
Amir Dahan (1):
      drm: panel: Add LG SW49410 Panel

Paul Sajna (2):
      Update MAINTAINERS for lg,sw49410
      dt-bindings: display: panel: panel-simple: Add lg,sw49410 compatible

 .../bindings/display/panel/panel-simple.yaml       |   2 +
 MAINTAINERS                                        |   5 +
 drivers/gpu/drm/panel/Kconfig                      |  13 +
 drivers/gpu/drm/panel/Makefile                     |   1 +
 drivers/gpu/drm/panel/panel-lg-sw49410.c           | 502 +++++++++++++++++++++
 5 files changed, 523 insertions(+)
---
base-commit: e04c78d86a9699d136910cfc0bdcf01087e3267e
change-id: 20250910-judyln-panel-948f177c5c5c

Best regards,
-- 
Paul Sajna <sajattack@postmarketos.org>


