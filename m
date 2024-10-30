Return-Path: <devicetree+bounces-117278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15EEF9B5C31
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 08:03:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2DD081C2123B
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 07:03:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 705871E00A1;
	Wed, 30 Oct 2024 07:02:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Sk/olv3U"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com [209.85.215.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 869771DF754
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 07:02:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730271757; cv=none; b=fErMlVjzxqc4eJTF65Qi7k15PKB6eLZAyenXBIkTnOp5psALcLmFxRy5fH2ovfkSvd8q9Mn/TsK2a446OKQhl8EaY3+tCenIQJmluSH1yxZXeVHbWb5usmX9ldxjTadj4Qx9wtiNQiYOVssOr2+Wg53pHDioFcjWtXRUSrzJnb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730271757; c=relaxed/simple;
	bh=3f3iVJn9Qi05XrwmoQhkeKsmPZmKWCTCT/CWgEGoOT4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=myPtpJF/qfHR+TYWlgyUgDDb7oV0zOZrhA3l/z7zgzDCakyyqB9TfItabRNV8PIUC0dzX+sHSOtpArfuIrDPnH7Nekiarqa2ONdOYyr+sTos6FQocfby0FqK/mwUbESwUVTp8SHrKQXYUzUZ9XIUcJkqiSmowkMFp8M1tSx7XdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Sk/olv3U; arc=none smtp.client-ip=209.85.215.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f181.google.com with SMTP id 41be03b00d2f7-7ea8ecacf16so4104754a12.1
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 00:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730271755; x=1730876555; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p5E41YcKQMsnvd5Y3pXv00rVYjTkf8zP3kA/zd8g2Nw=;
        b=Sk/olv3UfMhGrSl8uZAiSWMF5kaA367yMtEJPbQSi75AtNmGLpnss3X4kTSqKVH6O9
         3dQl6jctMybkYPRdzWhtXxNAjvw0GHa32dxFgAVnzy0NtsMCJoSUx05hstetpMXeOCpg
         DOYjt00VfTBps8YXaZTGARU6f8IKWMS5MSOd4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730271755; x=1730876555;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p5E41YcKQMsnvd5Y3pXv00rVYjTkf8zP3kA/zd8g2Nw=;
        b=C2g4Jyie8anAZomCmCp4HTIsHDiTTDX10/1dMFvVl+v+dmzE/VExC/EXbNRQRJH4OI
         Zyvqlr2FIdaJxXEsg5axS7DnwlwPV/1OU7xVkOdT3FZQjLqbWQ2HfzS8aW2xLj7I7aZM
         89n+vrCAGj7h6eLzb16fwtJvQGrcWefYwOsH6GDkRPMrUkniuWZ9nSSBmOzkIG1NwaqJ
         9KUZkT/WzIb9bwUJdMu8YYk2VpDwbcWNzEMaxgoQsGQk4tppIRL1A5SP4pNhTpFVljMy
         ZbiePofovUZELfsNNZgZtL7ZhGqp3fhEb8xsm4WKYYKvd3nVmZBjG1Y+iP24wSG/RQrM
         ZSRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV9w9YuBvTnmXkU32WFOyvu0VVlD+92T/LbSkjnUp4w8epkF/d6rOvoPHEjRLUmDStUpAIyVzkxEeoE@vger.kernel.org
X-Gm-Message-State: AOJu0YzsNQeGeh9ruA4ZxAyMlx2msFVUpcQZoK4VMEAOsC30tRICa8NY
	AHs58upiTwNhPSKsrlocGCsJ0vVGwi0gtWI/5UuLRzm78bjLKoh5BgiHtCW05g==
X-Google-Smtp-Source: AGHT+IFrSYRhWTI2J+yd+pm72XTyFxdk2kxo61HvPYmkLDKpokBYjWWPyujJdt4yASL5lBgrzTxGwA==
X-Received: by 2002:a05:6a21:7890:b0:1d9:c5e6:51af with SMTP id adf61e73a8af0-1d9c5e654aemr11950511637.3.1730271754788;
        Wed, 30 Oct 2024 00:02:34 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:d1f3:aa64:657f:d8a8])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72057931a94sm8635848b3a.68.2024.10.30.00.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 00:02:34 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Add supplies for fixed regulators
Date: Wed, 30 Oct 2024 15:02:22 +0800
Message-ID: <20241030070224.1006331-4-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.163.g1226f6d8fa-goog
In-Reply-To: <20241030070224.1006331-1-wenst@chromium.org>
References: <20241030070224.1006331-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When the fixed regulators for the LCD panel and DP bridge were added,
their supplies were not modeled in. These, except for the 1.0V supply,
are just load switches, and need and have a supply.

Add the supplies for each of the fixed regulators.

Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu board")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
index f540dcac74ea..80888bd4ad82 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
@@ -20,6 +20,7 @@ pp1000_mipibrdg: pp1000-mipibrdg {
 		regulator-boot-on;
 
 		gpio = <&pio 54 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp1800_alw>;
 	};
 
 	pp1800_mipibrdg: pp1800-mipibrdg {
@@ -32,6 +33,7 @@ pp1800_mipibrdg: pp1800-mipibrdg {
 		regulator-boot-on;
 
 		gpio = <&pio 36 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp1800_alw>;
 	};
 
 	pp3300_panel: pp3300-panel {
@@ -44,6 +46,7 @@ pp3300_panel: pp3300-panel {
 		regulator-boot-on;
 
 		gpio = <&pio 35 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp3300_alw>;
 	};
 
 	pp3300_mipibrdg: pp3300-mipibrdg {
@@ -56,6 +59,7 @@ pp3300_mipibrdg: pp3300-mipibrdg {
 		regulator-boot-on;
 
 		gpio = <&pio 37 GPIO_ACTIVE_HIGH>;
+		vin-supply = <&pp3300_alw>;
 	};
 
 	volume_buttons: volume-buttons {
-- 
2.47.0.163.g1226f6d8fa-goog


