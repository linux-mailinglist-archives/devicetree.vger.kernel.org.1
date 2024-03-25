Return-Path: <devicetree+bounces-53014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DF288AA59
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:56:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 44E501C38067
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9241213C3C5;
	Mon, 25 Mar 2024 15:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="QEtbUPNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C594933F7
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 15:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711380044; cv=none; b=gcr451SpvqrL/t//fr4uwV5xel0E+XQKeJH7pPOk/UDKE9iSLryYcpEqMgiXbY5ZrFmQ5Sb1ej34F5kK7EH+7QOI3TcPKVoYpek8iR63E72z5keT/xfnIilKTcACXA9fZ2+Vx8vCynbibRr3lKN3Na3DrLUyRzpxWQwg4RBxjWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711380044; c=relaxed/simple;
	bh=bgyGK7bGXEYpHNZArJAr+JJTuU63jb+O2QoR/6ryyHk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=lxXmmMuoxmKD3YkJrJg6JwvCT1MdGjZZIASxCm7diy91H8ISPdDSB14TckT4d2qVv/wFlREZLFruP+9ZooQi/6SFK6OsAUKFFKzluY0WMfJBRDe5U3gumxMv6bPL22ttnjQyCNZoUc42AIP0pLdOwW2wVDw/N+EXZCaUwp2VU0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=QEtbUPNn; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4148c8ef88dso654805e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 08:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1711380040; x=1711984840; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FKzbShfGtzdIS/VyL12PvryFnw68mWp0aCeGhStJmzA=;
        b=QEtbUPNnv9dozuZ+3K5hwvQSEpYJkNOsh5+KRDTTb7yAosGR0e15JsBkgjZPSFVpQl
         Vs+VNP7ZVq84CaPr+xmTBmtYsyMdg5Nc/EpapIwNqIJwNwPz9Z4+f1PMlLHg/dik07x2
         2lD/dnuGAYcVwW2LYeQlA71MoK5JjDNulrBQxQPDHoPnYnKFpvB7Xj8mZBnsU35SX/k1
         k4VfM39oOSuj0bbNDlliPwkeoQCVsDKc+oxYSSKcBa1z8sScbbeVY4VDADt4BDJd8/WX
         2w0OTmvPqsAjGqZQFwsihmY+JRpEn3jyMJ2dDo/d+726HzOBDQjLE4cNx/46EJ8B9HJW
         JVLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711380040; x=1711984840;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FKzbShfGtzdIS/VyL12PvryFnw68mWp0aCeGhStJmzA=;
        b=vgbKn+sozOxmerabfG1gX8JPBDgL9vR885m5AThoKJ/CKcV3X/Q88IByID8VhNODZx
         SCmwd4yegU3YL/UsKFvWn2rS6Jc/Ke0WXF8CVL+2xtTEs5GDMhNqDFVMAH0JHQJrmxi/
         d3aBEjsuKDdpCGqdWDmcyalKV2wz5egwHqsO9Fy4lCagYFVfonOVY5is2iZn3AZKCY4A
         mLiJKd2/NUqHTYEuUMLQl7hv7E3GYz7gKRe+BzNWaqBjMBWGEIQQSUZE/WPfS/C5U1q8
         e2KqnfSzFsZuqY4Q1cwr+ULmNTYb30PVe8lYSE4In2mcBwgZqEbhxBDTNrvYaqrEnKhs
         Ibpg==
X-Forwarded-Encrypted: i=1; AJvYcCWxbAP8YWnwuLPiHGErLtqWH9tqTrra4jHqcjkHYfs+Jzgq/28UArmczv4M+/Hd81cj9/1Wo6X64XslJicf3/Qf4BM9cam2Ase7Hw==
X-Gm-Message-State: AOJu0YyFEAvlIajGoxyTmFCLn5M5RYP2WTV2hpx4Km8KJ18CJMRJ94jX
	kWpAYzJ5QSVEMR9FklyEieM7UnOOrvPpKMsg8vqLe2vf17XJxTUPebjoZryNr2Y=
X-Google-Smtp-Source: AGHT+IG1csFQ7sX1G/DrVWuHQA//aOJiVFkrjPmHUIfRPjlZmHeidSWlwSMrwzvrR6BE8Rmx+RjSMg==
X-Received: by 2002:a05:600c:3ba3:b0:414:286:fd1f with SMTP id n35-20020a05600c3ba300b004140286fd1fmr4926293wms.11.1711380040066;
        Mon, 25 Mar 2024 08:20:40 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a246:821e:6f3b:6b50:4762:8343])
        by smtp.gmail.com with ESMTPSA id d1-20020a05600c34c100b004147dd0915dsm8761954wmq.21.2024.03.25.08.20.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 08:20:39 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH] arm64: dts: ti: k3-am62-lp-sk: Remove tps65219 power-button
Date: Mon, 25 Mar 2024 16:20:29 +0100
Message-ID: <20240325152029.2933445-1-msp@baylibre.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On am62-lp-sk the PMIC is not wired up to a power button. Remove this
property. This fixes issues observed when entering a very deep sleep
state that is not yet available upstream.

Fixes: e6a51ffabfc1 ("arm64: ti: dts: Add support for AM62x LP SK")
Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index c4149059a4c5..9a17bd3e59c9 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -166,7 +166,6 @@ tps65219: pmic@30 {
 
 		interrupt-parent = <&gic500>;
 		interrupts = <GIC_SPI 224 IRQ_TYPE_LEVEL_HIGH>;
-		ti,power-button;
 
 		regulators {
 			buck1_reg: buck1 {
-- 
2.43.0


