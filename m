Return-Path: <devicetree+bounces-134454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C6F9FD7D9
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 22:26:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1CF627A182C
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 21:26:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8601F941C;
	Fri, 27 Dec 2024 21:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="EW70SCRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 373791F9402;
	Fri, 27 Dec 2024 21:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735334747; cv=none; b=MAdTC3R2cyhJyJXc8Sxrj2yurnZtD49Eb8qU2kcirvwe1aaFHeTIEsQZ23pe2MV2EYyMVrsJNofkyQklzB5P/h4hFdzgi4ChMs/ccEAjStJHFfadCPR03EI+m5s3jTNZpNHuTkvuTXWGHy2/qtFSMUhzr+tt1+R27QiFdctbh0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735334747; c=relaxed/simple;
	bh=mLPi3jqeewBZ2cP46YNAgQJjn6ldyZgsUrRfQWC/ERY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NvhYnOhyK7tPRgUhtMkgTySdEyrDDS8f35DD0Syu7PQ9BzdopTLAn7AnvmaCxzHof7tt3x/qwOWhEcVxkDJFf167HSG67+t/9EAwRU3R/dgHzF/2wbt8iD4zEYHS0Kz5DxDv5JzyV0Cmgb/MiHu7O6BibD2vmRmtlEGmg8vLa9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=EW70SCRM; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5d84179ef26so9026260a12.3;
        Fri, 27 Dec 2024 13:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1735334743; x=1735939543; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Hq3Pp51rFwOFBTS6gKQVsSs8Eps1DcwhteoxOcUWwbU=;
        b=EW70SCRMYM1WG9HY09CRe4pCPPpWK/TSlnYjZTbFb2ACFqw+4bCchhl5i7EO3BJRxr
         IRV0EmkyRvPtppSFa3xs8VQbCJl62yHK7jvuzLSEyNqG8OOyoRyvorDWpnwPJwP+HVxu
         ebn/BcQhNF01wrKD4+3NON/YrtyfybgfCNecEK1au/YEgONic7ezEMgBw//YYNYdroYc
         c44ihh8DF+fqf2YHDEpo7WWmXuPbl33pNfDoNpe37TkpT8HgMvycOhDrRFVhEDpdOar/
         LzdAw8gU/RDFsnLtKNp51JbXyjzMDQzgMmco7O9/OIXyHCJAjyXS10+8tgiApm+zo4Ar
         n1zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735334743; x=1735939543;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Hq3Pp51rFwOFBTS6gKQVsSs8Eps1DcwhteoxOcUWwbU=;
        b=c4LB5dy8Uwj5plyhskAGm7of4AYx4n2Q3Bk2oF7pRD7dWsvOkQPukfsOPDn8u8pslx
         W7wj9SiHHcnZlGCrya1aKYufqohxE1pvXMxjLn50Xz5gqA+Tn4CVM/dq6Rkz4PfOFu+v
         2qE2LE25UzRyRjYKH+4azIHC86uehdfGC85qRxeLOV0tbVoBtzMGY5x0rgH4/5/pJvh+
         y4wWODGei2PyQfcoQz4vF3lQlgQ5sLm4yBDig1XJR/AUSIEy2QKyPo9k4hxSTws1ycBz
         Ve6EbJGh6IBIBaQnTRD0mX/vAQCO+S9yj4qYQA8UGmguoWQbchMO8Mk+oAOSiPE7QoTP
         Cp4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUCiFOmnl+gFohmZTlCwMzwwxKGjzFYrvEgZTIuBwZ+yrl3MX4I19VxWrTA3mVOCZCClBP+yql33oHzNNqh@vger.kernel.org, AJvYcCXcKnOQCDOiyM10BWyyMhm5myQn6ooplZOvXfheZkTACeyn1dgjIHfai8sK4tnKgfXp6REJodFkLs6+@vger.kernel.org
X-Gm-Message-State: AOJu0YzdTk1x4qXBzB1unfXd2m1QDce+TPtbDS9hUd7uSdnw6byzGCsB
	t1QGPZKH2whiovonHhObqbbTLRJFN8D+nPg37+NXCMH9+aLfqFec
