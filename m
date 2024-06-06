Return-Path: <devicetree+bounces-73139-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 128108FE184
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 10:50:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A660C2890DF
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2024 08:50:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BE5A14431B;
	Thu,  6 Jun 2024 08:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UpGZIw2F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4C813E8B6
	for <devicetree@vger.kernel.org>; Thu,  6 Jun 2024 08:48:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717663708; cv=none; b=SRcQVeqUZYupwnFX09dtqF//b/sDCu6R6Ne2w0NFGjeuwTl0GH3VjX06KziiMpjL8Dt7J79OxQ/uCz6EDzzh/rBBU5qt0b9GO4wN4P+1hukoSuNy3Jh7ffxB3dngleF7BQ9Y/XXkLbsG4UJ2UADyZNCAQ8xznb8ev7jEX/fNw9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717663708; c=relaxed/simple;
	bh=kKhJhZf74EGQXvkurWzqim/0Eg8JJMF38UR74hRhQLQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=E4C5PzrcVJo/Xk2NzDPHgPx6R//ZZ67ye2Ksue6hPOiiRDV42TffSTqkoBFy0TXR5tAwN/kfDK1Z220bhfEwzGTLYKbs3jZ9IfHz/UJtBUilsITgu+ke9i4Ait94GFBXLfhHFY919iC+lIE/92s+6qzMxrN0VdyS5yHy48CrsjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UpGZIw2F; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-42160f2dc32so120795e9.3
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2024 01:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717663704; x=1718268504; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=md2vfydVbKRQKv8woiaMeh18dxE+BvhZ3JaDmoNvYf0=;
        b=UpGZIw2FNc6qgs7Wyp44Yrte3nv4r5r2Bi5Clx2lHhlfmn2gTLujUpR7l66hpxOTOp
         PU8cPsZEKIIVuUrEb9Zrn1XxFUxkOPILbC53SaqVL0p7UlsLfBDpEP/F+hfvPlCvZPHB
         74uq3NYa7gSQH9+eAkP6KmbIJlbnMR1IDwG+Oxqfjefw6ke2nBhMWFCIEDNJQ+ie0tli
         pMpSC9AzPWKZVpaIRJLW3sy4sHEOYb0RY83I2mm2vLcrkuafu/sgUC4mKFuBELV4C9Cj
         Zluw2swn4t3pmULvdjCkL2rHAIczbvaKUB57KOpwxOig94U1ovjTgCYsoOoUtXaoSSRM
         gCuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717663704; x=1718268504;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=md2vfydVbKRQKv8woiaMeh18dxE+BvhZ3JaDmoNvYf0=;
        b=Ru5EPaRX53Q5w0cTVgkeXnFTHBBgObZpre2Ukhg/JN6hLqgIIIR6twFsCG7Zu1AZ9u
         uh+qtMoK4ojqgqbnG4yeCvEKDwrcoOzPnMwbHY6D+C7S+Jw4m4XZRMI4H980aK+9UkR1
         WDoqGPk4f2yEDzynmmgx0hjpq1ujJRyrF3s4cZtth8LX3+mt5VfcON1vRLDl+b96G14B
         I/lG6+l8Su+hgHJbCBTTPjOMXrH9Ofxle5PV0vlm8wAGVcBtwMEBUEYEl1lJ9DSXq0Ah
         9rpcl6OwuLEnJ1AAiczcVgaBHqJoEe0eohJq8iEzY7h+4/J26iFdbY0nV8trb2jXh0SH
         uoIA==
X-Gm-Message-State: AOJu0YxAyxnh+Z0EOWGsYGZa5NL/6vuVTgHOS/NiYODz2HYOTkic0eV/
	IIByFSd8M50qXFjRf0NvB3fs8jj6G5pF9T9IPMe21Ey17e+4VEUC80ry9OTA1ic=
X-Google-Smtp-Source: AGHT+IHjqikyO2a2r3mJKCcsb9JEmLNmKaMvv1xJrL/lxQZAcEccnBqavzwKFkxKLV+bqKvAAFyDqQ==
X-Received: by 2002:a1c:4b15:0:b0:421:497c:b5d9 with SMTP id 5b1f17b1804b1-42156338836mr41812145e9.29.1717663704270;
        Thu, 06 Jun 2024 01:48:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4215c2c690dsm14227445e9.34.2024.06.06.01.48.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 01:48:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 06 Jun 2024 10:48:17 +0200
Subject: [PATCH 10/12] arm64: dts: amlogic: a1: use correct node name for
 mmc controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-10-62e812729541@linaro.org>
References: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
In-Reply-To: <20240606-topic-amlogic-upstream-bindings-fixes-dts-v1-0-62e812729541@linaro.org>
To: Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=814;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=kKhJhZf74EGQXvkurWzqim/0Eg8JJMF38UR74hRhQLQ=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmYXfOYScb8JqlWb2OYfUPRFA3UVIVOPnwKpb63Oac
 RwvPvG2JAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmF3zgAKCRB33NvayMhJ0aY8D/
 9QxzooU3G1/kRr1f9KNPw9mPI5WJXraQKb043yFOjGM3Z4LS/gHT/L3zcJalbJu9oAS2BEf0UDIyb4
 6Y+0Y9FL/A0mkYplSF2dpHe8b1zmvZSsDIPT0bsJ+LVbDoDR+Yl5pv/eCpzsc2qE/7bUuzSj0uGTk9
 R4N6Ury8OraFMCTBhuzTnki46GttXQRVDLgyHXoWdU2m73sbGRn/yFhVdpxZWwopZsH7OZK8k77La+
 v/1gx7quJa7fgzn5dN/Iw50wuWBzVAJi1Md5hDAAQvUs4Dgqn1VRC1XdkLlNGT+uli3T6sKhkvSmr8
 F2iAWcXRendQjCzuH+N47uRhDNq0b1DiWqyv21Zbefw3NlM/UzWRAbttgWsvLHzSTWBWbznhJrRDFZ
 vv/XObpgirGyW3mP8Obe0EW2RBPeftYB66gyAXZV9jHeNGGRAOAKwBDYzc4Q8ULp0qsOt6TvRlNNR4
 e2Co6NnuOLR14P7WBsr7nYmAAi0wSgIlKM0brve+E+nmDjhcMU9HyaiHR/EXoSbFAW1UB3GZjsfnK8
 6gKAy5JtpLE+ty6Ds8EqpAiXMAZqUeiSnfVzF4dwPFwdiuFAWHbO89ySf3xcmr7gngWzjgMuKqOj64
 KF8HJpbBx6x5fN894JLD+ydBScpR/+xpQsRCCCYkfr7jHkGL0dvbcG7LpiSA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This fixes the following:
sd@10000: $nodename:0: 'sd@10000' does not match '^mmc(@.*)?$'

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index c03e207ea6c5..4be801d12c4b 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -419,7 +419,7 @@ clkc_pll: pll-clock-controller@7c80 {
 				clock-names = "fixpll_in", "hifipll_in";
 			};
 
-			sd_emmc: sd@10000 {
+			sd_emmc: mmc@10000 {
 				compatible = "amlogic,meson-axg-mmc";
 				reg = <0x0 0x10000 0x0 0x800>;
 				interrupts = <GIC_SPI 58 IRQ_TYPE_LEVEL_HIGH>;

-- 
2.34.1


