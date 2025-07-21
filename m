Return-Path: <devicetree+bounces-198068-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95D7DB0BAEE
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 04:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 10A0A3AB141
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 02:46:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1D0E2222A0;
	Mon, 21 Jul 2025 02:46:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="LEr6ybwk"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout4.samsung.com (mailout4.samsung.com [203.254.224.34])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4FB71F5834
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 02:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.254.224.34
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753065988; cv=none; b=uxS3lJVedPVt7jljxjNFnwY8WipdefsF3aATZKdiwcSr28U+P0uga2xQELnWDgQVOU4iUQ0Z2D8WdJXeXDw052WD0jWb9ONH+9WdKoOFU8+6TFIYPNM2z9R81qw2Iga7QQ+Xj0ywQpMFBd7Y3kWHG9u5HYJ53JMVeoo9DgtCx0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753065988; c=relaxed/simple;
	bh=6NSAZVjzPTiwnPQH/IyBvcOMWHLmhZHFRuHFXjLUdKA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:MIME-Version:
	 Content-Type:References; b=D7IIfzmmYLfXKKyuBcSxS2mONe1bFt+9ZQKE3oO8QCkjZRQwmq0DQwMvt4no2dP3dglcS31UP2ISWiwyDuu7Ax1FPuSSfyGRXh/r4juyKYBp2pYdjXUnSbGuc3gekEw1/PE+vXP6AEdmPdT+f1gPgnxHaT+PPN7JPPrh27fak4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=LEr6ybwk; arc=none smtp.client-ip=203.254.224.34
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
	by mailout4.samsung.com (KnoxPortal) with ESMTP id 20250721024614epoutp0457ee46f4bb12a2a15a65247d97b9a0b9~UJDck5-_-1564715647epoutp048
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 02:46:14 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com 20250721024614epoutp0457ee46f4bb12a2a15a65247d97b9a0b9~UJDck5-_-1564715647epoutp048
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1753065974;
	bh=l4ztzQRM66v4JExnCsu3+Idlgs0P+nNKywN3oZNZuwo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=LEr6ybwk4ScxLt6udlv/waeNUcQzioQA20HmS1slmQCDObci9YyuQN5ZgN9tsPUHS
	 T3tTPVzQVqFeXuSAlYi7KH6T+XIk+G/RQ/s1+EJRPEcyNgfnqLNCNvPqqVJkgMa+Cg
	 A1aQp3AfyzPu4A7cLaM8/4a1l8rxKiCEYBzldmY4=
