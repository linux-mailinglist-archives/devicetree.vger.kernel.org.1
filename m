Return-Path: <devicetree+bounces-57801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C8789EDCC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 10:40:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5AC6F1C20FEC
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 08:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B21A4154BF6;
	Wed, 10 Apr 2024 08:40:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="WHSfrO/W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f46.google.com (mail-oo1-f46.google.com [209.85.161.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148C113D28C
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 08:40:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712738452; cv=none; b=mdRTROyuE6a3Sc2O30CatbW3uCCNLL52pH9kpVBRzm8M7z0R5qxiGupEp3mqBtrejsAjG5396hoxBVU7AJRuCZJaCTgPw7u2eT0HZFrcFtk+aViIh/5Rjmq4LSpF5Mr1E++nh/0gaCJYri74u4Wqwwus6O4GvW6KB5+WXeB4aK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712738452; c=relaxed/simple;
	bh=tPkV/dgJUzieymppUjyKRIwaMmxFkge2PvtDcrZP96c=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bsIdtw5ceYwsa8bmcy9takU91ubrEeaaFDmP3bCHN1YJN3Vl5Cjnqzsl8fN8ZcuYmp4FeVCNBm/RrqExrXCXGR0s+M4nYFN7asupfDIyjLESmARQ77E7za7fpNGLMbtKFnYHIyextqaxhtAgVCbFUNyrBG2fNBmIqLEwGFGfCTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=WHSfrO/W; arc=none smtp.client-ip=209.85.161.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oo1-f46.google.com with SMTP id 006d021491bc7-5aa318db8a0so2231890eaf.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 01:40:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1712738450; x=1713343250; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NAyow8X3gkrKIXrdZZsBjPykepVjWpYDrdgw89x4pGE=;
        b=WHSfrO/WmVJJpSxVIeFYxhZhDTkoW9ZEIDwXDD1EMR5DCkIsE51SmS+nKOzzqOZrM2
         m0/hVeE3mNrx+wV2CShm/ZA3/3pbkXKIHTD2jpgu2HqYm9bgrBcHnaVAfMEM0FBpU9IE
         SSEBFRMzfA9K5A6Ok6mZY3Ju7NDCEG9WX1npo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712738450; x=1713343250;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NAyow8X3gkrKIXrdZZsBjPykepVjWpYDrdgw89x4pGE=;
        b=Kn+4AtrNr+2QuqVoq7Z0SYUsg+2GLvuBChy7Yd5iAOpP8ClQ9va1O9AUYA3KBKh5Ci
         e8ia3QfpxM6emh9u0lvdQZF4m56lFpzxHA9bLb2QdEc4B64r2UP68WMPA2Seic+uemKv
         XolDshwPNjI3Zl+7icrg4lFzSU+0hCU1YFXKRnQeYkLZw7iBwY0kYO5zS53ozo1n1aaU
         FRxQz/DquLpl9bazJsgoTXYy1UMofF95Eye3hLUkZxUugvpeLiYgBKaO8dbQut3iDcmk
         lYu15aVzTvVX7MCOxC14XS+vi/gySGTVWwudEhbIH6/0EHPaSgOZO+beYY05BoSgCSng
         Gt4Q==
X-Gm-Message-State: AOJu0Yzk7rDzQ+zEOVoSKEuxaImM3ksaQX3Fb1BDYudLENUGgoOAwQ6x
	oD+dp5oEHLzGRn0Y7+P2J0bpDdP12LN5ekWXxF8UqXTcfMtTSNeMFeex5kVJmw==
X-Google-Smtp-Source: AGHT+IGQIGRSVbir8tD+7BU7dQc6yvCondb+sBONRHguGITH+9jJFPC17Z5wLbgHntSupY3dHcRiGg==
X-Received: by 2002:a05:6870:700c:b0:22e:d2b2:25fe with SMTP id u12-20020a056870700c00b0022ed2b225femr2049905oae.1.1712738450103;
        Wed, 10 Apr 2024 01:40:50 -0700 (PDT)
