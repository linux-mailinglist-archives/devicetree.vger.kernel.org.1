Return-Path: <devicetree+bounces-18802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CD22F7F8BAC
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:29:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 09D9B1C20B13
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:29:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F52171B4;
	Sat, 25 Nov 2023 14:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="enOnBxvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CFE0106
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:29:51 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1cf8e569c35so16480415ad.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:29:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700922590; x=1701527390; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=soP+RRaN3MUQWLVu63uoZr/A2jxljbkXd36iggWLWsk=;
        b=enOnBxvRlvxukgy+kZMDDXgVUwKgTiMOm7rbipCoRrcIucJX8Qu7YgXzuCg5DQcmC4
         QMp8CJ3uzdqWhKaZ3ZFIi5EpkK4tWrBvR4TxfPWPoLG736zg2KCIQgxFwlbyGyzVfoR0
         SzfwlU7py7m/dFy/3T5Y1yH+vjh7XSJ6+xGdRPtIfePFT9CApwZEsODQS4WZmbjrs5uU
         aal67hMtQzDrCqO+j1uSKLJiLsyuzV6+rscmhEugsRGO6hrz4KbCzZ7Kzf0W/4GM8rve
         fMfwp4JlOcsnY7+XB4jQwcmpFKc3rgsOp0SV7L05RutDagvHd6C8cSPaOBE30gpjFoAr
         vC/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700922590; x=1701527390;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=soP+RRaN3MUQWLVu63uoZr/A2jxljbkXd36iggWLWsk=;
        b=JkmHkyaijRwDtDpL8qqLUEbgt1Kt4SiUY2JLw+y6bAVRseI1BFmqFGaQF+mfjoUqsi
         eGBysrzjxDAbBhLqccQh9pS+mp1bug1XNgmYJuirEQvGhViv64Wbs81IqSpuCD2dR4Mh
         wPM+mZArwGOs0mKpV5rOJtWdgQSC8Dq2/pxI9Jo4Jv/srcdnxH90RKa9Ik+CpSqQRoPE
         f1QCC1hekzQFMO14DB9rDU5jyJv4aAB+ihMmfhfZ1gT3Hp7uQgrSKgcT445/Z3lY91aY
         4Cw/6lgs/2YN9lZ0+E0PiUCl9iFYgZF7T30tHQ2lotA4lIpMdHu36aRwPjWlCDIqfhNA
         Ncmw==
X-Gm-Message-State: AOJu0Yy7RMgxIJ/I6PdGbnaeE5F13HM987QVE3oOG0O7490FOEVfqZpZ
	4NYHMKKAUXEn3Jp4WOO3eYPJxA==
X-Google-Smtp-Source: AGHT+IGdRIJrwm6empRgqvj7NO2/h+LJkSkBwYKFMy7QT2+FKypIqAWRXGUD+CFth6DY4lrBsLOk6A==
X-Received: by 2002:a17:902:82c3:b0:1cf:a512:34c6 with SMTP id u3-20020a17090282c300b001cfa51234c6mr4764387plz.13.1700922590492;
        Sat, 25 Nov 2023 06:29:50 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id t15-20020a1709027fcf00b001cc6afede3csm5106311plb.7.2023.11.25.06.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:29:50 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Update edgeble-neu6 bindings
Date: Sat, 25 Nov 2023 19:59:13 +0530
Message-Id: <20231125142914.57459-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Current binding has following compatible combination for SoM, IO board
- NCM6A: edgeble,neural-compute-module-6a,
	 edgeble,neural-compute-module-6a-io
- NCM6B: edgeble,neural-compute-module-6b,
	 edgeble,neural-compute-module-6b-io

This board topology now changes in final revisions, so a common
compatible IO board, NCM6A-IO, is made available for both variants
of SoM: NCM6A and NCM6B, produced by Edgeble AI.

With this change, 6b-io is not as available and 6a; 6b SoM's have the
same compatible IO board as 6a-io. This change is due to the common
optimised design of the IO board made available now in final revisions,
which was not the case in initial revisions.

Update the dt-bindings with this new change.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../devicetree/bindings/arm/rockchip.yaml          | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 9f6155e4deed..75f23d1d42ae 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -101,16 +101,12 @@ properties:
           - const: edgeble,neural-compute-module-2      # Edgeble Neural Compute Module 2 SoM
           - const: rockchip,rv1126
 
-      - description: Edgeble Neural Compute Module 6(Neu6) Model A SoM based boards
+      - description: Edgeble Neural Compute Module 6(Neu6) SoM based boards
         items:
-          - const: edgeble,neural-compute-module-6a-io  # Edgeble Neural Compute Module 6A IO Board
-          - const: edgeble,neural-compute-module-6a     # Edgeble Neural Compute Module 6A SoM
-          - const: rockchip,rk3588
-
-      - description: Edgeble Neural Compute Module 6(Neu6) Model B SoM based boards
-        items:
-          - const: edgeble,neural-compute-module-6b-io  # Edgeble Neural Compute Module 6B IO Board
-          - const: edgeble,neural-compute-module-6b     # Edgeble Neural Compute Module 6B SoM
+          - const: edgeble,neural-compute-module-6a-io  # Edgeble NCM6A-IO Board
+          - enum:
+              - edgeble,neural-compute-module-6a        # Edgeble Neural Compute Module 6A SoM
+              - edgeble,neural-compute-module-6b        # Edgeble Neural Compute Module 6B SoM
           - const: rockchip,rk3588
 
       - description: Elgin RV1108 R1
-- 
2.25.1


