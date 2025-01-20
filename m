Return-Path: <devicetree+bounces-139708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 43501A169CA
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 10:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 020851887AF1
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 09:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BA071AB6D8;
	Mon, 20 Jan 2025 09:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jnl6YpnW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F20194089;
	Mon, 20 Jan 2025 09:46:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737366403; cv=none; b=m8A9CbO9vTRXm7GUXUPd4JXBQ2+NbUAFUKqGXAGL9ojco4KerTHmeJp6su9sVRkakgA9e21afUlEYEEaW8De5/Hz8xsrZESUdnf57ew4T+iH0vxMlodNYKmAR9eRkFFPz7BqrRTC1tBBka10SODL/dH8YpRqteDM/QUsABX6jKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737366403; c=relaxed/simple;
	bh=RpSR9aKkbWRgfacKOSdvE1hTVEa5uy8lYd+oEjn5u0g=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LEbeJFjfyjXRlciV3fdOq2lKnZR3n0cM5wbmpkujXAa1tFNT87X6jCv3v2UiJ3ry9ERak7c8HfxyoTQieNlZEe3Nm2tWEbjyvrkNXFoKANJZUPGuPU15U1VeHE39ljLovK25IUsQQ7zPlZIbsgJEOIFXJFRz3CGr181ej9SiMbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jnl6YpnW; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-436326dcb1cso28767235e9.0;
        Mon, 20 Jan 2025 01:46:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737366400; x=1737971200; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KS/16UvSfEHeMPEs5zPlC9256JErSLdmqszpJR3Jvck=;
        b=Jnl6YpnWSUA9l5PsfbvOAlforzL4oPhhk2qa5to/KcxUWQ2rjNh4YqTrBoM2IaZKvp
         0T/J3puRNwesuai8rM6H1uCz1Xlk0StiA75lqshtY1I0VCQfdUqQ4C/plmxKvgDNpeO1
         FA9mJrYNOZ66wOdwvQNbAH7tGtXBGneiMwuAoxImmol4X5GtJhQmU0mx1fqFiD1SHGlc
         GtwAw5c28scjDnmISXnXma9F8WcdRS3lMeac1w+8rmwXQ8ssVzIaqQVk+gw8iAPldZqR
         CBiCvaetV9HrLmJkAJd3v827wcVS2cyrwSqPROfix5Sq9GVuGU6XdhGoDHVKR/pCZ8qf
         80jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737366400; x=1737971200;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KS/16UvSfEHeMPEs5zPlC9256JErSLdmqszpJR3Jvck=;
        b=h11V3Y+f0WxO7vF8AfoM2mXmG6WzSQiguGsErHXgje1eBatPgAOiFeV9arDBSNJGk0
         p74+y8ZzijtYGo5tZ1+jvp2Qv6Pu5S6QGBrMIAAEQnvzs0aldwSQzeHjcAlFb4nOe3c0
         ogOGwRMAFxw/6jyb0ks7O4bZNZ9ivewt7n7QdV5LQvTBan8Km29QfyIQbIkbhdSWyoM2
         w4J1zdmLpelumwXh9g2sADdTWn/iloBR2dUzIWYw+tNJRVx4fsskVd+oXuJ8hH4mxYNF
         xg21yEh332rBEORGASSz2txJqzQ2tdkeyx+eC2FlI/OZ7BZFWognGFjXpDz0ocRzPE/b
         7G2Q==
X-Forwarded-Encrypted: i=1; AJvYcCWnT66/5OJE7EZGwbWzawekTH/pX7bsPsCw8nFESBZK6W4KFM5YX2nrhimToS0M0SBYtBvrs3mWMtX26W0=@vger.kernel.org
X-Gm-Message-State: AOJu0YzIDltHyEVHh2BYoaBLa0FNeQ+Ue+oba+Rfu3TH0wpfJSpbxsr8
	bTKyzxDe0hKMpWxm9VNiUToESAfYJoZy2GJqH4bBG5P4d6hGxEmf
