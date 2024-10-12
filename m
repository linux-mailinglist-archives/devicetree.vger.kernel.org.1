Return-Path: <devicetree+bounces-110656-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAAC99B597
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:41:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BAE891C21494
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:41:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AFC19CC2F;
	Sat, 12 Oct 2024 14:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="NX7zJbNO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2F519C55D
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 14:40:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744029; cv=none; b=SOJ/u55jMtv7tNWBq8Nwh7+AHyXaFORZIqj3B2vH7a6aWofMRQi4ORU9xhA5um6m6hbi9fHXoXPyssIXGmU4x5lS0I9BOdGH7YzIBzUO4f6K1NjeQoZsDO3jyCtRQ4JqjhvVftOLVFgIEFaHSojmYZNXAFhTs3CUS7pe1hlIs88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744029; c=relaxed/simple;
	bh=B9BqpeoJguVWS7gI+XD6rHIo0W/hrym3/3+lBaC2IGI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BUBQXxt+OzEAfygja6rzO8DQldRDLrrELgH+6OEBI1UYTcJPlv+QDr1ksEJ/WxWaDz0mYXujBZ4Fo9Fb9Qa847Hcgg9IBUKgV47iw8Y2Ky9JKcz/R9+B+/cEFT+ty2uNMdTX6FfmUXdXSGnoMxRtK6Mcq9M7Cobw2ipxQI/NrG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=NX7zJbNO; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5c94a7239cfso699334a12.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:40:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728744025; x=1729348825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gttVsMS4Fqvh3Tt7h6KmD5HQ1g1j9lzENne/NicL/Zs=;
        b=NX7zJbNOfbKf/KKnMOH3OzSOSHkRmtG/aoKuZtiCfTLcopL0ILWVOszScAvOnIEF/x
         2FWkB8s21SINy/cVVwabh8yuLrO88ayke2aMwjjjNM/mfSzUGG0FQh85PMBIuwQ7yV0s
         n5M3DwkmHe5yW/NQSiT+pH2Y2H6XOHkPs3JTbxbhcg9HqS952H2vxMtYcfi74Skjx6dt
         ZgIgjkoyjxibJVoRWSM6PI4aCyi6FDeW/TF9KCP2psrtgeTpv8rJdDV5ecgF4gaseFUW
         cSohS1033Y28wr6884d40D1jS/o31qzQT3YFjhdssaKQC+k95aFCQ62Sme+fHQL0hCTh
         B4UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744025; x=1729348825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gttVsMS4Fqvh3Tt7h6KmD5HQ1g1j9lzENne/NicL/Zs=;
        b=brKBkZIXyK41s0GBNfiSeJP/ywnRKERy9xolT8kV8J9lijpO6q9n/SByzfc+oIFU9/
         Ord7qz0jNyNEVp0vU7GrQRpo0Kx0siAFkO91vsl6A8hdKa+PVk9w+kHhSODY+m9nB+pk
         1pHibSgtsAMAVnTHsNPfyWdilOEUw9lJqCP6j+fQ/O90PV0+0kDkFY13QzVoC9KjJ/2L
         SQuY1zOUk5+OuKaa1wfieD71Sh3s6/YKo0HDJszAETrVURk7157eYDe2exTjL1Mzlo4I
         CziHWJrFnW20aXFgss2PSI9/HU3wWNTd4czei+qCqm69SO30ro+Y6qHEFqP0sq/iusfc
         HdUw==
X-Forwarded-Encrypted: i=1; AJvYcCVF4oTbZT51kaZq+dTxpMa3qVV55LrV90VDSdV0IQbFYxFN/7COZCHHrJXzaDrbZiZ5JQlXI0AEU2sb@vger.kernel.org
X-Gm-Message-State: AOJu0YzeBqggvbHsN+Zgr6HlCcBUG0UwIMUrotA/2YLBonnvLQtfvS7t
	Ccuve/ZA9bOPClTCiOCZ/simb1LbU6ns8lxEawcn/3XL5PuEmZp/WM0EPrSzgJs=
X-Google-Smtp-Source: AGHT+IHt5b4bByB1WvcuC38k97IWVU58hfVMsjj5FiJWbVwYm1/FeLRBTfW/P+tmVBSwJRaQRUR0MQ==
X-Received: by 2002:a05:6402:40c8:b0:5c9:34b4:69a8 with SMTP id 4fb4d7f45d1cf-5c95ac09860mr3965894a12.6.1728744025513;
        Sat, 12 Oct 2024 07:40:25 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a80cb013sm328446266b.131.2024.10.12.07.40.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 07:40:24 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Sat, 12 Oct 2024 16:39:31 +0200
Subject: [PATCH v3 5/6] arm64: dts: ti: am62-lp-sk: Add vddshv_canuart
 regulator
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241012-topic-am62-partialio-v6-12-b4-v3-5-f7c6c2739681@baylibre.com>
References: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
In-Reply-To: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1333; i=msp@baylibre.com;
 h=from:subject:message-id; bh=B9BqpeoJguVWS7gI+XD6rHIo0W/hrym3/3+lBaC2IGI=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNK5utxEp3dO6Us5KRkTecpIP3rpPckzfV6XN1V8ltM4O
 avp0X6xjlIWBjEOBlkxRZa7Hxa+q5O7viBi3SNHmDmsTCBDGLg4BWAiU08xMky9qLng0OL70vHO
 t45nefrmlZ6pfP1YZt2SqfxTfy8QO5LHyDB97YNZf1KYS0M+7/u57mBcRdhGgzOSMpyT3TR/8WR
 N72QBAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

vddshv_canuart on am62-lp-sk is used to power a few units specific units
of the SoC that remain active in a special low power mode. Model this
relationship explicitly.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
index 529360b5e6fe052dd99f04b74c129193922f76ac..783ad65e6165ea74010c3240069fc6d99a0cd035 100644
--- a/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts
@@ -80,6 +80,17 @@ vcc_3v3_sys: regulator-5 {
 		regulator-always-on;
 		regulator-boot-on;
 	};
+
+	vddshv_canuart: regulator-7 {
+		/* TPS22965DSGT */
+		compatible = "regulator-fixed";
+		regulator-name = "vddshv_canuart";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc_3v3_main>;
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &main_pmx0 {
@@ -242,3 +253,11 @@ &tlv320aic3106 {
 &gpmc0 {
 	ranges = <0 0 0x00 0x51000000 0x01000000>; /* CS0 space. Min partition = 16MB */
 };
+
+&mcu_mcan0 {
+	vio-supply = <&vddshv_canuart>;
+};
+
+&mcu_mcan1 {
+	vio-supply = <&vddshv_canuart>;
+};

-- 
2.45.2