Received: from yuanhsinte1.c.googlers.com (88.216.124.34.bc.googleusercontent.com. [34.124.216.88])
        by smtp.gmail.com with ESMTPSA id i6-20020a056a00004600b006e04ca18c2bsm9606330pfk.196.2024.04.10.01.40.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Apr 2024 01:40:49 -0700 (PDT)
From: Hsin-Te Yuan <yuanhsinte@chromium.org>
Date: Wed, 10 Apr 2024 08:40:45 +0000
Subject: [PATCH v2] arm64: dts: mediatek: mt8192: Add missing trip point in
 thermal zone
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240410-upstream-torvalds-master-v2-1-679777847b63@chromium.org>
X-B4-Tracking: v=1; b=H4sIAI1QFmYC/42NTQ6DIBBGr2JYdxqg2L9V79G4IDgoSREzg6SN8
 e6lnqDL9yXvfatgpIAs7s0qCEvgkKYK+tAIN9ppQAh9ZaGlNtIoCcvMmdBGyImKffUM0XJGAiM
 tet8adXYXUfWZ0If3nn52lcfAVfnsT0X91j+iRYGCa6vxJk9eOnQPN1KKYYnHRIPotm37Aoofg
 AjDAAAA
To: Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 =?utf-8?q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <nfraprado@collabora.com>, 
 =?utf-8?q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>, 
 Balsam CHIHI <bchihi@baylibre.com>, 
 Alexandre Mergnat <amergnat@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Hsin-Te Yuan <yuanhsinte@chromium.org>
X-Mailer: b4 0.12.4

According to Documentation/driver-api/thermal/power_allocator.rst, there
should be two passive trip points. Adding the missing trip point to
ensure that the governor works optimally.

Fixes: c7a728051f4e ("arm64: dts: mediatek: mt8192: Add thermal nodes and thermal zones")
Signed-off-by: Hsin-Te Yuan <yuanhsinte@chromium.org>
---
Changes in v2:
- Clearify the reason of adding another passive trip point
- Link to v1: https://lore.kernel.org/r/20240410-upstream-torvalds-master-v1-1-852e903f0cec@chromium.org
---
 arch/arm64/boot/dts/mediatek/mt8192.dtsi | 40 ++++++++++++++++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192.dtsi b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
index 05e401670bced..08d8bccc84669 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192.dtsi
@@ -1959,6 +1959,11 @@ cpu0-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_LITTLE_CPU0>;
 
 			trips {
+				cpu0_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu0_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -1989,6 +1994,11 @@ cpu1-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_LITTLE_CPU1>;
 
 			trips {
+				cpu1_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu1_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2019,6 +2029,11 @@ cpu2-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_LITTLE_CPU2>;
 
 			trips {
+				cpu2_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu2_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2049,6 +2064,11 @@ cpu3-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_LITTLE_CPU3>;
 
 			trips {
+				cpu3_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu3_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2079,6 +2099,11 @@ cpu4-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_BIG_CPU0>;
 
 			trips {
+				cpu4_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu4_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2109,6 +2134,11 @@ cpu5-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_BIG_CPU1>;
 
 			trips {
+				cpu5_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu5_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2139,6 +2169,11 @@ cpu6-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_BIG_CPU2>;
 
 			trips {
+				cpu6_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu6_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;
@@ -2169,6 +2204,11 @@ cpu7-thermal {
 			thermal-sensors = <&lvts_mcu MT8192_MCU_BIG_CPU3>;
 
 			trips {
+				cpu7_thres: trip-point {
+					temperature = <68000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
 				cpu7_alert: trip-alert {
 					temperature = <85000>;
 					hysteresis = <2000>;

---
base-commit: 20cb38a7af88dc40095da7c2c9094da3873fea23
change-id: 20240410-upstream-torvalds-master-40aeff5416c7

Best regards,
-- 
Hsin-Te Yuan <yuanhsinte@chromium.org>


