Return-Path: <devicetree+bounces-41946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67013855E40
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 10:33:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 24F47283514
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 09:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5831B960;
	Thu, 15 Feb 2024 09:32:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b="DUtk2RS1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83CDD18B1A
	for <devicetree@vger.kernel.org>; Thu, 15 Feb 2024 09:32:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=93.104.207.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707989547; cv=none; b=t9RiTUlbc8tfVKOlegdfemrriC4hYZ84ajP1MrRKwDKtG3KSSKzjIt16NaUEpVoaYB5CNQWor/7oWua9L9XVDJLoUnZbFUoiyn/rd5Lc01Q31Kzn2gj9uM3SH6hQt2f5a8EWqSH0ecMOT8fFJcZd8QimyynnwyoSXRRfZ1EJWRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707989547; c=relaxed/simple;
	bh=D/t0C+8KcMP8sG5P6Wj4ltiyYg7yKs+F15Uv70RNytE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C87hqvOV4AFJCqoN3K+xMz7A0zAQLOcjNQrQXs9NI/j41FNBKdD/pSdp2m4dBD5uhNmM1A5X9qUSR6uVDOcppWzpn6TfT2Kf7Q2hvYIlJBdoMHZdWa29SvQZ4lrwqaId4Zo+C7rcMp15a/qXx0vlZkUN6NGem89AcpjOryldSdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=tq-group.com header.i=@tq-group.com header.b=DUtk2RS1; arc=none smtp.client-ip=93.104.207.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1707989544; x=1739525544;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=ys7+gAx0aNBkte/FWD7H4VU0J/Z7WfW29i7yuLuFcpM=;
  b=DUtk2RS1rYv7FVT8CR9IMZbxGm3Tvc4MPkzeJo/SgXGVT8LzUmJM8Xjj
   GvXdEmXuxuNWHPHuIZEWicgVhjz3weFlOVWsTxPQ3bOQO6X4ptfQ77G1o
   TqQZmWXZ/fry7NVzGFIGjf3SPEgGxuleoNLk3r1S1+bqdfrg+cellZFCM
   /W+hwHFX6/w9rIc9InM+Gs28X7ljo74CSUduw2Iy2cfkU67lNOIdXhulf
   sHl3Ick6RNZXL4kn8x21eKhY41ybyl29ZSZ2+nSwfZ55CO7D/3sXkCPAl
   IS1iwV182BaliF48YjtB6Y1lIY2K5/P5KYRadSMKysXCyddFcw4f2t8u3
   g==;
X-IronPort-AV: E=Sophos;i="6.06,161,1705359600"; 
   d="scan'208";a="35420060"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 15 Feb 2024 10:32:16 +0100
Received: from steina-w.tq-net.de (steina-w.tq-net.de [10.123.53.25])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 60DA6280085;
	Thu, 15 Feb 2024 10:32:16 +0100 (CET)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
	Chanwoo Choi <cw00.choi@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	Shawn Guo <shawnguo@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v5 2/2] arm64: dts: mediatek: Replace deprecated extcon-usb-gpio id-gpio/vbus-gpio properties
Date: Thu, 15 Feb 2024 10:32:14 +0100
Message-Id: <20240215093214.796821-3-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
References: <20240215093214.796821-1-alexander.stein@ew.tq-group.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use id-gpios and vbus-gpios instead.

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Acked-by: Shawn Guo <shawnguo@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/mediatek/mt2712-evb.dts | 4 ++--
 arch/arm64/boot/dts/mediatek/mt8173-evb.dts | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts b/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
index fffdb7bbf889e..0c38f7b517637 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt2712-evb.dts
@@ -43,12 +43,12 @@ cpus_fixed_vproc1: regulator-vproc-buck1 {
 
 	extcon_usb: extcon_iddig {
 		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&pio 12 GPIO_ACTIVE_HIGH>;
+		id-gpios = <&pio 12 GPIO_ACTIVE_HIGH>;
 	};
 
 	extcon_usb1: extcon_iddig1 {
 		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&pio 14 GPIO_ACTIVE_HIGH>;
+		id-gpios = <&pio 14 GPIO_ACTIVE_HIGH>;
 	};
 
 	usb_p0_vbus: regulator-usb-p0-vbus {
diff --git a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
index 0e5c628d1ec3e..3fab21f59d183 100644
--- a/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8173-evb.dts
@@ -41,7 +41,7 @@ hdmi_connector_in: endpoint {
 
 	extcon_usb: extcon_iddig {
 		compatible = "linux,extcon-usb-gpio";
-		id-gpio = <&pio 16 GPIO_ACTIVE_HIGH>;
+		id-gpios = <&pio 16 GPIO_ACTIVE_HIGH>;
 	};
 
 	usb_p1_vbus: regulator-usb-p1 {
-- 
2.34.1


