Return-Path: <devicetree+bounces-226347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2929BD7487
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 06:42:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0187D3E86FB
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 04:42:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415F530BB89;
	Tue, 14 Oct 2025 04:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqqpWWAC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A66A430BB82
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 04:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760416950; cv=none; b=YkKSIzPjKdFh8miRbMuFWXs/4fuMB0y/qh63tsWnBc+iGj9Zrmv4lilAnio2KND3poW0XBAxIJAvXPnCOgoV934nvCg6LIgN9ewxmh8JXP6cRvCIK5uQpoy6M/KzDEOdMeIXa8q6sWvFweo5JntBAkSlZ2Bdp0WFWSlCwZ5CfCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760416950; c=relaxed/simple;
	bh=MfQyUFH2xiGChK/mQhIpg9qcxix4w/wM2UNw+ySOU7c=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=NAiR/edNkraj77G4NgNWxdBxsHmiMD+mH7QVVwJqpwQZbeX9h63V+n/1ursI0ysCgSrvYTd3Zd2vynm1xYc1Y7KdkqV9LQ4bQf6vFj6MOAyaIJYYoBE+PnQlDgJRLAJtLHDI3mU6CVJhBzLri1kwalnzZJTbnuDOF/GNFtCYk3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqqpWWAC; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-7835321bc98so4704300b3a.2
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 21:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760416948; x=1761021748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hOxG7y8y87Jz34SPIIwbRhyKmd8qOtoxowIxWWj3eTc=;
        b=FqqpWWACiZ0NjYGMmiNLJmdm0tLQC1ADM5y5LQHgGsSZ5pFojGuhfBzLSDDzcmO0OK
         2BP+vtf9lBka72KylqtLFsINSXoDRc50K70TdrUMte5fH9o+XHb0/4hs6QYMnv7Ti57v
         s9V9H9Xp0rH4EyXnntuW0vjhTvwIV3zj0lO24SWMLOjWzj8GpdFxS6G4iYmlH6Mz/rn8
         o/wiYKG46Dgjr5Ds9LS6jcoR94ZHZl07rtvdbA08BQk9ebkUM+xJzxijWjnl2AgOyKUP
         1xqEdMysmnOtXaRVIpChPWQlkzRx7ooJK/gYE1rnJCPk8NWFBBJb0sJFb/F4KkpBtsv3
         iAvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760416948; x=1761021748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hOxG7y8y87Jz34SPIIwbRhyKmd8qOtoxowIxWWj3eTc=;
        b=vLrjsnQtTeFuus8xm3LxviJiECnNGrYqYGd32B03GYlysim7nKthOlQj2cJkjAnlGa
         NpkiZ1PBSX3oX90ozmDBtbhh+4I7Nc1DaMncjpKfMaYAy7lBiG1SwFFls/drApK2eOxj
         HCI0+zHP3DBACAiD3i3EcU09J58+iLX011b9DqnmrxMBKCkwsbX1App+kQ3U2XXJAzjA
         x2jqEgG+7ecCJXBnqjaEebxTN1/eYbYlvSufyCNN66nSGdg7bukqdTbyc+dpw/FNGYt0
         5HjgzS7L2kYNpxw7ZU6NfYulI8uXNlt5gGcjItj15AT0OA1M3n0G3La3t9RqoehkRYDX
         yMcQ==
X-Forwarded-Encrypted: i=1; AJvYcCU9i6gXQlCMIYzTqT5Pqcelz/2cEYwxMVosyHfetBb9CtlwUEwBDUtVrtpQukSKEnTNIWVP0NOB90Ex@vger.kernel.org
X-Gm-Message-State: AOJu0YxnvjmYqcDSs/KbtmpJAszolQlJzd1+yUTr97J4PS676jxx0DyK
	c9TL/ZlFoeIenCpZHt4LfuvRxf9hgv0nyuuO39mO14j5o0MwMu6rxFk2
