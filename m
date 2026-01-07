Return-Path: <devicetree+bounces-252506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 761FBD002F8
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 22:36:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4E5B6301471D
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 21:36:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8D6332ED1;
	Wed,  7 Jan 2026 21:36:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b="SoXUufbt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx.nabladev.com (mx.nabladev.com [178.251.229.89])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52036332912;
	Wed,  7 Jan 2026 21:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.251.229.89
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767821807; cv=none; b=ZX0ecU1+eX+J/R0DqOV6BsKatS5QvHwuAVXi20NNTblfE324kWxhtwmeRGWWazcoozPXiVZz1K2f5P6C1QjX2nZFwtbNuP9AVReh8VyKvuOyCFLuuSxaWwk3ID1NOZUH30F+DwXmmJZHqkwPLOw6cFgTgNhnmLqErzpygOYKX24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767821807; c=relaxed/simple;
	bh=OiCWQNYlyhj9NNOh5BpohQ3/H9sMqiiLVbEtR+iLYWc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=entm9lTjt5fE5zl56T1g4tuc13ADqhO46CgfgUBAu9nsckBfMJe6MiAcA+ATkOw7Cxos2lmUJhlyt+NfDpKEyRxSuHUd2RbxhdENrfxs4A8gkQAFEKI0Cxf1d1FyFIUn87yk9nZifQQP17o0Cb1PsYE09VyRKeq8qC26d/O7h94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com; spf=pass smtp.mailfrom=nabladev.com; dkim=pass (2048-bit key) header.d=nabladev.com header.i=@nabladev.com header.b=SoXUufbt; arc=none smtp.client-ip=178.251.229.89
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=nabladev.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=nabladev.com
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id D96DE103762;
	Wed,  7 Jan 2026 22:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nabladev.com;
	s=dkim; t=1767821802; h=from:subject:date:message-id:to:cc:mime-version:
	 content-transfer-encoding; bh=BpWE3Hs6vzoZBQrNVgZ1UNE0abJIcxAWoNomZr74Cno=;
	b=SoXUufbtnXmRm6YUY41NiJeKn5GhnIvcleP3F2g9Mo/RzByzwhKST3/taMxOb5Yy+F4Dw+
	PnYtxl0oA8vOdg88/75obM0aO7UJrCfKJiw+CvykRdGi9etFXAzZKYflJkje1TZSpva9Qz
	sxC0YkmRmQzZCVg/nseQjN6A4ouJfYR5wIqmC3tUh5RrL63GwpstZNXPuhKuzXn/2hnJrX
	S5AEb9ZB3qqndiOxu23GKBTpRzqhwMZEVgCSXT75DYJT/mC2u5Qwrto0MATtM1MwjY0JeC
	L54uRVtmO5xaFrB3Pukhalp7tyooEJSe2VXwymME0uDXg37amEc2rRfnGqsJCg==
From: Marek Vasut <marex@nabladev.com>
To: devicetree@vger.kernel.org
Cc: Marek Vasut <marex@nabladev.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org
Subject: [PATCH] regulator: dt-bindings: rpi-panel: Mark 7" Raspberry Pi as GPIO controller
Date: Wed,  7 Jan 2026 22:36:25 +0100
Message-ID: <20260107213638.505319-1-marex@nabladev.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

Mark the Raspberry Pi 7" Display 1 ATTINY based regulator
as GPIO controller, because the hardware behaves that way
in addition to being a regulator. Add fixed gpio-cells as
well.

Signed-off-by: Marek Vasut <marex@nabladev.com>
---
Cc: Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: linux-rpi-kernel@lists.infradead.org
---
 .../raspberrypi,7inch-touchscreen-panel-regulator.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/raspberrypi,7inch-touchscreen-panel-regulator.yaml b/Documentation/devicetree/bindings/regulator/raspberrypi,7inch-touchscreen-panel-regulator.yaml
index 41678400e63fa..6c23f18a32c6c 100644
--- a/Documentation/devicetree/bindings/regulator/raspberrypi,7inch-touchscreen-panel-regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/raspberrypi,7inch-touchscreen-panel-regulator.yaml
@@ -24,6 +24,11 @@ properties:
   reg:
     maxItems: 1
 
+  gpio-controller: true
+
+  "#gpio-cells":
+    const: 2
+
 additionalProperties: false
 
 required:
-- 
2.51.0


