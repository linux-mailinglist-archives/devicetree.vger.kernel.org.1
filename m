Return-Path: <devicetree+bounces-16069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 516A67ED5EB
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD813B20B19
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:18:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6383174F;
	Wed, 15 Nov 2023 21:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GYHjSUsD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11EAC1;
	Wed, 15 Nov 2023 13:18:41 -0800 (PST)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2c501bd6ff1so1032781fa.3;
        Wed, 15 Nov 2023 13:18:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700083120; x=1700687920; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ig4LRrmPOfrn/JSeDbvG3vZIgD2UhFkj1Wn3HjDdh+A=;
        b=GYHjSUsD/ZmicPFwYS+yaJoO4lsIHoYmZRWpQ4Rl/Uk2IGVhpKhRQgvyiXqyEqiSjz
         RnWVQFIO6bKCnw+pTkvYDPFYfW1rLVuz5Ur0Tmq35xuNbMEeUFsSQjWpstKFl94jBA2b
         +6IWwvqzQtsB/UZukccPfnSbqrjLFxArvbADNOOmon6F5nwzefGPFZtSCVmEjeVSTegb
         2Pgsx6Z/YvzuggN7y5BmDjxWZiZ9FTdFUN89KFwUJ/f6CZm5k47rfwetLn8uZ8o9Pbnp
         dH5bX2XRM/Nc8AxVFH1crSs1nkuRBE7HR03Pm0eRA7mgpvd7fCHuDVMjBNcdKQ83D+0F
         VJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700083120; x=1700687920;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ig4LRrmPOfrn/JSeDbvG3vZIgD2UhFkj1Wn3HjDdh+A=;
        b=HEiQ6fPw3CjX+E0ZHwaJeuV9e9grx8iZg5EGmkEHbnag07HKgj8Qhj7+XzdKgXwzBN
         uf+6BGnueCrZjtO/mqiPikx0a04i93ajX2fZ6oNDKtTQsOqQNFDskf71sVqZp3/thEox
         cmSYJx6rEr2R7YAWVw5n+AN0VxRNIDBczNzIF9CF4zOB4lspcgb3c1IskrVf5md7VtRv
         nYT/33nl90U8eLqkY7DtxbH1ZC8ewHt3zBHbLrq7ZqwMdnxeAtzhnFNSiIGsF2GMb7fA
         a1e1a/zyOoBEMG4FW/rIqGeMVa55LcZ0eSVweRL+SLiCjdwGPvxfhHyxCik6VXZoaBUE
         +ZFA==
X-Gm-Message-State: AOJu0Yx8eRXxdrCVMsAZCjHN37OqzCIw+hz0UxbTGbD9fCfMjO0Svx/F
	LKxxToHDa2ZCJ84qx6+jULY=
X-Google-Smtp-Source: AGHT+IHTScj9ysDRsY7wFK7xItgqWuQEN+ChknevPY+a5J9RpOc9/TQg/lX1D78M7plkN0kvgag0cQ==
X-Received: by 2002:a2e:7a14:0:b0:2c5:f54:2477 with SMTP id v20-20020a2e7a14000000b002c50f542477mr4946967ljc.40.1700083119722;
        Wed, 15 Nov 2023 13:18:39 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2500:a01:e8e:4851:e049:93fd])
        by smtp.gmail.com with ESMTPSA id p3-20020a05600c204300b00406408dc788sm882079wmg.44.2023.11.15.13.18.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:18:39 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Philipp Zabel <p.zabel@pengutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Magnus Damm <magnus.damm@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/Five SoC
Date: Wed, 15 Nov 2023 21:18:29 +0000
Message-Id: <20231115211829.32542-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The USBPHY Control Device on the RZ/Five SoC is identical to one found on
the RZ/G2UL SoC. "renesas,r9a07g043-usbphy-ctrl" compatible string will be
used on the RZ/Five SoC so to make this clear and to keep this file
consistent, update the comment to include RZ/Five SoC.

No driver changes are required as generic compatible string
"renesas,rzg2l-usbphy-ctrl" will be used as a fallback on RZ/Five SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 .../devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
index 731b8ce01525..03c18611e42d 100644
--- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
+++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.yaml
@@ -17,7 +17,7 @@ properties:
   compatible:
     items:
       - enum:
-          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL
+          - renesas,r9a07g043-usbphy-ctrl # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-usbphy-ctrl # RZ/G2{L,LC}
           - renesas,r9a07g054-usbphy-ctrl # RZ/V2L
       - const: renesas,rzg2l-usbphy-ctrl
-- 
2.34.1


