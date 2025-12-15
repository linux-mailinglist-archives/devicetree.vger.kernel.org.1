Return-Path: <devicetree+bounces-246508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF63CBD42F
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 10:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id C31993019E32
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 09:48:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AD693161AB;
	Mon, 15 Dec 2025 09:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OyZQEkht"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 842E031577B
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 09:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765792081; cv=none; b=l7U+vAs4YYwTuYwypLABGPfTN01VcEBTZQmJeFkoZYl149uqva/91gW09RUrlY1J29GtxxD24U0o+uGsPmg+wkSl8IDUfYLf+bnV3Ln99uNy6DyOTW7U9s5Skaj6AFioxNwRaIjCd9ybqe5c4CCSYGikHO9Uw1CU0A6tOzKr8YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765792081; c=relaxed/simple;
	bh=sExmmnvYaPANXPnzO5I3PgHRYBCnpqGofgWH94UH1sM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ii6KMWdrK5JETZxDvgWtXxPr3EH6j3/Q1GzC1Cyeap3yOZmXhdOTOWidvtcPC7RVNO4Hbu9jIyVeq4ZXoIz+kI6Ld1syIwyi6VxqtXW8ihdEsRSN17ArAIf/9AGDEi3Xc7dl5XQw22vPzi25iB3CR1Dr6aKiTmnsobviMXxDvB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OyZQEkht; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5957db5bdedso4164523e87.2
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 01:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765792075; x=1766396875; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=g554CpaKOJYrfnF3kgR3vkqE8z4cQfcBTMePardbJIE=;
        b=OyZQEkht4zPZLqkKq+M5jxiThHeVfWvwEYhCyefTbYUw3JxzNysv7YtyTaduXMTKxr
         9kQE8Pj08tFqz1dkHmaJ11tCBWsx/YE7Ioxv8QSJeBu6DBdJWPeA/HTqvTvSzVJF+wsV
         xW8FARHaqZfJaBpKI8qd/ZS4iRXf4uQ3dt1YJmsSqtzcLeXUwPWtPyZyHsSl5p4K0feE
         ncgmE0V6Ma2K/Q3WaEhfVoc1cZGKbIH39xtRHmPaqLXVCcseMePbSqFRePBuxVE5Wj4T
         hozBCoqAzqNjpyTKB2geIa5Ma31MlHRmH10boLHqwxjGOM1icwQQbYzOAvbhd5oU5y/9
         vpbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765792075; x=1766396875;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=g554CpaKOJYrfnF3kgR3vkqE8z4cQfcBTMePardbJIE=;
        b=kr5R85PASHKbBHSypPNushFKJOhbPt3ft2RaoX8vAZXK8DcZdIillu0L0zaU55HHPZ
         1voJ6ipylev6cTHdtXVd6cV/6xKRZICeGMSvEUD0mwEZnjDhp4rI1wVzr+gfq4oqBHXY
         //zmMgCx0fX4SNNBCpYzp/n67xysXYc3TCfTrssk1n6Nik58UfHJRfNSTdxOnPxFy13U
         /pMZZqoWuWP8jMOrv4FU6BTTVZx5TtIPtb775h2Seu+AunrlY4r13UZRectifsny6btE
         W8Pwy2itnF22hkaOQ81KE2A8Tos5j7mv84QzximIdFbhxFto5f76yrrC4cSAa/QgZv7G
         z7/w==
X-Forwarded-Encrypted: i=1; AJvYcCXuenLVClZoG30VH8I4u3DCha1ShFieRc3TB8eLgx19RPU9LGremDHS6ffNO1ZsE/NXuTyxZjAurb1q@vger.kernel.org
X-Gm-Message-State: AOJu0YxWQGZPKbnlH35uylvewtCkdePja7Ojbjpgkkf1ZxM6+kVjrPeg
	VEgdOVl+5/8JWUUH43mu8GYKbpF6GHPTOpzO5x4sL/M0ivcZq3ad7cKb
X-Gm-Gg: AY/fxX6IzBBWhOegjwMGiu6500jCeAf18hKwK+GJHj/Vm+oYZoXhhwwmiNRVJjy3xEK
	TL3cuR7S8h4xbSoR5Lq0vvPUTIQhDws9HUDg5t1V5Pkt+dOaUd8sTPBEMca2p9W7Iy+/JFx+eVS
	0CJEGmR4ttrJ0Q2AKksRZkV5NspdUUp1ShCD3kt1E89JdU1eoBHLAjs4wUdfY4D2/wzTLQOcyJv
	HvxfNLl+Vfmn4Lbb2HV87h/ZgRVi24G1CXoJmiCo0HNztxA2qIXzjM/uVgEn+qZym8HVpUpADPV
	cfcZPAlY7++hdehHLHm2mZmljc/8ggK1vDZM9jqDlKT95+aM73XqqhThJN1UlS8faI2brT3K1nH
	vvK2dmK/gpH9fOWxyObKJI25+ZLMTi9Af3InEnFSbbqJC5H+J+Gc7zTxeWXhjz+i7yO1GmtWOdI
	XGaGAzjY0qRF+YiD1/qehhdOnMu4EqCMaFng+wajdWcczQMtRm86wO5Lqn
