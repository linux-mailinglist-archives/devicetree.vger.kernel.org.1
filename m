Return-Path: <devicetree+bounces-114128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F6859A9E19
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 11:14:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A2D6E1F215D0
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 09:14:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DDE3194C96;
	Tue, 22 Oct 2024 09:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vePEQmpv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448B81494AB
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:14:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729588491; cv=none; b=R8juLKToCswBLc/e+0CkjPHmh2ZDeLDvaZ84iqe9TGQRXGeiaK6KDLNRnXVUSOg8LtYaYaDSwZ/ntQVcWsFcEQJPKuq4SnvdYkcWXt2+0wpK+GUzdlr0WRAy6lDtpZ9Lh2ymE2TUaI8Pl8Uy4E2RdeEiqbYyO0CGBQmSpdh0aX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729588491; c=relaxed/simple;
	bh=9Rz63naJQeoZCTBUPMYqSbKq2daM+l/XN5OHPrB4qTA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=C4F2dUO5ESMcttTct8Lks3Zfy87j1li7Y5gXsnYCBsmAdqJ5uzh3mTmxxkAFTurUNRuXx9QTZrHXNKbknUCqDwOb9gYrD3sZvK8xPgR5QuL1rmK5UUXqeBkv9JvOPRh/S3AkxQDKpCZ+rU/1UyyYNR2wMmoS0ZzsQXayO8l/B1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vePEQmpv; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d4821e6b4so3640727f8f.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 02:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729588487; x=1730193287; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hNY9c66tqdEr89O8GZ7lmBsXVwYahAJ2Bbpo7qBrmlI=;
        b=vePEQmpvZJTITJStfOJpCJx30iSLEq/af6wRbaKMr616ulXt17tb3t/DAHJK1PYoL4
         A1FX+WhRPKAt/MC9kJn42PGFPl491E0yRwqKjgcp7yzT4ZAlnk9QZb5lROoNyPNEJ4/j
         lkUn1XCBvx8w/qo4II/dkval72e0nL2jJNflUEPPwrbEGnFeBWrBkT4p9ANpfNzpSlZo
         pGa/COxp1aIRDSnKM1jkGkukrcvUdrffy1kDYWAxx0zANUkmcZ6joLWuS0bYEz45H1iK
         RIcBSJMievkmdXVQNUD7HvgiJAF6IBUkn0EhsQySxN4etopZbK5AUavqDE/Sugqvbk59
         3Yxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729588487; x=1730193287;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hNY9c66tqdEr89O8GZ7lmBsXVwYahAJ2Bbpo7qBrmlI=;
        b=lP/VZC7bvG5hmtYmnv+MN6Rce0vF1F6uDN5VRteIQCcNyC5DVly5AJeDJ7jYlrxjVI
         mV/dDMq0McH5Oy0NfjmCSev7FHhUGvjL8aYDDtUddP0j2Qieo7dlSxEp565nlq2N3XNY
         o6cOJoy6JjbqPVPHIn7zhkTw+AcyByOyFmvnENKbXixmECNyNooiXsVc8A1cH3dr7ps3
         mYwT/KPB83MBsy82Xw8jWPqmPmXllhDvCDJ/K7mgiyEiz3Ic5Z8taWtAA3+Ed11mm36m
         aZQdMFrlMLEBksV0GlNGHdEF5xuPZZJ/KexeiQRMkgnKkqAhtBTeezOTd5P0mvUlJCca
         rwww==
X-Gm-Message-State: AOJu0YxJ7+C7QDNoTmv5ZWvDrCVJHfk7i5Cty1+AtesK/R0UNng4azS3
	3fPdHw4UvDj8AaR0Fay5CsYokqkD3YEjct/rNe4+FINKYl1IRg7l9thAR9nWORo=
X-Google-Smtp-Source: AGHT+IHdEx3prDgqJv+UAs1Ra3xNxDRptuBO/4cSzHmqpmzSZJQ3JiLNnrPDlPiZg37N3pMkUJuxYA==
X-Received: by 2002:adf:e948:0:b0:37d:4846:42c3 with SMTP id ffacd0b85a97d-37eab6e36f4mr9746847f8f.22.1729588487502;
        Tue, 22 Oct 2024 02:14:47 -0700 (PDT)
Received: from localhost (p50915d2d.dip0.t-ipconnect.de. [80.145.93.45])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0b9b41fsm6115898f8f.93.2024.10.22.02.14.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 02:14:47 -0700 (PDT)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: Replace deprecated snps,nr-gpios property for snps,dw-apb-gpio-port devices
Date: Tue, 22 Oct 2024 11:14:28 +0200
Message-ID: <20241022091428.477697-6-u.kleine-koenig@baylibre.com>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2855; i=u.kleine-koenig@baylibre.com; h=from:subject; bh=9Rz63naJQeoZCTBUPMYqSbKq2daM+l/XN5OHPrB4qTA=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBnF2z3CB25KmWVqJn1uhlco38QycaGv1cV3ou4m KwWzv1H0vaJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZxds9wAKCRCPgPtYfRL+ Tu4OCACbGkKC1vBOLq5IR78bXt65PR227/5VOchfER0tUXOZuUr34HsmGaMhpgdmDmSvpSXyA7D g1EXN/ZB9mQfvzgWdDW0CfMaKQtMW7arjq9LbhwWytOkuIeDuIJKEYhb6noCNvgQ27XzKqZOa+o K6Y9vfiMmBl3pjtlQtyGtE0xQfWOTackSwODKAN4loah20h5AsdSP/X7xy57SFR7mKdo5DmJkHn VSQijHyNXKmtRVC8h+H+cjYIhtCnDOgD+7vmgl5Gk7v773T4YSp5A+x8oH2S/8yVY/JmAfX6A46 rtygjWs5VeHjhV0V/9IK20v4EsKr+kdEj5KuGWoVZZTwQyoy
X-Developer-Key: i=u.kleine-koenig@baylibre.com; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

snps,dw-apb-gpio-port is deprecated since commit ef42a8da3cf3
("dt-bindings: gpio: dwapb: Add ngpios property support"). The
respective driver supports this since commit 7569486d79ae ("gpio: dwapb:
Add ngpios DT-property support") which is included in Linux v5.10-rc1.

This change was created using

	git grep -l snps,nr-gpios arch/arm/boot/dts | xargs perl -p -i -e 's/\bsnps,nr-gpios\b/ngpios/

.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi         | 6 +++---
 arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi | 6 +++---
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 35be14150f41..1be82e99338e 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -617,7 +617,7 @@ porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <29>;
+				ngpios = <29>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -638,7 +638,7 @@ portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <29>;
+				ngpios = <29>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -659,7 +659,7 @@ portc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <27>;
+				ngpios = <27>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
index 6b6e77596ffa..dc639cf6e42f 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga_arria10.dtsi
@@ -497,7 +497,7 @@ porta: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <29>;
+				ngpios = <29>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -517,7 +517,7 @@ portb: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <29>;
+				ngpios = <29>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;
@@ -537,7 +537,7 @@ portc: gpio-controller@0 {
 				compatible = "snps,dw-apb-gpio-port";
 				gpio-controller;
 				#gpio-cells = <2>;
-				snps,nr-gpios = <27>;
+				ngpios = <27>;
 				reg = <0>;
 				interrupt-controller;
 				#interrupt-cells = <2>;

base-commit: 7436324ebd147598f940dde1335b7979dbccc339
-- 
2.45.2


