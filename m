Return-Path: <devicetree+bounces-225311-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2B69BCC607
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 11:38:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A91F41A621F3
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 09:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6984127604E;
	Fri, 10 Oct 2025 09:38:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="BYA5EcIb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f67.google.com (mail-pj1-f67.google.com [209.85.216.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3731626D4DE
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 09:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760089090; cv=none; b=n0rryhE3CqE/K2WN52LUgEdTiy4cJ9Oc1d+PPetQ8ma1AkNlUb3vA6NN91RUuqquCPvs1FiH+LuvTzJ/t/21xJIxtb6/8EifKeetMwe/OQpmdpsIJRuYHRDN+MAIjSv8S4m03fVAKm458tOJx7PCsb/fgPsZSCtvJ3+vYtvUVd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760089090; c=relaxed/simple;
	bh=3QmVGJ7LV4qSkZz2KeVRBwmZKsrxT24r8KZBthTI5nk=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=DbOKoMt2sObewM89bz2V5VqpIsn1AoveXZNJ/ldSr2/7ZvJxpr5tfmfiRZpoZk5j0yeizb6BDpfO2aPhZ4t015ljAaZp/NZO5FN4l6ZAy+Lgwgtp1MWGKRUcdWevBn0p6ZfSrJXRid2WwiLvFhrqJ2EM2fNTAQaEt3hHBI0bOr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=BYA5EcIb; arc=none smtp.client-ip=209.85.216.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pj1-f67.google.com with SMTP id 98e67ed59e1d1-3322e63602eso2623475a91.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 02:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1760089087; x=1760693887; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tNBktTywzCZ2Vs1/6SHXtaO1WSRmT9/nVppLgw97l1M=;
        b=BYA5EcIbnuxTxjM4KsmXmb8t6oh4uGlCiycGMRCVBnt2SaWgVvObGznn4gCeo1i2cq
         Bf14TIbJxSqbKPZDUgWFom2A8+Cs9ltA7MNJzp38v9p3z0fDIRkQZdtZPgPPPwrpjaqp
         1DWXDmaZlJM1zpQ6vLGK2faPiBCrorFVU0h4CAOiQhct63nl4LAHjuEQsz0/gW0BkKTm
         hvze8K/PfS0GtOQTSdVMs4+ITM/yysx3N0TKSWzfCbRdkl+ShbcsiigBy4H2TI3LtV6t
         cTGWUi6N+eMinNnxue6aS4fL+4KWFJa9dyguBsZ1PazAONiX7ruBVzuF5Z+Ikmqc3QGe
         8eiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760089087; x=1760693887;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tNBktTywzCZ2Vs1/6SHXtaO1WSRmT9/nVppLgw97l1M=;
        b=b+tEeV6hpI4gUBH3Ww52Bz5BsFPvA+xOA34uTZFR/K5/xDRc1rMuXgRVsSau5WB8nR
         p45ZDQHISFIyNbZXpwxQZ/heahyuGdsRZ2wJDm6l4g3TQHATJiFBMVFtIMIB2X3E5tqR
         Lt3L+fyWfooSqD8F4W9gIUROkQQd/nFNeS3Hb05fcQHUncgglimJ8KnQI0jEsh/6OOFg
         o11NCHqoGYNPK+nXMEEsGuHTfDJAIHZA9aAcPYUUh9S9CNIv9rjovNFx6EzSWrNAPsGs
         9lLr6tvUpIMBANNcFi096TR5bnUEYKem6fKc5Sx18pNZ3h2TTHsl4yv14D0Lsz4tfok9
         AbQQ==
X-Forwarded-Encrypted: i=1; AJvYcCWtuOtXOFbDmQbwfjU1sH8gvwP3Rp0KoLwoUoRAcajp5+LxhjYCoVcUkRPA6zpFBk6IamjEXSW6UQ5a@vger.kernel.org
X-Gm-Message-State: AOJu0YzuhWiMO383gIif86lnVOlXM+JWjwDDLR33ehd7Z+fXht4X8//e
	u9KtpKfmS7+YUAabqMvcQ/vkGhSI8hlyb4OzvvyysQxgj8nFt5CJC+zCFO4OBKlqx7E=
