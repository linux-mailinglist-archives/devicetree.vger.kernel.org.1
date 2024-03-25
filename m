Return-Path: <devicetree+bounces-53081-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D149988AD9B
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:19:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4551C1F3B1B7
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:19:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5E365EE64;
	Mon, 25 Mar 2024 17:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="IIT5HW7B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549BF5A7B4
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389104; cv=none; b=PQscsY88Gs1IIFI6xl8BTqiz+HknlUW6p6osBMTigqerWGf8XP15kWlY93gVwfh3WCoUSQCv57LYmGUHPdYRDtjK3ADmbhPFxZSKRWbZTiDvjMeT3IDFFt7HEisQolfdE0mng77PEoDc8y0ao3g42JyexTaeu/EH0tuB+BufR7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389104; c=relaxed/simple;
	bh=OCmmfZCU9KAiGMBbBX4qu80UrUco1FAcy+C6RZZb1mg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ls1Oqm5wYCVLhUXQquK8Q7kyeKyOmB199morxOTytPGHy036AO0JlN0Mg6Sb8TCYQmXwH0rnZKFcuUG6E56Op26wUuhGVGRk7EFpMAdfxQIChZvaAbWAngQAQpnz9WCI1X4zXfRkVXvedaGAmxDxY/8eflKBGVJXXg3FuWgMW6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=IIT5HW7B; arc=none smtp.client-ip=209.85.167.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3c3d3941a26so432372b6e.2
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389102; x=1711993902; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsJtT2cnKvYAEAHElUdmZaRXsSO+wFIdbdJUSKugsNE=;
        b=IIT5HW7BSEkUGYOjNC9sytH4Jc/MTsxjE4v/2ZTTf6hZR2CsXcdpS96cH9uQm08ErY
         rsovn3Zrg71w1vwERoYX/mhTel1gXn9VVM/mz64KE1XDcO+Wb0+ey6iqtvanT4bgSrAK
         4GclFiTF8HMijOsCUP7IKlHNWHXxXiTv1Ln8U7YO3KLdmhT3StAkApl+SagKNNcw0TvV
         m8pzXZglFV82wFsY7QHrwZ1LnVjHCgoJ5sK5Fe9sVhfh2ae+MM06mNNALlwwjPQ6J3jG
         54hDHAqq6s/sVA62O/p+xfPXPRtIrgEB1eebkVsxZs+PS47jLIFsklsT+QNaWzXHn0y2
         FQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389102; x=1711993902;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsJtT2cnKvYAEAHElUdmZaRXsSO+wFIdbdJUSKugsNE=;
        b=R+B4rEjLMmQ5VsAMJhvXffdGFlAIMsE2NGhnm3FJCq7ml5QCFphQHEKuiQHi6eEV6o
         GCRWGQqQDp+Giu9+SkwFDtucOeX0cIkN09wvUBUHIbzDbDxdiYMW5EkTRpWgLBoxxBuC
         91Eg7Sol1B9nhA9DXDakFKxam+m8vVeDg9ad3su4zLS+yLft1jcwBM4XECbBCa+lpHFQ
         2IaqOnNDpaHswg7JGvwKWwgppxHm58YggWXX0JNGalCGglXvmR7WQci8C9ynoklQnjrx
         I9iN7XSlohFhp/VYU0q47gRf9NzOc+LU7rWwB5sawuS8q8Glwov4FnjohQsthdEdMWay
         c+wg==
X-Gm-Message-State: AOJu0Yz72RzwbJwgQfdWeb5n2yMMSvtT3aoNJ589qe6uebTFNMF1oPzV
	mG+NKC1mR6mEuitRoaIpD0ZA1LVJ0RoWyr3sAJxCaE+7CQB74COs
X-Google-Smtp-Source: AGHT+IHnz5LrtHO045MNYUBtenNRKyqsPSgn61hiwl+ZoE/Ap7bPdJxNbzQ2xLv8FlK67951DKSdSw==
X-Received: by 2002:a05:6808:3a1a:b0:3c3:b652:efdd with SMTP id gr26-20020a0568083a1a00b003c3b652efddmr14026224oib.19.1711389102339;
        Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: Update sdmmc node for wifi on powkiddy rk3566
Date: Mon, 25 Mar 2024 12:51:31 -0500
Message-Id: <20240325175133.19393-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Update the sdmmc nodes responsible for WiFi on the Powkiddy RK3566
based devices. For the RGB30, RK2023, and X55 we also add the
sd-uhs-sdr50 parameter. For the RGB10Max3 this parameter is not
supported by the WiFi card.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts   | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts  | 4 ++++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi | 2 ++
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts     | 3 +++
 4 files changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index 1f567a14ac84..f0f5ee595938 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -55,3 +55,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&sdmmc2 {
+	sd-uhs-sdr50;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index bc9933d9e262..661abceaba9c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -54,3 +54,7 @@ regulator-state-mem {
 		};
 	};
 };
+
+&sdmmc2 {
+	sd-uhs-sdr50;
+};
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
index bd332714a023..10089921c62d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dtsi
@@ -771,6 +771,8 @@ &sdmmc2 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
 	pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
index 5a648db41f35..ccdf654a3f48 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-x55.dts
@@ -835,9 +835,12 @@ &sdmmc1 {
 	cap-sdio-irq;
 	keep-power-in-suspend;
 	mmc-pwrseq = <&sdio_pwrseq>;
+	no-mmc;
+	no-sd;
 	non-removable;
 	pinctrl-0 = <&sdmmc1_bus4>, <&sdmmc1_cmd>, <&sdmmc1_clk>;
 	pinctrl-names = "default";
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc_wifi>;
 	status = "okay";
 };
-- 
2.34.1


