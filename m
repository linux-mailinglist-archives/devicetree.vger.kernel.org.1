Return-Path: <devicetree+bounces-168818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B421A94763
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 11:48:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BCAA171FF4
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 09:48:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECBCF202C2A;
	Sun, 20 Apr 2025 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mYVi2y+C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662B1DF98E
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 09:48:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745142513; cv=none; b=foZj0jBZv+WAHYixYJ/EZB6WXQL+9Sk9ndw+0ZWBAu3wIIVOEaUSiJJf/OiQH5hGiHRUckNqBOoir+zF2O40vt5YpI5UhyZybeIFa++nzFv4FfJ+dcOyIXrfLvBC6lTEGo4BX3JE5j+d9MGr448mw/+ebFTcQTamT184g1qGxQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745142513; c=relaxed/simple;
	bh=ANkoL7ea81UHYIa++4P/2uX3YHtTBEieOWgY8Mvo1F4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cmhCjTXRGsrMYiI5uq77yEYxEC58uDCkb6itVBxBH95LUa5Z23h4LK0yYEq7MQa9vbFdLNngR6iWSBgYlXQvE1CT+18ST7r1qs0eXZQkDykP6BoKkrulxWgV2MdfehUXMSJdTn5Z/Jmqx3YNYicWcmOc/py0CSXYKxDi3MM/wXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mYVi2y+C; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so15179035e9.1
        for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 02:48:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745142510; x=1745747310; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MV1KL0B4Ol1zLYcOywJS50VMsEVaOjK36lDCk5xYJ8U=;
        b=mYVi2y+CeGCJV/tyczxLKricLeZBvd5pUsnxzzUMP6IuoueAmHDP3ToYcgXkeetEKs
         o/UZCo68ZPNZxzVj5VJVFIaaFRNRdoXLTAi21f3tiYg9wj71s5tjafE9jejbjDJDIbaV
         xxV03ENo3ip6ofqY4nV3HhGDrQlum/TptLb+jMmXmhCuJkghpcq7UPI9yuxjI3ikdOst
         msp4ChWZNf0On0O5okWvuvQ+uL1sbBGmM0g2b42F+hgglRR0xLxrbxVi2CkDR0CEbJ+v
         9MRBEIovnbIROdrGtkftpPBedea5Y93v9Vd+x4/TCQ1B4uz2wt1PqL5XLhoSb7j7niCy
         16AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745142510; x=1745747310;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MV1KL0B4Ol1zLYcOywJS50VMsEVaOjK36lDCk5xYJ8U=;
        b=rznRQfl9k7ROTCo1+iuxlY68jBz6oeQ4+jDV/y8p62/DXK7aD5xL0vJ9qSAkYbfgKJ
         0fYnzDCcVNOYmIT3SD9H1V8u/JLG4sidoty26PgNedxHfDa5eBb5Ju/VYaxqdxba2ze8
         52O9r6MFUtLdfhO2nPdG+93OfECs/u/4BVY3FLCq8/ctIqRf9k8BlGtK5GW3BdPIOK7d
         lgcL9cVgXX3sR1WF0QFLqi1p79VzFBFPg3k+gv/5R0bn2GRbJ7BTBrxQvMQsd8YubOhA
         fEZrOugWFvVV0CbPca8Tyndl9D3Bn0d8rKn8IttGfsMQwBiN8NtmyG3dWe4CcydbBc/k
         hGDQ==
X-Forwarded-Encrypted: i=1; AJvYcCWqDWPdWBlNqJ7RsTa/XDi73hBVfFSGo2S3mOlWUi7VG1YVktuv+0cDi6GEGSDOjRBm2JjkuZ0kGj14@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8kA9jQ5RjgONnaeyOEZrpLs94A6wNLG3TbNa1P74sdblxOJn/
	KQQS4FCJO1GMsSoV+J14XNoBoC3/b4BN3zI9r+MmPlV/bk2KqAS5
X-Gm-Gg: ASbGnctp8UVcbY4laxwrlyKBs+yayUkjmYV/kprIUjHFevSpMttZcBA1TZADMReMelE
	N2BpSAjqa2j1oWgUup2FlNXklWjmDViCjW9n8x6W0eAgh8v+nPvB+zHLSUer/E/qXIQ5htiv5s3
	XXPEOd+nVVRIVOr8qWLOBspn+NZ/uc8HLrRUP9VZF5MZBgEDRp/s63qEhzMkWi26JVvCLzpBflQ
	8Im1HQsJ8w/TMJZUpAB550BGEQLo4Dq4bTSnJE0LPHY8tSyKJizsaea3b2Ho/vlPigmzWCLmpzX
	0NdCJz7XbQnrZlqHIo5quMmBPo1Se+CU/sDjucEdYoyBL5vawOpawcD3aGUz/hKiud2D8vTjTjP
	S2go5oQJFxNkux2GEB5iIkX1Ey7K48441sKEFssR69DIWLE43TpBK3cKURHCzuxq0VInNhhg/I5
	s=
X-Google-Smtp-Source: AGHT+IGLhlzrje0W/99vHutqnqraxOZnv9q3niHg6lZbOoS4HG8LPSq62S6s1AF4Tg3e6WlI1VcYEA==
X-Received: by 2002:a05:600c:c0db:b0:43d:10a:1b90 with SMTP id 5b1f17b1804b1-44072c7f6fbmr44810305e9.16.1745142510468;
        Sun, 20 Apr 2025 02:48:30 -0700 (PDT)
Received: from cypher.home.roving-it.com (2.c.4.1.7.3.6.4.2.a.a.3.0.f.c.2.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681:2cf0:3aa2:4637:14c2])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-39efa43bef1sm8273712f8f.49.2025.04.20.02.48.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Apr 2025 02:48:30 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	Dragan Simic <dsimic@manjaro.org>
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH v4 2/2] arm64: dts: allwinner: a64: Add WiFi/BT header on SOPINE Baseboard
Date: Sun, 20 Apr 2025 10:48:05 +0100
Message-ID: <20250420094823.954073-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250420094823.954073-1-pbrobinson@gmail.com>
References: <20250420094823.954073-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds all the pin mappings on the WiFi/BT header on
the SOPINE Baseboard/A64-LTS. They're disabled by default
as the modules don't ship by default. This includes, where
they haven't been already, UART1 for BT and mmc1 for WiFi.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../allwinner/sun50i-a64-sopine-baseboard.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
index be2347c8f267..231e652cab67 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-sopine-baseboard.dts
@@ -103,6 +103,17 @@ ext_rgmii_phy: ethernet-phy@1 {
 	};
 };
 
+/* On Wifi/BT connector */
+&mmc1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mmc1_pins>;
+	vmmc-supply = <&reg_dldo4>;
+	vqmmc-supply = <&reg_eldo1>;
+	bus-width = <4>;
+	non-removable;
+	status = "disabled";
+};
+
 &mmc2 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&mmc2_pins>;
@@ -175,6 +186,14 @@ &uart0 {
 	status = "okay";
 };
 
+/* On Wifi/BT connector, with RTS/CTS */
+&uart1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
+	uart-has-rtscts;
+	status = "disabled";
+};
+
 /* On Pi-2 connector */
 &uart2 {
 	pinctrl-names = "default";
-- 
2.49.0


