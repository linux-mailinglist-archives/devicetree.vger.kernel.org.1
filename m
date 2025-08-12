Return-Path: <devicetree+bounces-203642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3341B22257
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 11:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C89552A5FAB
	for <lists+devicetree@lfdr.de>; Tue, 12 Aug 2025 09:01:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC5C12E7197;
	Tue, 12 Aug 2025 09:01:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mz3rN8xh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534E82E62CF
	for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 09:01:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754989304; cv=none; b=B2C1sYFtcXBbzpy/ne4hvm8TwpB0gxcWWTVn80o1kY8/2hbN2gP8Yks/amQ/nP+QQAmDQBr8DzCEPNvHgtwbXoOacQCjJ/M9FwGnF3dWHaifAGdZOai+/X5aD+hZ8L6XIRPpWYf7AbBIxGAOV+LlgotKs61Hszpya4Rf3D/Z7qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754989304; c=relaxed/simple;
	bh=sgGWFkDYS3wfvwEU1/vcI7AebQToAzAPsQJ2/xmGWeM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ryPotPPRcfFckZuy/jJgz/Ksm6L8BE+OC1u4KFobNpUeDOFbE9H26TpRkYkf4RnQGbvJUuaCnG2LsZdv/FouqFHsMNNOQdgwtusj715QhK9ymdIWbxDlFedjEVfWmvHF4qIsgnM+UNfKRDNw7LWgRBBZL/Bdfk9Z3Z5NikezKxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mz3rN8xh; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-76bc5e68d96so4522105b3a.3
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 02:01:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1754989301; x=1755594101; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1evk3OmIRtfZwDni9+00QXZ21rdMVrFGcmbyCodTqyQ=;
        b=mz3rN8xhP5gPgFzKD+nSmVCePCZU4ikVKlSeOM8NyHp1/Aw448lJTy0Aa84uBeS6cP
         3s6di1W22+5dRYOIgEPT3c2QBJpND6nnGTVdrYHCFC3JAF1404Ca1emqfRU1HRtmYM3T
         sOq9w0DvkE9Wyi8gAGENzWbdGxidPalDEqcm4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754989301; x=1755594101;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1evk3OmIRtfZwDni9+00QXZ21rdMVrFGcmbyCodTqyQ=;
        b=FTwU/uwwIdk2WXygWVYxwxggXhjoCBCAwp/TrpAvlY0JtORV6N5U5sEQkJTMrrUOok
         8t+KWCmI8Eemi4j/UmQrrKMHM/2SeKk3zkvekFHbJu3e58siGzrYcvPZ4qxqAq9j/DO5
         jzWC/mmc16xwki3Qm/YyDDs10xM4QAMgrntJz4LU3v+fcaSjB/TrQGmH/CKXLKkCoYsA
         bdKPn1InsJPrAAlYSzXnfD2Xu6Orad/b4sNGnBWH2HcPsScRWDv4ohgRgWUeUljo99oK
         4aXQxNuxnlFaEVMnhSOyFcnt+TUotOON1OZYgpFIEEud8uPciwFrvSAeu2bHWkofXw/P
         mlpA==
X-Forwarded-Encrypted: i=1; AJvYcCVVODJpLwBFHFUJozcc5OiXII0nJFF3nzrGM72kTZ6bIBGMbN4FmvC8j0JQgZbBC+aNY3LMvh274ET9@vger.kernel.org
X-Gm-Message-State: AOJu0YxjedoVuaZSPnxOdVm/quskwp/Zm1HMNXAoHQ7goiY4TKodrNXk
	aJDTz+/PQUuzMXok+oyiOcvJcMmpo98GmN+Fs6FV3ELCVLx5rOgs+pUcHdwa/7TJxg==
X-Gm-Gg: ASbGncudrx6UtUEErdhFFg/iJNkWOKMVpEVHHyUj3L7VmU+aA8Me8338FKgppXtISpM
	nvHVCaxO3F56iagVuQCUYs4ZuoB1qgzgcKeCn7nfMX1BDn//+asdYRrcXZZwf9CUeUIesfZFdhS
	ZnnN1tuaCP7vDC/6BDAyhL97kbehtbT+RBoqLiQdbHskNNhDe+0tv2uZtwjz/hSoH/qZDSII1Ep
	zpdwu0bXhRdoJ9hEv6EIpSorv1k4EIAdMOXtYkZFMcGkGeG/jNMAtbNVP/2XhWsO2JQjVXZg+SY
	sg4wK259RdTah3xhbrc4XSWoKUN8/LjWnUEN0NEyj9ZvKhKSGOi3KrucVe5gae5yYL+22IkV7A9
	zcn7wurUk+4J8gK3tQdpyScOmwiQ33ZBwQMG5VV4C
X-Google-Smtp-Source: AGHT+IHXmeu6f/qQoZG8o8delXd8Ye6Z0N5pfSw8ONOvc9dDiZfBz+hBlS0QTkCIYV04xBciYh8R9w==
X-Received: by 2002:a05:6a20:3d1c:b0:23f:f88a:c17d with SMTP id adf61e73a8af0-2409aa01f0amr3953648637.42.1754989301505;
        Tue, 12 Aug 2025 02:01:41 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:f81e:7c91:8fbf:672a])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bccfbcee7sm29052518b3a.66.2025.08.12.02.01.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 02:01:41 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH] arm64: dts: mediatek: mt8186-tentacruel: Fix touchscreen model
Date: Tue, 12 Aug 2025 17:01:34 +0800
Message-ID: <20250812090135.3310374-1-wenst@chromium.org>
X-Mailer: git-send-email 2.51.0.rc0.215.g125493bb4a-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The touchscreen controller used with the original Krabby design is the
Elan eKTH6918, which is in the same family as eKTH6915, but supporting
a larger screen size with more sense lines.

OTOH, the touchscreen controller that actually shipped on the Tentacruel
devices is the Elan eKTH6A12NAY. A compatible string was added for it
specifically because it has different power sequencing timings.

Fix up the touchscreen nodes for both these. This also includes adding
a previously missing reset line. Also add "no-reset-on-power-off" since
the power is always on, and putting it in reset would consume more
power.

Fixes: 8855d01fb81f ("arm64: dts: mediatek: Add MT8186 Krabby platform based Tentacruel / Tentacool")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi   | 8 ++++----
 .../dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts  | 4 ++++
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
index 7c971198fa95..72a2a2bff0a9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-krabby.dtsi
@@ -71,14 +71,14 @@ &i2c1 {
 	i2c-scl-internal-delay-ns = <10000>;
 
 	touchscreen: touchscreen@10 {
-		compatible = "hid-over-i2c";
+		compatible = "elan,ekth6915";
 		reg = <0x10>;
 		interrupts-extended = <&pio 12 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&touchscreen_pins>;
-		post-power-on-delay-ms = <10>;
-		hid-descr-addr = <0x0001>;
-		vdd-supply = <&pp3300_s3>;
+		reset-gpios = <&pio 60 GPIO_ACTIVE_LOW>;
+		vcc33-supply = <&pp3300_s3>;
+		no-reset-on-power-off;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
index 26d3451a5e47..24d9ede63eaa 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-tentacruel-sku262144.dts
@@ -42,3 +42,7 @@ MATRIX_KEY(0x00, 0x04, KEY_VOLUMEUP)
 		CROS_STD_MAIN_KEYMAP
 	>;
 };
+
+&touchscreen {
+	compatible = "elan,ekth6a12nay";
+};
-- 
2.51.0.rc0.215.g125493bb4a-goog


