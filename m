Return-Path: <devicetree+bounces-52995-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AC4288A977
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 17:34:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC4851F275B0
	for <lists+devicetree@lfdr.de>; Mon, 25 Mar 2024 16:34:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 128A0142E67;
	Mon, 25 Mar 2024 14:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jK4CjQhW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f42.google.com (mail-oo1-f42.google.com [209.85.161.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76B40155756
	for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 14:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711377458; cv=none; b=dM8iMY013vBuw/MlCsudd7npyvwkhJLnZ8lEA6a6ZDQ+G0o70egLiXbEgfxRvCx0hneTneKjwEmxovsJM0FQKoUb8wvX0GVgetQEc/htguAPs8NK8B8ldfPZtkLaaJJzgJUHBqxqM9HaIVbTBzhl6eOHFRzlrc7qrfEg/ZKGsC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711377458; c=relaxed/simple;
	bh=Fssp2qY4F0D7euFBIp9B/WaaFx12Sagz9GCQSLQTDWs=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lJ8WxgZDYYY4DQ1W6UsDtYhnrHCLTVd1lkgia0kRzCmYUxThL+wUB+b7FOWkmckyRlf9I7bK4Rwjrbl/L6ExnfBHJ67l63SxpPr/RyaoR3LqC5a8tnRt5AMHyIFEP2T8HHHVMq7PfNmqV752WjjkQtDzXSZpEqXtgAIhqwe94Eg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jK4CjQhW; arc=none smtp.client-ip=209.85.161.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f42.google.com with SMTP id 006d021491bc7-5a493475aefso2572259eaf.1
        for <devicetree@vger.kernel.org>; Mon, 25 Mar 2024 07:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377455; x=1711982255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aCswsN7FdkVodfTM0bhOmSxk9PJOmJSqCfqeMtR+9hA=;
        b=jK4CjQhWXjOj4botXIpAeQpcJSVyXCYRADcljH7/L1VwMYio8oVU//hvwM2Sw/qGDO
         VlcdxEb35SW7Fb3s2ontocK4s7mReczR0Dsv+iDZ9cKQqd61utn/zyPZxtTln5r6jTUS
         Zn77NAeMu+TIPF/MCXGT4v8Puog1HJsEYfZ0IYRSzntfUyxSJO/ua91onxw6rq7mSufk
         rQuvfhIJJWO30v4kMXdvEf6TWo5/d5FxoeMxBB/2lgYF4L2oQGSHWJCO9D4Vmlc6ASi/
         ipGzdnvWxnOYCf5Hoq/MnDupqw9Iw1k5PDSA92HjC6aMu2HaWyJJr4T9mF3GPuH89sIA
         Gs7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377455; x=1711982255;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aCswsN7FdkVodfTM0bhOmSxk9PJOmJSqCfqeMtR+9hA=;
        b=bHd8Y5k2yugbKcWHLGRMV2HJIPDK7pgVfd3mb7kZYnV86j2FCQ0DzsQle8saqiNCLi
         rdDWfhlFKmf2ncTV2BTwfO2zQ9gy+uTwFf0YS8Nx7npn035Yd7+nZzb3otmCMimzuZO9
         1q4s/1NUeDZ1oArd6YwbVu6OOAtomMppy2OJHBNKBFKuS3kR8cbD5vgnain7ajepX2As
         A6lznAyvpQp+G1p2nlodQpUQwm9ErzS08nuqQ/iK681kbZMp7Jd3jAhWpvqbUarq/JrN
         Dhu5cBEKvxiuDEhdyQ5USerR2hrz4RSRRfqPv612GGfIXukEiAgpwkJ8dJHcVYcX9XZn
         x6Eg==
X-Gm-Message-State: AOJu0YxiiRY5qKvgTIgHQNsor+vMLV1ljT4awbYdXRnRf6udNzix6m0S
	C7pXa5zji/HdvRxFR2WzoLh1kK9/iZNtj/oljjxvLWgyTXwqN5ql
X-Google-Smtp-Source: AGHT+IF15hJ/tYtP/YPhos0TSN5AF90nlbwnLe+gFG5FFOw3TAp2QzxMRddVXxnIHduPKnzh0crI5Q==
X-Received: by 2002:a05:6870:702c:b0:221:9cf3:8ae5 with SMTP id u44-20020a056870702c00b002219cf38ae5mr2674242oae.24.1711377455394;
        Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/4] arm64: dts: rockchip: Correct model name for Anbernic RGxx3 Devices
Date: Mon, 25 Mar 2024 09:37:29 -0500
Message-Id: <20240325143729.83852-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Some Anbernic model names begin with the company "Anbernic" and others
simply list the model number. Make this consistent across the device
lineup by including the manufacturer in the model name.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
index 94c678c44d3a..0df1254f89af 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353p.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353P";
+	model = "Anbernic RG353P";
 	compatible = "anbernic,rg353p", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
index 25edd81ce26b..b1fd2b0f6719 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353ps.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353PS";
+	model = "Anbernic RG353PS";
 	compatible = "anbernic,rg353ps", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
index 5354c5958df2..9fa68cc53015 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353v.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353V";
+	model = "Anbernic RG353V";
 	compatible = "anbernic,rg353v", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
index 02653b59f6c2..78adac9fff58 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg353vs.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rg353x.dtsi"
 
 / {
-	model = "RG353VS";
+	model = "Anbernic RG353VS";
 	compatible = "anbernic,rg353vs", "rockchip,rk3566";
 
 	battery: battery {
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
index e7161a86a9f1..b7e029a7039a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rg503.dts
@@ -8,7 +8,7 @@
 #include "rk3566-anbernic-rgxx3.dtsi"
 
 / {
-	model = "RG503";
+	model = "Anbernic RG503";
 	compatible = "anbernic,rg503", "rockchip,rk3566";
 
 	adc-joystick {
-- 
2.34.1


