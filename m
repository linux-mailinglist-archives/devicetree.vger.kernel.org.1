Return-Path: <devicetree+bounces-134456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 225899FD7DB
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:26:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F6FF1884934
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:26:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7CAF1F9A83;
	Fri, 27 Dec 2024 21:25:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="XaMZ1kzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE8F01F892E;
	Fri, 27 Dec 2024 21:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334750; cv=none; b=YhmDcsHOdIZeKgI0C+KOugxQgpYmIGQP3Bn9HQvlLhC1Akrpu0D/X76aAyCmkf59tQGTZF2LJcMESpih+FBA5x/5OY2uLp8PRYcBfQw81oNSvWQ96Ok3DSb1DmuOKtQWEFGNt5JsIjEBZOcyF4/KnaRveX2FBqvxvgpgXDSAPG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334750; c=relaxed/simple;
	bh=5oHMcGAOEe08omAMOA+SUtPgxp0ApYrUHPNw1JHCy8k=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QR/wlHb19feBUjlnssmwwOe116FlcIIA6BAUEwN55PjeHvooqx3k85TWVx4dq1LcUV3N22rqQPOlCLSOVyxzhFkTUKU5rap2c5t8EFXAg6WZoG1ZBf/Lq+pmha3oAHWJUz7UjhpfGQ+gF6PP82VdtyC8aa2o4UsQ945x1h5Lm2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=XaMZ1kzJ; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-5d122cf8e52so12648704a12.1;
        Fri, 27 Dec 2024 13:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334747; x=1735939547; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZExEvvNEuW3dV0zU0cRZTKoF2QfayutIaMaf9y7ttFk=;
        b=XaMZ1kzJh4sqD+Pulc8D3eJunKyj4ctbsKxEkJ01+w5IgGFdOKA/uCrCqYaK16mSON
         NGgXyZXL4uHtxnHjV4YPss1nMrnG6rHYDpNmT7KSEALjk7W+CUzWlYK60+gONFOVODiA
         e5eFig5gXbcoWFcZdTTMXMo+mkbJ4Olmsh9tC9JlGK9MsL8Uo/2v41JT6+y3Zz1EM1Mb
         dCqKHgeXLUcnKgP8TIfjZORnMlSmUxt/R40NlSIZaITesD7j1SkriUz+5zq3Zs3eXX7W
         dAmfw3JfEqhtstm6VB1H75XzTxgqg4G97cvWBIwrWqfVTgFVHS/HAdc2YzUDCNqu2Y+y
         AixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334747; x=1735939547;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZExEvvNEuW3dV0zU0cRZTKoF2QfayutIaMaf9y7ttFk=;
        b=BT8Mo37dEu4nd+HNrIiXV34D4IJWKZ40hWAnLfnrmWpIEMmKruFuSgFSJAD1aVVjAf
         CMbtBS1Djji+zGDHPnb+uetJ8wpuF8J7H+a2HLZrXVUX4hJmu6bmBxiECG38df5TGlLT
         vkIIUlrwtmEfOrYtECKkWk5AoOWb3IG9Nz/ZCAxWyrIirTJZ7wWnIQko6QaQ0tpcl4DW
         hprD6xfLGeOvOfaDHqz3LM5rdAo2rurhIKlpyvnVhhsUTm/hnt6J75cVt3IwPut3EXt+
         O2gkDUbEq7BGQpz6DHMOtjpgI8Q0fAQqcgUswsypFZqQKd+XxYp81NPcg/dud5jb34oA
         CwtA==
X-Forwarded-Encrypted: i=1; AJvYcCVhqPE6+M6OCR8CkB5wpbtN1tjbVvc58FrmNx0BnavwA6XiCYvxmDrNxdMgvZC50b55JbBlKPzIKeUF@vger.kernel.org, AJvYcCXSkM99rGzn4TyIkHI1ioY4bK8y9uwsShRjhFa42ZOq58sfMHIpDJkfAeVl2aUY5+xUMk3aI26VNMwpnvrO@vger.kernel.org
X-Gm-Message-State: AOJu0YzvaE3bkH/1Q6+mHwpk2jsn8tJGBmr0TXqf3Y1nf5WqUabP2Wtl
	76IWFpojSJdkXOAHBVBQplc4WnDES4k8d1olDDfB+CIxvphW+RiS
X-Gm-Gg: ASbGncv85vI8mg50qXr8dxDWyBuKBTvMTtKXi8XhRFxw6ef70T/gHN4PipK4XPKLTS9
	wDIiJZMPTQPnK3HNcmTmdItLQ37/oie4IdH13AZai7r0ZGDVA3hvCCyiVAJjh+eBA6LX6ruOLBI
	XzgCSzePefP3KdeBRq96VuC7T5dGQLSl+8a6Zvlxx/LuO4bjl65cTEtSXg9EtZrHaSyYo+Vbuah
	QRy8F0slfKFKMi2UqH5dFEZK/uuitgerf1yo6egGcvfmE5t88gxKoHvaalwLP37SPI165K41yrF
	JYp5B2c+/9ReR2qAmG8Q8j7aguzH6Qfq472YIzdgvA2E+4EaJZot1je0kGjvEqRwf+rwtbWi382
	XQhBYUSQ0L1qjbV22Fi4HTLYavg==
X-Google-Smtp-Source: AGHT+IFexFOv7Agh8zbrzXXZCyg5le3bhbK9E3nZVfHuFx7ohPUZ1y5ALrIUcLf5zBtqatdc4/rIYw==
X-Received: by 2002:a05:6402:27d4:b0:5d3:e8d1:a43 with SMTP id 4fb4d7f45d1cf-5d81de22353mr24717574a12.27.1735334747043;
        Fri, 27 Dec 2024 13:25:47 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:46 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 4/5] arm64: dts: amlogic: axg: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:13 +0100
Message-ID: <20241227212514.1376682-5-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
References: <20241227212514.1376682-1-martin.blumenstingl@googlemail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Use the new PWM controller binding which now relies on passing all
clock inputs available on the SoC (instead of passing the "wanted"
clock input for a given board).

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 24 ++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index e9b22868983d..a6924d246bb1 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1693,8 +1693,12 @@ sec_AO: ao-secure@140 {
 			};
 
 			pwm_AO_cd: pwm@2000 {
-				compatible = "amlogic,meson-axg-ao-pwm";
+				compatible = "amlogic,meson-axg-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x02000  0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
@@ -1728,8 +1732,12 @@ i2c_AO: i2c@5000 {
 			};
 
 			pwm_AO_ab: pwm@7000 {
-				compatible = "amlogic,meson-axg-ao-pwm";
+				compatible = "amlogic,meson-axg-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x07000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc_AO CLKID_AO_CLK81>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV5>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
@@ -1806,15 +1814,23 @@ watchdog@f0d0 {
 			};
 
 			pwm_ab: pwm@1b000 {
-				compatible = "amlogic,meson-axg-ee-pwm";
+				compatible = "amlogic,meson-axg-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1b000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc CLKID_FCLK_DIV5>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
 
 			pwm_cd: pwm@1a000 {
-				compatible = "amlogic,meson-axg-ee-pwm";
+				compatible = "amlogic,meson-axg-pwm-v2", "amlogic,meson8-pwm-v2";
 				reg = <0x0 0x1a000 0x0 0x20>;
+				clocks = <&xtal>,
+					 <&clkc CLKID_FCLK_DIV5>,
+					 <&clkc CLKID_FCLK_DIV4>,
+					 <&clkc CLKID_FCLK_DIV3>;
 				#pwm-cells = <3>;
 				status = "disabled";
 			};
-- 
2.47.1