X-Google-Smtp-Source: AGHT+IHq6/ltwcpwzlMuZ4ctniBxHUBG6W9nDfRQn41gCXLc1DmWlN5fsdQeqKb8QAQRFt4aosqehQ==
X-Received: by 2002:a05:6512:15a8:b0:57c:2474:371f with SMTP id 2adb3069b0e04-598faa7c05amr3191323e87.45.1765792074446;
        Mon, 15 Dec 2025 01:47:54 -0800 (PST)
Received: from [192.168.1.168] (83-233-6-197.cust.bredband2.com. [83.233.6.197])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-598f2f37ae8sm5397546e87.15.2025.12.15.01.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 01:47:53 -0800 (PST)
From: Marcus Folkesson <marcus.folkesson@gmail.com>
Date: Mon, 15 Dec 2025 10:46:49 +0100
Subject: [PATCH v3 7/7] dt-bindings: display: sitronix,st7571: add example
 for SPI
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251215-st7571-split-v3-7-d5f3205c3138@gmail.com>
References: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
In-Reply-To: <20251215-st7571-split-v3-0-d5f3205c3138@gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Javier Martinez Canillas <javierm@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1230;
 i=marcus.folkesson@gmail.com; h=from:subject:message-id;
 bh=sExmmnvYaPANXPnzO5I3PgHRYBCnpqGofgWH94UH1sM=;
 b=owEBbQKS/ZANAwAKAYiATm9ZXVIyAcsmYgBpP9k4iLYRf6pbd/ZVDpkkKqBsnqpGyKf2nvXlG
 MFX9dXbKrWJAjMEAAEKAB0WIQQFUaLotmy1TWTBLGWIgE5vWV1SMgUCaT/ZOAAKCRCIgE5vWV1S
 MtEHEADAyrbyRjTklwJ/2m4/bO/eCRWhZBtPQmDhuDWmBUAM2z2hP3rz7synGw57lPV7QFHRDx0
 UVUCKPOkIhOINM89+J5vdWaINjQkUoH95xpE4pHbC/yb9EX61NRD7vbbZF5AR8ig172tl/aWQVd
 n8rEIpJ9437Z7xAeBWlXEAT6xIVCpNxzVSpx2o27r86fgV4UibqTBupm1R2P2zfMcBXyuoaLhdP
 B7UpKhBskDXWgDtsQAODYw6BVlxE7gPe+Ae7Flmi6G5zreW+3sjHva+ZDJlut3gt0PKikHCV5h9
 i8lx3ulXeuEZYGBMT3lDtMibfValJWbScFpfxCgcP0c0Z080TJUrHzA0KLaCcNddkj4YZfBuPmQ
 A4J1ZKFKyYQ3RKRaRqxiv5bL+gcc41pn7jHXCWuBO8M2oEleVG+5RMeWnAObLZ6Z7pYiVZIU4I1
 slQNpnuorO/nGNE+IsW3TxYADGynRuM6Dy0+YfvcvU6VCUVkJ+zCr+feR2+IXSeqLahE3VzgaTm
 KaC4cbxM+ksOfTGlrLrmqk4SgMpCcuNq9TDxG62ZSXDUUnsz9Nam8/DpJN4eO0JsTENb8WyGE6u
 d1vsqxp9+jALYz88+Ese96rDqGr6PdP27JJm+WvY0qunbIwot3WYxbU5usRNi8fEj3PzNsPMyEB
 6aA8xZgDS25XnLw==
X-Developer-Key: i=marcus.folkesson@gmail.com; a=openpgp;
 fpr=AB91D46C7E0F6E6FB2AB640EC0FE25D598F6C127

Add example for using st7571 with SPI.

Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
---
 .../bindings/display/sitronix,st7571.yaml          | 25 ++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/sitronix,st7571.yaml b/Documentation/devicetree/bindings/display/sitronix,st7571.yaml
index b83721eb4b7f..1931a47c4217 100644
--- a/Documentation/devicetree/bindings/display/sitronix,st7571.yaml
+++ b/Documentation/devicetree/bindings/display/sitronix,st7571.yaml
@@ -76,3 +76,28 @@ examples:
         };
       };
     };
+
+    spi {
+      #address-cells = <1>;
+      #size-cells = <0>;
+
+      display@0 {
+        compatible = "sitronix,st7571";
+        reg = <0>;
+        reset-gpios = <&gpio0 3 GPIO_ACTIVE_LOW>;
+        width-mm = <37>;
+        height-mm = <27>;
+
+        panel-timing {
+          hactive = <128>;
+          vactive = <96>;
+          hback-porch = <0>;
+          vback-porch = <0>;
+          clock-frequency = <0>;
+          hfront-porch = <0>;
+          hsync-len = <0>;
+          vfront-porch = <0>;
+          vsync-len = <0>;
+        };
+      };
+    };

-- 
2.51.2


