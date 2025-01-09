Return-Path: <devicetree+bounces-137034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1022CA074D3
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 12:36:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C108B188B028
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 11:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF5AB216E00;
	Thu,  9 Jan 2025 11:36:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690C8215764
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 11:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736422570; cv=none; b=Ba+dQvOLJ+5a2bG9h//ktcJ/G534sc+vGQ7R4KuPIRkpaLxmIzOBrVeB1X8ozbVS5IX27cHtBUzXD2oHAM1CEJogaQ4ZFHEAtrG52E56BeVeJB6n/vhqk0TaVigTcRGiZ4d9wNEn8CxVnikSRJZDpRGzCE3NfpkX8MrayYCK+y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736422570; c=relaxed/simple;
	bh=TGMlxvlXLxSwB7OMug1nAJvEF8pciqz/EBtHNkH1EWc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=m7I0NwbzizAHCQmEUZbJVgLXwPrgmMIWkiGJNBX9TQ9Qpbr+qC0MkXeew/IcCoZsP2uRRCwkrYIXaNXPM/451d+JY8hdXvihBZH7PGojpBMLhaaSdffiadOiKmoI0t2bA3TobKkcfMxLnZc6IdUXb0DlhTsauc3zk2unWAVRMzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1tVqpC-0008AS-2l; Thu, 09 Jan 2025 12:35:42 +0100
From: Jonas Rebmann <jre@pengutronix.de>
Subject: [PATCH 0/2] drm/panel: simple: Add DataImage FG080016DNCWAG03
Date: Thu, 09 Jan 2025 12:34:56 +0100
Message-Id: <20250109-panel-dataimage_fg080016dncwag-v1-0-0465603f6669@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGC0f2cC/x3NTQqEMAxA4atI1lNIZPy9yiASbFoDWqUVHRDvP
 mWW3+a9G5JElQR9cUOUU5NuIYNeBUwzBy9GbTaUWFZI2JmdgyzG8sG6spfReWwRqbZhutgbJHo
 7oqqVxkKO7FGcfv+Dz/A8P6EBJt1wAAAA
X-Change-ID: 20250109-panel-dataimage_fg080016dncwag-0114f1158e7d
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, kernel@pengutronix.de, 
 Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=898; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=TGMlxvlXLxSwB7OMug1nAJvEF8pciqz/EBtHNkH1EWc=;
 b=owGbwMvMwCF2ZcYT3onnbjcwnlZLYkiv39Lt420QmDgz7mjQG3O7L4cWcjD27k7SljLfqXXVQ
 C1WrnNWRykLgxgHg6yYIkusmpyCkLH/dbNKu1iYOaxMIEMYuDgFYCKTzzEy/Pb8sjqRuaKdJfjP
 OwWJhWFcG5UDVrF9sdlt7SDKkK93heF/csJC38v2swRrF4reO8obu2Fxyuo1s8XN76jszZpzSD6
 RFwA=
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::ac
X-SA-Exim-Mail-From: jre@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

This series adds DT-bindings and panel-simple implementation for the
DataImage FG080016DNCWAG03 8" 640x480 TFT LCD panel.

The timings are sourced from the FG080016DNCWAGL1 datasheet but
available for testing was only the DataImage FG080016DNCWAG03, for which
I can confirm these values work.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
Jonas Rebmann (2):
      dt-bindings: display: simple: Add DataImage FG080016DNCWAG03 compatible string
      drm/panel: simple: Add DataImage FG080016DNCWAG03 driver support

 .../bindings/display/panel/panel-simple.yaml       |  2 ++
 drivers/gpu/drm/panel/panel-simple.c               | 28 ++++++++++++++++++++++
 2 files changed, 30 insertions(+)
---
base-commit: eea6e4b4dfb8859446177c32961c96726d0117be
change-id: 20250109-panel-dataimage_fg080016dncwag-0114f1158e7d

Best regards,
-- 
Jonas Rebmann <jre@pengutronix.de>


