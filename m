Return-Path: <devicetree+bounces-119362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D8329BE0DD
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 09:27:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5ECBC1C22E21
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 08:27:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE721E1C0A;
	Wed,  6 Nov 2024 08:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="GlHz16Qw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F391E1020
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 08:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730881226; cv=none; b=KohO5pSn1Aj4d+b5wY6bA8mWkdsU6SCwMANgvPeSOIBisdpcPFvegOmlZZsc58/BioUrBqWtGY5nU0fXdZmt0AyaWaikXYx/9K9F5QkbjgGCqVNX4vxNjaNVSa2q4sfJbK5o/el151c40Lca/b5HUuujv6ly+UerKWmPDpAv0LE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730881226; c=relaxed/simple;
	bh=6ZBS8yoSl8e7ZPTGMg2UyhR7znZ3Gc2T8qHVSpD0i8U=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=METlwPlhB2VC/7TKSyxWBTX3wdrOi3RByg4r3PBeXgOC8FlHtHrUC2PYdrCzsSE9Spzrq9TxkFLOza+9VfDZ7SuKsjrit506CnyrizlPXZtNutBW8R0pavTfUJQ9GWFIswpuzv74aKf+eRBtuxBKcJNlTvqHl1HTaKApplrucOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=GlHz16Qw; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a9e8522445dso662095366b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 00:20:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730881223; x=1731486023; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MBiWX6XkkMqXMqcrSsPCTgbOs43GqvRK4CKUfvJFsTU=;
        b=GlHz16Qw2aO92U/o5c8JeSPUcTCOib6PKq+0gmKujjQ5auyDXFm6cIpL6V3Juad9n4
         0XGTGGTaHWsX1eJRig5ZGzpUFV8qwYS4EJiEqgEIqKn8SvkA3pJoyy+j8PnD8+SF9bz9
         gXM6FocTS3PUt3yXH6DQdFIYsi5+itTBnJgebjDb3IQWRVgu3iWkiifXSFa6pP/dzvDO
         dAD9X/iHzVRKxZZ4Uvz7inxrstjClygriM4Fd7FRgxQReFFrdlO0Q+J+9F3VawEnB0Jh
         EDrQ9l9FBAb4r++RnPxBzncex6oRD9Iyio9D/EZk265mDp53brX1NMcpuKP/pUzaydtc
         QIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730881223; x=1731486023;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MBiWX6XkkMqXMqcrSsPCTgbOs43GqvRK4CKUfvJFsTU=;
        b=jAo9X2hgtoKwaWshBSvIIVfCS4WkBD5z4hSezb2UHhr1hRw34am1knn2i/3jkG9JNX
         Yq+jbvrMr6TY3T/T1A33IPCajGUUoJwA0A22ZTKucnh2n/hm2nbli2VpIJYBeURgOPVd
         axz+pfhnq3VHj1wJ5pID5Id3Ryfwmm/GgtKsYKwsiCy+WLKwZUMIrNXlu5bdMsQPCgPB
         Li8pVMv5UDc1MbPhXNHrN9zrvxoswGCWP88W49CClyCJVJ1YrGSeZckTwMlDYDcnOa9a
         0jsmnUZ/5W71fTIfN25MoUZenHJMm31U5qi9zIyrhZMmpmpH+e8/2w7KFl5Df0x2QF9x
         U8ow==
X-Forwarded-Encrypted: i=1; AJvYcCVBuRJa8fax9ch1KxYK8FpJrry+MWQcO82vGMx6NJwypViw7MktcElYicGFViIhI5Tysj0CcBhPmmNf@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2RvzfBNa6OBBLDavBQ6dg53PxboVfKf94Y6EQLyvUIvmA4/f8
	UKEfgrIADtG7i4rvyF/56b2VuRSnMAyUfR5Qjos0ctR6XITcQ0lJHn0OJ6W836w=
X-Google-Smtp-Source: AGHT+IG7wiJJ9E52zFHeR6gwhEEB0zfvQGumHjoKijM/1DIeDaxswQrTqJ71Q4hjn7DJ8sgHmyJ14A==
X-Received: by 2002:a17:907:3f05:b0:a99:375f:4523 with SMTP id a640c23a62f3a-a9e6587e27dmr1931943266b.44.1730881222848;
        Wed, 06 Nov 2024 00:20:22 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9eb16a2dbcsm241369766b.40.2024.11.06.00.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 00:20:22 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	support.opensource@diasemi.com,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de,
	Adam.Thomson.Opensource@diasemi.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 31/31] arm64: dts: renesas: rzg3s-smarc: Add sound card
Date: Wed,  6 Nov 2024 10:18:26 +0200
Message-Id: <20241106081826.1211088-32-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241106081826.1211088-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Add sound card with SSI3 as CPU DAI and DA7212 as codec DAI.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index 6dd439e68bd4..89673bbaee6d 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -44,6 +44,23 @@ key-3 {
 		};
 	};
 
+	snd_rzg3s: sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&cpu_dai>;
+		simple-audio-card,frame-master = <&cpu_dai>;
+		simple-audio-card,mclk-fs = <256>;
+
+		cpu_dai: simple-audio-card,cpu {
+			sound-dai = <&ssi3>;
+		};
+
+		codec_dai: simple-audio-card,codec {
+			sound-dai = <&da7212>;
+			clocks = <&versa3 1>;
+		};
+	};
+
 	vcc_sdhi1: regulator-vcc-sdhi1 {
 		compatible = "regulator-fixed";
 		regulator-name = "SDHI1 Vcc";
-- 
2.39.2


