Return-Path: <devicetree+bounces-240027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 93946C6C620
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 03:30:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id E1CAA2ACC8
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 02:30:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17C511F130B;
	Wed, 19 Nov 2025 02:30:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aG0vRxlt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91BE24CB5B
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 02:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763519418; cv=none; b=AbLuhfWzKhSh/cULufLvCnbTLGpvKfEBx6szUc6OT8XLfZneLy17Xg4yQaKyrHjDeG5rzLIF/wDnQF3W3J/BzU3TvnAtdHFPhh8scvus8AB3rCYiJI5gHHg/aK0QHMTOyH0S/W3Dpn/cA+uMPNf0kPuHKMj/2/E0hs6aH255GTU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763519418; c=relaxed/simple;
	bh=9jslsko6Ysi4k4hZdq86FFeqtg1ZzbHLWDCJLb+kEsg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=sAwty7g0fXcV1rACunM4BjtFIHHQqya4cAnmYlGOhYJ1vjM8kCWjMtNh5QSxQ6v4HSQWVKZzFW41Z81IcrRXVdhSw3N2f153wHqw5zhIURY2F6qvxEMoJEA/9DX5ki25+H7pnGqwHDYyfLEhIHPyRNdbnDy2llc8gcjHVjSsYM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=aG0vRxlt; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7baf61be569so4677907b3a.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 18:30:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763519416; x=1764124216; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IAUl3DvNF4a96OMaEmiq14uCqbdByDkYT7FAGSKW29g=;
        b=aG0vRxltqemu4lIVdbi9eszF7oOplesYgRQ1rojPHy0/pHB1j6mTB8K52CE9J5qfFI
         S0nv0iT8rkE3SUWYs8rD6BYgpNfyX9hnCm6R9/i6duiSSqqcv96nZ8z/5S4cdnEDPKlb
         6xaDP4DYoNVtJ3Cx76W/A5qvtFS83f+z+MV/+Gc4x/LNKVtkm3pB1eOBV5tJyMiA3b3z
         U8di+cGFUY5LZuxvFbrR99Z4WrOdfeG/+Mm5cojSihvDL20D37dNuu5zuQGvo87UruAr
         a4fnsi755rv9Ce2fSzg0QgVncJoReJFSJ47EZPJUE1eLOiC3jXvg8njPS25FfTbsNCUF
         hHnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763519416; x=1764124216;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IAUl3DvNF4a96OMaEmiq14uCqbdByDkYT7FAGSKW29g=;
        b=kTaOzSKbkl6la4BTZX2MA3Zos68wnv5nXJF4109PxEL/i/thPsdQlXqiIdlDFKhun5
         4ElWP14189xOt0Se3arCcW92G6aQF5s8uA4dkuCnjuD5hp8DndjndfW/BiIIdqqRoJWB
         uH747KK2J7dXcXQj+NMDPG0nG9qyYwuIpyxV8HZZI6r04dd6mrpyhR/WKs3v7yFfM5oj
         zhlJ0Q7FKEmuZ06jrvMvGbJEsbkCGbSNLmFMr4GjCVvMjzU+7dT8jeDuRtd3rGo2/VJU
         5b/2/N9g0s7crE7YV6uJUAqvEvlpVDZ7TTz5lCIwsoJXNn36zjqw9tqdp6gSQ2U4Sdsz
         jSdg==
X-Forwarded-Encrypted: i=1; AJvYcCVMupjRwRc3GhyOfAhI4tRa4EoAMyfsZpvTO4TTAtHGbLRolMqdeOJWAOxgthQ73qSu4cH2iso6qsW/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw5QFcTONjhwqQa5Jw7l5n5Dbw3cASobJJBRc/umpJMFQMabLk
	Kq/DSQ7RoFFDwhWcDYKswWTwxSmVwG1ciKc2ipHr1vKqw22ktXaEXzBR
X-Gm-Gg: ASbGncuG2N7K3s1Dbm0X6iAsNnQFRNepaTJ7/aLreJ5p/DmmLUtVUo6TUE8mMmIndKm
	YMs0gq2U4aAqcGrWEbp0pmGyLjAhIPS+fDjzJ36tTWqXsrkiN08MfYgHmepy3fUfRjiUpBFaNXq
	t4c3shFkLClyiNu5fpYE7JfIuR2LRy+GRw+8hLydBUolCven89OscLr0Pqa2TpPhAqrCXxraWxd
	lY8CHu5Wkz2HBLM9hUY5rbL4A9RpthbbDT7EYeMlB3z0nmtTsTjf21fVUcCP5kCpRrt5KVdb/jE
	OPxCqHp5GzWAnynLh9yVeuaPCw3FbhWD6P0gnC6ElqUp1uEqvS8SDzdhcDWoAk0U3kzjKZ+Xakr
	4kEHbmJSBO7ZlxuDBgKSrJyXBwJwgXAj5ESX7JD9JA4ainUfF+Vtz7Nkirv5mACITZQZF8f8yNL
	FJcauYOUSkO6bh7SY5YGFVQirsMOJ3lvWx00s=
X-Google-Smtp-Source: AGHT+IFh8r79lVQpAeCYF0NNbGC4p1MGfSUZomtiu+dfIgiNGPVRw/+zobtyaOULhCb1FmLl6qDzjQ==
X-Received: by 2002:a05:7022:d8e:b0:119:e569:f258 with SMTP id a92af1059eb24-11b40e7b689mr5344109c88.1.1763519415678;
        Tue, 18 Nov 2025 18:30:15 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:8863:100d:2a2a:9a74])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11b060885e3sm65842955c88.0.2025.11.18.18.30.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 18:30:15 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: neil.armstrong@linaro.org
Cc: Laurent.pinchart@ideasonboard.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	imx@lists.linux.dev,
	Frank.li@nxp.com,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Document nxp,enable-termination-resistor
Date: Tue, 18 Nov 2025 23:29:45 -0300
Message-Id: <20251119022946.268748-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document the optional nxp,enable-termination-resistor property for the
i.MX LVDS display bridge.

This boolean property indicates that the built-in 100 Ohm termination
resistor on the LVDS output is enabled. It is controlled via the HS_EN
bit in the LVDS_CTRL register. Enabling the resistor can improve LVDS
signal quality and may prevent visual artifacts on some boards, but
increases the power consumption.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Change the property name to nxp,enable-termination-resistor (Frank).

 .../devicetree/bindings/display/bridge/fsl,ldb.yaml      | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 07388bf2b90d..6bc786204e65 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -35,6 +35,15 @@ properties:
       - const: ldb
       - const: lvds
 
+  nxp,enable-termination-resistor:
+    type: boolean
+    description:
+      Indicates that the built-in 100 Ohm termination resistor on the LVDS
+      output is enabled. This property is optional and controlled via the
+      HS_EN bit in the LVDS_CTRL register. Enabling it can improve signal
+      quality and prevent visual artifacts on some boards, but increases
+      power consumption.
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
-- 
2.34.1


