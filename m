Return-Path: <devicetree+bounces-112791-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 892559A3864
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:21:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D7A9FB2219D
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:21:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EE5018C93C;
	Fri, 18 Oct 2024 08:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="j0ke+elu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8ED718BBAE
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:21:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729239687; cv=none; b=UiyDLBG0puUHMNaZsD/xYNWXBDH7CoRu/RJENTCbO66CEn1MGVyCF/J8jH6oQ3S6oDfCaT6eo4NWGFxoWDXJWO0etNe+t7L9mZSpC364DK3oe+odoB9GM3fNoFZuxgauryDUngxKNjeclZJBKnYxUlvfhfS2gD54QC9///m/cQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729239687; c=relaxed/simple;
	bh=+b1cMWRvd2/m165u4jRfl6bdFWmMjC5X8GKJ0se5ktk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=paobO7bGshPfMCHHmRg9xJEXegN6nw2RYPca8IRf8RWGlWF3TIo7k9EXyZbAsKZVLuUVYGCIKNqwmpHypHc4Gwfg07J+cvZyswg6rRMGamATTH7m2HpFKa4FXaxi0bJY+I3KSsZsuyN2bujJ3Rc2ck1TpZtjlpZC3tu8m7f24ko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=j0ke+elu; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2e2fb304e7dso1575311a91.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729239685; x=1729844485; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2sw2cnvD53O5L8zKGOZV5sbNVDe/+IEjxX86rJilqAk=;
        b=j0ke+elu0OGjMHJZKJ1aG2SpcsTrrfMvjw6NL7rEsL1w1LkjZjpPbqxilX2wbkIpk9
         cmJKA0AIrz09fbFyrINYIbETOVEzdm4uYtrS+lOYqoUXC3NEcN4lRUWyH0DnMMg9KXDl
         /xuSsUT4W/LfHHR8PKU5j5UxPqRvbgKUDdLNE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729239685; x=1729844485;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2sw2cnvD53O5L8zKGOZV5sbNVDe/+IEjxX86rJilqAk=;
        b=DjWQLrtYPd/KGOTlNlsNRy683Y1YwtiKf6Ly7QAAT5du7CCuTayqiVWdHvBHcpEcrW
         rb7HU68EunqV+Z2XaFXRMtf79i2odoBmilICKlVzZ15KVYJmHuR3lQll6msLZBloR5dE
         WbtaeFNwDQebukAJlcEqRLGQviKD+6aY+YoepUuks3+FJhmN2CfRuAwQhear+tGOigBn
         dYFJXxO/TNXguoHFZl3Z0YrDWdwtdOuFp4qYqDppuEgnpgL2YDJl1TaE8thArffJ6rp6
         nr+0+f1GyTp6ftFyYFBXrdAeFV9F6n/cJHXui/CvNN3AZxwjI7k3khV91KmA0ZL7/bHG
         gjtA==
X-Forwarded-Encrypted: i=1; AJvYcCVRV+mDGKd/CNCh9C9kLZL6qmEL8q6y8tsHyKA2WdIDSHRe2IY9I4lgl2yvIwuh6fZIhiwYp+9jdQnk@vger.kernel.org
X-Gm-Message-State: AOJu0YwtQ+DPe4aJGEsD3Ut9A8vnyHWt4qr9B/eNg9MHDv/sEJiN6w2G
	fEduDhx6ECvYPwIrFLlDbE1lRwnwn3FWOlmQTMZiNYY0Neu70MDDQcLFX5EkIDHsW5Jm30RSti8
	=
X-Google-Smtp-Source: AGHT+IFOJPmAyaUnxkdtc6GJUuyr1a/qUKidE/urORfJ7bfMi/Vu+97DNhgccSxR9H9P6CXOMHrp/w==
X-Received: by 2002:a17:90b:814:b0:2e2:a96c:f00d with SMTP id 98e67ed59e1d1-2e56185d15bmr1863982a91.21.1729239684929;
        Fri, 18 Oct 2024 01:21:24 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:5e77:354e:2385:7baa])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e55da79303sm1315149a91.52.2024.10.18.01.21.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:21:24 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	devicetree@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: mediatek: mt8186-corsola-voltorb: Merge speaker codec nodes