X-Gm-Gg: ASbGnctWeCJS3+RtCeQeeyQzh3dPMU5ayvRCPBmCkx749GsKHndd/3KxvjnWn7pWlVo
	ugJVLJpy3/PBs7Ai435w2O1XktyAGGUdkjiRQnU/xLhSpVOVqKSStwTENcsibc9MgHUwpf3KKt8
	4ijW63lNEZhyNduBp1Hid6uHOqn9Xf/T74tvP8hbm4bxwQuNBcZVaZN6JwzT6OfwWt+CwmggHlh
	V8L+5R+inMNZrwQpZfM4onaTjRL2YxGm7NYioX2j3wOWlNVuHpLO8iE8UrjjJHzgjDDbz66c47y
	HCdW6LaqERL+e4a5CzaSAxs4EPQ8loZxNIbb0tWTEeLhuR37ogOa4YmyTqz+E43J/nUHJJeqVd4
	0oqTiPY1jK4pHPDiT1+c/FLblweqpHJkbLnPS00CLi64ZPaXXed8tMp1LUbSkHjwyTpmcL0hd+1
	G5B1JlVFMd2vzb
X-Google-Smtp-Source: AGHT+IH/fzKW7eF2Afua4pv/8lqMzHjqilOfUmkLawKp1cJrHz5MTNsghAnJ1QN3bQCeG5scPV4WBQ==
X-Received: by 2002:a17:90b:33d1:b0:339:d1f0:c740 with SMTP id 98e67ed59e1d1-33b51149673mr14839792a91.1.1760089087303;
        Fri, 10 Oct 2025 02:38:07 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([103.117.77.121])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b61a392cdsm2668196a91.7.2025.10.10.02.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 02:38:06 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: neil.armstrong@linaro.org,
	jessica.zhang@oss.qualcomm.com,
	airlied@gmail.com,
	simona@ffwll.ch,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dianders@chromium.org
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 1/2] dt-bindings: display: panel: Add Tianma TL121BVMS07-00 panel
Date: Fri, 10 Oct 2025 17:37:50 +0800
Message-Id: <20251010093751.2793492-2-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251010093751.2793492-1-yelangyan@huaqin.corp-partner.google.com>
References: <20251010093751.2793492-1-yelangyan@huaqin.corp-partner.google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device tree bindings for the Tianma TL121BVMS07-00 12.1-inch
MIPI-DSI TFT LCD panel. The panel is based on the Ilitek IL79900A
controller.

Signed-off-by: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
---
 .../display/panel/ilitek,il79900a.yaml        | 64 +++++++++++++++++++
 1 file changed, 64 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
new file mode 100644
index 000000000000..a723f179efdf
--- /dev/null
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,il79900a.yaml
@@ -0,0 +1,64 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/display/panel/ilitek,il79900a.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Ilitek IL79900a based MIPI-DSI panels
+
+maintainers:
+  - Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
+
+allOf:
+  - $ref: panel-common.yaml#
+
+properties:
+  compatible:
+    items:
+      - enum:
+          - tianma,il79900a
+      - const: ilitek,il79900a
+
+  reg: true
+
+  enable-gpios:
+    maxItems: 1
+    description: GPIO specifier for the enable pin
+
+  avdd-supply:
+    description: Positive analog voltage supply (AVDD)
+
+  avee-supply:
+    description: Negative analog voltage supply (AVEE)
+
+  pp1800-supply:
+    description: 1.8V logic voltage supply
+
+required:
+  - compatible
+  - reg
+  - enable-gpios
+  - avdd-supply
+  - avee-supply
+  - pp1800-supply
+
+additionalProperties: false
+
+examples:
+  - |
+    dsi {
+        #address-cells = <1>;
+        #size-cells = <0>;
+
+        panel@0 {
+            compatible = "tianma,il79900a", "ilitek,il79900a";
+            reg = <0>;
+            enable-gpios = <&pio 25 0>;
+            avdd-supply = <&reg_avdd>;
+            avee-supply = <&reg_avee>;
+            pp1800-supply = <&reg_pp1800>;
+            backlight = <&backlight>;
+        };
+    };
+
+...
-- 
2.34.1


