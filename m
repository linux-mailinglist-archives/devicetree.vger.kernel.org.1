Return-Path: <devicetree+bounces-18903-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1CB7F9055
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 00:33:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAB1C2813AF
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 23:33:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 66C9A315A9;
	Sat, 25 Nov 2023 23:33:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="waXySOPm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 842C9A6
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 15:33:35 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-50baa1ca01cso1005662e87.2
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 15:33:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1700955214; x=1701560014; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rpy3qo29luDIC1NMBRwSckmMxLbTBSubAS+PXk1u3Dg=;
        b=waXySOPmaFxgbpWz/pU/1Nc7vxCzrrpTbpgWH3P2JKnYYlTgODuL30u/MmWL9odSYy
         r14mzTl9d28C0K2Dg7mWQt2s/aaAsHMwLNyrQON7MWnfyyF4VZwFBBpOhNlV2un4PHES
         vNA41NmNF2A3wb3oLNRW31TGEQ+bWnrPzc3AR3J+rD0SENLIHFX82ymOWy/lA31yLV21
         andTLThXgRuGesD2iNt5OxblMDELkbZwWd4eY4L7uvgLN/Em/dDH87+WTQNu7KI8M6dd
         ZOgeyVUMhqAny6EPG89h1mPfjz6f/7lR9nCO7gA7wj1+xx1ySSoZl21zB9tTzpTceWjy
         3VmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700955214; x=1701560014;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rpy3qo29luDIC1NMBRwSckmMxLbTBSubAS+PXk1u3Dg=;
        b=Dk0+F9zk7gUCoSW4thanuJZZbV6lJQA9MUrCUoBoTmfRny1pV50DSu95nMyjN6SwCp
         oOF0hME8rHpi0nmCbGdVRwNlAPrztlAImSshTro41NuFtd3j6S/KQQVQ4dGvPa3h3EdD
         LT4lK2wLHHqqtE8rzDAO4Of9rkOrxei1MBmAdvNpwpbAQqjr9Thp/GqLc305nCeiBM4x
         UvXXrcxFuAINzRK8y539JOZL0LpIFPDzuZARqp8N10xzkYNb269LxXete41B0YLdlcNM
         xgdZtAh8KcNB4N2E2mdFoV6AbMs31T/J3cxDLwG0917xURUfgpwTbNskhVBxGNNjNfue
         Vpxw==
X-Gm-Message-State: AOJu0YzEQ/8WYg0tg81uC4y19IFYJN3JuD6F5RG9dIhMitWwQMhqlpgz
	S4/lEuyib/47fMspj9aeVBt+zg==
X-Google-Smtp-Source: AGHT+IHKjTic1LqyMeILPYCrL3v4w7Xmnrnz1aRH49hdew5LhCkOVpXUl/09mFfdijp2C1hTw/V4Nw==
X-Received: by 2002:a05:6512:206:b0:50b:a687:cdee with SMTP id a6-20020a056512020600b0050ba687cdeemr3356415lfo.25.1700955213589;
        Sat, 25 Nov 2023 15:33:33 -0800 (PST)
Received: from sleipner.berto.se (p4fcc8a96.dip0.t-ipconnect.de. [79.204.138.150])
        by smtp.googlemail.com with ESMTPSA id c15-20020a056512324f00b005095614210dsm994225lfr.241.2023.11.25.15.33.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 15:33:33 -0800 (PST)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH] ARM: dts: renesas: r9a06g032: Add missing space in compatible
Date: Sun, 26 Nov 2023 00:33:27 +0100
Message-ID: <20231125233327.238575-1-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Add missing space in compatible property and align style with rest of
the file.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
 arch/arm/boot/dts/renesas/r9a06g032.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/renesas/r9a06g032.dtsi b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
index 0fa565a1c3ad..fa63e1afc4ef 100644
--- a/arch/arm/boot/dts/renesas/r9a06g032.dtsi
+++ b/arch/arm/boot/dts/renesas/r9a06g032.dtsi
@@ -437,7 +437,7 @@ gic: interrupt-controller@44101000 {
 		};
 
 		can0: can@52104000 {
-			compatible = "renesas,r9a06g032-sja1000","renesas,rzn1-sja1000";
+			compatible = "renesas,r9a06g032-sja1000", "renesas,rzn1-sja1000";
 			reg = <0x52104000 0x800>;
 			reg-io-width = <4>;
 			interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.42.1


