Return-Path: <devicetree+bounces-24182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CFE80E52C
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 08:54:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 01FCFB21603
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 07:54:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5AC317743;
	Tue, 12 Dec 2023 07:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PPHfo99I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8865EB8;
	Mon, 11 Dec 2023 23:54:13 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-28ac6ecb9bdso94366a91.1;
        Mon, 11 Dec 2023 23:54:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702367653; x=1702972453; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QYoSEBzEJ/i6iAAejX6uD3fB03NRJtyC9eYU806fHGg=;
        b=PPHfo99I7XoPlU/cK3WiDppZkywZM73gPBp+bX4YXTWyFij9gQ6cdSpM6ApRakUoCl
         YtDyWWuMNI48Ca7o1s0m3TlYhl8HK9X6w0NXPGO2e/kP8K0y2pk28jf+w4khqMNuImMt
         GwA0x7Y3V4BRsnMXJkaPNUE4vrUVeeuBtvUvCp2ow13EOCPTjXFbG84X2qvxmHBWduz0
         YvomjBZCGpJM1ZdQsAXU8Gisdqiqw4lWI9/L4hc1enZxC7n598H0rmp/BnJAN7xSHHI4
         Hx8HtB5If/N6VU6tqBchDn7zBCtI6On/LWpgnQ7GW4ZlOOOmcD78pgmGHHygl7nl1n+5
         xZGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702367653; x=1702972453;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QYoSEBzEJ/i6iAAejX6uD3fB03NRJtyC9eYU806fHGg=;
        b=AbvxegchFRFEzxPOiWw5b9PiHXePeqc2LtvcnGNYCbcRBISy+7vgwKWxyRcS4rJEkn
         P8gMtVoDGf9C1ufpwZCE7L2ZJAys7Vn7Fzpvc/1/hwXr5ZB2ETdWb1AOI58U7M4nMtOs
         Gw/IqOQla7+dysuApMvuy3abGYmdIMzq4juHpHP4d37NyUBN2SZSQd7E1beJBGdR2NRA
         L6UpQl3InL7tKC1/BzOxajoxMph7jCscv5ukMH/sXKNC5O4R6h8dfqZ8IdG+YKiwaO/b
         wsAhkJtGTOXXgRrUrQpfbs7/6kZtVtxcQCWkTAC08xApyoXZ+3ri9DX96JmAUc7HXeLZ
         4OnQ==
X-Gm-Message-State: AOJu0YzbSHXiB/sc0yc/5aL/P6WWCcSonwgoBVU81H+Sr3zHudsX7ab5
	gy/nLG6HoO2+x0VWQbJODxI=
X-Google-Smtp-Source: AGHT+IF7Zo4TS0bMKNUvfOxKnxKYa98o6T4jSkePwBsMjb1i6QJF38Uq++dQYabgc50/Zho+o/KXew==
X-Received: by 2002:a17:90a:9918:b0:286:1e90:fe2f with SMTP id b24-20020a17090a991800b002861e90fe2fmr7032544pjp.15.1702367652929;
        Mon, 11 Dec 2023 23:54:12 -0800 (PST)
Received: from obliging-System-Product-Name.dhcpserver.bu9bmc.local (1-34-21-66.hinet-ip.hinet.net. [1.34.21.66])
        by smtp.gmail.com with ESMTPSA id qi9-20020a17090b274900b0028a28ad810csm8144319pjb.56.2023.12.11.23.54.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Dec 2023 23:54:12 -0800 (PST)
From: Yang Chen <yangchen.openbmc@gmail.com>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	joel@jms.id.au,
	andrew@codeconstruct.com.au,
	patrick@stwcx.xyz,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Jerry.Lin@quantatw.com,
	EasonChen1@quantatw.com,
	Leslie.Tong@quantatw.com,
	yangchen.openbmc@gmail.com
Subject: [PATCH 03/11] ARM: dts: aspeed: minerva: Change sgpio use
Date: Tue, 12 Dec 2023 15:51:52 +0800
Message-Id: <20231212075200.983536-4-yangchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
References: <20231212075200.983536-1-yangchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Correct the sgpio use from sgpiom1 to sgpiom0

Signed-off-by: Yang Chen <yangchen.openbmc@gmail.com>
---
 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
index 9979dba1ef0e..ad77057f921c 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-minerva.dts
@@ -78,7 +78,7 @@ &rtc {
 	status = "okay";
 };
 
-&sgpiom1 {
+&sgpiom0 {
 	status = "okay";
 	ngpios = <128>;
 	bus-frequency = <2000000>;
-- 
2.34.1


