Return-Path: <devicetree+bounces-89619-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6400594252B
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 05:45:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 19117282A14
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 03:45:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2812A2556F;
	Wed, 31 Jul 2024 03:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="A3WuqnrO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80882224D7
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 03:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722397473; cv=none; b=KAxnTnpoUasNfxZY1TDeTDn5mudsi7XuPOW6gt7iQZH3Rrlh8XmpHg85USwfjWGMiLyB07itET2HTFqAx/eF9KSOAWpvGaY6BhezU68rxfgles8E7z+LclG7SJ2+Jff0ekGmylaJk3pl1XTlRswKFA4T5kBQxC4Difjvh6hwq2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722397473; c=relaxed/simple;
	bh=gPolkV+EX7nmy7kNMGgP7tD89yoOsnJDPteKeh8TDPY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XQtQ4i/LXGvBHvts3pdX9nuuKnRh6891T3wx7MDNhp10+GEx40mpwscjuon3CfmjChko7u6XfNjQn0D07idBYpR45JmvguGqd3JtOO1tOgZyE1c3VQI49aaTnW6RQPQAUZ/2gX/q/aVIyZEm3j/7BaVW/gshDt6mjkl6lTSljS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=A3WuqnrO; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-709428a9469so2680685a34.3
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 20:44:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1722397470; x=1723002270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=11m/HeUZui+l9rC09B4iar2D4HclxMkveTVuMFSiXTE=;
        b=A3WuqnrO8mRF3nKdq1wLIWEjECWYQdRBi+Z9u3TFGgbmyiMxCVaK3O5H/gnc622Yhl
         yYmIm782u8+op9XDlQP4zhHjwsvT2HktC5IKja+AIRbV86DQSanJKSQw0LbZpyhMI1bF
         17LIzE3ZgwrN4nhIv8NUz+DqO1FkgzMgvfTNs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722397470; x=1723002270;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=11m/HeUZui+l9rC09B4iar2D4HclxMkveTVuMFSiXTE=;
        b=jr3BIPTRRcMm7mHIq8bh1hrxT6NerpUIi72Ut0b46RaZFRba0KV68jrTR7yedp6HXp
         qhCtYYgQbpnAGYfm5QoAay90XmNUKts8/EwnDJQlDGelTCRLvT8TMyMKnHO1K1ve0AuK
         YtRRvgiTpbrMrjrvNGxnAi8XkfdxtRWqo8nJB8MA4HfM2RI3FkkHklh0rUcAws1VU2rz
         4rzyPHygSQo/Ldr+gTjFGdSNFjL/a/yQqEGaqf9836BCBsDNIDKgdOVsNKCX4sM8lme9
         W7YDnIhF8IKZ2/1Fwa3Kl5G95lhsrciMxrQeU4rf4fUU4KkHkj4JeUW/kgXC886Qc/0t
         +CwQ==
X-Forwarded-Encrypted: i=1; AJvYcCX5pMyLXVqVfiZsBufQUH14o64m7/+W7OhgxcCPJ7SCN+1og7iQnbb9tvZp5AOSSErc/LEm7lZgKSP/FylFtX94Q91EEpNTsARvvg==
X-Gm-Message-State: AOJu0Yx4R6qphY7KL7G2SuwOW+Ioa2RPyACmymffxl5do/1URFPIjzBD
	j9PeL+lTJGtvSekn0Bhy4X1kwp6e6n8+l40cRo/QylwMNtjvIq3NULGd7ruwcw7P/cHx2yDqVS0
	=
X-Google-Smtp-Source: AGHT+IEy47mf3dU8J89PBwPURHRmTajXHBhlXBEf4nsrJgQUp+s+hvQeYpO0EE6KZSG0treE+Z4MAg==
X-Received: by 2002:a05:6870:2cc:b0:261:113c:1507 with SMTP id 586e51a60fabf-267d4d5b51amr15027926fac.20.1722397470604;
        Tue, 30 Jul 2024 20:44:30 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:1cfb:e012:babc:3f68])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70ead81230bsm9093008b3a.120.2024.07.30.20.44.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Jul 2024 20:44:30 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>
Subject: [PATCH 3/3] arm64: dts: mediatek: mt8195: Assign USB 3.0 PHY to xhci1 by default
Date: Wed, 31 Jul 2024 11:44:10 +0800
Message-ID: <20240731034411.371178-4-wenst@chromium.org>
X-Mailer: git-send-email 2.46.0.rc1.232.g9752f9e123-goog
In-Reply-To: <20240731034411.371178-1-wenst@chromium.org>
References: <20240731034411.371178-1-wenst@chromium.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

xhci1 has both USB 2.0 and USB 3.0 host capabilities. By default both
are assumed to be enabled when the controller is enabled. To disable
either one, an extra property is used.

Since the default has both enabled, both PHYs should also be assigned
to the host controller. If a specific design uses only either one,
the board specific dts file can override the PHY assignment together
with adding the "mediatek,u[23]p-dis-msk" property. This keeps both
changes together.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi               | 1 +
 arch/arm64/boot/dts/mediatek/mt8195.dtsi                      | 2 +-
 arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts        | 2 --
 arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts | 1 +
 arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts         | 1 +
 5 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
index d3a52acbe48a..c98fe9a39b90 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
@@ -1401,6 +1401,7 @@ &xhci0 {
 &xhci1 {
 	status = "okay";
 
+	phys = <&u2port1 PHY_TYPE_USB2>;
 	rx-fifo-depth = <3072>;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	vbus-supply = <&usb_vbus>;
diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
index 2ee45752583c..61b3c202a8cd 100644
--- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
@@ -1444,7 +1444,7 @@ xhci1: usb@11290000 {
 			      <0 0x11293e00 0 0x0100>;
 			reg-names = "mac", "ippc";
 			interrupts = <GIC_SPI 530 IRQ_TYPE_LEVEL_HIGH 0>;
-			phys = <&u2port1 PHY_TYPE_USB2>;
+			phys = <&u2port1 PHY_TYPE_USB2>, <&u3port1 PHY_TYPE_USB3>;
 			assigned-clocks = <&topckgen CLK_TOP_USB_TOP_1P>,
 					  <&topckgen CLK_TOP_SSUSB_XHCI_1P>;
 			assigned-clock-parents = <&topckgen CLK_TOP_UNIVPLL_D5_D4>,
diff --git a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
index a06610fff8ad..1ef6262b65c9 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-genio-1200-evk.dts
@@ -904,8 +904,6 @@ &xhci0 {
 };
 
 &xhci1 {
-	phys = <&u2port1 PHY_TYPE_USB2>,
-	       <&u3port1 PHY_TYPE_USB3>;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts b/arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts
index e4b2af9489a8..e2e75b8ff918 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-kontron-3-5-sbc-i1200.dts
@@ -1111,6 +1111,7 @@ &xhci0 {
 
 /* USB2.0 M.2 Key-B */
 &xhci1 {
+	phys = <&u2port1 PHY_TYPE_USB2>;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
 	mediatek,u3p-dis-msk = <0x01>;
 	status = "okay";
diff --git a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
index 096fa999aa59..14ec970c4e49 100644
--- a/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8395-radxa-nio-12l.dts
@@ -894,6 +894,7 @@ &xhci0 {
 };
 
 &xhci1 {
+	phys = <&u2port1 PHY_TYPE_USB2>;
 	/* MT7921's USB Bluetooth has issues with USB2 LPM */
 	usb2-lpm-disable;
 	vusb33-supply = <&mt6359_vusb_ldo_reg>;
-- 
2.46.0.rc1.232.g9752f9e123-goog


