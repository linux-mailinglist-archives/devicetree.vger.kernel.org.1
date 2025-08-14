Return-Path: <devicetree+bounces-204613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 897D7B260DA
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 11:27:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0CF03164696
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 09:25:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 871512EA72D;
	Thu, 14 Aug 2025 09:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="PsKs6Tyf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DB027FD76
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755163518; cv=none; b=D0wYcS8wdV+NUlGkmisDBSE8TeCTG8l2CVeiCtnPogV/Anq/vQE3Ph6dYHF2Ew4fopUY4Y3Zn9275WtDbodGsyBwKQ3iGxi+vx6N6k6qhCsumTcKA0uUhbExBs4qq3X13nEGyCMJMXlznDyaGQ1lOnwdEL7QqMpCKVNOJLXCWYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755163518; c=relaxed/simple;
	bh=HsynHpb83ZhD6GViMz9Q1kfIxKLg8QLma2UUN9gxsmw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZrLgPDbml4Vrn4cMPqymmXECjnEVQHYq4CiAKIIt9K4tPXM4toSxZhPXG6ZD+7LeOI6kT/IDv6X9uLjHy0ATs0457s3E653SchMc4dljhfg2So4caXpeO2ORGAUtdxWKKODDyLLsvF5UvFx81cdqKUcfpz2Qnn3SovEPTqS8dfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=PsKs6Tyf; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-24457f5835dso8345465ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 02:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1755163515; x=1755768315; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=enM03Y+SofNC9f2L6BJ7C/DVoLrJlmtDheNAd8lIknI=;
        b=PsKs6TyfzqpwHWagwykfeT02NhXAi2y+o+VxQdS0346QjJLsYpZXV8Jv4MEiTI2oQa
         cOjO6svpsdXuV2BBppwVArmRh/bXslM20pSeTE9Hvx9to8OZUQPN9IhhHveNIuTUwLEG
         TkbhQAaLLRIHm6b9vwOl58VTVvyn6P9LlYdck=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755163515; x=1755768315;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=enM03Y+SofNC9f2L6BJ7C/DVoLrJlmtDheNAd8lIknI=;
        b=ppRAq99Nv+CUV7SfL3/NisnHjhEu1o8sqDCDTsCQKHMqzZmi2pkqiN8Yr6uTRz6UFE
         Dh5ImUX8abY/2BYyPzWdxNjyFAtEOfd+tity+U9jChgWrfUPMW+SduMg8rJl7pa8smp9
         w/JYKlRE5J2anBn0BtYUiAZNZXtZJZWVcut3DIheatLYPm42xwouOdkeKt0oSV/qD9D6
         /68tVdClNO07AD9d96hQ1tvP5HV6tBtYfYYoJ37u8fjFLli8cKtxHaNQgfT5YMXlrg2d
         6DQCCLmmkmO4PGz77Kg/7HVbCXSupUTTrZ6SHz45TdkE8LAWUQLJUytt8UAeVjco/eCM
         5DYQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5AIA7mUWjugroUJZBnP+8/4Ihnxe+UmYcgYjPsU9NhDx3Rhu23ZRfZuUil3K3WUeGb0oLNI8ryia6@vger.kernel.org
X-Gm-Message-State: AOJu0YxE0cVYmrzgdZMlGD1bClxErNDe3TPTYFvdfbst9BFltx7ZMJGG
	ELHEW92vIWOrtZNAV+hd8voCBehnF0L80pahOaawJIzLqxCiiAZU/n7wJN9r7pxf7Q==
X-Gm-Gg: ASbGnctMwsd+or19XYN49DE2YKwR4IW++cIHa9NQk5jRbyPewJlgvPjiU+Xxl25A4Td
	YEYg5RpuCLSlVlGwjYDNqxmG8xos54S8IPrvD+bDDwub5IF3uVn99jLcxd0ob6O86PBMQUW58Zv
	s8XbEG/6yNjBNjvi1GXe3tO4Jzm36sxb5uQBqM+Yq4DAr1GbQntDo3gZeatG1oa1r6YVUOvWph4
	zEpa5oOpMj9nreNHYFy1A3LGbi3md04BXm9K1X5r32wIPo3M6leLAu4HDBst1xgtSNll0ewEsdy
	Est2WfdASAJgNbPA6WHm1NugHB8ugoAlL4HykLR1yI7vfuWMisBuSHflb2oA5Pv6Du/88gEpxnT
	BTwJ339/0PwDQMdHrYpIj9E5zKomk/7ybgdtbrCUu
X-Google-Smtp-Source: AGHT+IEGaNwQwUsuoFyhAT0RG891ff1UB5Uya2JxWtJ1QeDXdtqAdYENXV7IRVwIlXojpGbzegP6Lg==
X-Received: by 2002:a17:902:e84b:b0:240:3dbb:7603 with SMTP id d9443c01a7336-244584dc1d4mr36979635ad.19.1755163515364;
        Thu, 14 Aug 2025 02:25:15 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c44f:5805:6bc2:66d4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e8976d13sm346186645ad.109.2025.08.14.02.25.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 02:25:14 -0700 (PDT)
From: Chen-Yu Tsai <wenst@chromium.org>
To: Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fei Shao <fshao@chromium.org>
Subject: [PATCH v2] arm64: dts: mediatek: mt8188-geralt: Enable first SCP core
Date: Thu, 14 Aug 2025 17:25:08 +0800
Message-ID: <20250814092510.211672-1-wenst@chromium.org>
X-Mailer: git-send-email 2.51.0.rc1.163.g2494970778-goog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The first SCP core is used to drive the video decoder and encoders.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
Changes since v1:
- Added SCP vreq pin
---
 .../boot/dts/mediatek/mt8188-geralt.dtsi      | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
index c5254ae0bb99..7fedbacdac44 100644
--- a/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
@@ -164,6 +164,12 @@ reserved_memory: reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
+		scp_mem_reserved: memory@50000000 {
+			compatible = "shared-dma-pool";
+			reg = <0 0x50000000 0 0x800000>;
+			no-map;
+		};
+
 		apu_mem: memory@55000000 {
 			compatible = "shared-dma-pool";
 			reg = <0 0x55000000 0 0x1400000>;
@@ -1077,6 +1083,13 @@ pins-bus {
 		};
 	};
 
+	scp_pins: scp-pins {
+		pins-scp-vreq {
+			pinmux = <PINMUX_GPIO98__FUNC_O_SCP_VREQ_VAO>;
+			bias-disable;
+		};
+	};
+
 	spi0_pins: spi0-pins {
 		pins-bus {
 			pinmux = <PINMUX_GPIO69__FUNC_O_SPIM0_CSB>,
@@ -1146,6 +1159,18 @@ &postmask0_out {
 	remote-endpoint = <&dither0_in>;
 };
 
+&scp_cluster {
+	status = "okay";
+};
+
+&scp_c0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&scp_pins>;
+	firmware-name = "mediatek/mt8188/scp.img";
+	memory-region = <&scp_mem_reserved>;
+	status = "okay";
+};
+
 &sound {
 	pinctrl-names = "aud_etdm_hp_on", "aud_etdm_hp_off",
 			"aud_etdm_spk_on", "aud_etdm_spk_off",
-- 
2.51.0.rc1.163.g2494970778-goog


