Return-Path: <devicetree+bounces-91755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D29194A6D0
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 13:20:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 267131C22C5C
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 11:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41E351E289D;
	Wed,  7 Aug 2024 11:20:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dER7y35r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD6B91B9B20
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 11:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723029647; cv=none; b=YuFlJqh3Zh0JGZlZWYxsYC0VQARIPZ3emE3pysBVBeJ1XMRWZDuuFpK1G4ZolyoWCxrBEv0jcgF66E1iaZf0x4xm8TunwBkUrT9futWD09fEHdeHRWl21LRxOXK37hXFIS72hHy+VPfxIigfwB5JiSGQjPvbmNqLMyf6QBboAKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723029647; c=relaxed/simple;
	bh=4bk7F+gfUwAWtwwRGfVsxEwPVTiYc0lgnFSuLekIYJw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=e4Pn/l+C2Oq1XfscYXiz9uXot0JmDkhaHHHp1kM4glBSUgVUYIfLEn6RKmJILLN1U/uSZFFK8DO816+nx5WjyS0b6KZ1qbqHKizUsopMOR1pD/xP9DMSxbvsxqp5b6QD29IAxm34aDW75Zk2DoNZdVdyd73HP4bPw5QNOZgLhwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dER7y35r; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1fd640a6454so14473265ad.3
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 04:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723029645; x=1723634445; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KwkYws5j52+z2kucEnWsDNWqsnwQjqdjpPPkg/VCoAk=;
        b=dER7y35r9trcW4kzTEZsd+iNUlwb7lqQLjIFC8dkhPIB+VqDruVvzjojpk9NL48Vne
         Zm1oDZf7zQChPZnBgrMCraDmJxH099HAKT1xaQoXPEPui6LusUDZ4Z8tiJeLnaYH/+kL
         cTJzADHg1URMIjVjshOlPBms1WAOuzNXPH4udfuj5OPN+6EkwXHT0weYYpU4Rtehnyq0
         Dsn28FqY8VJ5uztGYktlPqbvU8CYZT4ws1j0xrKap/EDucH+LjisWfFpHr5JUseVkSMe
         l7YZm6gbGh81ola3HP3ljjNNufWBbOH1LhWNGacpEr5IuF78RwgiX/mMW0pnYpLvt6Eb
         KVCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723029645; x=1723634445;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KwkYws5j52+z2kucEnWsDNWqsnwQjqdjpPPkg/VCoAk=;
        b=Ja6ob6nk8m+N+pZaU9MrYeuLfD1JwEIoxFGuUToZqstcwFC0s8ZnNT0GayIiopPux7
         YGIz8aYNB5yYNc7O3UgjAeEMUa6Gc0qH29DxQ6lDg0qrjsuOVevmQPyJDNLqE3r7nrM5
         ppC3EclRzgoNTcFfSUzf/cCHTOYip0yltsRNaAukaUgLmiCXPQclsYajqHyfWafurQ5h
         +7vfxYiSvfZxsqWaElKs6MInwMAErZYQWIjfaXLavWsjLMigif74GMz9yWDfsxWRnbw2
         R2vapdP4u281exBSO5AeRbEYyQTEHAW8T24s0UN5BrjmXDGgIgZiUZnF/lh10RIhJ2jG
         tYCw==
X-Forwarded-Encrypted: i=1; AJvYcCWCf4Fp2A8roKZuMImCbb2/yNSsv5Qsai2Nd2Wdkg7rmHAKV6r1IKEmgMfmK69hkbcUPcAR/4Rvp3HtsOPdUKX0+rpvz+OpgU0lzw==
X-Gm-Message-State: AOJu0YxJZ6XPoOH+lZH9ZTLxjpMgdj6meFkYZcoQobMfPQGRsadeqRt4
	UmRJbuqGJKtv32rhkmYfVIe04Ii+9zTrp4YcVDb3+RRnhbWLrDN9
X-Google-Smtp-Source: AGHT+IE8CHVzTTxp5c9wiYsDiVNWs2j72yJwS534nv7Sv9pDvfeSi7eAyAQSHa8yF1GHShhjSLgjaQ==
X-Received: by 2002:a17:902:ecc3:b0:1fb:8a0e:76f9 with SMTP id d9443c01a7336-1ff573e7561mr222276485ad.39.1723029644640;
        Wed, 07 Aug 2024 04:20:44 -0700 (PDT)
Received: from joaog-nb.corp.toradex.com ([67.159.246.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-200860f857asm11561445ad.180.2024.08.07.04.20.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 04:20:44 -0700 (PDT)
From: =?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: =?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	"linux-kernel @ vger . kernel . org" <joao.goncalves@toradex.com>
Subject: [PATCH v1] arm64: dts: imx8mp-verdin: add HDMI audio support
Date: Wed,  7 Aug 2024 08:20:35 -0300
Message-Id: <20240807112035.236036-1-jpaulo.silvagoncalves@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Add native HDMI audio to Verdin iMX8MP and all its carriers boards.

Signed-off-by: João Paulo Gonçalves <joao.goncalves@toradex.com>
---
 .../arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi   | 10 ++++++++++
 .../arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi       |  8 ++++++++
 5 files changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
index fbcd93e33aea..da8902c5f7e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
@@ -65,6 +65,11 @@ reg_pcie: regulator-pcie {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -219,6 +224,11 @@ &sai1 {
 	status = "okay";
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
index 09733fea036d..a38e7c947a42 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
@@ -64,6 +64,11 @@ simple-audio-card,cpu {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -215,6 +220,11 @@ &sai1 {
 	status = "okay";
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1, connector X50 through RS485 transceiver */
 &uart1 {
 	linux,rs485-enabled-at-boot-time;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
index 3a40338cf2d8..11cf3bdc95c4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
@@ -62,6 +62,11 @@ led-3 {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -182,6 +187,11 @@ &reg_usdhc2_vmmc {
 	vin-supply = <&reg_3p3v>;
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
index 533b7fe218ce..cc389cda2af2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
@@ -85,6 +85,11 @@ led-5 {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -192,6 +197,11 @@ &reg_usdhc2_vmmc {
 	vin-supply = <&reg_3p3v>;
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index d23a3942174d..a19ad5ee7f79 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -77,6 +77,14 @@ key-wakeup {
 		};
 	};
 
+	sound_hdmi: sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+		status = "disabled";
+	};
+
 	/* Carrier Board Supplies */
 	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
-- 
2.34.1


