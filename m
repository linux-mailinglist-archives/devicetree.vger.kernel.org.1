Return-Path: <devicetree+bounces-16072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0367B7ED60D
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:29:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AEDED281070
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:29:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4073EA7E;
	Wed, 15 Nov 2023 21:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XEt42Kh4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 232F38F;
	Wed, 15 Nov 2023 13:29:18 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-40838915cecso606645e9.2;
        Wed, 15 Nov 2023 13:29:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700083756; x=1700688556; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3p4zCP4pU6Jd5DKB3xx9Zwmjhwd0cEt27vibrvZH2uc=;
        b=XEt42Kh4E/CJdVLdPLauj6+HTmM3fP/x+7Hx/B0+6CZpP+n8Nfxb0wVY/5Knxxryz7
         laTl4m8rSFwgb3gAc5uzGqN4cNHAc6tdKfRx33IXLOXx4XFbgReU5hEVZZNdqUOZNnMP
         6cCXw7i6vFFuNaI0YsI4LYq2awSK/a+DKTmAYq7D/JQImpPONTy++9dkmUBsgauk84go
         cHTeXImERr7aTA7rlCBsPd6z1cVy/j7P0IOP6kLxofSoyQ/TfbdsgSvBcV6N9NAwHxCX
         eJbhJYaCGFewgbWoYJMIvIO/Hytjg6rBWe5/o9JkhDmcLl4BDDVLFK5tjLK9SZ4OjoAW
         w9BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700083756; x=1700688556;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3p4zCP4pU6Jd5DKB3xx9Zwmjhwd0cEt27vibrvZH2uc=;
        b=Uz8tVLfpbFC4TxHAlmP3L8Uq76VcqPZjpNr9smhgrzYdZVM4gzCgNR+te0mrQfmG1A
         CJtNpL8gFVmQ98KkSxmMC/lTxg3QU3Dk+8qzfcpslW0WM4JYpMS9CC3/C8MaPy4TwmAe
         TNaPhPTunsW5wyrPysxo+RVmmMD7CAeL0mwX2aV69mYlCZ740NFl3BEoaTxQF/U+pV0D
         17jyL3qA8YZO3on60/y/Kv9dUgthJSGToO1QH+IQX0l2cWR1aMkconMJ+PweDehWCGFV
         WfShlPqWaYHf1mqNhQV1LBVRFSKHL4WCuIx31x+FhoCBBwVE4sACtAaQOgcR1Ixz8We8
         Imkw==
X-Gm-Message-State: AOJu0Yzv7OAjkXiCtdY22QJZgTtAMPhp2DIR2o6pM1pWZwRw4rsWbs17
	eHW+wPUFWK9DGmw717Q/YMXGOkxGyMM=
X-Google-Smtp-Source: AGHT+IFlHfdE0QzX1nTBQOBcq9idiB3h4X5+9ha3O//W4lTlmpBYRnBfVQRYA0fF28aQCbzVoeEJxA==
X-Received: by 2002:a05:600c:6022:b0:409:c1e:7fe8 with SMTP id az34-20020a05600c602200b004090c1e7fe8mr11460736wmb.19.1700083756209;
        Wed, 15 Nov 2023 13:29:16 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2500:a01:e8e:4851:e049:93fd])
        by smtp.gmail.com with ESMTPSA id m10-20020a7bca4a000000b00407b93d8085sm910631wml.27.2023.11.15.13.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:29:15 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Chris Brandt <chris.brandt@renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] dt-bindings: timer: renesas: ostm: Document RZ/Five SoC
Date: Wed, 15 Nov 2023 21:29:08 +0000
Message-Id: <20231115212908.33131-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The OSTM block on the RZ/Five SoC is identical to one found on the RZ/G2UL
SoC. "renesas,r9a07g043-ostm" compatible string will be used on the RZ/Five
SoC so to make this clear and to keep this file consistent, update the
comment to include RZ/Five SoC.

No driver changes are required as generic compatible string "renesas,ostm"
will be used as a fallback on RZ/Five SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/timer/renesas,ostm.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
index 7207929e5cd6..8b06a681764e 100644
--- a/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
+++ b/Documentation/devicetree/bindings/timer/renesas,ostm.yaml
@@ -23,7 +23,7 @@ properties:
       - enum:
           - renesas,r7s72100-ostm  # RZ/A1H
           - renesas,r7s9210-ostm   # RZ/A2M
-          - renesas,r9a07g043-ostm # RZ/G2UL
+          - renesas,r9a07g043-ostm # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-ostm # RZ/G2{L,LC}
           - renesas,r9a07g054-ostm # RZ/V2L
       - const: renesas,ostm        # Generic
-- 
2.34.1


