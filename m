Return-Path: <devicetree+bounces-20933-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A7FED801B15
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 08:12:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CCBB2281DCF
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 07:12:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E578BF6;
	Sat,  2 Dec 2023 07:12:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PTFewEWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C31A1A4;
	Fri,  1 Dec 2023 23:12:24 -0800 (PST)
Received: by mail-pl1-x62b.google.com with SMTP id d9443c01a7336-1d048c171d6so11970745ad.1;
        Fri, 01 Dec 2023 23:12:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701501144; x=1702105944; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DePi2tn/vJxmuaMGw4qyE+kZCcU7rGnK+GXQQUXNgN8=;
        b=PTFewEWORa1anb0nHaVuus3S5DS1egjHAb2hMd6IAggiJXF04jCsM00NG1LcPW+BRk
         jDOw7je4krZL9+ov++wacnTW8TkfH6/1KV469aaa/rY6fPVzF00kU7Mn2/inT1uvg7Rz
         OnFkeO9xwgC/MUs9A9HBUzerVcIo+a17HIgyu5qa2obCbHiN0j2CtVihWgxTb0cEQbDf
         aCxi8vVQPIaU2nabSaak6MJgqNySeBG2IiUZQda74gRXnW6Bba5D/0e0gvQFAzHLK7oB
         PBSP6tXZyQxGMvKWTjp5YnRDhQkY9UY2s2dWctDH2WlqF3vRJZkakg6XXz7rvNHw/kzv
         9l6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701501144; x=1702105944;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DePi2tn/vJxmuaMGw4qyE+kZCcU7rGnK+GXQQUXNgN8=;
        b=YV8w0znAWdyfV57Shr1u/fhYfNNiC/SuCI/RC6IEhvdcNX2v0IfFJguVNRwilP1fst
         lqeXo8WIw9Bbt9OJu3n6f4y/qkrAndvMV54ukv0PAGagtPCA1gM8qsIn/OudAm2QJDYH
         A/FmYKeT/cz2QuDndE/0ydogcY0l/1UhKgwvogF3qpxOkg+YSqeLhCwVUiIVhcrJcoay
         aVwh6qT5L7QsUWNEQBkUAmCijaZtrEAmGOBmdjRXfBTRRpqViMjk0OosU3l5SXhiICkR
         V1jGTVGXsqilS7ud5k7SQq7dJKEPU6Dvy62OSvTvJUSCcpvfrwEX6YKXZ2vPO0/8HNue
         ZDxg==
X-Gm-Message-State: AOJu0YyYvF773bycFkedRG4P9qk83wdjD6cnopRN1KwYbkdULh1lRDqa
	uT5CS6NoPSJJcK/BkaHQvUI=
X-Google-Smtp-Source: AGHT+IHceCMsSA4BnZK895R/j71ue2epigtJIbZzftwrDluNIiFSttXleJr6L3zxWw2jr/MXGqFteQ==
X-Received: by 2002:a17:903:244e:b0:1cc:53d1:10b8 with SMTP id l14-20020a170903244e00b001cc53d110b8mr961200pls.50.1701501143909;
        Fri, 01 Dec 2023 23:12:23 -0800 (PST)
Received: from localhost.localdomain (static-198-54-134-172.cust.tzulo.com. [198.54.134.172])
        by smtp.gmail.com with ESMTPSA id i9-20020a170902c94900b001cffe1e7374sm4451957pla.214.2023.12.01.23.12.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Dec 2023 23:12:23 -0800 (PST)
From: Sam Edwards <cfsworks@gmail.com>
X-Google-Original-From: Sam Edwards <CFSworks@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	=?UTF-8?q?Daniel=20Kukie=C5=82a?= <daniel@kukiela.pl>,
	Sven Rademakers <sven.rademakers@gmail.com>,
	Lokesh Poovaragan <loki@gimmeapis.com>,
	Sam Edwards <CFSworks@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Fix Turing RK1 interrupt pinctrls
Date: Fri,  1 Dec 2023 23:12:12 -0800
Message-ID: <20231202071212.1606800-1-CFSworks@gmail.com>
X-Mailer: git-send-email 2.41.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The pinctrls for the hym8563 interrupt line and fan-tach input
were both mistakenly defined as `pcfg_pull_none`. As these are
active-low signals (level-triggered, in the hym8563 case) which
may not be driven at times, these should really be pull-up. The
lack of any bias results in spurious interrupts.

Fix this by modifying the `rockchip,pins` properties as necessary
to enable the pull-up resistors.

Fixes: 2806a69f3fef6 ("arm64: dts: rockchip: Add Turing RK1 SoM support")
Signed-off-by: Sam Edwards <CFSworks@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
index b517debf2b54..bbb6d38cd159 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-turing-rk1.dtsi
@@ -294,13 +294,13 @@ &pcie3x4 {
 &pinctrl {
 	fan {
 		fan_int: fan-int {
-			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
 	hym8563 {
 		hym8563_int: hym8563-int {
-			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};
 
-- 
2.41.0