Received: from epsnrtp01.localdomain (unknown [182.195.42.153]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPS id
	20250721024613epcas2p3ca4d521ac9a807db6c754be729293235~UJDcEZBzp2776427764epcas2p30;
	Mon, 21 Jul 2025 02:46:13 +0000 (GMT)
Received: from epcas2p1.samsung.com (unknown [182.195.36.90]) by
	epsnrtp01.localdomain (Postfix) with ESMTP id 4bllC86pMfz6B9m6; Mon, 21 Jul
	2025 02:46:12 +0000 (GMT)
Received: from epsmtip2.samsung.com (unknown [182.195.34.31]) by
	epcas2p3.samsung.com (KnoxPortal) with ESMTPA id
	20250721024611epcas2p3da8e99d27a57cf7ad4ed46729e86602f~UJDadSU792776427764epcas2p3q;
	Mon, 21 Jul 2025 02:46:11 +0000 (GMT)
Received: from AProject.dsn.sec.samsung.com (unknown [10.229.9.52]) by
	epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20250721024611epsmtip2b5a19c5bef426ff8357771f040150913~UJDaY3pC-1443514435epsmtip2H;
	Mon, 21 Jul 2025 02:46:11 +0000 (GMT)
From: ew kim <ew.kim@samsung.com>
To: broonie@kernel.org, s.nawrocki@samsung.com, robh@kernel.org,
	krzk+dt@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, perex@perex.cz,
	conor+dt@kernel.org, alim.akhtar@samsung.com, linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, ew kim
	<ew.kim@samsung.com>
Subject: [PATCH 8/9] arm64: dts: exynosautov920: add PCM playback/capture
Date: Mon, 21 Jul 2025 11:30:51 +0900
Message-Id: <20250721023052.3586000-9-ew.kim@samsung.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250721023052.3586000-1-ew.kim@samsung.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CMS-MailID: 20250721024611epcas2p3da8e99d27a57cf7ad4ed46729e86602f
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
cpgsPolicy: CPGSC10-234,Y
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20250721024611epcas2p3da8e99d27a57cf7ad4ed46729e86602f
References: <20250721023052.3586000-1-ew.kim@samsung.com>
	<CGME20250721024611epcas2p3da8e99d27a57cf7ad4ed46729e86602f@epcas2p3.samsung.com>

This patch adds the PCM playback and capture device nodes as children of
the abox_generic audio controller for ExynosAuto v920.

Each PCM device is defined with a unique ID and an associated IRQ SW number
used for communication with the ADSP. These nodes include information such
as buffer size, ALSA DAI name prefix, and category type(e.g., deep_buffer).

The nodes are initially marked as "disabled" and can be enabled per board
(e.g., in the SADK .dts) as needed.

Signed-off-by: ew kim <ew.kim@samsung.com>
---
 .../boot/dts/exynos/exynosautov920-sadk.dts   |  8 +++++
 .../arm64/boot/dts/exynos/exynosautov920.dtsi | 32 +++++++++++++++++--
 2 files changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
index 2f4cf112675a..f9f717fa95d4 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
+++ b/arch/arm64/boot/dts/exynos/exynosautov920-sadk.dts
@@ -94,3 +94,11 @@ &abox_generic {
 &abox_ipc_generic {
 	status = "okay";
 };
+
+&abox_pcm_playback_0 {
+	status = "okay";
+};
+
+&abox_pcm_capture_0 {
+	status = "okay";
+};
diff --git a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
index 21bcbcf7e2b6..094fdec2e6f5 100644
--- a/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
+++ b/arch/arm64/boot/dts/exynos/exynosautov920.dtsi
@@ -1133,14 +1133,42 @@ abox_generic: abox_generic {
 		samsung,num-pcm-capture = <32>;
 		samsung,num-i2s-dummy-backend = <5>;
 		status = "disabled";
-		/* #address-cells = <2>; */
-		/* #size-cells = <1>; */
+		#address-cells = <1>;
+		#size-cells = <1>;

 		abox_ipc_generic: abox_ipc_generic {
 			compatible = "samsung,abox_ipc_generic";
 			samsung,num-irq = <64>;
 			status = "disabled";
 		};
+
+		abox_pcm_playback_0: abox_pcm_playback@3fd0000 {
+			compatible = "samsung,abox-pcm-playback";
+			samsung,id = <0>;
+			samsung,irq_id = <0>;
+			samsung,allocate-adsp = <0>;
+			reg = <0x3fd0000 0x10>;
+			reg-names = "pp_pointer_offset";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "ABOX";
+			samsung,category = "deep_buffer";
+			samsung,buffer_bytes_max = <0x24000>;
+			status = "disabled";
+		};
+
+		abox_pcm_capture_0: abox_pcm_capture@3fd0400 {
+			compatible = "samsung,abox-pcm-capture";
+			samsung,id = <0>;
+			samsung,irq_id = <32>;
+			samsung,allocate-adsp = <0>;
+			reg = <0x3fd0400 0x10>;
+			reg-names = "pp_pointer_offset";
+			#sound-dai-cells = <0>;
+			sound-name-prefix = "ABOX";
+			samsung,category = "deep_buffer";
+			samsung,buffer_bytes_max = <0x24000>;
+			status = "disabled";
+		};
 	};
 };

--
2.25.1


