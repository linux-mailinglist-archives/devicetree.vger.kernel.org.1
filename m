Return-Path: <devicetree+bounces-255174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 28823D206F3
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:10:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 746423016237
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 17:09:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3139D2FE595;
	Wed, 14 Jan 2026 17:09:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="v2PxsQ2F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com [209.85.221.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735F02F8BCA
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 17:09:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768410569; cv=none; b=QBr7tPqkJ38Lov9yeua9NgcCVsYzR1OZQ1Jc2VWKqlTnHAzBpYFvzjsav8rWs3P70IqjQ3NYn63CktytofX4gJvaa1CvA3BiU5JnbFtGMf+mptDvx4bRMsKmSD5Dkq376VosQ+ejL8PsSMrBiyPKFXFJIt7UsE8+16gwV9oVMFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768410569; c=relaxed/simple;
	bh=9p95wrx4RVIpeGNcY2S7+iJZeATm0jJX+K1/uJDs0y4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=izlrbCS2G7suTRsk+ayGq1O5Qn/nbsBspvGbrbvYiYTmzEgW/BCP9/pkS2q0sjRf84/sifql6pKJt5+k+ToHRn6Y/DqG4CIAwqi8BzX3vFxiFSTEPRG/m4bXT0o+33FvO9agroWVS042XAqj/7oXw/NV1t49pk9od5dSrPejyvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=v2PxsQ2F; arc=none smtp.client-ip=209.85.221.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f66.google.com with SMTP id ffacd0b85a97d-432dc56951eso49981f8f.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:09:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1768410566; x=1769015366; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sLZ+PvAjnR7DEP7BUAREJ2OVzk7/JAMCQdO1bdqxiqQ=;
        b=v2PxsQ2FjHw2ulxtQgB//ffdZ3aCJKlkkKmCYyLRuDMSLXLGYqMEB30taG7hBzsk+m
         5CKjILcmtvRhEq3YVWgPXmDsmjQ3qX3wP4LcIDtZsbaB61clqBxvnxvLM0hD9noOFvzh
         h9PHT1xmAsho3/UNVdZwfxVwQXL7te0VPfpXhT0GH7qZDgQVfqiWPjNZPFfs7ldcprtk
         3chRD6aLL/k4NsHwCcGJ9JVoTbY/ZEQH+bG3LeKKlIuoARjG+ZFoTBhGGbMiNDxB4e7o
         RzMzBCSgWg2INOXUtd02MzM285vIqBCqFvj3+fzZsnhgP4GJzqEln2FyClIaVCicOcRo
         L0MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768410566; x=1769015366;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=sLZ+PvAjnR7DEP7BUAREJ2OVzk7/JAMCQdO1bdqxiqQ=;
        b=hV0DpkkQnvwlHHi0AvkfxWkFylzToKHsPdK0xl89wqtexKMdBlnbFoElIZ2ujX8rgY
         QjpsYHTrx6qZtdJOk/TDlAxbveRiDfK01Vjz3TIhOYVmfsmHDu/62IZC/ttse5aTmAJP
         U697OdQaumCB2BIpzFl7C7g8v6AWER1bE1cg4yVH6zp5OuaME9jl/DpnjHt7e5kJ4HPR
         uV6cJz1s+AJkleGmLEVyKyUAMvh8gR343FhNSaHqvhRq15jP9AvjCJ92i/VM2asbBr2/
         KLVtTlhPJ2cft77W7SQejv74RaMKcZdJW0w5QolIh0CqIoLtErMvzYC5QJ8f8iu5svF3
         lOSA==
X-Forwarded-Encrypted: i=1; AJvYcCXINFL90Zqj0IvzzWf7qLBO9st4svAzOUH+SWWqbJn1OLPCeta+eHirdaFR+PIFsa0IRLU/amQd2y3y@vger.kernel.org
X-Gm-Message-State: AOJu0YyoyT3aB4oqC/+VL6fBHwAePBYcj5LQ23uBKYN9604YDdfn0uYA
	ZbGZhjhtpT8/QGS0CLAur9FMJCHknbeqaZV8EvkOoN5/A92uaF6eMS7vvASEGjC+wOA=
X-Gm-Gg: AY/fxX58qZnbASm46rGn+rrVrW+ORLr2SYQhjVCGoS1QgJlPW+HaPGumYUDO1PCVYrZ
	z7xqHi6K6cG2yxjCAU5mmm2imucJmtrPSqVuaodxxAzHLAetAxJXv982KiQ4XdRhKal/5WO4SfJ
	qTYhtwEK2rFYnKN81BaHVImIzrNQq3ekaG3dVQT3HUqPCSzQmJaVustCZMWJcCS7hCdYG9XFCZO
	GFE3PbOZyDw4sor+cX5xd68NYJwBb4NUE6ExfgXTAHCACD0VCGbJsFAkZ1jWw2HrIW98x8ZZNsD
	wlLBbZ5du8351ciDz6+zzuXrC6qj7zd5t3TiNfhEYwYFQmPCLJkLz+ICPTjLFg63C2P45Cimo2j
	MOZm7eRSAdx/sIOruks/UbuuFzQr3H73j2qUDwjC012Pabu9ZUW7NForYSuBpGER3FS1d4KiwVt
	ZRuX+QulT0tQ==
