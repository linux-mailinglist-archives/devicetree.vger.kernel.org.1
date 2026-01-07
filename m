Return-Path: <devicetree+bounces-252173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D0015CFBF62
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 05:30:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 52DBA300CF3A
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 04:30:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F262624BBF0;
	Wed,  7 Jan 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y+T4U5AQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A6B52517AA
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 04:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767760234; cv=none; b=AkpGSasl2S6fLcnaKQpk5zST91IeB2ECoQd35xIao+FKxJAFPLhlYlprtkyTWc9hfuIXMim5NrVJVHQKsNInmSnIz8ftKzxf92W3yxJ5KzbhJRDG1L1oj88QFZ97YT0spXKmENAahiSYKK5nwapoZDZRn/2ADtulr4RgDgBkvVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767760234; c=relaxed/simple;
	bh=qdzZ4n+LNV/PsoK+uJu2XlZkWbAHoGmAnFcee+ROIho=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GhhFfW1i0PBg5kV5vnV7tISlezMBiidvNFI0Z7AsuKxV6KOhW1qp6/hCsCcXMjh/C6oc3fKZuSpZ25XgHN1h5kSF98Q/0mqcJrfZ5xy6lq63a1/v2QAO3bIkEEr6QXGEIBLBQHQU3WyW8sCobGw2s2PWxHx79uVtIZU8C80O9Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y+T4U5AQ; arc=none smtp.client-ip=209.85.222.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8b1bfd4b3deso142643685a.2
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 20:30:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767760232; x=1768365032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ahSJ784Agrct7hUV5mLfOvTi+Ib0YPHnSuXQC3QM7fc=;
        b=Y+T4U5AQe6+nnN4nS5u8TrS+Ti0U/ZWpGS6S8CSqHEYdPhm56f70zn8DVGC8/qK8Fc
         o+0zmpuCd7I2gqM50rITYBLgztY6Ex7gtxRoiTYEutad1GZURzdYn4atIUvTECBXbuI3
         NrWQB23VInYm7yix5D3VDeCt1xmpgEm0TGK7QDwj4nH2pwwYRMgeyWg0AFMh3Yq7zf4z
         z0d37yI97WbPmvBhsEDZ8IKXR6tcZ0g+gfkUGdryjiQvi7zfU4pfPtD7SaKCfK3eIfiV
         YucsNXmIRp4o09sJIgFWWeKZUDiWToOZHM0nsm9wuIchmu1j9MT5uUAB35O+ZP1vAUPn
         zOJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767760232; x=1768365032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ahSJ784Agrct7hUV5mLfOvTi+Ib0YPHnSuXQC3QM7fc=;
        b=vU2YzNAtWZYnJkMzY7Y7F3SlO1K+LTB7pBwFzZGwryMOlYyXZJxjJqi1HUzvXLUTDU
         zfZ9ANXmyviy+m6vSOWMAdddXC/j+1kjT/n4mRsqGaG92icVQQu+k7LTXAEsuVn+f6GL
         1eeTJur/26NMI7t6Fm0SjuSZYb5e0YPy3+Wpdq7Z0noNKPE3OliecWbm8Zs2WtlgHsEb
         c/S1fbWUYM7pMCkF04cw+bfbqEZ7+9cJoReFGg2NijOSaGUSS5lpwnpFNwSuLsWE3O/W
         9m1pLw3YsnQAVQzND/6aJJifwkthmVTchzLaP/0WYjlDv6P5HiAsmPS1Wsmscapx7aFv
         sQAw==
X-Forwarded-Encrypted: i=1; AJvYcCVA4SxD04K0d8OY3j4F4UNUk4TMLpF7/mQUXKH5l1EeTT4ees3lvN0rIYHbtG/Z3XPyxAAbl6jcVd8f@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8eSKpLdzcv6dCSy4uNRMPQcajFcJfXOV23zqYF3U2N8HNqIEu
	wu0y8Bfkf6045CvGc99vL9QuQYwb8ia5WH4K+7s/A5eAZcnrUE3HfAeE
