Return-Path: <devicetree+bounces-16074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E38B7ED617
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:34:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0857C280E5E
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:34:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 191543C489;
	Wed, 15 Nov 2023 21:34:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CI9VI4IX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BD35B8;
	Wed, 15 Nov 2023 13:34:09 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-407da05f05aso623445e9.3;
        Wed, 15 Nov 2023 13:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700084047; x=1700688847; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TJq9RwRehs4D7WXODBH5ujBwSEz9WoRdCdezm7e5LdI=;
        b=CI9VI4IX3/Y7I7kovV2zUqXNJa7zrS9O2ZU0Zu3iOPwhAYXGleOFG57/vnop2rtg3E
         WPegyPypcT2GGfNh31wJeRvG5mgU1xmMPsFes2esgJIbpV4Ih452p20BTvt7WMW1ZqkE
         RIXiPjyO1ZofbzttGLS+H0xDsptZXcIMPNQKkde69CMMI/h+MFeSCJwaAfsDBzJy8bWO
         D2q7P0ml/gaSrzW/hb+3bT2U7peqFeqMkTLJ/p1zZg15k4TBwZvuzJMvcrLwlNr7kPx1
         icA36TKRRGYjdfwtLhE89DxvG/F9WnBaKvFipGREOAojyXUI78yEYu8hHud8wOCMDGZ+
         hhZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700084047; x=1700688847;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TJq9RwRehs4D7WXODBH5ujBwSEz9WoRdCdezm7e5LdI=;
        b=dk+7TKPBqQQkaG0/vNEL1Hq8tvmaSLM/k89Y5HaNoKNrtC1H6S2Pg/mo6Yzo8RY3Nl
         2uhNqGr7BwlnpFxuxPUWurupd5Xt2B7Hg/2QNSoXoN/vzUyyGWwn4XiurBTcaORdkw1Y
         5+ISXXJdGx4d5hQpckB5GQsCngIk1gXrk1V5O4vBIuPXlyXfyqdKlWBx4xokjj84fBx7
         TPBkLo2OWmh/ChsOX6W0UMjLNL5875RHZAvkELkU/Rms+bTOyvDczU+LU6KMiQWJbMIX
         GQBpZQl8xcQ8FxrGORaWZRHaGzmVBhCJukASY6+YLV2cB+avP2izf/W6Leq/RHCchf9Q
         z+mw==
X-Gm-Message-State: AOJu0Yze7JAsYJbzDllCncDoMNqUmU/QyHWF51NDIYdh7ttylaGfZnIZ
	qqlsQ5yf/f0Tl8aJpcYl7LQ=
X-Google-Smtp-Source: AGHT+IHb3SyTdwLXt/HE/cynHBAK02Y53Amu6UoXjOtymiJSVwp87yE+gVeFZi19CMpgtwP80m5dNg==
X-Received: by 2002:a05:600c:4f8d:b0:40a:6235:e82d with SMTP id n13-20020a05600c4f8d00b0040a6235e82dmr2265604wmq.15.1700084047522;
        Wed, 15 Nov 2023 13:34:07 -0800 (PST)
Received: from prasmi.home ([2a00:23c8:2500:a01:e8e:4851:e049:93fd])
        by smtp.gmail.com with ESMTPSA id x16-20020a05600c2a5000b00405391f485fsm914104wme.41.2023.11.15.13.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 13:34:07 -0800 (PST)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Magnus Damm <magnus.damm@gmail.com>,
	alsa-devel@alsa-project.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH] ASoC: dt-bindings: renesas,rz-ssi: Document RZ/Five SoC
Date: Wed, 15 Nov 2023 21:33:58 +0000
Message-Id: <20231115213358.33400-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

The SSI block on the RZ/Five SoC is identical to one found on the RZ/G2UL
SoC. "renesas,r9a07g043-ssi" compatible string will be used on the RZ/Five
SoC so to make this clear and to keep this file consistent, update the
comment to include RZ/Five SoC.

No driver changes are required as generic compatible string
"renesas,rz-ssi" will be used as a fallback on RZ/Five SoC.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
index 3b5ae45eee4a..8b9695f5decc 100644
--- a/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
+++ b/Documentation/devicetree/bindings/sound/renesas,rz-ssi.yaml
@@ -16,7 +16,7 @@ properties:
   compatible:
     items:
       - enum:
-          - renesas,r9a07g043-ssi  # RZ/G2UL
+          - renesas,r9a07g043-ssi  # RZ/G2UL and RZ/Five
           - renesas,r9a07g044-ssi  # RZ/G2{L,LC}
           - renesas,r9a07g054-ssi  # RZ/V2L
       - const: renesas,rz-ssi
-- 
2.34.1