X-Gm-Gg: ASbGncuyh8AUVrwpWg5ptpfTT5TMoPWNPZUFdRfHX2v3kBVdVRXDTsxuqnxmrIrMy8b
	RfyPsgulvjdyOuBpbzB+joEHFNOHJLCnfY6Pr+EF8CI464WFZ08U76BX6+ypzpDBHom+mHBgbxF
	IUJMnrjVWxMyT4E0pgtfMTa/Aye9MUR34VjFNq09VKqQscQnSG11tTkjD4TzegwsFFKqDNUgJw8
	FlaysGiNXxq9MkF3kudJSpJjqFDVBw/jxIWfs+qWLXU+QjdTsT7QXXgH3W49wBt4qa4/12GJMLo
	LJZDgJehGDzZYDhp3HJ1WIz8y4DFcJyFiOd/Yi0x5ydQTA0PWvrgau8tfhuzWhdCz8h27ASmlQY
	z0Xv0SGUAmWgvia1KwthQyMF/EtJcl80IELcI6Nwpt4VYWLU=
X-Google-Smtp-Source: AGHT+IHODwy8sM9bd4crkpzC4ijpPYxA+hpbvmxyIPhHXfjG16/Oqk1qvGv5L1wfCem6UkqX0FqUIQ==
X-Received: by 2002:a05:6a00:391a:b0:77e:8130:fda with SMTP id d2e1a72fcca58-79385ddc9f9mr30942738b3a.13.1760416948054;
        Mon, 13 Oct 2025 21:42:28 -0700 (PDT)
Received: from archlinux ([177.9.216.59])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-79b65528a51sm8440684b3a.85.2025.10.13.21.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Oct 2025 21:42:27 -0700 (PDT)
From: =?UTF-8?q?Eric=20Gon=C3=A7alves?= <ghatto404@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] arm64: dts: qcom: r0q: small refactor
Date: Tue, 14 Oct 2025 00:41:30 -0400
Message-ID: <20251014044135.177210-2-ghatto404@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251014044135.177210-1-ghatto404@gmail.com>
References: <20251014044135.177210-1-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Fix the order of some nodes and add regulator names.

Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
---
 .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 25 +++++++++++--------
 1 file changed, 15 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
index 880d74ae6032..a17dcb848fc1 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
@@ -28,15 +28,6 @@ framebuffer: framebuffer@b8000000 {
 		};
 	};
 
-	vph_pwr: regulator-vph-pwr {
-		compatible = "regulator-fixed";
-		regulator-name = "vph_pwr";
-		regulator-min-microvolt = <3700000>;
-		regulator-max-microvolt = <3700000>;
-		regulator-always-on;
-		regulator-boot-on;
-	};
-
 	reserved-memory {
 		/*
 		 * The bootloader will only keep display hardware enabled
@@ -47,6 +38,16 @@ splash-region@b8000000 {
 			no-map;
 		};
 	};
+
+	vph_pwr: regulator-vph-pwr {
+		compatible = "regulator-fixed";
+		regulator-name = "vph_pwr";
+		regulator-min-microvolt = <3700000>;
+		regulator-max-microvolt = <3700000>;
+
+		regulator-always-on;
+		regulator-boot-on;
+	};
 };
 
 &apps_rsc {
@@ -71,12 +72,14 @@ regulators-0 {
 		vdd-l3-l5-supply = <&vreg_bob>;
 
 		vreg_l2b_3p07: ldo2 {
+			regulator-name = "vreg_l2b_3p07";
 			regulator-min-microvolt = <3072000>;
 			regulator-max-microvolt = <3072000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
 		};
 
 		vreg_l5b_0p88: ldo5 {
+			regulator-name = "vreg_l5b_0p88";
 			regulator-min-microvolt = <880000>;
 			regulator-max-microvolt = <888000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
@@ -106,12 +109,14 @@ regulators-1 {
 		vdd-bob-supply = <&vph_pwr>;
 
 		vreg_bob: bob {
+			regulator-name = "vreg_bob";
 			regulator-min-microvolt = <3008000>;
 			regulator-max-microvolt = <3960000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_AUTO>;
 		};
 
 		vreg_l1c_1p8: ldo1 {
+			regulator-name = "vreg_l1c_1p8";
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
@@ -120,7 +125,7 @@ vreg_l1c_1p8: ldo1 {
 };
 
 &tlmm {
-	gpio-reserved-ranges = <36 4>; /* SPI (not linked to anything) */
+	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
 };
 
 &usb_1 {
-- 
2.51.0


