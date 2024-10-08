Return-Path: <devicetree+bounces-108790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB5B993E16
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 06:51:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 268F91F23D82
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 04:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50C3254907;
	Tue,  8 Oct 2024 04:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="OJFXTymm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-canonical-0.canonical.com (smtp-relay-canonical-0.canonical.com [185.125.188.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 844BB2AE77
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 04:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.120
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728363069; cv=none; b=h3XFMsHbr/QzXrvAbDkqz/yd2JkInF4adl4mqZI+QP3wvh5t0gaKNZNu/VL1stBh6FXsyrfDTcQwFkbmB+eYy3kjpaJctzELi6b2FGvXsVvGkW9xTiGLmmKPyYWqIo6EhlTpehviWI333FS9Wyn6V34rUxRdcTUrNAn8Ov5mafI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728363069; c=relaxed/simple;
	bh=scRaSiU4BJeXb9oy3bgaUZaVkFwIa0XH6Zd2Bvvi818=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=bi502xVQn2kJ1e+AxTB+qG3OjJnBFQQL4jF++KLKjKJyn12YwVHLdhDdtNrIdos21WDsgNroEsQLDVXGJExhwzi1P4/N2AqPUnLMHPkNiuuhPmBTnvi72QHI+DAdzqvLCGlTXiG8TgzA+QBWG5TxSX1DtKp4XKT8hka6WOwadBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=OJFXTymm; arc=none smtp.client-ip=185.125.188.120
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from hwang4-ThinkPad-T14s-Gen-2a.. (2.general.hwang4.us.vpn [10.172.67.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-canonical-0.canonical.com (Postfix) with ESMTPSA id E85353F0E8;
	Tue,  8 Oct 2024 04:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1728363058;
	bh=BWK5qProtZrlMz2uAdfk8JZ7o3PTDhfudtJKQXE6+GE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
	b=OJFXTymmq0YSojKBZLocX4BknaycQTWpTHiTmZqkmI07LNHwkKfv5PfC8wbaiNlSB
	 7vPeAhKAtM0B4DaDLe0RpWduhJHMoP0z0JFp1aOVcbwqMNxH47VbcM1orvVV5VTOGl
	 IHE1O0sALk7DYjkqe5I66sT5X8Llzr1W4HjM+ImxHgat3Ja2EOb83bmJxFz4FK+Cwt
	 SI/B3nkGliUb2JlumH/8HY1TgLKWHFnGeYXqb4uWxqInPxKLP9yYBx5F3h2H4V89L8
	 LTdpumv8CPzz9pRoj7WwgY3mauKNKFSplxWUHvmvTmJXXpC/3aEwRK4Zzj5m4C8t+N
	 /gOcmMPzXl+sg==
From: Hui Wang <hui.wang@canonical.com>
To: devicetree@vger.kernel.org,
	nm@ti.com,
	ssantosh@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	s-anna@ti.com,
	grzegorz.jaszczyk@linaro.org
Cc: hui.wang@canonical.com
Subject: [PATCH] dt-bindings: soc: ti: pruss: Fix a typo on assigned-clock-parents
Date: Tue,  8 Oct 2024 12:50:47 +0800
Message-Id: <20241008045047.24069-1-hui.wang@canonical.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

It appears the assigned-clocks-parents is a typo of
assigned-clock-parents even if it is in the description.

Fixes: 25bafac9408f ("dt-bindings: soc: ti: Update TI PRUSS bindings regarding clock-muxes")
Signed-off-by: Hui Wang <hui.wang@canonical.com>
---
 Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
index 3cb1471cc6b6..6d658b020be8 100644
--- a/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
+++ b/Documentation/devicetree/bindings/soc/ti/ti,pruss.yaml
@@ -185,7 +185,7 @@ patternProperties:
               assigned-clock-parents:
                 maxItems: 1
                 description: |
-                  Standard assigned-clocks-parents definition used for selecting
+                  Standard assigned-clock-parents definition used for selecting
                   mux parent (one of the mux input).
 
               reg:
@@ -219,7 +219,7 @@ patternProperties:
               assigned-clock-parents:
                 maxItems: 1
                 description: |
-                  Standard assigned-clocks-parents definition used for selecting
+                  Standard assigned-clock-parents definition used for selecting
                   mux parent (one of the mux input).
 
               reg:
-- 
2.34.1


