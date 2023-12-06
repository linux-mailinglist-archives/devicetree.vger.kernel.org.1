Return-Path: <devicetree+bounces-22031-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 737DB80641F
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 02:28:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 258F51F21735
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 01:28:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2284EC4;
	Wed,  6 Dec 2023 01:28:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y10l1F3a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 056FF196
	for <devicetree@vger.kernel.org>; Tue,  5 Dec 2023 17:28:46 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id d9443c01a7336-1d0c7330ad9so2566475ad.1
        for <devicetree@vger.kernel.org>; Tue, 05 Dec 2023 17:28:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701826125; x=1702430925; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oOd94CZUIFx1zLYvWrY0k1s94CAHS+icQN8gGN69rQ0=;
        b=Y10l1F3avfwM43GsL1kVfAdA7cIh2HxMssSpRkizQC9a0Uf23PIbDus9aaawiQgvd5
         RzA9i5PexjCXVQRFKYP5IodL5Tvuw7l7S1CD/hdh4fXUrpoY76dKWpHou6iz4G/ynjx9
         g/kAuAZjOM3e1P6jgHVVEDwX78pvY3pd4oJltXdIb2Y+qhwFeYoq8TFegi1rNEPyc2bm
         TFB3gj284bft/SLjbxPTtzBX0u8E9xtM0zgsdAjU7dWCLOxZkbhDAm/cLZlqfpnf7Ohd
         7COWLEjjjdmxq1YvyJrEPsZ68fEDacZ7G5nJfq/HlN6Qc0pW2m29G3D9nKKpTnL0l8To
         tBXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701826125; x=1702430925;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oOd94CZUIFx1zLYvWrY0k1s94CAHS+icQN8gGN69rQ0=;
        b=h138RFxIM9Gy8wtwNC6QHP1EQV2bOm7/BXYkNDk9UTr3uinb3ogFDHmbBUIb/yNKaT
         PsLTrZA47Dm/hTYyfqq+Fd8U6vOb35F0PmP2GkD9CWsGINHU0tVQZm3bQiCqXWWcCZmj
         qzBuNd0fExIK0rpT6m5puODdfmdEe5MamlSDIHO1WgU77NzuvBVvInbMUL96Iie07c1h
         yIG6Er4lXPaqa9o8Kbz+fP7prOYHcvLwXAqJJ8LK9C3O1Kxe5sz112+jadH+Otz1Nnwx
         cloYroIa417Ko63jNvYIfCxPIqoI65ahpyO91QXWCJnGOwqC2/U7OaX8BTOt9hKnvgaG
         iS6w==
X-Gm-Message-State: AOJu0YzJh/udpnVhzOhaEuy4/BlFImaVXkL4M8ymdNviKHMg6orELQ+2
	X/clZUAuiAQw5eX+iXaj0UM=
X-Google-Smtp-Source: AGHT+IE7BJv+iuT81k7v9mVcJvVovqI0N5ykMOxqOVuYDWnunBNIr+5XpteUmJ79X9xhLAaiLjcAiA==
X-Received: by 2002:a05:6a20:da8a:b0:18c:18d4:d932 with SMTP id iy10-20020a056a20da8a00b0018c18d4d932mr161268pzb.6.1701826125443;
        Tue, 05 Dec 2023 17:28:45 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:96ba:ce56:6e82:3d82])
        by smtp.gmail.com with ESMTPSA id i19-20020a63e453000000b005c1ce3c960bsm9765674pgk.50.2023.12.05.17.28.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Dec 2023 17:28:44 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: Laurent.pinchart@ideasonboard.com
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	aford173@gmail.com,
	Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: display: adi,adv75xx: Document #sound-dai-cells
Date: Tue,  5 Dec 2023 22:28:31 -0300
Message-Id: <20231206012831.2179356-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Fabio Estevam <festevam@denx.de>

When using audio from ADV7533 or ADV7535 and describing the audio
card via simple-audio-card, the '#sound-dai-cells' needs to be passed.

Document the '#sound-dai-cells' property to fix the following
dt-schema warning:

imx8mn-beacon-kit.dtb: hdmi@3d: '#sound-dai-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/display/bridge/adi,adv7533.yaml#
	
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/bridge/adi,adv7533.yaml        | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
index 987aa83c2649..e15ae072922e 100644
--- a/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/adi,adv7533.yaml
@@ -89,6 +89,9 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     enum: [ 1, 2, 3, 4 ]
 
+  '#sound-dai-cells':
+    const: 0
+
   ports:
     description:
       The ADV7533/35 has two video ports and one audio port.
-- 
2.34.1


