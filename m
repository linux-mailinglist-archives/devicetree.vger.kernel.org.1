Return-Path: <devicetree+bounces-101274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9853A97122E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 10:34:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0C41FB257D0
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2024 08:34:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 334ED1AD9D5;
	Mon,  9 Sep 2024 08:33:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PcO2Uetw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD57E1B1D67
	for <devicetree@vger.kernel.org>; Mon,  9 Sep 2024 08:33:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725870839; cv=none; b=uG4+reQ541i4KSrlXrpsGhiR4N7fyGUfh569Z1tCnFcQAcFbaCKOy7nq3bAyUUMGZwRGTi6kZymZwto7rPhYE81FKaaiyxG74vSKxYKQiY/HsQep4koOqgkafdGgTvY2+0+PmwtDkhopqDeamfzFHAceIb8gt+rB70cL8qQjwQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725870839; c=relaxed/simple;
	bh=bm4lLDqQYhoJhT6jDy1DCqjSsttcnYmnMifSAa/MNG0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YKlK0tt1sQmvQva8j7b9Xw+IFs+SvV0cG7M3b4oqiAulcc3aiIrt4aHdN2FnVimXGqjZoFJZuRE1VxGJ5BEP4k7kD1InuPz3DsD0Knr1ykkctt+urcyCvRiC+e2+3TeVkM/U6NWSqHb6Vz3BrbjsNqWHr9owbGmENiFzfFzykh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PcO2Uetw; arc=none smtp.client-ip=209.85.210.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f179.google.com with SMTP id d2e1a72fcca58-717914d6c95so2572042b3a.0
        for <devicetree@vger.kernel.org>; Mon, 09 Sep 2024 01:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725870837; x=1726475637; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bi2r6WX0GqMIJ1BBkYJjpIqSyhbsI5xswcDwwNPNShw=;
        b=PcO2Uetw4rar9LT/LB+NKxDoPoekidjR/i5kV+vCaCu0udGJSPR61SW4d2DlXbtivP
         uULuFID30cCXU2xlS9n1n11OCsd4bILUyOJQSkQFbDlbJu7x8hRJUs+kWYavzG54DBTF
         6Ie4DjH8pKj+DewP3KAEGgA7ckhsm3VNaaq44=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725870837; x=1726475637;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bi2r6WX0GqMIJ1BBkYJjpIqSyhbsI5xswcDwwNPNShw=;
        b=VU4u+i/h5EbYEqFPRMtqdDpYhOoYh79xmo/zvd1hS6eHc6X4K7m9dglPm+q2U7Hiea
         GHDN09tfHJyf9GoIdAgsbD7WCmapVqSAk02DUatvCKht8QEbULSXXnTgqt6Y9twsyr53
         q67M1nI4nwRnTlkNlbwNbIcZeA8V9FkYqPRK7AgLhWW/tLpfB6p5P4iHs6v+gNWFBsoj
         6dc5SSu0TMBUEFJbRx9cFV4EI6xhvBJk/Nb0VHGpXyyTAkTGa6q88AV8zqbZ6GR3h1QR
         piC5+HY0pWztt6P7SN9XdlEQP0/8qqWf5MmFQ1YUOa1KB0kBffCZ+vboQJJsup6by8ul
         EmTA==
X-Gm-Message-State: AOJu0YyTM9eolqPs+zZ/sxKkEase4dzT6COAsMTA8SCiXXGq91q2lsMs
	UBPDa1b1P5y+JRcSYWoi5FRCb4UzjLJ1cXHzl4Bdc97tnfizO8XkfopzrWi0Ww==
X-Google-Smtp-Source: AGHT+IHZ/SLXalnyKeFyPPv1WuwYsFFb0U4payUyhVaBeoYCkD3ooTxXc/r4b3tJy1LB98veI/zL3Q==
X-Received: by 2002:a05:6a00:92a6:b0:706:b10c:548a with SMTP id d2e1a72fcca58-718d5f06a3emr10112054b3a.22.1725870836898;
        Mon, 09 Sep 2024 01:33:56 -0700 (PDT)
Received: from yuanhsinte.c.googlers.com (30.191.80.34.bc.googleusercontent.com. [34.80.191.30])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-718e5982103sm3153558b3a.142.2024.09.09.01.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Sep 2024 01:33:56 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Mon, 09 Sep 2024 08:33:47 +0000
Subject: [PATCH 2/2] arm64: dts: mt8183: kukui: Fix the address of eeprom
 at i2c4
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240909-eeprom-v1-2-1ed2bc5064f4@chromium.org>
References: <20240909-eeprom-v1-0-1ed2bc5064f4@chromium.org>
In-Reply-To: <20240909-eeprom-v1-0-1ed2bc5064f4@chromium.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Enric Balletbo i Serra <eballetbo@kernel.org>, Ben Ho <Ben.Ho@mediatek.com>, 
 Hsin-Yi Wang <hsinyi@chromium.org>, Nicolas Boichat <drinkcat@chromium.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.15-dev-7be4f

The address of eeprom should be 50.

Fixes: ff33d889567e ("arm64: dts: mt8183: Add kukui kodama board")
Fixes: d1eaf77f2c66 ("arm64: dts: mt8183: Add kukui kakadu board")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi | 4 ++--
 arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
index bfb9e42c8acaa7c2e5515888a77fe97258a1b78a..ff02f63bac29b2c473bfdd90a15aba09c2915271 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kakadu.dtsi
@@ -92,9 +92,9 @@ &i2c4 {
 	clock-frequency = <400000>;
 	vbus-supply = <&mt6358_vcn18_reg>;
 
-	eeprom@54 {
+	eeprom@50 {
 		compatible = "atmel,24c32";
-		reg = <0x54>;
+		reg = <0x50>;
 		pagesize = <32>;
 		vcc-supply = <&mt6358_vcn18_reg>;
 	};
diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
index 5c1bf6a1e475865fc0f6187e9733d7d98908797e..da6e767b4ceede9f5258274fbd702c6e6929f515 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-kodama.dtsi
@@ -79,9 +79,9 @@ &i2c4 {
 	clock-frequency = <400000>;
 	vbus-supply = <&mt6358_vcn18_reg>;
 
-	eeprom@54 {
+	eeprom@50 {
 		compatible = "atmel,24c64";
-		reg = <0x54>;
+		reg = <0x50>;
 		pagesize = <32>;
 		vcc-supply = <&mt6358_vcn18_reg>;
 	};

-- 
2.46.0.469.g59c65b2a67-goog


