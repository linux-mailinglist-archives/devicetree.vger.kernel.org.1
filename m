Return-Path: <devicetree+bounces-235809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6C5C3D123
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 19:27:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 04E504E1957
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 18:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E7C034A774;
	Thu,  6 Nov 2025 18:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Sly5sNXL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f51.google.com (mail-ot1-f51.google.com [209.85.210.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BFF22A817
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 18:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762453629; cv=none; b=WtI5BTOQHJXa2+A4QnP6sSgSjyN5xl2R9zkkFyWLrNDfCO2pgh5ytbndeOmtNctP71uy3AxYiraYB4+Jdie/qaeHE/Nhjp+UdBcHMV0gTlQr1jt02uQRT1psVxGLSLsNk6WYjSx7swRetvj/o4+4jPYaAgYSQRCjyrAMIHEQ3ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762453629; c=relaxed/simple;
	bh=Byk6nH4i2Klbu/HaIOE+K5WP75xgRySgNc7xnKPQxZE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=I/CVVFM+eXT515tdfH/1w4MrvpD+ZUVTPTWay1sG6vLdwn8i7xR23tWUIEPpongoSXENsZvvVuH8OOyZQTdFsk4mRbsa/3jZxyPIu1uIZd0Ovu/fpKhyjexdCTkFu7RYbBUkyWcOoFtWZfy2o2oZ9wSQyZnqY4pxLCFX2rl643Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Sly5sNXL; arc=none smtp.client-ip=209.85.210.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f51.google.com with SMTP id 46e09a7af769-7c6d2ec149eso824958a34.1
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 10:27:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762453623; x=1763058423; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=79lMv1S4sZVnamUdtp6ADko+gKgG2fiOZl977EobktU=;
        b=Sly5sNXL4hR8HVKypGYCGMcco5Km5ggfIYQ0W5u4PI5ds9zNQ7vL8VDcbDr26heByF
         iXq6dflXnkac/O4NJaWHN8E7O2rzkBtTqYQ7rSkZIY1syM70L4ofSLv1LC8QDhtPkRdW
         wKEcc4yfO44awTFVDcHQvC7J9cUMjtW1c6T5Xt0bdfWP4viEold8ntvsBOrz8a8hY0qW
         rv1/ZDRrmapGL0S4rODVtpIVVda2LMdkkk2GILFikzl1aan9tGv2qHONkiQDS/tO/GJt
         JOCkolU+IBDh8KZBrYaIkbm+aWv0XNrAtitiSQEO56JDCrUNQEkqVyqXaJVf+Jts70iz
         TEMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762453623; x=1763058423;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79lMv1S4sZVnamUdtp6ADko+gKgG2fiOZl977EobktU=;
        b=ulWdE0LHborR5tBjQmgo/eMNN02n4C6f7ld/C/ybH3l0VXkFGUNAR+rs2cAprYSVuG
         Mt56TuIYttKdcVB7MW1GCP51Al7nJomOOBKunMD20TDySR3RuLw9jMLGIJW/O5da+Mip
         P2TZvqPMJd+qxf2N3p7fdF1QTLLy6/DP5B1/gnmhxEdo82E/Joh6biLUA2apZzpJlROc
         cutgmQCe9iPUX4iXg1SZxe/Tl/XfFHuGv2N0nqbRQiKjhKqAoyqGXfP8Q9P4OuA07I6D
         8n8XK+309Heu+D9mxX83toJm9DKpnnMpJSgHGKyiKT2I0uEj1T+BZNbFOZMv5i8+U7lg
         tWOA==
X-Gm-Message-State: AOJu0YzVO6mSXeK8D9dmls9ofTnfsLvvY+TO1l0YE7cvjkUNF7PFzMO7
	pzH74xJiI186JjMXe4ECE+DiMSqc0cewCaUoPU6tjCv/3N9aIc9j2OUP
X-Gm-Gg: ASbGncuBor8j6NJCG6Sk8aPgRVcQn+4yjowVuF9NTNEP6o4MegHH3w5G+Nk2ZJtsD3U
	XE3ddSef+jxm8DZj0izdy0eOD2hU2SiWf7ku8pVz3OzeiPMZFzUFjZD9xiU7w046n/6uUqi9Yta
	ZOwyAADrcR/TVM+tkFN/LV+Iw9jT3aIwvHjYlcJqfyK3/Po23bM1I6TY0v7MZBwkCsQ41zN5xB8
	4Yyhz4EdGK/stjEegh4bZxtGOEvtEiR9WM1Q+e0O+9BZmwR1O0/VDGl7OdXV1OtXP+YIWhgoMH7
	7TDGW5QMlbi5CB9Z98vVTeHhR2B/IroSwPdIDRgt+X5YzAs4UDWNmPkPB/fW0F1DA56yatJN0ka
	D7gmnkR1LmDPQZVdOGcSniYGIBaL0c5+6q4I8xga+rXR4zBzHm53qAwEOlKJD4EHaJOY2vnxxiE
	6gLdss4Rv1OVwdcEb1Jo8=
X-Google-Smtp-Source: AGHT+IFEr+p9Bie/+QNf8J1PkpnQpy41SStNdukAJZkuo0Gbd8U5ncUi91MA0dqv6sAvfIgC2NwmCQ==
X-Received: by 2002:a05:6830:719e:b0:7c6:d062:aa95 with SMTP id 46e09a7af769-7c6f0036b9emr513418a34.16.1762453623552;
        Thu, 06 Nov 2025 10:27:03 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:41f9:c9d3:db30:c36a])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c6f0f5f635sm134559a34.14.2025.11.06.10.27.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 10:27:03 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	jbx6244@gmail.com,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH] arm64: dts: rockchip: enable NPU on Gameforce Ace
Date: Thu,  6 Nov 2025 12:24:36 -0600
Message-ID: <20251106182436.771805-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Enable the NPU on the Gameforce Ace.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-gameforce-ace.dts    | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
index b98e1a3369dc..e8ad525ba3f9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
@@ -842,6 +842,10 @@ &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
 
+&pd_npu {
+	domain-supply = <&vdd_npu_s0>;
+};
+
 &pinctrl {
 	audio-amplifier {
 		headphone_amplifier_en: headphone-amplifier-en {
@@ -1032,6 +1036,36 @@ &pwm13 {
 	status = "okay";
 };
 
+&rknn_core_0 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_1 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_core_2 {
+	npu-supply = <&vdd_npu_s0>;
+	sram-supply = <&vdd_npu_s0>;
+	status = "okay";
+};
+
+&rknn_mmu_0 {
+	status = "okay";
+};
+
+&rknn_mmu_1 {
+	status = "okay";
+};
+
+&rknn_mmu_2 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcc_1v8_s0>;
 	status = "okay";
-- 
2.43.0