Date: Fri, 18 Oct 2024 16:21:11 +0800
Message-ID: <20241018082113.1297268-1-wenst@chromium.org>
X-Mailer: git-send-email 2.47.0.rc1.288.g06298d1525-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The Voltorb device uses a speaker codec different from the original
Corsola device. When the Voltorb device tree was first added, the new
codec was added as a separate node when it should have just replaced the
existing one.

Merge the two nodes. The only differences are the compatible string and
the GPIO line property name. This keeps the device node path for the
speaker codec the same across the MT8186 Chromebook line. Also rename
the related labels and node names from having rt1019p to speaker codec.

Cc: <stable@vger.kernel.org> # v6.11+
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
This is technically not a fix, but having the same device tree structure
in stable kernels would be more consistent for consumers of the device
tree. Hence the request for a stable backport.

Changes since v1:
- Dropped Fixes tag, since this is technically a cleanup, not a fix
- Rename existing rt1019p related node names and labels to the generic
  "speaker codec" name
---
 .../dts/mediatek/mt8186-corsola-voltorb.dtsi  | 21 +++++--------------
 .../boot/dts/mediatek/mt8186-corsola.dtsi     |  8 +++----
 2 files changed, 9 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dtsi
index 52ec58128d56..b495a241b443 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola-voltorb.dtsi
@@ -10,12 +10,6 @@
 
 / {
 	chassis-type = "laptop";
-
-	max98360a: max98360a {
-		compatible = "maxim,max98360a";
-		sdmode-gpios = <&pio 150 GPIO_ACTIVE_HIGH>;
-		#sound-dai-cells = <0>;
-	};
 };
 
 &cpu6 {
@@ -59,19 +53,14 @@ &cluster1_opp_15 {
 	opp-hz = /bits/ 64 <2200000000>;
 };
 
-&rt1019p{
-	status = "disabled";
-};
-
 &sound {
 	compatible = "mediatek,mt8186-mt6366-rt5682s-max98360-sound";
-	status = "okay";
+};
 
-	spk-hdmi-playback-dai-link {
-		codec {
-			sound-dai = <&it6505dptx>, <&max98360a>;
-		};
-	};
+&speaker_codec {
+	compatible = "maxim,max98360a";
+	sdmode-gpios = <&pio 150 GPIO_ACTIVE_HIGH>;
+	/delete-property/ sdb-gpios;
 };
 
 &spmi {
diff --git a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
index c7580ac1e2d4..cf288fe7a238 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186-corsola.dtsi
@@ -259,15 +259,15 @@ spk-hdmi-playback-dai-link {
 			mediatek,clk-provider = "cpu";
 			/* RT1019P and IT6505 connected to the same I2S line */
 			codec {
-				sound-dai = <&it6505dptx>, <&rt1019p>;
+				sound-dai = <&it6505dptx>, <&speaker_codec>;
 			};
 		};
 	};
 
-	rt1019p: speaker-codec {
+	speaker_codec: speaker-codec {
 		compatible = "realtek,rt1019p";
 		pinctrl-names = "default";
-		pinctrl-0 = <&rt1019p_pins_default>;
+		pinctrl-0 = <&speaker_codec_pins_default>;
 		#sound-dai-cells = <0>;
 		sdb-gpios = <&pio 150 GPIO_ACTIVE_HIGH>;
 	};
@@ -1195,7 +1195,7 @@ pins {
 		};
 	};
 
-	rt1019p_pins_default: rt1019p-default-pins {
+	speaker_codec_pins_default: speaker-codec-default-pins {
 		pins-sdb {
 			pinmux = <PINMUX_GPIO150__FUNC_GPIO150>;
 			output-low;
-- 
2.47.0.rc1.288.g06298d1525-goog


