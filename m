Return-Path: <devicetree+bounces-185846-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AC855AD96D0
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 23:02:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 57F541BC1D28
	for <lists+devicetree@lfdr.de>; Fri, 13 Jun 2025 21:03:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEE532571A5;
	Fri, 13 Jun 2025 21:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Dz6Vluvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270AB23E356
	for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 21:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749848525; cv=none; b=Ox9yqUfh82GOHOH4F2gUjojQmLFIbEACV1QFPALKzW8PnKKyLPe9SZot67WDEsEy75aaHX1oAxL2SsAKDt9ecnUuSSedU5efPN1YPE1etgSLgydYmA7QNbZNAol24xFnoh8uq/NjAcvq8q+0Gms9oYBSevtDI9kJffWEf0X99xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749848525; c=relaxed/simple;
	bh=OIllGYSRU0SJagDHwnIsOjgKnsaQsAcmzSKro1vqi5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Dqd9cDnRjc+fc/fatAvX3hUtMBdGNlBC3zT9uL21bNwCwfQjz0OYpLIFad5TVMOo9SySHO8aDtJdhDocy/LyIXE5pQuklzh3dp2jbFxp2sz3s5CE7QXpCwxf6Ng2yU0/CgR2BGKjNopKxesqi3GrC9JQAd7AuS85xSkg/3XcfV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Dz6Vluvr; arc=none smtp.client-ip=209.85.166.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f173.google.com with SMTP id e9e14a558f8ab-3d948ce7d9dso10383605ab.2
        for <devicetree@vger.kernel.org>; Fri, 13 Jun 2025 14:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749848523; x=1750453323; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gD7pkEGUFZ2r04BWnG63uJj9JKyQG3lB1lEXTm5IZo=;
        b=Dz6VluvrM1hykyqlUNUI/954JuMPmKJy/Z0SmRnX8t1Rrn+amy2NGV0ELcBChICYIT
         8bUERs5y2MGql4CXas1Xjb5zeUdc3VUTZFpmJ4vTxJIpYEwIcahMXQBc1SyeE29w6Vip
         ptXoq/SEkiFNOWIgjrXk2a0Rt2CChYGupHMd+ClZWZIc4aHN31hGWm+VpNXyaIuPAEe9
         dLEJle9KauOikUkuOARMa1kgDlYTQtCpcmtq77ygnMYfJLetmLZ0cic/QJqPEFxrCUjm
         lZj3qbY0CL7W6ZDmHXQ5x9rg3WKgK+OsvO2PU0T8j40anakF4Fo9UkRZMDVBnqn1I+az
         j2Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749848523; x=1750453323;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gD7pkEGUFZ2r04BWnG63uJj9JKyQG3lB1lEXTm5IZo=;
        b=r8f1W+YTndGAvNz1jvAlwIMTyn1Fl3ThAITHU1edbOwsKD81lqdRWiucxRpelWZ5Pi
         0syyAE5+UQdaIJ4+ga9D4DVwCysP/+zD8G8U8NbVXgUlgW67Xk3RcOZ7CE/boaSC3Vl/
         /+HsjvSMW8IYdd36YXJlb4KGIHemXU+IDRBtKc6v64YQpToiMx9//AbWnBVsSKKS6Cgv
         /1CbHEPT0ucMQRlbGI5F0nTC+xozJ8mzWXcg6NtqK5t4NZr4AS5xEsLn7ZM+2coNFrYf
         fDuR8T3IePQEMne587tzYtLROVGQQRFSLJVdgYZ/U7JVDgWjG+Idw8X3rZcNOerU3qqa
         WnEA==
X-Forwarded-Encrypted: i=1; AJvYcCWi+tyrjDJ7CarEOBsTf4OGIjHuRTxiy5NusD5S6gpQzhHnoQT/I5E3mCNXKP7aLFUpWCULoe7i590n@vger.kernel.org
X-Gm-Message-State: AOJu0Ywu5l1yt4EzqMzdStVL9N3nlO1XRE0iJ0WIoLTndDxr1387i7XT
	8kg8oehvD0uscyRkL7V2Xa9XEnCjODbGbGrBrGbTyroJv8TbheV6gut/RBLYSmOfTLc=
X-Gm-Gg: ASbGnctcIlFAurUoaMOFl60IpdZ2Sy9zV7Jga5viU8bkryYXbo+s0L3ZzJKzP33QlKw
	77fG5r3hNZpmXReg0GRA3uPlqEsJklll1eqMsv0VJnLNV9H4XQaisM8ibQ+7UsggdldfOJxlzGn
	2m6bPJGGEwcHJoqJdqgRRrPDInUjRJ28HDei9rSA0iaMXLrGCiPB9AgFYAVS58qYbf/YKGL1xKu
	50xOKsvbVoWUcmgfj3Po+XmsHTTCGM55D0o66NbMheaJ3/v2CtlNIOcS3YqXVFhHXYyMgCDGCGm
	6T5lbMjCEcFC/fnttABOCZ9hDa5E5oNf2dtYbFsAtAbRGasJsi7w2ze0SDje6pkFun+zRjCwhK3
	KUMD8KWdTG2Jpk6MC7gXyLSQl0spiMh0=
X-Google-Smtp-Source: AGHT+IHXDat6NE+msKniBMkBKXzQ5OntQfEKX4Deb7fPFCE8SSfiXNxgPbBb3SmZKFUe07JWv37/DA==
X-Received: by 2002:a05:6e02:194f:b0:3dd:ebb5:5370 with SMTP id e9e14a558f8ab-3de07d3404bmr14113915ab.22.1749848523112;
        Fri, 13 Jun 2025 14:02:03 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de019b44b3sm4996315ab.10.2025.06.13.14.02.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jun 2025 14:02:02 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org
Cc: paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH 6/6] riscv: dts: spacemit: define regulator constraints
Date: Fri, 13 Jun 2025 16:01:49 -0500
Message-ID: <20250613210150.1468845-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250613210150.1468845-1-elder@riscstar.com>
References: <20250613210150.1468845-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define basic constraints for the regulators in the SpacemiT P1 PMIC,
as implemented in the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 8003c8173a2aa..0f9a7f7a6c8b6 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -60,7 +60,111 @@ pmic@41 {
 		compatible = "spacemit,p1";
 		reg = <0x41>;
 		interrupts = <64>;
+		vin-supply = <&reg_vcc_4v>;
 		status = "okay";
+
+		regulators {
+			buck1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1800000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3300000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			buck6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3450000>;
+				regulator-ramp-delay = <5000>;
+				regulator-always-on;
+			};
+
+			aldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			aldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			aldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo1 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-boot-on;
+			};
+
+			dldo2 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo3 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo4 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo5 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+
+			dldo6 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+				regulator-always-on;
+			};
+
+			dldo7 {
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <3400000>;
+			};
+		};
 	};
 };
 
-- 
2.45.2


