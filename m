Return-Path: <devicetree+bounces-95169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A1E2F958430
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 12:22:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5F7122831B7
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 10:22:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B67D18FDB0;
	Tue, 20 Aug 2024 10:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fpOt9+iM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC7A218FC8C
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 10:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724149190; cv=none; b=UFXHV/m+AfkiIcXqGrpFFg1dImnYYPBFI0hFf7rwCja0Ni80oFBnMvDeLPkOmXX8oVjIoX3Wds0BX0Gf4vDlDOIGxqKJKYL+LzYX1CDM0AK1tmKqDcUHaU/Imwb4WFN0DWJTh0EVhjpWU5PTgYVGq39VxzP/4Tww5z8XobLKioI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724149190; c=relaxed/simple;
	bh=/tKUzOHrRt266Tu45Ds7SUJPkjzc5fK4AjYP3mwcytU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lenGjjgV6igOTvNWzA9JXnY+Hv7Ju0S9iJgVcDGQawQIBLnXw23RAwwdfneUW+ukNDlqW2OT4vlB6heiXBFu73uMXV+aZ/kjXuinbUxyHzL+3Gdd0O9FQrMRN311u5wHITyw3+v/jwNRqsB9c/fIOAottBvem6JdM7XieOiTKg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fpOt9+iM; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-371b098e699so2354451f8f.2
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 03:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724149187; x=1724753987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aBK2n6/pFj/ILXvmSt1CdVdmwT9MRszPiHjEVvASYLo=;
        b=fpOt9+iM184UDLNogONTc0yYH4D3mA3PvH0xS4GwinBQmIHiajeq1RH8+EAzVbE9cO
         zgb4UkoqeHrRwl0gIkMW+siHWmU4OEyTZ1LaY8xIytGySFooGUuJVwIyARnXnLACQFDV
         lNJ3aXuZkHTMEHTfV3GskoiPr0T5NlXCIX70AUESMlC45RqI7mD0Z6NK6UfFKuZo2UT8
         NqKK7A9QghRDl5TVjkFk9YsJ5S8rgMSr0lmAqVtbDPH/n76i30la3sOWWXiH6FIco4Dg
         EFVzN6Q6PAZSKT45AiPxJyklaThYvL6PG9egdsKz6MbScB3Qhqm3QiouW2Pq8TUvLkkC
         lQ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724149187; x=1724753987;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aBK2n6/pFj/ILXvmSt1CdVdmwT9MRszPiHjEVvASYLo=;
        b=xOw6ucOH1o/lNKTBPLIrQbuIQGSOQVHD0b4JtmXxIMNDK/J68FVxKJFD3K6xB0ddEV
         AzHQ1L25sG49o/28svi4g0iSiLKeikEnktWCp2hNUxGL2wEozisv/ZXvfho1s5xyZv9G
         kagopQr0feZCT/lJuFf/L4ZuItVmXBRorXF8Uvr2FAVdxZz5cka9HvhfLsnJjeO3bFKU
         WilZkeIO3dSasqemoVanev2Hv8Fqnjq5fV78A+f99aOD7z8C1vcVJjqVEhxf5ek43Tax
         t1/6mqwE+PpFe5GmIJNPguL6kI+zQofsbfCsfbl21aM/7wQP1gjjVbcqwZ0EhJHCsAnd
         miGg==
X-Forwarded-Encrypted: i=1; AJvYcCUsjSlt5EH2CRCK7ib12w9qbyp2oiQNNcOnA0SBGtjSoeJTYQx95i8eCsv3XDY9B4XA+WOuMENrBjJr@vger.kernel.org
X-Gm-Message-State: AOJu0YwgD48HH3QOsetVErdKG5s1DCIuVRoZuR8BNMIPw5iY1gX6wxUF
	dFNbWWL7lG2k0/60o3l1/R/fmUANK3pk2To+mrae5HsrkEEyzs9SVeL4MMvy/I4=
X-Google-Smtp-Source: AGHT+IGOhXXhbrXYtNIqlBM6EFLynq9Nkm50wQEMf0Wrby599QYliScoeHDmNCsdfFrFuBUGx/PJKg==
X-Received: by 2002:a5d:43c7:0:b0:368:4c38:a668 with SMTP id ffacd0b85a97d-3719431566fmr11712818f8f.9.1724149186736;
        Tue, 20 Aug 2024 03:19:46 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a83839464ebsm734550066b.155.2024.08.20.03.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2024 03:19:46 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 11/11] arm64: dts: renesas: rzg3s-smarc-som: Enable i2c1 node
Date: Tue, 20 Aug 2024 13:19:18 +0300
Message-Id: <20240820101918.2384635-12-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240820101918.2384635-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c1 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 8a3d302f1535..21bfa4e03972 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -32,6 +32,7 @@ / {
 	compatible = "renesas,rzg3s-smarcm", "renesas,r9a08g045s33", "renesas,r9a08g045";
 
 	aliases {
+		i2c1 = &i2c1;
 		mmc0 = &sdhi0;
 #if SW_CONFIG3 == SW_OFF
 		mmc2 = &sdhi2;
@@ -150,6 +151,10 @@ &extal_clk {
 	clock-frequency = <24000000>;
 };
 
+&i2c1 {
+	status = "okay";
+};
+
 #if SW_CONFIG2 == SW_ON
 /* SD0 slot */
 &sdhi0 {
-- 
2.39.2


