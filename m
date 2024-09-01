Return-Path: <devicetree+bounces-98829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58EEB967669
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 14:21:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8ADEC1C2103A
	for <lists+devicetree@lfdr.de>; Sun,  1 Sep 2024 12:21:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB84917B50B;
	Sun,  1 Sep 2024 12:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e9K/NuC5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C34E175D5F
	for <devicetree@vger.kernel.org>; Sun,  1 Sep 2024 12:21:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725193302; cv=none; b=nfTsX+hi9KdU3VqEvrkRLh+ltHHHjffNi/knLx/JX3kRtP9C9ExAn4vyoxxoZMOq+9f7eFyADzZixu1dcLxCI9vjyfvAyWTFZ5se+SdkDbyQxo/WaIN0Jy1RAmN/2t11DbR5/P02kJxu1aSiCZg+wqLEt+Atl6ZmqAaPNZpTnUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725193302; c=relaxed/simple;
	bh=kMkSswi3cJQEOzCI1FvFxAKA2XruX1VlmLHdEV9umyA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Jmv/oejbalFqMpLoNua2R7rtIsbsKl3920uD/yBKFgr2upj/PU1pbnHW7LgGTZ3YNsPOb/fBxIzbvzB5FzqqXmuwXuV6IwiTSlm/kLXyPbvDVF1rCyikf9WBBiYWQ35d7vnl7QYYN5HtJnHZRkI2b/MZB4heJiADMPQ7IK1eYO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e9K/NuC5; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-42c2e50ec13so10882155e9.0
        for <devicetree@vger.kernel.org>; Sun, 01 Sep 2024 05:21:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725193300; x=1725798100; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+MyPRlLasNmrOw4DOrVnxaytxIdGW4v/OBVoaI+Igts=;
        b=e9K/NuC5JMcmAmFFr4YaXn7LS4FYHEGs+TEgRjZR074vMGkOr1r/H3nukosFV7iUo6
         jCTvwXcaIBRBh2NF8Z+6maabn6oZX0CyFgYUtRCzErC/GlccZJIpXhRl82K9VOa0sfZs
         fLTFwvXrM//WxIu+gVVH0hz9671XRoDwTD9orTddEHCE7Sx+dcC12p1YsEAqGAXcLCcH
         4yywWKgmogF83rntR9BJ6W03lc/BfkJGT3Qt+EORrQZb9VwiCG/x7/ScWh/xeDhORpcb
         yyGhVP/ep9dPDRJp2Gjb4nwCqxBajII74lkJlSdqgFasMidB/YN+0KjS2k/nPzAyZHp4
         CbPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725193300; x=1725798100;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+MyPRlLasNmrOw4DOrVnxaytxIdGW4v/OBVoaI+Igts=;
        b=W+JWPWM9R7PMLRUBpKAfkHNCNWSduEWR1RZ4DdQ3E2Y+wDdoSN+6mz6hlrpKIoNUBP
         1cP8kkg8Nz4n6cwuM1lMA2oGigxjZycO1XJwQPJNe7d98ZbjpKjRDlpdlTmVvDmXpcb7
         FSADmp0kHCq5WhRcM7cn0CsGaMsF7+CrthSSF3P4Ywhh2ITk29aA3UL0ZlD+NucJvr3N
         RBE08+jVgR3MM+nPNpBcYDe8A8U813Mma57SKswcYENo6AJblqTNyfT4El/wHvdPC5lt
         gQjcJBu72dNUbOwo0F1073LIyIG9ssgxaSmCL1Si/2LXomsHkRmaIGVurwnCO9HM6esX
         Lo6A==
X-Forwarded-Encrypted: i=1; AJvYcCVv2k/RNrOofsAPeWG53XpNnIHFXjzY/429BuEKp3Gnc0GmRQQdtwhJDsEChusm1apaeiPLnpA2DNy3@vger.kernel.org
X-Gm-Message-State: AOJu0YxfqTZkq1FoUjYqhmkj9g6G339ZsDuTL7srdCRLfhL7ygiAIdFq
	P30tVtvYq40s+9+DbAqmk1WSzjVdOUumn5ujFaPaUoVS3WRHvs0x
X-Google-Smtp-Source: AGHT+IGxEwCIMs1vckP44Y0ObbyoNuVEf9RE6EeOjE/Zxr5ZsSmV+fTP4u6C/LtxynfdDXIfD/jxqA==
X-Received: by 2002:adf:a448:0:b0:374:c61a:69b8 with SMTP id ffacd0b85a97d-374c61a6a38mr972561f8f.15.1725193299078;
        Sun, 01 Sep 2024 05:21:39 -0700 (PDT)
Received: from morpheus.home.roving-it.com.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-42baf1b0c18sm121363695e9.37.2024.09.01.05.21.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Sep 2024 05:21:38 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-sunxi@lists.linux.dev
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH 3/3] arm64: dts: allwinner: a64: Add WiFi/BT on Pine64
Date: Sun,  1 Sep 2024 13:21:31 +0100
Message-ID: <20240901122135.1389702-3-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240901122135.1389702-1-pbrobinson@gmail.com>
References: <20240901122135.1389702-1-pbrobinson@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable the rtl8723bs WiFi/BT modules on the Pine64.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 .../boot/dts/allwinner/sun50i-a64-pine64.dts    | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
index f04f0f1badc4..1d514859e664 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64-pine64.dts
@@ -138,6 +138,14 @@ &mmc1 {
 	mmc-pwrseq = <&wifi_pwrseq>;
 	bus-width = <4>;
 	non-removable;
+	status = "okay";
+
+	rtl8723bs: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&r_pio>;
+		interrupts = <0 3 IRQ_TYPE_LEVEL_LOW>; /* PL3 */
+		interrupt-names = "host-wake";
+	};
 };
 
 &ohci0 {
@@ -303,7 +311,14 @@ &uart1 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart1_pins>, <&uart1_rts_cts_pins>;
 	uart-has-rtscts;
-	status = "disabled";
+	status = "okay";
+
+	bluetooth {
+		compatible = "realtek,rtl8723bs-bt";
+		device-wake-gpios = <&r_pio 0 6 GPIO_ACTIVE_HIGH>; /* PL6 */
+		enable-gpios = <&r_pio 0 4 GPIO_ACTIVE_HIGH>; /* PL4 */
+		host-wake-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* PL5 */
+	};
 };
 
 /* On Pi-2 connector */
-- 
2.46.0


