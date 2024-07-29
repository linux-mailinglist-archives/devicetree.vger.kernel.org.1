Return-Path: <devicetree+bounces-88775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B2ED93EECE
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 09:44:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4673E1C21B57
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2024 07:44:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD04113D281;
	Mon, 29 Jul 2024 07:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YgTRHm69"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFE7132113
	for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 07:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722238929; cv=none; b=pwu4sPMVTS7ngfZyHM2UqTShYiK/bMJeGuyasgTL54YoJ65VY+nRzRAr9IMsCbhoT/j6JpNSc8vwVJFySjAXLgLX/lyJlorcIMNJnULI3P9lP4/5/JgoDS2/zSHnxmOn6xk0jfLyXniYbbYRPMWQI3zehOF3q3fCcrJNuaS1KgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722238929; c=relaxed/simple;
	bh=S1cCoD9bh4B+uAgxd3LHWOod0JD+NDzz4e7CSw0w4ig=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nC1aP2V01CvZ/G5ENdrTxzG4k1uD/fKx70gUfLcKB9yofDuTM04Jr/oAGqzqITaKI5Yiuf/KRJDxfmp4tj4mtNWI4ro9nNnAnI9Yuei8UqyAPZf+TUoqUZdjVo7pRTw3iVdp3XA/rShy7uaBzUND00IkmmXqPsuJR36XFARsE0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YgTRHm69; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-36887ca3da2so1119746f8f.2
        for <devicetree@vger.kernel.org>; Mon, 29 Jul 2024 00:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722238924; x=1722843724; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JAIaWbMrpjXJfyBx3wUp/7AwV6TpyTkOy0qtsR/TmP0=;
        b=YgTRHm69cQ3RzTf7A06JCYYsqe0sXca4iCLkql4OrU8Mi5/7XZCrrRBTvya3QLyZ6y
         hsEGljbEa53K4AJg5YnrbPKZaYG1iC9RkAlcag+hbLsW1Scm2TUahEgMyK2FM2xh6KbK
         +f9mJNCPt3qgs043xveGMj57KJ+bKtMIKYIGvN1OeytYuSOiAjzro0aTvDfWZY6cvHpJ
         J+Y4QJVYkE2fCvO3n9zvzRQhtF/PFYrHtIKQIAL597a7644PMsziFHPZHmWbS/VLCYjM
         Q/RQHsDR6pkJUtvlK10zPVXkmyTg+HBFuDDYSd9FlCCcOkJ98QFn+Zp/1OrMBxLQPHOp
         E8tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722238924; x=1722843724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JAIaWbMrpjXJfyBx3wUp/7AwV6TpyTkOy0qtsR/TmP0=;
        b=VQeh8u0suXv8tqtSKqxMPA9vGBa5ZOE/Viy8RoAcpzNE3JP3Fv/a4zmwr+uhDK5169
         mhQF4Osp27h4XovO2QmZr0rAg302Yy3MDJw0tfG7aHyr4sNbDyZc8xr/VGlTOstFnBbW
         a8mgCH01IdU9OBj6SobA+MQuoqWUaHnPKHZRp8UO2GKC0sd/ZpF8y0eGXvJt9/i88/h4
         QsJ0L0MGdkhAZbyr599hH3zrVcsVxddFbqZY0joS6/eL9DBxBmb3zWUFXyf0D0coP7q1
         J49fEHjOsrqjmfKyh1uBjrEgr6pLVEImdjK3ElA+4dbqFjW2nZohipAVrZkbLKnEXb1d
         nt5g==
X-Forwarded-Encrypted: i=1; AJvYcCX2/osp6V0SntCSXFIHiXCA8Lhm6QggAyAm3fqS1OaEPP3X4GC5NBFXFhZC89+Of+DKJi0WOkCttH8E2DWrasiyFztjMQ7B1PusKw==
X-Gm-Message-State: AOJu0YwZX/7QQoblyAcmlCSzR0xTlgy9BiL2ITomF+AC0vjACI1vGLKZ
	mbVEUm3+eGaolIYaUJorztTTjuCoIEmkzFkGkLEboO1Lm2ey1RUpbyp+0fXe1ss=
X-Google-Smtp-Source: AGHT+IH5VOb2By5fvQgwUidv6itqAL+m7XZx78fWcb+U56lzBj0h4lRoNhgztytGNkLGm+Y+RWX3Rg==
X-Received: by 2002:a5d:69d1:0:b0:368:71e9:4ee3 with SMTP id ffacd0b85a97d-36b5ceef41bmr4980043f8f.18.1722238924576;
        Mon, 29 Jul 2024 00:42:04 -0700 (PDT)
Received: from blmsp.fritz.box ([2001:4091:a245:8609:c1c4:a4f8:94c8:31f2])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36b36863aa7sm11460879f8f.109.2024.07.29.00.42.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jul 2024 00:42:04 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
	Marc Kleine-Budde <mkl@pengutronix.de>,
	Vincent Mailhol <mailhol.vincent@wanadoo.fr>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Markus Schneider-Pargmann <msp@baylibre.com>,
	=?UTF-8?q?Martin=20Hundeb=C3=B8ll?= <martin@geanix.com>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Michal Kubiak <michal.kubiak@intel.com>
Cc: Vibhore Vardhan <vibhore@ti.com>,
	Kevin Hilman <khilman@baylibre.com>,
	Dhruva Gole <d-gole@ti.com>,
	Conor Dooley <conor@kernel.org>,
	linux-can@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 6/7] arm64: dts: ti: k3-am62a-mcu: Mark mcu_mcan0/1 as wakeup-source
Date: Mon, 29 Jul 2024 09:41:34 +0200
Message-ID: <20240729074135.3850634-7-msp@baylibre.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240729074135.3850634-1-msp@baylibre.com>
References: <20240729074135.3850634-1-msp@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
index 8c36e56f4138..f0f6b7650233 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
@@ -153,6 +153,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -165,6 +166,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };
-- 
2.45.2