X-Gm-Gg: ASbGncsTefulh31bcYcmKgPSU77TsmJHUA15Hvm70iem0iUVKlC1tjv6Ghx0Zs16lx+
	smxRa+1/SXJ8YtztzGgPr/U308cV+W8FO0zX+oDbtMkGJ08mesT8VYlBNE0vmaDBSPj20MS6ndW
	j/hFUO0m2TzHfQGJVE+lUO3bECYtOPEda9x+J/GAqYpNU/m0KAVu7UFFIy362oIgrpIprbnyRS4
	TsyiJ/CGOhBtWcHq05z2+h6RE3c6UFFedfKDYBe28cYAQBcAS1iwTCtggmVDplfhwEFHSXRAwOO
	EBNbKMssKQ==
X-Google-Smtp-Source: AGHT+IE/e8Y0UzEMao6atgZUbcfEv/3tvajzHUJl3OU3gm5cGx1+LX4SFiUZ76g9wAqK/F4I8/8cRw==
X-Received: by 2002:a05:600c:4894:b0:434:a7e7:a1ca with SMTP id 5b1f17b1804b1-43891427762mr99548035e9.20.1737366398007;
        Mon, 20 Jan 2025 01:46:38 -0800 (PST)
Received: from eichest-laptop.toradex.int ([2a02:168:af72:0:cc96:d269:5cab:960d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c74c4e38sm191197065e9.21.2025.01.20.01.46.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jan 2025 01:46:37 -0800 (PST)
From: Stefan Eichenberger <eichest@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	kernel@pengutronix.de,
	festevam@gmail.com,
	francesco.dolcini@toradex.com,
	shengjiu.wang@gmail.com
Cc: devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Subject: [PATCH v1] arm64: dts: imx8-apalis: add clock configuration for 44.1 kHz hdmi audio
Date: Mon, 20 Jan 2025 10:45:22 +0100
Message-ID: <20250120094632.13894-1-eichest@gmail.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

Currently, HDMI audio cannot play sound at a 44.1 kHz sample rate due to
a clock frequency mismatch. This update resolves the issue by allowing
the sai driver to change the clock parent to AUDIO_PLL_1 when the sample
rate is 44.1 kHz. It also ensures that AUDIO_PLL_1 operates at the
correct frequency for this configuration.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
---
This patch is based on the following discussion:
https://lore.kernel.org/all/20250113094654.12998-1-eichest@gmail.com/
We use the existing mechanisms and just add the missing clock
configuration to our device tree.

 .../boot/dts/freescale/imx8-apalis-v1.1.dtsi     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index a3fc945aea16..dbea1eefdeec 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -790,6 +790,22 @@ &sai1 {
 	status = "okay";
 };
 
+/* Apalis HDMI Audio */
+&sai5 {
+	assigned-clocks = <&acm IMX_ADMA_ACM_SAI5_MCLK_SEL>,
+			  <&acm IMX_ADMA_ACM_AUD_CLK1_SEL>,
+			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_PLL>,
+			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_SLV_BUS>,
+			  <&clk IMX_SC_R_AUDIO_PLL_0 IMX_SC_PM_CLK_MST_BUS>,
+			  <&clk IMX_SC_R_AUDIO_PLL_1 IMX_SC_PM_CLK_PLL>,
+			  <&clk IMX_SC_R_AUDIO_PLL_1 IMX_SC_PM_CLK_SLV_BUS>,
+			  <&clk IMX_SC_R_AUDIO_PLL_1 IMX_SC_PM_CLK_MST_BUS>,
+			  <&sai5_lpcg 0>;
+	assigned-clock-parents = <&aud_pll_div0_lpcg 0>, <&aud_rec1_lpcg 0>;
+	assigned-clock-rates = <0>, <0>, <786432000>, <49152000>, <12288000>,
+			       <722534400>, <45158400>, <11289600>, <49152000>;
+};
+
 /* TODO: Apalis SATA1 */
 
 /* Apalis SPDIF1 */
-- 
2.45.2