X-Gm-Gg: AY/fxX4K4+FwJVmWBiJTQqTBspyT5trQDxYM0RTvOgKjTPtYnV4YPkHahvTNGphinSM
	w/Q3G5jm2bA/xzGz7lOGxvVNIaQkEfC8CoopyrCQsrnQgQewFsmvQjeFfT35YKCQYVKloL9YZmn
	CMhifj0rAy64pGeHLJGA+SYh5j/Y48M6dYGfzQdIstCHNLRmv1ulwAfC4EQp9U62y9VxPSLXOo9
	17BRZIEBBJIXiQiNDMJ8HBKSSpVdsj9V3jYodpabhASUAdji2SWFtQjA/rdQ39u7ck2N8M/jNz8
	A7jAhgCohD5xtNbBpsM3Emo0ioYWI0vsdBuOJogsaZUmpsakkbreMbOHALzcQqESGch/YVB/Brb
	FlHjAMVwzxcG4XqNChY5el5AJlis2oZG/9yo7Qu8LHNyQrfFlfkqTAKTdLZQkb+lvdKNdG+wrEQ
	Ng7yDNBVBqvY+iN/pnZKs+XdPvA8acXk1Uj2BAmNTDOOm4XZCaIqfn0sN89B694eXjvzIa1mNWY
	04=
X-Google-Smtp-Source: AGHT+IEKJU0YmzkhTabwMnLGBVZqz7X4gT/xpJHWpB9OPZzD+XwLnPG9+W6UrzCMMz8xaPi7qB+Ssg==
X-Received: by 2002:a05:620a:4081:b0:8b2:e0b4:4e7f with SMTP id af79cd13be357-8c38942ee3amr157373885a.90.1767760232387;
        Tue, 06 Jan 2026 20:30:32 -0800 (PST)
Received: from localhost (bras-base-toroon21-grc-75-184-144-58-243.dsl.bell.ca. [184.144.58.243])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-890770e217bsm26420756d6.13.2026.01.06.20.30.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jan 2026 20:30:31 -0800 (PST)
From: Richard Acayan <mailingradian@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Tianshu Qiu <tian.shu.qiu@intel.com>,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Robert Mader <robert.mader@collabora.com>,
	Bryan O'Donoghue <bod@kernel.org>,
	Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
	David Heidelberg <david@ixit.cz>,
	phone-devel@vger.kernel.org,
	Richard Acayan <mailingradian@gmail.com>
Subject: [PATCH v6 4/5] arm64: dts: qcom: sdm670: add camera mclk pins
Date: Tue,  6 Jan 2026 23:30:43 -0500
Message-ID: <20260107043044.92485-5-mailingradian@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260107043044.92485-1-mailingradian@gmail.com>
References: <20260107043044.92485-1-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The camera subsystem is added for the SoC common devicetree, but the
mclk pins should also be common across the SoC. Add the mclk pins for
the cameras.

Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Link: https://lore.kernel.org/r/5135823c-f2e4-4873-9e3a-9d190cac0113@oss.qualcomm.com
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Bryan O'Donoghue <bod@kernel.org>
Reviewed-by: David Heidelberg <david@ixit.cz>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Richard Acayan <mailingradian@gmail.com>
---
 arch/arm64/boot/dts/qcom/sdm670.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm670.dtsi b/arch/arm64/boot/dts/qcom/sdm670.dtsi
index 3eb4eaf7b8d7..f21e60a6a2ef 100644
--- a/arch/arm64/boot/dts/qcom/sdm670.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm670.dtsi
@@ -1196,6 +1196,34 @@ tlmm: pinctrl@3400000 {
 			gpio-ranges = <&tlmm 0 0 151>;
 			wakeup-parent = <&pdc>;
 
+			cam_mclk0_default: cam-mclk0-default-state {
+				pins = "gpio13";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk1_default: cam-mclk1-default-state {
+				pins = "gpio14";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk2_default: cam-mclk2-default-state {
+				pins = "gpio15";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
+			cam_mclk3_default: cam-mclk3-default-state {
+				pins = "gpio16";
+				function = "cam_mclk";
+				drive-strength = <2>;
+				bias-disable;
+			};
+
 			cci0_default: cci0-default-state {
 				pins = "gpio17", "gpio18";
 				function = "cci_i2c";
-- 
2.52.0