X-Gm-Gg: ASbGncvm3MPBYSsTdlL8ul5uUYhqSMJq3LqN04zyuLvcBM82yrr5LJoEUUzE1qXbIR8
	z6Qs6VUnKf+3ysrBtrOGfMx0pDSldYDruUh8LW3ahMSrKKZFDFL5jvBdZp3rPjDz7YoxCtbdo31
	yv+LWKiCB4fLyE11EnyOrW4Vw1o5/P+P5TXiZHLuCz/uGEFPhhRp78Yz9CRp54u39m2QFC0LJz2
	oyii3xYawC5QeFaHKn2cwWtynTedNrK7qChgiICOKzu1aqKAmYYdlpyV1u3J5V9InWdPetxmOIR
	sZb4VlaRhEfmv+TinpCajRgWcXFjrcwPUqn0mqf5Hfs/iBMzGC9/yykcX1uyKYwsSYYsqdfKl0F
	gPhnntk47KJaUaMOnr2GsSvMLEQ==
X-Google-Smtp-Source: AGHT+IE/gPijdoDzjjoUUMlREXLzOGk06s31fEZOuaqJ+0cfbP2MBhEf0Ezj2q/xZiBbAGE9sVR33Q==
X-Received: by 2002:a05:6402:2790:b0:5d3:ba42:e9d5 with SMTP id 4fb4d7f45d1cf-5d81dd8fef8mr22819469a12.9.1735334743258;
        Fri, 27 Dec 2024 13:25:43 -0800 (PST)
Received: from localhost.localdomain (dynamic-2a02-3100-b2be-ba00-1e86-0bff-fe2f-57b7.310.pool.telefonica.de. [2a02:3100:b2be:ba00:1e86:bff:fe2f:57b7])
        by smtp.googlemail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fedbc5sm11627950a12.60.2024.12.27.13.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Dec 2024 13:25:41 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	jbrunet@baylibre.com,
	neil.armstrong@linaro.org,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH 2/5] ARM: dts: amlogic: meson8b: switch to the new PWM controller binding
Date: Fri, 27 Dec 2024 22:25:11 +0100
Message-ID: <20241227212514.1376682-3-martin.blumenstingl@googlemail.com>
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
 arch/arm/boot/dts/amlogic/meson8b-ec100.dts    |  2 --
 arch/arm/boot/dts/amlogic/meson8b-mxq.dts      |  2 --
 arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts |  2 --
 arch/arm/boot/dts/amlogic/meson8b.dtsi         | 18 +++++++++++++++---
 4 files changed, 15 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
index 18ea6592b7d7..236999548094 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-ec100.dts
@@ -443,8 +443,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
diff --git a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
index fb28cb330f17..0bca0b33eea2 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-mxq.dts
@@ -162,8 +162,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &uart_AO {
diff --git a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
index 2aa012f38a3b..1cd2093202ca 100644
--- a/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
+++ b/arch/arm/boot/dts/amlogic/meson8b-odroidc1.dts
@@ -347,8 +347,6 @@ &pwm_cd {
 	status = "okay";
 	pinctrl-0 = <&pwm_c1_pins>, <&pwm_d_pins>;
 	pinctrl-names = "default";
-	clocks = <&xtal>, <&xtal>;
-	clock-names = "clkin0", "clkin1";
 };
 
 &rtc {
diff --git a/arch/arm/boot/dts/amlogic/meson8b.dtsi b/arch/arm/boot/dts/amlogic/meson8b.dtsi
index 9e02a97f86a0..0876611ce26a 100644
--- a/arch/arm/boot/dts/amlogic/meson8b.dtsi
+++ b/arch/arm/boot/dts/amlogic/meson8b.dtsi
@@ -403,8 +403,12 @@ analog_top: analog-top@81a8 {
 	};
 
 	pwm_ef: pwm@86c0 {
-		compatible = "amlogic,meson8b-pwm";
+		compatible = "amlogic,meson8b-pwm-v2", "amlogic,meson8-pwm-v2";
 		reg = <0x86c0 0x10>;
+		clocks = <&xtal>,
+			 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+			 <&clkc CLKID_FCLK_DIV4>,
+			 <&clkc CLKID_FCLK_DIV3>;
 		#pwm-cells = <3>;
 		status = "disabled";
 	};
@@ -674,11 +678,19 @@ timer@600 {
 };
 
 &pwm_ab {
-	compatible = "amlogic,meson8b-pwm";
+	compatible = "amlogic,meson8b-pwm-v2", "amlogic,meson8-pwm-v2";
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &pwm_cd {
-	compatible = "amlogic,meson8b-pwm";
+	compatible = "amlogic,meson8b-pwm-v2", "amlogic,meson8-pwm-v2";
+	clocks = <&xtal>,
+		 <>, /* unknown/untested, the datasheet calls it "Video PLL" */
+		 <&clkc CLKID_FCLK_DIV4>,
+		 <&clkc CLKID_FCLK_DIV3>;
 };
 
 &rtc {
-- 
2.47.1


