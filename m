Return-Path: <devicetree+bounces-28801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F9B81F76C
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 12:00:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60DA11C20D27
	for <lists+devicetree@lfdr.de>; Thu, 28 Dec 2023 11:00:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8700B6FBD;
	Thu, 28 Dec 2023 10:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fZBk20e2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 194506FBE
	for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 10:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f173.google.com with SMTP id 41be03b00d2f7-5cde7afa1d7so2011055a12.1
        for <devicetree@vger.kernel.org>; Thu, 28 Dec 2023 02:57:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1703761049; x=1704365849; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=snYrry9zLuh+jWtvPEimeAzwraocI1J6hz5mOunhcYM=;
        b=fZBk20e2nKa6rWmA3/7Vyt2SxtfIPDgl3TUA1cd59pOkHyTP76UsPINd8B1+G0a6AL
         iOHNGlpn6BFUEW9bJicVY+jYW2nwF6t2iug+gACEN6siVT38tTO0/dJujeH2sTqtVO+G
         29zOkTPee3CwuJvQv0TWP+2DL7s+gYuDP+p6A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703761049; x=1704365849;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=snYrry9zLuh+jWtvPEimeAzwraocI1J6hz5mOunhcYM=;
        b=oUzYaw+NIsS4/BtGP3vGMPFWn2eGhK4cL7oWGljeJP4ggBPb6FEA0cPhVCPKGMTnls
         zv36+9oe1dZKBeeW7zRS/HEzn6UMII92TkgMvHPTE15Yr4UgNLvWJfDwHpxgwyENUkl2
         rXrM5Mx41Nqpo8et33YcBWgQWNsHUTmpGTpwRDDk+et/JjdA8F9vLkU/x4rB3Fn5jC4B
         bS5qFb1NUwRUmPR+d0y8boucxT3euDof90xY9elDF3A0bIAITUlyezdXEMDweBug4iCn
         ffwKV1ZPI9c6+AFss4jm1sOgbnnllQE4oEOYwtplyX7q6ykh4frA6G2x2ZhmoWs5NWrB
         vWXQ==
X-Gm-Message-State: AOJu0Yzhp3JNOYeWls1vX6U39PNkwiZcO9TsiDt7ydhfrF3z6FlUe3dj
	wqtzuwkMsKZ7bDALovfoa71LhAZTbJoz
X-Google-Smtp-Source: AGHT+IFYsn9RDhTGSpo0c14KN3+HIjTHoXc3vMmiykGJJrVm4NBUKlRdW2Q19ABY3KG4K+gPwIsavg==
X-Received: by 2002:a17:902:b58b:b0:1d3:442e:f0a2 with SMTP id a11-20020a170902b58b00b001d3442ef0a2mr5009163pls.139.1703761049479;
        Thu, 28 Dec 2023 02:57:29 -0800 (PST)
Received: from yuanhsinte-p1g4.corp.google.com ([2401:fa00:1:14:497f:b57b:3927:7371])
        by smtp.gmail.com with ESMTPSA id d14-20020a170902aa8e00b001bf52834696sm13542193plr.207.2023.12.28.02.57.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Dec 2023 02:57:29 -0800 (PST)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Hsin-Te Yuan <yuanhsinte@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH RESEND v2] arm64: dts: mt8195-cherry-tomato: change watchdog reset boot flow
Date: Thu, 28 Dec 2023 18:57:01 +0800
Message-ID: <20231228105717.719624-1-yuanhsinte@chromium.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The external output reset signal was originally disabled and sent from
firmware. However, an unfixed bug in the firmware on tomato prevents
the signal from being sent, causing the device to fail to boot. To fix
this, enable external output reset signal to allow the device to reboot
normally.

Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>

---

Changes in v2:
- Limit the effect only on tomato.

---
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts | 4 ++++
 arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts | 4 ++++
 3 files changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
index 2d5e8f371b6d..a82d716f10d4 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r1.dts
@@ -23,3 +23,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
index 2586c32ce6e6..2fe20e0dad83 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r2.dts
@@ -43,3 +43,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
index f54f9477b99d..dd294ca98194 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry-tomato-r3.dts
@@ -44,3 +44,7 @@ &sound {
 &ts_10 {
 	status = "okay";
 };
+
+&watchdog {
+	/delete-property/ mediatek,disable-extrst;
+};
-- 
2.43.0.472.g3155946c3a-goog


