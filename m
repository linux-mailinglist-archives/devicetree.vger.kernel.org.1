Return-Path: <devicetree+bounces-251441-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EEBCF2F9B
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 11:28:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D03FC30662B6
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 10:24:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83BFE3148B8;
	Mon,  5 Jan 2026 10:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Unnps1+b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAE3B314D15
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 10:24:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767608685; cv=none; b=kgj6wDjqw0FBdPwX67YJWAEkU7L734cP6JZb3FAxYM1zZbVtfynQPVZWKoBxoQ2DlgmqhV0wgBj/N7XokMDHEwP3hAx2GW/KMgjHKsoJNNxtx98xz/USF0L7loK3xOnve6wQRlsXZuWe0D9hp2lbq4dkw6WUkTYVqlgapciVQQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767608685; c=relaxed/simple;
	bh=SoAJEqM7XsGclJLWSso4KF1eMXke7Fjb3a4FIxBmVyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FAXEGcqpiF5QetOKG2eEiuop65xp9cFt9isgs1dXzYscQExDm5em6v6ZbfFLcYR81fp9vby9EeRYcepMwg7D2wTeYOL8inqsEOIkSgzrvGrOI5UEOlZcrdtyiPYLNDmBupwC1/KOmm718Sj1klhWd4AobZePww6RPr5yjW7XJdg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Unnps1+b; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47755de027eso83563435e9.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 02:24:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767608682; x=1768213482; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=Unnps1+buIdjXqJCFYz4ZitRMc65jf12rDprS2APYx6NoHAr9WJoVbLmbE/h9D9+Y4
         NYRg9rlVEd2nG+H7CFUoFvnaRZLR9ldVgA9U+qHYGIpsgGksFTz36nsAI2FEsZzzvzIV
         VF1d5Ny9LX5ywQS6DNMgKeFNKlLGrPbMSwrAI+tAidpQrEEWHQyFsEIDMNVQ2xfCJbX0
         Ptp1hWR+f91IH7NRRBB8Vmd0/cdoeqIrvXFKshXWLFUfyXQwXjtbtjsXqCiH1OxnxbSH
         WdlwCDVtRPrNR7h+PIWEqsiSr4Oe27wDIWQnynlJV/aIp3TibySdac/VKKsqDIZw21q1
         9y4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767608682; x=1768213482;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=ivMrhxjdtDE85OOqVSc/UBl/6AS9EwezIYvXE4KVCZgCskhnd+NCY/90uGnfZTWoQC
         9N6YoXfu5JTJC5byroRA4EoonVn2EVXdSCPz98bsYLoklcZcvdYsIC7DQ3HHtMRlmDJ/
         m3tbdFNvAwcHnTdcUirNxRBDTWnxnMgEQcGHe2Kly/vNl1dMRCfhtBEcYbYdlhqQvmPV
         vW+PX4vtt9bEczUGp9kPD4I51W5qn7wj5VdaBO4W9zdipSFF9Q8xb0QsBfddelJPY9mP
         JVcjW1E38eYS3g9JJ6H+1YJefWyrEgmrPKGDyB9YiDWR16imbsOIWLp2g30wCPaBv+OT
         YCDg==
X-Gm-Message-State: AOJu0YzJooxcWjWrAiIh1UvacsjMpK9UmNVmNNX+oRWlD/tBy47RLNte
	UTKyvs42IT7haj/aS3iL+4YIBN+MolR7CtwQyMJlRkGj+BwV4MM5j6NFA3+JzuHl
X-Gm-Gg: AY/fxX6R0Ni5R2uRIre3fvvGuwEe8ef6zBrLAYKolHLyoR7K/N5Au2Z32Q3H2+5JYvu
	W0BrJA0DgNyPzY3Jhj1aNKJGznq70NE0D/BIKOtqYJCi5dLfSpwBwmrYGz9lP+t0FpvEskLgqW2
	tDFfHLRKZ/V+kJcBdMP1QQZdZ1aUS+Dm80q/6NUFTBiQKf0GClQdtaCv2rCltSYa6+BxuZPPmJI
	kTL8//SPBWA3z4iQP9wnP6GlY15R/m4ZevwOqI+xUVlNN9v/bJ+7AnijH1YMEFMjn0kg2h6xkNF
	ZTpAxHEq7O4f0qlv+iS9Z9VlX0gSd2J8q4ZKE8/YBr7j9ALNnUvF3NouAB7f7sMAV5TwnsUZTFj
	syK8Ba553CM6ykPfuGO6ku+LXyN3N0ayVfpWFc6oDt0KIYEI8h1htfTjElQnJFGsKa+E/88sV69
	xRIincZ9UmAxVuaI69AxjBuAnTYUtdq9Lt0QJwvUJJverPof6c37IjBJv8Fygy90oHP+eZ8CvC7
	gB80bF/9iM3FKDYunWPTha/og==
X-Google-Smtp-Source: AGHT+IE4Fxb+mvxMSRFCwCVY2MMYAerRo0gqIhZGIaYDGKCF0+BDab5bAu8le/Ontz20bO5Qq/g95g==
X-Received: by 2002:a05:600c:4fce:b0:47a:935f:61a0 with SMTP id 5b1f17b1804b1-47d194c659emr571593275e9.0.1767608681857;
        Mon, 05 Jan 2026 02:24:41 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d6d452be4sm145607205e9.10.2026.01.05.02.24.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 02:24:41 -0800 (PST)
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
Subject: [PATCH v3 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Mon,  5 Jan 2026 11:24:01 +0100
Message-ID: <20260105102412.6674-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260105102412.6674-1-stefano.r@variscite.com>
References: <20260105102412.6674-1-stefano.r@variscite.com>
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