X-Received: by 2002:a5d:64c5:0:b0:432:84ef:715b with SMTP id ffacd0b85a97d-4342c3905dfmr3372260f8f.0.1768410565786;
        Wed, 14 Jan 2026 09:09:25 -0800 (PST)
Received: from localhost ([2a01:e0a:3c5:5fb1:d3d1:7ba4:2f56:d18a])
        by smtp.gmail.com with UTF8SMTPSA id ffacd0b85a97d-434af6d909fsm356157f8f.31.2026.01.14.09.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 09:09:25 -0800 (PST)
From: Jerome Brunet <jbrunet@baylibre.com>
Date: Wed, 14 Jan 2026 18:08:51 +0100
Subject: [PATCH 4/6] arm64: dts: amlogic: gx: assign the MMC signal clocks
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260114-amlogic-mmc-clocks-followup-v1-4-a999fafbe0aa@baylibre.com>
References: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
In-Reply-To: <20260114-amlogic-mmc-clocks-followup-v1-0-a999fafbe0aa@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Xianwei Zhao <xianwei.zhao@amlogic.com>, 
 Yixun Lan <yixun.lan@amlogic.com>, Nan Li <nan.li@amlogic.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Jerome Brunet <jbrunet@baylibre.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2593; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=9p95wrx4RVIpeGNcY2S7+iJZeATm0jJX+K1/uJDs0y4=;
 b=owEBbQKS/ZANAwAKAeb8Dxw38tqFAcsmYgBpZ825kW94g5pcZvsr+i9/i6GRnLfGgNa7pFFhK
 lmKhfwUVT2JAjMEAAEKAB0WIQT04VmuGPP1bV8btxvm/A8cN/LahQUCaWfNuQAKCRDm/A8cN/La
 hZVBEACqMuM881Nt8EJivf+CishVsuj4EC53+9mHxQCCW7WYXZtVp7tlD2DS5+2RAgJoYqTkLOl
 qCtSY66mv8M3w6UF8gdlisZrLCpDIQ34bZcnowKSd6NZESLyM/nv5jCqOwTNjjPqoATxHoH0JBD
 nZHtINboSwbmn8feJyOdDaZ71nk7evUI2FIZmXUr/dsMW+vs0X37K0blL42/6kBt8HDWV63J1Y1
 IVacEkKDMqfjHBxz4uvWbl0uG8KOur1oElrsC5JA08kVl0FQ1uSBJJylIf26fq/Hj2ULJjUcDTi
 0rz7EqE35lpGWYwa6b78hrixY3LWSYVWPVZkJb61lJ4QpqRc68N8pa0SmScoXw24oVF4FJRe5tO
 jDIq7hfL1XquYyKg8vVpRsUqxFl5B4uLP7hrHiRRzCTFTVbm9ncUsV18UaNGHSLN97Ix1SH/yev
 CSfSi9n4HtaOa1hbgQFUlFOT2hA+hQdky626J/D4NHNUsyyRXm46TP7QMqTaKDfnmYr4U8Cjr2a
 fQmnGevOmt4L5R2jqr3h1l6pctbu1STvfSVHagoyzVlxl26Tkln4YZQsdcB+YpSSt00Ee91jhzr
 7l8plfEx05/qUlV+VuqTEBNuozgSTCtlCmRaF33Av931U4wTvOvb3y4NMGFGrH5SYn2LXKlNZ3r
 897NydBJCJWlL4g==
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9

The amlogic MMC driver operate with the assumption that MMC clock
is configured to provide 24MHz. It uses this path for low
rates such as 400kHz.

Assign the clocks to make sure they are properly configured

Fixes: 50662499f911 ("ARM64: dts: meson-gx: Use correct mmc clock source 0")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi | 9 +++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi  | 9 +++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
index f69923da07fe..a9c830a570cc 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi
@@ -824,6 +824,9 @@ &sd_emmc_a {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_A>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_A_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &sd_emmc_b {
@@ -832,6 +835,9 @@ &sd_emmc_b {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_B>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_B_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &sd_emmc_c {
@@ -840,6 +846,9 @@ &sd_emmc_c {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_C>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_C_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &simplefb_hdmi {
diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
index ba535010a3c9..e202d84f0672 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gxl.dtsi
@@ -894,6 +894,9 @@ &sd_emmc_a {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_A>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_A_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &sd_emmc_b {
@@ -902,6 +905,9 @@ &sd_emmc_b {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_B>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_B_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &sd_emmc_c {
@@ -910,6 +916,9 @@ &sd_emmc_c {
 		 <&clkc CLKID_FCLK_DIV2>;
 	clock-names = "core", "clkin0", "clkin1";
 	resets = <&reset RESET_SD_EMMC_C>;
+
+	assigned-clocks = <&clkc CLKID_SD_EMMC_C_CLK0>;
+	assigned-clock-rates = <24000000>;
 };
 
 &simplefb_hdmi {

-- 
2.47.3


