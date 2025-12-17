Return-Path: <devicetree+bounces-247587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4924FCC8DAB
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:46:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3FFB6308FBC8
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:36:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A6634D905;
	Wed, 17 Dec 2025 16:25:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ToqtRQib"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C222350A13
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 16:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765988736; cv=none; b=Jhkp2lWR906q5Z3dE0GqwSdfVS4PwZExIVbdM8c5Xi3Q9IDBOyBr4tXzNkb2WdFChvijkhzeEpdqYGblZ1gU+8KyzAEAE3zGSVj4078PBdLmChX/iB891WCE2OoIlTEoVpUs+MGKjlLzx0N+ylgoGu3rkjGl6BISkXmO7f1OmAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765988736; c=relaxed/simple;
	bh=PzJR4btrOIgWAbbA9/PgDRkfL56Q2zFHfShoVsaxiHQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=omhALoyhOuAx+AcOM0PSyFyxuk6R8m0IoOpv8W0+Vj9dQgOC72MaTC7EiDWoT6OVXMAQFv+UhcML0fscUsKvBuEWsbkoMXIy+cffMZgCrmGoiwJp74zqYXgDl5s4l1BGh4sXxqOQPyqh6Ud+0y+ShXAObfkUserQt7sblHciszk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ToqtRQib; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29f0f875bc5so78958505ad.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 08:25:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765988733; x=1766593533; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0XIbviOhDk9tWhSGjjMU+OiN82Iat2rqIxD675mZ2oo=;
        b=ToqtRQibqMmA9O1DdB655aJT9j+NOr/M4pkiCWbl6z47U7Drzm55HotSVw4jyzAyEj
         oG1gPp2Am1R0q0HHh4w90GXdTBnc285SxIe6aytCzJkpDvTr9/QRVxVrYr2WkxRuoIb+
         VzdJgDnMl+5LiRnm5kNtdnRYjZKMHJgy+N9cmAtQitr088OZSPtYodxB9ssfmThRUBlA
         1YI0dbEyLJ+niV8QUe4/aRsBZ4X6h9zPZ7ZmC0d53Or/AnSd3TjvLogZjrCr+FSyxeGy
         WO1cBrx4ulkwp70IvZOA4gevVqIy3IJbDc6DJp/u+J+UQOx4LkDiZG1HPr7OR3SkgGtA
         rItg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765988733; x=1766593533;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0XIbviOhDk9tWhSGjjMU+OiN82Iat2rqIxD675mZ2oo=;
        b=h/h3N9M7z6cmKFejXQXuRtDFQ5PSlpedfrmx3w+1VH0c+LtMxowgBB0ffwQuFKfFht
         6Xsvf1cnpYXhC/ykyO+VEW5u7wSq/2ZpM8DP+ndzdsr4KClZR2TULtYd5hfurgClpreC
         2SGxv2VuQAS7LbL0Hif75j7ZuD578VmTL6gA+LkBrHlU2JtQDsriBkM31QxIzbWKU5Mz
         09Z5unmnZqUkeKWJonGpLuysgkoG078rzXWD69ECPaXmdDx4sTPrHcIGKH4cE8qt83Ok
         GhmgwAttvjCHMYdUFLwCCc19wB+ws1KU0EVNznOSu6pYaQzBKNveJj13ACI/9bNrrT7Y
         clxA==
X-Forwarded-Encrypted: i=1; AJvYcCUjMedsFqfTwQOoPMD99OEYos91/+3XVU78hyMnyZZBqqXGTXF5ZJ6bYYoyzrcgWCjzGbKINJsMTjbZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyRpGZEzXxWfsr1ZmN++/0G51pwmS44WRwTsXVl2qmwFoT4Ts/0
	amLmsc2jtdorQ0iB7WTPFwmVGhiuYT60d+sgZg2vNb9o2H3v1CqXKZam
X-Gm-Gg: AY/fxX4/yGBOcYpau+8wEFUFaRwLjcNdpExhU2T5jqHWKLaoN/Vb3undDaGjWzn1nDA
	D+LVyqVa69YQ8w4fpURNaQiGoC6O3MOiG/lv72wKcBCgXNh/tuTbSGMW2dP9IkNECTMx0OT6Dx8
	ZpgBG5NahE0aRa3/2ryRd7mp6XHhfT8uZkxFF9e4tmJmIyUK86vyGL+VuughxxWqxVzvi44mtV2
	Xu7jQfdQ4+h82IZyV0XgJA59RBkBDRWaRXCkY7wwSN9vxA0u9yRZ5O+ipH76nUdnMNP1Oty63h5
	JRHqt/x9w5fTOsuMJqo1TL8gZLFZBHV/lYVTJ1lJkkz/+uD8JrcjNAeIPLFsBKyKfM3qK58mWBB
	Lq/7PY2/U2HXT+bAyfLFov0KQZcait4NCWbRrYkzfdi5OouChkij1lOenECN0bG5TxSiMa5m/nm
	pwu3vQDh2N3IAhrLX26lyLKBA=
