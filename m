Return-Path: <devicetree+bounces-257054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D34FBD3B5EF
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:36:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 794CE304AD85
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:36:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A577838B9AC;
	Mon, 19 Jan 2026 18:36:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jg1x58n1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A069F38B9B2
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:36:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768847780; cv=none; b=Tv48cQ8G8Wx1Not3HG8elH54qfhswzb5iFwXMbMOW1KLHI6rAZpfnAtFwY/yL6vwfXIsnKvEFKmkgsF9k3/zNJCwP8ThOJvquK/yPaROZgXAL4YYye6aJOdOrXypCeh+lcgkhI4yxteRIrkuECi5BnPuJezYUEIZmd4piQo244E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768847780; c=relaxed/simple;
	bh=SoAJEqM7XsGclJLWSso4KF1eMXke7Fjb3a4FIxBmVyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tql1LGR427+LOAxu12qd/TL7Et1SxFJpsiVA7xe3yz1uySqr4JEnxD1zqtoKqYMof89mrZmCd3sRnKFoCFh5cnrmNTl5cEP9J0M6cN4i0sBZDjE7PsF3G/q01ulR0bLjLU2aLvYCIQAbKt8BoQl8h4EuQ6Q3hguKUUiJuG7sE60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jg1x58n1; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so53273725e9.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:36:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768847777; x=1769452577; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=jg1x58n12hxqnQ39I+z7eWPy3cKah/dqN6Bmr06P1M+Ttou7hpCJugWYXcpioJiXQ1
         aYKKGWT4xkJ64yEsokcCU1DzIR+JImUwXN3x4EiniG7bKkDnbhX+KVcPl2ySvvpeBbXP
         +er/IAhnBG4hJ7irCD1X2A/Hp8rbkQXxlG4LO9gvznoyuc20jxbBJ7ivqNJW0f60yHcy
         9X773bse3Zr2qMYILgB4lj6ZxtRk2Mv8eMJTAEtOF75wcGAUPvIgH+ZF4nODhu6pKucg
         rFKXcByMqSwcaWlpmMrUKF5fWpwJKqq0+5mqgp053hiBGF5QT3OvUdoB5CzskPzymM7F
         fcYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768847777; x=1769452577;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=PHmBEXjd5l7MuZpdSIujpPA0Df04VcRvZ0byDftrr6L3PJJw521sArxHTg412dmtwj
         MejHr4mfJEddvV8XO7OsqqPpl1ImKGeVqXdgtPQRduXLYOWUIzaCro7dUOcGRzDFi8WQ
         jYqv4XUG7KjQYoMjdKOE7njDIVGVKSDCSKO0Hsc6cL1RDwBCm6z7aybbYoYqSGjcZmp7
         he2gmzwYcfpU5RiijhkAaqeJdpPoRhSuPN21P8SW73S2hjIMx+4s9qKV4mJ58NuI9Vab
         T8avvEU9zuAo6glAvyjzAYvVPoNVa2NG4kmzFdT0k5DVl3iZWdE2X1RnFcynjKH2snSM
         B2/g==
X-Gm-Message-State: AOJu0YwwzLn2V9AjhuVH/jvXdO69jmCNQlgKixUM+ubFc7Pv0yJ2/SGQ
	AXbnXT92P+B0+t7zOUk59r/R/qeFsA+2ipp+M8N3LnmS3dMRss1275lOVqoGPA==
X-Gm-Gg: AY/fxX6aQNtV6hGWfvvyLlvJuh4WrWGTCSg8Lbiss8/71w1vIRfdgJ82SVUxwND9VYM
	5szcI4wZZ2oT6/+5g3mplX2AT8TK85CMLEsOv5tW/QvPlVNCiZG5Af8IvtDqKsU4+yFF+g751Te
	OpBhgUOZFbTRz7Psac1ygu4tY1arGJtk5MBTrosoouuvvEiVIz9/ffKLJhJqFXJh5LlabIAE7bY
	gg9a9by2CNXbsPBTwcfWrK1kfxvYKMnCs3s4MePhTZ6JS+ryuak1PonfLcmudEXeAYkl73QTLTS
	LdQiXOX2xm++2DwexRsWyD6OjRr99VwLJoJQkkFMVXyorTfZ9zlSBA+JztvHHbewecEZeRJB8Uq
	zEBS7DomaUHPK7vHLEeH7V2GpOvhI/Kml8ke5ikgj2nkXJ+cwp1LuQr1LntaNoCu0ecrbijMHnx
	5B+otD2WZxvvWXRM9wDemMaMpZugIpVK8iydT0fnDgMIrPUkAKgx2LQJpeYCFe90iNRfZIUeoC9
	Fo70KfkEWYGLMFyg4oWyll9Ug==
X-Received: by 2002:a05:600c:45d5:b0:47e:e57d:404 with SMTP id 5b1f17b1804b1-4801e30b8a6mr161135965e9.16.1768847776628;
        Mon, 19 Jan 2026 10:36:16 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4801e8c9cbcsm203965015e9.12.2026.01.19.10.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Jan 2026 10:36:16 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Stefano Radaelli <stefano.r@variscite.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Primoz Fiser <primoz.fiser@norik.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Mon, 19 Jan 2026 19:35:53 +0100
Message-ID: <20260119183604.88192-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260119183604.88192-1-stefano.r@variscite.com>
References: <20260119183604.88192-1-stefano.r@variscite.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefano Radaelli <stefano.r@variscite.com>

Add DT compatible strings for Variscite DART-MX95 SoM and Variscite
development carrier Board.

Link: https://variscite.com/system-on-module-som/i-mx-9/dart-mx95/
Link: https://variscite.com/carrier-boards/sonata-board/
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 68a2d5fecc43..2a957a593abe 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -1449,6 +1449,12 @@ properties:
           - const: toradex,smarc-imx95     # Toradex SMARC iMX95 Module
           - const: fsl,imx95
 
+      - description: Variscite DART-MX95 based Boards
+        items:
+          - const: variscite,var-dart-mx95-sonata # Variscite DART-MX95 SOM on Sonata Development Board
+          - const: variscite,var-dart-mx95 # Variscite DART-MX95 SOM
+          - const: fsl,imx95
+
       - description: i.MXRT1050 based Boards
         items:
           - enum:
-- 
2.47.3


