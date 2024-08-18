Return-Path: <devicetree+bounces-94564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 870ED955E3F
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 19:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B561D1C20E9D
	for <lists+devicetree@lfdr.de>; Sun, 18 Aug 2024 17:33:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811D315B546;
	Sun, 18 Aug 2024 17:30:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QS2d4qs+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB6E4156661
	for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 17:30:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724002229; cv=none; b=X/sv1KMH2ia1ewAd8ha0v330ZoCW97+qGGTS+X8i2A4o3Z1l6K9n89lYCiJGllBhK+qtq7yEUdgsShXjWATyZBAo90yiZbjFCCcM57XdrTzIT3FGaM4wt5iBU4J77ux/aiwXeudt6+OyXMUmlkP+NwyKF0t6FNt066cvfHYnlQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724002229; c=relaxed/simple;
	bh=HbciimOsIIRkipyvpNiX11BW9hDg+u06qsh1+Uc9DbQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oelTK7dCuPMF1oIamk9StIF08+mPPHcyHVw59z479ODIXObldhqCFVvpTh3Fq/9sZ2086p3p/P8NDdOSuYaH2nxKXIA3cujckMgrQinS/84uOQjTs1WHilSW6/uXRAKtDaodqpbr4HqBuHJXHECRmxud32CEeoQobvcwglAJAuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QS2d4qs+; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4281d812d3eso38688555e9.3
        for <devicetree@vger.kernel.org>; Sun, 18 Aug 2024 10:30:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724002226; x=1724607026; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aw4Fptl98pttOY10KCxMd4Nms4w6E/3GwtsKk+Wk4vc=;
        b=QS2d4qs+yILX3pRiZdYb6cNZ6yDMhbTSFJxfTTboQaNGOPNLxPoAIrWHte+4FJAj8t
         aQE53Qsn9rh3CcELyVgYP+Ij+uymnJUz94LbeSdqPXPOL/aJ/OGNNaRsOPLN+aKL5q1+
         oEjvtxmaK9SDUvWb3x/y2dRaByR2S0y7lGlXvRtQ/RXjVhA0WNSvZIswRin7qoNAKpH5
         AmSPuOHReLZG0gtJ8zKPzLtdprYh39yR4Ma/khoVMtFGH/Q6hLvTZhWkbEN5kb6bVRrT
         YBrOgoHZGPCCZZYG9TpK8faglKhvp52YVeVmU219IkN1BFS8Zk4899zbl794QXqly5ab
         9nMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724002226; x=1724607026;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aw4Fptl98pttOY10KCxMd4Nms4w6E/3GwtsKk+Wk4vc=;
        b=HHlfyrKRtW9CUpdkg04R0d0nNNrCivxzCGXep8uhy7XeYso3dKVKb+GdrZeQZL9TyW
         hs/7aHqkbcPHmBngOlb7sEFXH7mBqQC9p6RXiWYox48LwMDbYqR3qxYN+lcRkfiJuV2h
         C3YgZhECUnrVFmsC2dZMdC4MDyKECC4524DQ3uacXihBFJ7dD4ORLoC9fcg3VBS9cuSR
         lpH8PV29vffjzX4lCjmqB6mag2sqwiiGFGlD1QUc4ixDRqO5AyFLhOehwDlmkEp3GvDJ
         KqLxn/kdMwcVZ5GgDFXZg53xsvpp0abqBv355PyLs4sMH5wq0wsokQLxxLCAaLzslSHM
         2y2w==
X-Forwarded-Encrypted: i=1; AJvYcCV9zBLPC3P8H+Plm3TQsaKYUORazfTnac42p83Hg1usKLiNQqm4wskLIjOuxS0B7o+Acn2Du9J+w7CeVT36yBf5C4pyEgVWrA5AWA==
X-Gm-Message-State: AOJu0Yxox12ULSD32lPwiz1QUrESauJHc+Btd9OE+bUaglijZ1NpITt4
	G6xNshRrCt1trPs0MTSVFllvFvepp4W9VBFoC9K7O44dggALigpC0AEGrHgVnGA=
X-Google-Smtp-Source: AGHT+IFPilTQ7go8vvbQhelRsOizLG7WbbiYR3MYgpB7AkCObI0W33aHc2RPr2v9rpCg6UZ9TBfHgg==
X-Received: by 2002:a05:600c:358b:b0:428:e30:fa8d with SMTP id 5b1f17b1804b1-429ed784090mr75921025e9.6.1724002226203;
        Sun, 18 Aug 2024 10:30:26 -0700 (PDT)
Received: from krzk-bin.. ([178.197.215.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ded7d5a9sm134999915e9.43.2024.08.18.10.30.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Aug 2024 10:30:25 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Serge Semin <fancer.lancer@gmail.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Charles Keepax <ckeepax@opensource.cirrus.com>,
	Richard Fitzgerald <rf@opensource.cirrus.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Heiko Stuebner <heiko@sntech.de>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Magnus Damm <magnus.damm@gmail.com>,
	patches@opensource.cirrus.com,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Gabriel Fernandez <gabriel.fernandez@foss.st.com>,
	linux-mips@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-stm32@st-md-mailman.stormreply.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] dt-bindings: clock: st,stm32mp1-rcc: add top-level constraints
Date: Sun, 18 Aug 2024 19:30:14 +0200
Message-ID: <20240818173014.122073-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
References: <20240818173014.122073-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Properties with variable number of items per each device are expected to
have widest constraints in top-level "properties:" block and further
customized (narrowed) in "if:then:".  Add missing top-level constraints
for clocks and clock-names.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/st,stm32mp1-rcc.yaml     | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
index 5194be0b410e..9b3aaae546cb 100644
--- a/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
+++ b/Documentation/devicetree/bindings/clock/st,stm32mp1-rcc.yaml
@@ -60,8 +60,14 @@ properties:
           - st,stm32mp1-rcc
           - st,stm32mp13-rcc
       - const: syscon
-  clocks: true
-  clock-names: true
+
+  clocks:
+    minItems: 1
+    maxItems: 5
+
+  clock-names:
+    minItems: 1
+    maxItems: 5
 
   reg:
     maxItems: 1
-- 
2.43.0


