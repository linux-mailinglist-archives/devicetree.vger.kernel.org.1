Return-Path: <devicetree+bounces-82486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BD7392486F
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 21:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4FB721C21C67
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:36:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E261CD5C3;
	Tue,  2 Jul 2024 19:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VgC6SSHs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AC56E5ED
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 19:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719949002; cv=none; b=RLf/SvR9YRjF+6+WAzsUDsU73LZASYs03KU9e6OvlD5lbmbgE15OdQtb7CcMKYPJk7U4vB+mv76u89tDHGBaQ9nkRgbU55S+zMpUW10g95D7C3Rm6rcm14aZKNQ2G3RinVHiEoS/YeMXiL3oDXM3i3tswtoFthpQ0fRoiO8Socc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719949002; c=relaxed/simple;
	bh=Xyb2fLgPsza2K7BMn+tG+wn/o9+i8Vr40jgbJbktye0=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=tUm6iRyWombS51byRCQG6kOJrDM6cpjImCb5DJfwMgYLBtDeChGSuGdQFg7oGQdiqiKkTM3X0lyxkHFsUVOrfks3YXbuqbnb2oUwYaHhZoT03OlY6uXJO7sZ90I2I8lnCijbUxubE7D9RKbssIMvjpBFBY6p1teAUNt1Tp5Jrlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VgC6SSHs; arc=none smtp.client-ip=209.85.167.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-3d6301e7279so2852282b6e.3
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2024 12:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719949000; x=1720553800; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=neIlzvRvkxSKYB/J8QToRUr0yEHjCHDcQDRoSdkPwWU=;
        b=VgC6SSHsO8X7UQ0/VOB8wxCakW3tdbqikEnMzSxZF61bt9i9yrEZVt09zIZF5ByXMm
         ymAGGDki8ERc1/m0oZpTFLVrPWD5kDpTsEPz2tEVb/YhZsxNVakKqHHpNPZfF9u5LTku
         9DCjhx6IcntIRR5uMuxokE81FU2HPf7nwmaXWWBAMsgv6tq+hJNoU+jgjfq5R9RykQmd
         ylaaIG+T1eb9bQNBoy6XXrR/aMRBzpDUwbBNeuLFbFJniflqxsp2R4xX6iU5xGCtvYWB
         2rXO+x2/WhKqD8h3V3ci98C30n11t2wx7s3s0YXi5jzcKj77zTJHmenPrHDPrOCXwAM6
         CD6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719949000; x=1720553800;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=neIlzvRvkxSKYB/J8QToRUr0yEHjCHDcQDRoSdkPwWU=;
        b=SSE36j0883TnLET19t8b+RPTG+vv0vplhNvWm2IQDaEmnJ4yKfvtG8lUIyD8dtft43
         mhlvROF3fDQEMtMfDiiTvbz1fScU6+g+PBC220MfHd7MnfuGgOVFCUqoDkXfyxS0s+td
         Q11JAXsMv9sTq8vmz/8CQ9PlVWjT4e4rwn4rBYetLG3SweOjiMq0zHOstssoFuP98FrF
         lC5yQjLAiF1aGAzZBaN9Mm3V6TgGETejZyBfEp5+cD6pah/HM85HchLqDwJqJwQcm5Do
         qtB2cXBed604IZoDsIyjR55TtZKr0RpTxO2aQGmb70FENh3vWQCDhx85UunRe4WDrTby
         eSXw==
X-Gm-Message-State: AOJu0YxZ9Ch8QSOlm4Nu/0YYi6eirIrMk55FDlHfwQWmuz4jQAmGEpPe
	f0V9RTjH8Dgm/r+0dLOKuQDfgWM7eLIgm33Fc0VdxtKkuc6C2B9wkQBtwA==
X-Google-Smtp-Source: AGHT+IG/XWpcyxijEAflhpO8sCqvA5qvxs/E7B4kFOZsE6+IGb5Cyo7xwhiF07DabC/QOSxKD1Xe0w==
X-Received: by 2002:a05:6808:13c8:b0:3d6:332a:df9 with SMTP id 5614622812f47-3d6b30f4bdamr14246442b6e.15.1719948999929;
        Tue, 02 Jul 2024 12:36:39 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bcf::54])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d62f83c92dsm1831335b6e.0.2024.07.02.12.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jul 2024 12:36:39 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-sunxi@lists.linux.dev
Cc: devicetree@vger.kernel.org,
	mripard@kernel.org,
	ryan@testtoast.com,
	andre.przywara@arm.com,
	samuel@sholland.org,
	jernej.skrabec@gmail.com,
	wens@csie.org,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 3/4] arm64: dts: allwinner: h616: Change RG35XX Series from r_rsb to r_i2c
Date: Tue,  2 Jul 2024 14:34:13 -0500
Message-Id: <20240702193414.57461-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240702193414.57461-1-macroalpha82@gmail.com>
References: <20240702193414.57461-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Change the Anbernic RG35XX series to use the r_i2c bus for the PMIC
instead of the r_rsb bus. This is to keep the device tree consistent
as there are at least 2 devices (the RG35XX-SP and RG28XX) that have
an external RTC on the r_i2c bus.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
index ee30584b6ad7..e2bbd22bd80a 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h700-anbernic-rg35xx-2024.dts
@@ -201,12 +201,12 @@ &pio {
 	vcc-pi-supply = <&reg_cldo3>;
 };
 
-&r_rsb {
+&r_i2c {
 	status = "okay";
 
-	axp717: pmic@3a3 {
+	axp717: pmic@34 {
 		compatible = "x-powers,axp717";
-		reg = <0x3a3>;
+		reg = <0x34>;
 		interrupt-controller;
 		#interrupt-cells = <1>;
 		interrupt-parent = <&nmi_intc>;
-- 
2.34.1


