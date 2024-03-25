Return-Path: <devicetree+bounces-53085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2154F88AE33
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 19:28:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 08FDFB60399
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 18:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842B56EB6B;
	Mon, 25 Mar 2024 17:51:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="SSxdgVEx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4336EB59
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 17:51:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711389109; cv=none; b=acv0lxTHzXN0biR+WS9RhT53HbikZlie/bnjzsX/J4dhPAjlaWSkeES2I7J7nPjDlH7FiZctyO01E+QrCHRDncDXkVFHurdLi8FxyvNR0Z2YeGQMgB4DJfr4vyCmCblH3Y3u83RNCP4vxqcVxgvlxjdbRQlK4FdeRNtUEMCtQ5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711389109; c=relaxed/simple;
	bh=sYk+F2ZtU5ILxG+F+vPyZIq4zKyEDVOJmW+1X9zEDFM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=mFPRq3g3q/wt9WOE67jv9MfSZtvh1bRCDQLP5oqb9+NSvCz/giAfIuRviMU1OkgWt8/fkLSAGelkOPf0Bb42WGxnG1nK+m7XRKov1Xz67fDwyx0wnABgjgisGCBYyHgnlaHlhkLT5MdPcanb5M70vXExo1X6P5hxh4pm0vS6dko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=SSxdgVEx; arc=none smtp.client-ip=209.85.167.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3c35c4d8878so1913020b6e.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 10:51:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389103; x=1711993903; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mI1JEJNBBcWDVRcoev8h23jzy4M+ePchT8VllK3tA1Q=;
        b=SSxdgVExlGIMdePbJZLyjM+k5I/rIS97jXaIxXyzU+eG5Ks5xHnvDz1OQTCbXJ4t08
         5BAWmffjKSXXlmB5tbLTwwKwNhdNZyV5oPi9epR3vXfbEvIxDHdmJsMPARqtz3lEwjFk
         Q4O3+jaCnQ9OA5s0Jir6c0h8zOT/X5strfK7QV/jfzUgm8HQ3kyME8LQFeFnV/+OGfFh
         9aet4IeTia+Tf3hnPJPbW2LUbzfzWx3/nJK8i+TUavZpp+3LFeprwV1KgbhQm6jQ3su6
         +zgU6PxlUsJobLepWsxCn/xbwO1jzTFeCgIVJZ7s+dIkaXJBHSYlVdRT6fDPWEbxViLb
         r80A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389103; x=1711993903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mI1JEJNBBcWDVRcoev8h23jzy4M+ePchT8VllK3tA1Q=;
        b=JdYJDIhhA2wyUaPARizscT8ynghw7YNL3prc6LwDEAvU/KSgnPFguV5xwPSgCtAA1X
         ko6Qb34GHm67IQ3/IEXwRIS//Ay0Hexv2sPBj5MT8ZnYZ88G8MSirJUD1NzDqOVfc31W
         oJiN/ere8JCvzaAZOPVIZ3S2LOz8TiOaZoBxQSd0iMgkQUyD6LTCz9mWU30zMYOSvd4s
         2pPoI4Bejfpv6Hon0PWrzp+C9r910YvVtkWp43idAeVTU5aVeaX+MEVDAaGPgtxW7q7s
         pNqdEeIS0x05bIhUak9mJggFhjra6LWY51OW6JEefmlHF6pX5sRw4dmaDjJtwvmgq+p8
         ME9Q==
X-Gm-Message-State: AOJu0Yz/zYGAJdntYSRaVJgSprFN0CWQaBcAE0yZajLZEKMIe7blDA3j
	ZU0fC3TF8e8UUTxnCwe0KTbHQ9VgPDQJXUUlo2k99l2yShI05/Di
X-Google-Smtp-Source: AGHT+IFPLvYp9Eg0ptpvOzBFhYZ6KuQ//I1wLNdwe7iaBA9xy7lqx91AxR1NMY+41M30xZK2tcc8BA==
X-Received: by 2002:a05:6808:bd2:b0:3c3:d2dd:f8df with SMTP id o18-20020a0568080bd200b003c3d2ddf8dfmr2287224oik.52.1711389103720;
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Describe Alternate Regulator Config on RGB30
Date: Mon, 25 Mar 2024 12:51:33 -0500
Message-Id: <20240325175133.19393-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Describe a possible secondary regulator configuration for the RGB30.
At some point Powkiddy altered the CPU regulator for the RGB30 without
creating a new model revision. Note this in the device-tree in the
hopes that it may alleviate a user's confusion (or possibly allow a
bootloader to manipulate the tree to swap out the regulators when the
alternate configuration is detected).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3566-powkiddy-rgb30.dts    | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index e359465eebe9..484f097e9f11 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -54,6 +54,30 @@ regulator-state-mem {
 			regulator-off-in-suspend;
 		};
 	};
+
+	/*
+	 * Some RGB30 devices use a different CPU regulator. These
+	 * devices have no external markings to denote a different
+	 * model revision.
+	 */
+	vdd_cpu_alt: regulator@40 {
+		compatible = "tcs,tcs4525";
+		reg = <0x40>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <712500>;
+		regulator-max-microvolt = <1390000>;
+		regulator-name = "vdd_cpu_alt";
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc_sys>;
+
+		status = "disabled";
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
 };
 
 &sdmmc2 {
-- 
2.34.1


