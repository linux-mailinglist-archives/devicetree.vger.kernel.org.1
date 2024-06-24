Return-Path: <devicetree+bounces-79362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACEA914FC2
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 16:21:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C6C81F2412F
	for <lists+devicetree@lfdr.de>; Mon, 24 Jun 2024 14:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 513F7146D40;
	Mon, 24 Jun 2024 14:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="ARosYojM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D617316D33A
	for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 14:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719238852; cv=none; b=rFy7Qeb4erOe2aQkyPx1qzQxD66s0JL8/dG1S8NLuJ7rgG0+omvKM/OttCHAbZldv+T7kpttIKEqtRvrXH1cX3QW4ViVszq3n2M3zsWcdq/Y5O3ZVRGIAJdDR5Iko8ohfBGaY4yG8FeLkEp/I59XE0bWY1YGsL6xs5VsQF9DNn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719238852; c=relaxed/simple;
	bh=8arzML0IG2sFbgXDqCLu6LPEnziu0B32300+4u9bdHg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References; b=NWSuBCTX8WDkVWkVKjXFQ3hj+x/KAT3fikbuFCW0QvV9zcFzyo/3uq9/v2fpoRLG9BbxGkgm0m9/gHodvIrKUY85Ng4ALvCWn9GRwKBxJLJRKHux1yPqrQy8zNPZVnXcGrOIfTFZYOX29mEEq06FX3XinV2HAulcd8urlusKxNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=ARosYojM; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1f480624d10so36360055ad.1
        for <devicetree@vger.kernel.org>; Mon, 24 Jun 2024 07:20:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1719238847; x=1719843647; darn=vger.kernel.org;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc:subject:date:message-id:reply-to;
        bh=M3QDpDGSiXVB6sCJx/S75ptPOlykstEPjTXSR09Xt04=;
        b=ARosYojMEVHzEN+6Wlo/6NVOi9967RBTltHDI6vZWoKvGA7ZINg5SLpS/iTSLXw0OF
         VGFoV/I96RHKy7cDiA+Q8tL3jaZyo2enMjc/VOCWRXNlfLiUsIiPDRgeW7bP5tb3HgkS
         pDpV7ckJLrKlTS84pu04WdrPUY+Zm91WAx9ymTWrZNNsg3nBfGDts0LyYqPrtclgq62E
         mWbPQaLOxm+uczo37lo5ixrDyMaWoRBgCSxy6QMuF49ZCrpk7xPQp8D5AvrsV4r8B5yJ
         Vmr1LYsh+pyrS0+7yS9Pzldo5gPz+n+Z02qoNUewDdmVDW+k/uApMNeCfzcCE3jTkMwe
         o+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719238847; x=1719843647;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=M3QDpDGSiXVB6sCJx/S75ptPOlykstEPjTXSR09Xt04=;
        b=legtR04J63JtEEVH+YSQX5L9FEdW4aGePyjvAcCd6H4GlpEorSD/C/tYHx8dNv2UDn
         /ED8HUXg7F5JvNgbR8KdT9fZcKTDZhlSBv7b4iNYybV68CRL5kftCF6gxxASUdri9Gnf
         a0aqaulJ+mhsULQjIAq0N48WaLfPcJ6fjmemuWTJ1CUXznmHHcddVz2xMODODrZWOHzs
         EFPFY0I0t0FEJECbereXo/Q6ymCZDXVmmojmRHZvyeWvex7C7GesaacxtNDbh0ATxwJ3
         G01MFOM/sqZUQ0qcNt7ZspV1YKvV1SrnnYrug+CJQVlZUUIjwmFrUM5E3so171U55f8S
         IV/A==
X-Forwarded-Encrypted: i=1; AJvYcCXYjZXhCg4qVDS9HcDZB2liPquEJovae0mP73TEcrsubeTsEMvzzhBvQlm5A6kOb94FksruLHINomMDr5T8gr6rB0zFWha1ajDn8w==
X-Gm-Message-State: AOJu0YwsWWPWWrmZfsVHLbOOCYYksTFdfYaOO36CYWdy9spSIZ4NgHzn
	aNEh6SwJJ7vHqe4ok2OL6Jgib6xRr6e/EgJwDy1JHTiVYk5IcyYmE1muOCyukVs=
X-Google-Smtp-Source: AGHT+IHz4Xp/LpklfhUfQXhOMNMuea5mCAmDWme6R/bx8xDnAu6GJ4Ix+irnGQPPp/6YUn4bmuc0BQ==
X-Received: by 2002:a17:902:c086:b0:1f8:393e:8b88 with SMTP id d9443c01a7336-1fa1d6acb3fmr49875875ad.67.1719238846980;
        Mon, 24 Jun 2024 07:20:46 -0700 (PDT)
Received: from lvzhaoxiong-KLVC-WXX9.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1f9eb3d5fa9sm63243855ad.206.2024.06.24.07.20.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 07:20:46 -0700 (PDT)
From: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	benjamin.tissoires@redhat.co,
	dianders@google.com,
	hsinyi@google.com,
	jagan@edgeble.ai,
	neil.armstrong@linaro.org,
	quic_jesszhan@quicinc.com,
	dmitry.baryshkov@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Subject: [PATCH v5 2/5] dt-bindings: display: panel: Add compatible for kingdisplay-kd101ne3
Date: Mon, 24 Jun 2024 22:19:23 +0800
Message-Id: <20240624141926.5250-3-lvzhaoxiong@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
References: <20240624141926.5250-1-lvzhaoxiong@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

The kingdisplay-kd101ne3 is a 10.1" WXGA TFT-LCD panel with
jadard-jd9365da controller. Hence, we add a new compatible
with panel specific config.

Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes between V5 and V4:
- 1. No changes.
V4:https://lore.kernel.org/all/20240620080509.18504-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V4 and V3:
- 1. Move positions to keep the list sorted.

V3:https://lore.kernel.org/all/20240614145510.22965-3-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V3 and V2:
- 1. Abandon the V2 patch and add kingdisplay kd101ne3-40ti binding to 
-    jadard,jd9365da-h3.yaml again.

V2:https://lore.kernel.org/all/20240601084528.22502-2-lvzhaoxiong@huaqin.corp-partner.google.com/

Changes between V2 and V1:
-  Drop some properties that have already been defined in panel-common.
-  The header file 'dt-bindings/gpio/gpio.h' is not used, delete it

V1: https://lore.kernel.org/all/20240418081548.12160-2-lvzhaoxiong@huaqin.corp-partner.google.com/

---
 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 41eb7fbf7715..2b977292dc48 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - chongzhou,cz101b4001
+          - kingdisplay,kd101ne3-40ti
           - radxa,display-10hd-ad001
           - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
-- 
2.17.1


