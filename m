Return-Path: <devicetree+bounces-132399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A7DF9F6E72
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 20:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 66F237A2543
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 19:47:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 248781FDE15;
	Wed, 18 Dec 2024 19:45:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 719241FC7E0
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 19:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734551128; cv=none; b=qkcD2IIYxVKnUrBLhLGrXyDUq1v1/UwVNp11zQQXVzscq+lf+UCEOy+M3WiIvgrKs0uIK/jtfGVaixlWDqK7ywYAxsn9CnWvMiT5aUOaGr3SWmBYi5TGf3MO7rGGZx0SghRHGXQ4eN4jQv9OyrvsvhU8JhhdIsGblJB6wphBJl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734551128; c=relaxed/simple;
	bh=uZvW7WN2ICbEyh0EkL2Gure/jqA8r3Z9cfwDjT785yY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ENh+IphgKYF4BQ5tOd3Cd0TnHvWngQ261SOs3Uh5SLt06I4hBOhDjhRfLSBH2CNSoAly6Er9bZI/WT68RtQ2chOli0enFysP3GttwtP1F1EMZARc8Y/4FPmPE63bg+SC7sfJwOvOHT5iqi0MOR4PtLh6v3VvQK4pouIlRHLhfXg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzyo-0006vG-KF; Wed, 18 Dec 2024 20:45:10 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-0045EZ-0m;
	Wed, 18 Dec 2024 20:45:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tNzym-00DT63-2z;
	Wed, 18 Dec 2024 20:45:08 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 18 Dec 2024 20:44:58 +0100
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add prefix for Topland
 Electronics (H.K)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241218-topland-tian-g07017-v1-1-d5e411c199e3@pengutronix.de>
References: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
In-Reply-To: <20241218-topland-tian-g07017-v1-0-d5e411c199e3@pengutronix.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
 Simona Vetter <simona@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, kernel@pengutronix.de, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: a.fatoum@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Topland is a professional supplier of photoelectric display and touch
integrated products from Hong Kong: https://www.topland.com.hk/aboutus/

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index da01616802c76830a520594a69bd6a2e0231df0d..42d14899d584ca724439fdf500274a729ddbc455 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1524,6 +1524,8 @@ patternProperties:
     description: Topeet
   "^topic,.*":
     description: Topic Embedded Systems
+  "^topland,.*":
+    description: Topland Electronics (H.K) Co., Ltd.
   "^toppoly,.*":
     description: TPO (deprecated, use tpo)
     deprecated: true

-- 
2.39.5


