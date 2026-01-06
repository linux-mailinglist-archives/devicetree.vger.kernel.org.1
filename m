Return-Path: <devicetree+bounces-251931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D29DCF86BA
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 14:08:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A41A13018C96
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 13:08:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EC2D32F75B;
	Tue,  6 Jan 2026 13:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I7ZQ8Y8U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D5F831D393
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 13:08:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767704920; cv=none; b=aHeWwoEAcOzeCskVPH3GvWREa6lZcecZfzYjs9BI837DkUAm7USRtXbLGLwFsKLajnkX6h8VpiRs7X3mCMYyfjQCC8ZJPE97SFJeUQZmf5ep6ZDv0AlJFlBW6RPKHv4rHyabJyEoBcbVIdg1/dq/rocdRkT+mzLUpKDFyEms7vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767704920; c=relaxed/simple;
	bh=SoAJEqM7XsGclJLWSso4KF1eMXke7Fjb3a4FIxBmVyc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=J5JwuCVKhMEEnC+HM5w8SrL8m1sRuegYgKk3f3Uc6rXzdSnaGxgQbWfqq1yMMadkVW5Jugh/0k9NPVnb7JB2AHEU66G+p/N5hEXw/mtC09Gz8atO5hPxPFQ/rlSfJ0ILXYbm5WHKb4bo5qo8Odz0+d/frxbuyk5PCcUpZ9kp/m8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I7ZQ8Y8U; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-47d3ffa6720so9332885e9.0
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 05:08:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767704916; x=1768309716; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=I7ZQ8Y8UC+j4c7DjrTFe8aCygxYA/nAtL6XeR2RuHgP0KscVskR2wDH7C8CfJJNuZb
         2+9iRNTPU8tLWt8GyoTL7pZKf9bwRcPVKLuTDXSZvUqyMW60woa3+2Obv5VKsBm/r4WV
         hrEHEUSm9YBG22iYe3NN/B6Bc6Ndc/3zyWcjUcnwhpsZv22ZXyN8wWJTmnnXgzaGsHhk
         GLnQK0A2c4b8IDAlbbqK1NAJFSEDF3MlUJ8cwO7fD02U2AIaSzK3z1UK333z81y2eiNS
         7Y9Ru+UXueNzR+6/1VcC7pPO5YBE0YPlR+HUzKJQ2F13IMVrRe9x45h6V5NzsYuRw9Be
         A8Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767704916; x=1768309716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FPwTSdKW1xUCjAG9WVlRLUU2FLI+RpdIfRh7InwteVs=;
        b=pQNcivxZafGj1WGuN9CsQfti6qubw+q9uL7dAlLIXlifyecBCxvGrXc+W6h6Lt3ahK
         GdU29ayCbEw1leze8QU9pyBHTqimgkHsOyUnXFnrWANWpEXjK9jetfh5S8mHEa4+4QYS
         bvtKignR9zexdhwf95dIHGku25jUT+aTNoVfQvdJfUUBMln+U12kCSFWVAeZqiqRNJyl
         bMNz/XT0kJxi4hTdDwR+EaN08pBM/HCeyhwQAeyblv9BjKOYS6ZQebhaB0WKsGJ1Xv0h
         gxcVk1iJ3ixyrxWvy8Nw67JQH8mrtSrYJ/6PvKDH99CSggJpgStisXzJf4Kdtm+r7bvK
         yWBA==
X-Gm-Message-State: AOJu0YxTvlsBDqh5LFBOQRrZctIVwAPRxzoSkMoEELiVpJZJUEfwU2SS
	I9TAJsOKN6mH4UPARRfjPClyebq2NNaZCNrFp3N7syDeNCrVm4EvaiNes55/nw==
X-Gm-Gg: AY/fxX69N0u1Q6ReepJKqdQ2ySvDo7ogJGBrQP/1J6gyPZFSo44NeylDxnF+Q7wR9Rv
	9q6Xc1pPIKQELkQ/j5yjCKk7AlA5+SfOrTYQeKuNtlQaxz28WJpCg9Gfmy/oKO9a7bk2uQJ5uKj
	2ZU2UABJWI9FNd6cey1bjZH2F4kjgvzi+zp9+efJ1UjbhtiuKEyWi9Cu8XH9MBi/wsrWE+aO40v
	DTtYZGNyD9P8dgtLEVdWm42cEPtKabn99ADfbQmFa7UeoRBGbaTCCIDxFlsqHJQbPdlBlqkLBRG
	W7kTe6BG2ghj12HQUD7nf08qHZiAfzAYlM7tFa6f/CuImOz1ODcKQt4VYsaB771EJ3uq6Hn4Rq7
	tFvGPZDYDzdOKQCp/0+kZxh16Ym7qq4L9IKbu3uJS5e/XiPQcPVGVBqKyaExd1qH0nu8KHtebsT
	GAEy3IVVPe0wVrwfibkAQ4Y9NQyAz1qCcA4KCZDoZhKLC57x0yxvequhA8bRm/0USiY/AmNZUaF
	nrK0TdlgDIs+CIqgKKyU4rjVA==
X-Google-Smtp-Source: AGHT+IF3dwzodQVxu/OJ1KFwSm2ssmdCm4Q/0W0IwVXzXdhGRs95TqIkNDIchCoIlCEBm89aLRYtuQ==
X-Received: by 2002:a05:600c:a10f:b0:479:1a0a:ebbe with SMTP id 5b1f17b1804b1-47d7f38038dmr21927105e9.14.1767704915405;
        Tue, 06 Jan 2026 05:08:35 -0800 (PST)
Received: from Lord-Beerus.station (net-93-151-204-73.cust.vodafonedsl.it. [93.151.204.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d7f70bc4fsm41601635e9.15.2026.01.06.05.08.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 05:08:35 -0800 (PST)
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
	Primoz Fiser <primoz.fiser@norik.com>,
	Markus Niebel <Markus.Niebel@tq-group.com>,
	Yannic Moog <y.moog@phytec.de>,
	Josua Mayer <josua@solid-run.com>,
	Francesco Dolcini <francesco.dolcini@toradex.com>,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/3] dt-bindings: arm: fsl: add Variscite DART-MX95 Boards
Date: Tue,  6 Jan 2026 14:07:30 +0100
Message-ID: <20260106130741.91532-2-stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260106130741.91532-1-stefano.r@variscite.com>
References: <20260106130741.91532-1-stefano.r@variscite.com>
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


