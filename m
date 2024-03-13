Return-Path: <devicetree+bounces-50238-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA0887A6A7
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 12:07:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 88C1E28322C
	for <lists+devicetree@lfdr.de>; Wed, 13 Mar 2024 11:07:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F15055914E;
	Wed, 13 Mar 2024 11:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="kLXjuJS+"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649735789B;
	Wed, 13 Mar 2024 11:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.235.227.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710327772; cv=none; b=APPp1tS0vX6iAAcUtcbGt2nOk7nmuVbB8sPHM22VCK3zKW/ZBsGcWGejQ9SOXKLa0oZhFlL3HegezVMpfBC/CusJkJbRkogXbfvOVZk7sRIaYpe2iqbu2LrUvfZ+aKsOKr/Wnakk1SgrZTKQma7xIf4n2JliniHTEd9At2ypxoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710327772; c=relaxed/simple;
	bh=8bxWkdHWjuivwKz8TBybuK02NLszyCe4cZF3c/Vh6Zg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=K3oDUlkZ4v+GpAeDVdeCuxg8A0s8XFm8qc1PXLvInMsCJySxQ/J5LNqiAjwrXj0sdDQWmLqAbn85j4ZWFmO9b5BtrgOB4kHxFV0WAoalgpj3J7JJaHp5VoR/winbRq73pHYoDxAWLhQPh8mqYkjD6KS7QntCIDVgMaKF3vEzxd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b=kLXjuJS+; arc=none smtp.client-ip=46.235.227.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1710327770;
	bh=8bxWkdHWjuivwKz8TBybuK02NLszyCe4cZF3c/Vh6Zg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=kLXjuJS+h4P48NJgsFH/aN0xzQA9soLMlzqYcbHcL1vT9XBh30RFh79Rr2TC3hedD
	 B7OI3kn/HhOTeCKT8NtAI9xFfwnRUc5JAoV8Rk3YXZ7JjxOKeCuiSeGtT1ybQncOuq
	 RVhJulrkCCGHSnDXBDR4U8zfJIvw5bs0nS07gwM6AWJ5sNu26tM2FmF6ryClKIbGuJ
	 CLmBl5kz/jLII3xqkt5KIJJua4UQk5aT/jWMtfpvwT0JGl2u632Jl9QAu35nriX/5J
	 Ch2XBe3OGtReRIe19CmDZtG1GURCFKGOhBsRvN59a4qdK+mAslzp3odKl6GVNLwqWQ
	 7teTUM4FYF2rg==
Received: from IcarusMOD.eternityproject.eu (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: kholk11)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id D37DB37820D0;
	Wed, 13 Mar 2024 11:02:47 +0000 (UTC)
From: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
To: broonie@kernel.org
Cc: wenst@chromium.org,
	lgirdwood@gmail.com,
	robh@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	trevor.wu@mediatek.com,
	maso.huang@mediatek.com,
	xiazhengqiao@huaqin.corp-partner.google.com,
	arnd@arndb.de,
	kuninori.morimoto.gx@renesas.com,
	shraash@google.com,
	amergnat@baylibre.com,
	nicolas.ferre@microchip.com,
	u.kleine-koenig@pengutronix.de,
	dianders@chromium.org,
	frank.li@vivo.com,
	allen-kh.cheng@mediatek.com,
	eugen.hristev@collabora.com,
	claudiu.beznea@tuxon.dev,
	jarkko.nikula@bitmer.com,
	jiaxin.yu@mediatek.com,
	alpernebiyasak@gmail.com,
	ckeepax@opensource.cirrus.com,
	zhourui@huaqin.corp-partner.google.com,
	nfraprado@collabora.com,
	alsa-devel@alsa-project.org,
	shane.chien@mediatek.com,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	kernel@collabora.com,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: [PATCH v3 22/22] arm64: dts: mediatek: mt8186-corsola: Specify sound DAI links and routing
Date: Wed, 13 Mar 2024 12:01:47 +0100
Message-ID: <20240313110147.1267793-23-angelogioacchino.delregno@collabora.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240313110147.1267793-1-angelogioacchino.delregno@collabora.com>
References: <20240313110147.1267793-1-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The drivers and bindings acquired support for specifying audio hardware
and links in device tree: describe and link the sound related HW of this
machine.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
---
 .../boot/dts/mediatek/mt8186-corsola.dtsi     | 42 ++++++++++++++++---
 1 file changed, 37 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index 3dea28f1d806..0bdb83c3e560 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -42,7 +42,7 @@ backlight_lcd0: backlight-lcd0 {
 		default-brightness-level = <576>;
 	};
 
-	bt-sco-codec {
+	bt-sco {
 		compatible = "linux,bt-sco";
 		#sound-dai-cells = <0>;
 	};
@@ -223,12 +223,44 @@ sound: sound {
 		mediatek,adsp = <&adsp>;
 		mediatek,platform = <&afe>;
 
-		playback-codecs {
-			sound-dai = <&it6505dptx>, <&rt1019p>;
+		audio-routing =
+			"Headphone", "HPOL",
+			"Headphone", "HPOR",
+			"IN1P", "Headset Mic",
+			"Speakers", "Speaker",
+			"HDMI1", "TX";
+
+		hs-playback-dai-link {
+			link-name = "I2S0";
+			dai-format = "i2s";
+			mediatek,clk-provider = "cpu";
+			codec {
+				sound-dai = <&rt5682s 0>;
+			};
+		};
+
+		hs-capture-dai-link {
+			link-name = "I2S1";
+			dai-format = "i2s";
+			mediatek,clk-provider = "cpu";
+			codec {
+				sound-dai = <&rt5682s 0>;
+			};
 		};
 
-		headset-codec {
-			sound-dai = <&rt5682s 0>;
+		spk-share-dai-link {
+			link-name = "I2S2";
+			mediatek,clk-provider = "cpu";
+		};
+
+		spk-hdmi-playback-dai-link {
+			link-name = "I2S3";
+			dai-format = "i2s";
+			mediatek,clk-provider = "cpu";
+			/* RT1019P and IT6505 connected to the same I2S line */
+			codec {
+				sound-dai = <&it6505dptx>, <&rt1019p>;
+			};
 		};
 	};
 
-- 
2.44.0


