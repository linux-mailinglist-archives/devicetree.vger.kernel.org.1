Return-Path: <devicetree+bounces-54180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 719FE88FCFE
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 11:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2885F1F26A75
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 10:28:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 419477C098;
	Thu, 28 Mar 2024 10:28:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="QwJDo/6k"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F31524BD
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 10:28:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=85.214.62.61
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711621687; cv=none; b=XneP/nwYzF1j5Pya5kpqR/+TXqhAgrbjr/rr4+WLum43fIiofb9n/g02KRDnS/wOJ3xLF0hI5tlrh8Pg/cr+bz87ZxKtycYp5n4geLVjFeTOcYcy24ZFbZ54AP+CERrwLQl+2OBGvLiE00iU9zz4WSK6TVM+0+JhhLnncvE50Es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711621687; c=relaxed/simple;
	bh=/O2oPcwL15YBqBrAnp299tHi+OfZEpYTt/BBdqAflls=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I3/wH91j4yyH6oZaY4hm9pSHTV+Egku2P08I0Nn4EqZTBl2gxOpXlmMdM0v17GXIATlQaRItCI8O1CaRYkMcV05lsObLFznu5Xhay4zoReuOQtKrw6P7Zu5iG4l/GlkimovI2H7grvz+AOiFTglx6rl/Nu1kH1qGjU1eYdAFdcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de; spf=pass smtp.mailfrom=denx.de; dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b=QwJDo/6k; arc=none smtp.client-ip=85.214.62.61
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=denx.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=denx.de
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id 09AC488125;
	Thu, 28 Mar 2024 11:27:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1711621677;
	bh=XTqSQFcCxiyIb0b9KpW5vjiLA/F/iTpaiUM8cy2VNNo=;
	h=From:To:Cc:Subject:Date:From;
	b=QwJDo/6kl5MfFwdzTIxolnOEVYZ6eWSbXxc+XwKmEktZf0H8xjy+AJw+h8vxN1p4v
	 KATPRpqiOTQO1HoY+5O5/sQOgsGlPmRKp4dL4RZoQmyjc2yBKsFq498hunJzzdok0X
	 JK34PGIqSJghO5Er/S4rgDSyZGdmkf51N2VJYjQasZGqFADNKLui8YRwZY+fYHhrG5
	 FovHn57au41Fe5JJzpMBFfPAKdDR0WWmLR+jAvREi02Y4Y4HT11ds+4tZlQX8XpYs8
	 pHGb0tHEtzW140h881U6mZHtXsU6W7f4VTe2t6mSUnQYheENFpllz9BE70WAdA0E5l
	 bdseRrqeW2IGg==
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor+dt@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>,
	David Airlie <airlied@gmail.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Sam Ravnborg <sam@ravnborg.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	devicetree@vger.kernel.org
Subject: [PATCH 1/4] dt-bindings: display: simple: Document support for Innolux G121XCE-L01
Date: Thu, 28 Mar 2024 11:27:35 +0100
Message-ID: <20240328102746.17868-1-marex@denx.de>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

Document support for Innolux CheMei 12" G121XCE-L01 XGA LVDS display.

G121XCE-L01 is a Color Active Matrix Liquid Crystal Display composed of
a TFT LCD panel, a driver circuit, and LED backlight system. The screen
format is intended to support the 4:3, 1024(H) x 768(V) screen and either
262k/16.7M colors (RGB 6-bits or 8-bits) with LED backlight driver circuit.
All input signals are LVDS interface compatible.

Documentation [1] and [2] indicate that G121X1-L03 and G121XCE-L01 are
effectively identical panels, use the former as RGB 6-bits variant and
document the later as RGB 8-bits variant.

[1] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121X1-L03_Datasheet.pdf
[2] https://www.distec.de/fileadmin/pdf/produkte/TFT-Displays/Innolux/G121XCE-L01_Datasheet.pdf

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@gmail.com>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Herring <robh@kernel.org>
Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Thierry Reding <thierry.reding@gmail.com>
Cc: Thomas Zimmermann <tzimmermann@suse.de>
Cc: devicetree@vger.kernel.org
Cc: dri-devel@lists.freedesktop.org
---
 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index e0f6aa9a025c4..931d98836e121 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -190,6 +190,8 @@ properties:
       - innolux,g121i1-l01
         # Innolux Corporation 12.1" G121X1-L03 XGA (1024x768) TFT LCD panel
       - innolux,g121x1-l03
+        # Innolux Corporation 12.1" G121XCE-L01 XGA (1024x768) TFT LCD panel
+      - innolux,g121xce-l01
         # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
       - innolux,n116bca-ea1
         # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
-- 
2.43.0