X-Google-Smtp-Source: AGHT+IFWcAl2eDJLxZCIcaifcs1mNO/2r3sxH7mEEr1iZiQh6yjVgtkLQjrhGVLNZjs2M6eo4amITw==
X-Received: by 2002:a17:902:db08:b0:2a0:f0e5:9468 with SMTP id d9443c01a7336-2a0f0e597c9mr105953605ad.32.1765988733320;
        Wed, 17 Dec 2025 08:25:33 -0800 (PST)
Received: from [127.0.1.1] ([59.188.211.98])
        by smtp.googlemail.com with ESMTPSA id d9443c01a7336-2a0b0687c62sm122980415ad.88.2025.12.17.08.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 08:25:32 -0800 (PST)
From: Nick Chan <towinchenmi@gmail.com>
Date: Thu, 18 Dec 2025 00:23:30 +0800
Subject: [PATCH v9 17/21] arm64: dts: apple: s8001: Add CPU PMU nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251218-apple-cpmu-v9-17-4deadbe65d03@gmail.com>
References: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
In-Reply-To: <20251218-apple-cpmu-v9-0-4deadbe65d03@gmail.com>
To: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Janne Grunau <j@jannau.net>, 
 Neal Gompa <neal@gompa.dev>, Sven Peter <sven@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-perf-users@vger.kernel.org, devicetree@vger.kernel.org, 
 asahi@lists.linux.dev, linux-kernel@vger.kernel.org, 
 Nick Chan <towinchenmi@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=895; i=towinchenmi@gmail.com;
 h=from:subject:message-id; bh=PzJR4btrOIgWAbbA9/PgDRkfL56Q2zFHfShoVsaxiHQ=;
 b=owEBbQKS/ZANAwAKAQHKCLemxQgkAcsmYgBpQtlC18frqHrWhi62ycOZTQzFYElAtT3Uwm0CD
 IaXXMI0j++JAjMEAAEKAB0WIQRLUnh4XJes95w8aIMBygi3psUIJAUCaULZQgAKCRABygi3psUI
 JNATEACn01v27AmuZVEofWUCxDzFsb920+rtnSrQ8l32muph5xC9coNw8T6bCYcDAwiPtDlfs6m
 /4SQvgpQoMAXxUd4HrCz3m8UKruDmVLOed4fFRje/PU18xUyzwWlweBTZDVbZzf5wKvLwTiBFqn
 2epA+tLbEi2kpSoyc59zMYv89FfoAN4EIEeULAePwCeTMxDT+0JCcfcPl+b6CSrzaZgf64SnyAA
 lhHBUIF6tHU9ruCWPqwk5Nrb9SHN1NgxdOC63Vla+HsFYc+GMqawJgvCP5AUiZju6sQfPIdvngD
 4aMSddwWxID9hSD0kwWH7F7RkDD9N1EwJBJR7x7YI4/X1lAgf1REiES5b8A3kB3j8QB/J0cFrFM
 agu/2DGetmXyT5qPZyR9FLV3pOUUZszvmy5Ch4bvWd/aktds4UGJt7HPnyrkJgzGFlMhkfMThjp
 B1+MNLbRG4enS1qpNxIrKN7rWbNnatkHgxbOAFO+RJCyW5ek5w29o5/r442NTNSK/MgK1JB5dxN
 lmQ7qHiJZMjf2DS87FHgvVeNI1KzeJsx19AB/h7vPN92sveEQ0KdQH0Jtx+pOOlhK2yjpP010SP
 bN8kt4pyhSbTGbulgl1ffdEvUgA9OSKgeCdUPI0Qt9oKuzgeDSqtRkg8eCP90fjUX6E/zNiHXcg
 djIbLrDiSNYJvfQ==
X-Developer-Key: i=towinchenmi@gmail.com; a=openpgp;
 fpr=4B5278785C97ACF79C3C688301CA08B7A6C50824

Add CPU PMU nodes for Apple A9X SoC.

Signed-off-by: Nick Chan <towinchenmi@gmail.com>
---
 arch/arm64/boot/dts/apple/s8001.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/apple/s8001.dtsi b/arch/arm64/boot/dts/apple/s8001.dtsi
index b5b00dca6ffa4caa1d504860693da001a8ced80e..83c5c479c87fc1ae1bb7c6889aed9a71fb55d29c 100644
--- a/arch/arm64/boot/dts/apple/s8001.dtsi
+++ b/arch/arm64/boot/dts/apple/s8001.dtsi
@@ -298,6 +298,14 @@ timer {
 		interrupts = <AIC_FIQ AIC_TMR_GUEST_PHYS IRQ_TYPE_LEVEL_HIGH>,
 			     <AIC_FIQ AIC_TMR_GUEST_VIRT IRQ_TYPE_LEVEL_HIGH>;
 	};
+
+	pmu {
+		compatible = "apple,twister-pmu";
+		interrupt-parent = <&aic>;
+		interrupts = <AIC_IRQ 83 IRQ_TYPE_LEVEL_HIGH>,
+			     <AIC_IRQ 86 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0 &cpu1>;
+	};
 };
 
 #include "s8001-pmgr.dtsi"

-- 
2.52.0


