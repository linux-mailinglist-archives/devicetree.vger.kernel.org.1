Return-Path: <devicetree+bounces-154813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C54A54965
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:33:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF16E1896A4C
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAE820F075;
	Thu,  6 Mar 2025 11:30:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="m4emcEW0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E67020E039
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 11:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741260649; cv=none; b=jk9Gf8z6AjiYIQsiIOI4zV3+d9wXpJ8YrWv40li3HqDPrpxbQZcYXUWNAV/0SWRtDwwmMisIuYLw2QngIeEQP2lusXgaCvumwKU3CEUHRCYzCWAg9YWpMx5EolP2Sj4A6or1u9aWwKmjhryNrE3vLyjv46gZLYnKDHiTsqlJvek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741260649; c=relaxed/simple;
	bh=vc25/TFqvg0Ekr2Sm4G/VkkviBdPeMF5e7FdTWNCvAE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vyan708sLll/NDuN2OrYuyGCqExv8DKU5/aJYVH1jOW8L+hhlePntbz8H1K/rtuu0SSWqjussA0260mfjgr/d0iN5hH50fcEtv4egiDZOKwffzM/X22OK1p4OqaahU1W/H5To1MsgGddqE1ax+t6Zs0eYTo7U4N8Px0PY5eANLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=m4emcEW0; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43bd87f7c2eso3038865e9.3
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 03:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1741260645; x=1741865445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=m4emcEW0yiQfuQOMZx8+UcBr8ZY78Juen+ulRxvdeHGzI1x0FeVdDKbNXUaWXnwt0t
         V5Y70hcM9FzV+RFUVDNylCLWWAi9oFhgtlI0J2mm4TIvYdVFd4uL8Q/5Ke/ZoXT7/dXS
         jWNT4wz/x+iQteDnMIS51sxqTSlANN9JeGeZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741260645; x=1741865445;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BHj8xJJDjB/nn7+FV+WNgNcGZHPneQlK/63TZumKERk=;
        b=smAyO3MG+fQteKnnxRXo3clo572t7S8MaSzTg7dpP0FNoskLDAiaQEz2lSzPHM2fXa
         +0lhe2n816xsxBrq++5ODnVWqZWYFKazWTcKyHqK3hg5lJfLjuQH5GhD/gzXvBtaA8DT
         s7Ln6qZDDi6PQu4A7Uxm4zmerOeBvOleCmcjqTVNOur5Z+y/1GvZbPG9ZizE+TQiOijS
         X97qX1br0PJ8vLEDnRIX+lZIteg06SmGRrm0sYn7cnXPJJ1VfHZfB7+9XoM1TUbJqI9n
         ERrqtI9vA5esqxw4AxahCqw6j9cNv6EAFfAmeOWGVRiI7gsPxMQOgtY66hNe1mW276Nz
         mQJg==
X-Forwarded-Encrypted: i=1; AJvYcCWDfehM2AoEbBxy3QTQdylNFLP5jjcN7U1q75MLxdhb+iGZCIq2SoRqc/PmI8RN6f2g28JapyUKWstA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3xyoVGoRXObHX3vZ3cSByE7H5cwD7vFg3BVUZwnnykOEgh3vW
	vYhvu1bUaQeR7Px4SkBrr4kZkgy9P6fTHkA6xIH+LCZuRc3cRxZMrBuXuODOG3I=
X-Gm-Gg: ASbGncsCSd4Jdj7dleDiP/sSEDF5keWHrnXS6ZTAPkCAsNYO3zwLQQLQF64hxVULkll
	sZIFhiCQkmKdO92GneqcBbtjfn6BJhpyu01Ugwr9L+IVYnfltZRJl+DRKRKE5LK1AOlyjncgXcO
	BNx6/twMSRymYCKODjzSEl7BROp/UVvQE3esj8dJwmj3sAHu55fFpTNvCYqfXrHJZ1BegSA9eFL
	SHTkAShPsxcWoZBzeQ9y64FuhTg7SdO5qlvRfoE8JFzBzUARWodx3nQrz7LUJpK7W8NsekCLvbD
	7lwDpTCyVO1UtolB/D4hugVhKZNAe8y3Ha8RYiLRo+/eR7JKHot87m3QBOBb5slWjNknav/cr4s
	KP6GBTg==
X-Google-Smtp-Source: AGHT+IEIhom6wfbT8hJyrqgr8W86q8u3iJF7VXHkbhSBY+5SfYi4rIInhmlezzKH/X0h3w//D7kRaQ==
X-Received: by 2002:a05:600c:2e48:b0:439:98ca:e3a4 with SMTP id 5b1f17b1804b1-43bd29b4cdbmr53979685e9.19.1741260645366;
        Thu, 06 Mar 2025 03:30:45 -0800 (PST)
Received: from localhost.localdomain ([2001:b07:6474:ebbf:4703:aa8c:6eab:8161])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3912bfb79b9sm1749650f8f.3.2025.03.06.03.30.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 03:30:45 -0800 (PST)
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
To: linux-kernel@vger.kernel.org
Cc: Stephen Boyd <sboyd@kernel.org>,
	Peng Fan <peng.fan@nxp.com>,
	Abel Vesa <abelvesa@kernel.org>,
	linux-amarula@amarulasolutions.com,
	Dario Binacchi <dario.binacchi@amarulasolutions.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v10 09/18] arm64: dts: imx8mq: add anatop clocks
Date: Thu,  6 Mar 2025 12:27:58 +0100
Message-ID: <20250306112959.242131-10-dario.binacchi@amarulasolutions.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
References: <20250306112959.242131-1-dario.binacchi@amarulasolutions.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add clocks to anatop node.

Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

---

(no changes since v4)

Changes in v4:
- New

 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index d51de8d899b2..1d1424a136f0 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -817,6 +817,8 @@ anatop: clock-controller@30360000 {
 				reg = <0x30360000 0x10000>;
 				interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
 				#clock-cells = <1>;
+				clocks = <&ckil>, <&osc_25m>, <&osc_27m>;
+				clock-names = "ckil", "osc_25m", "osc_27m";
 			};
 
 			snvs: snvs@30370000 {
-- 
2.43.0


