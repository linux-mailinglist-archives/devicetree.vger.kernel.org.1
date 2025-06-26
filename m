Return-Path: <devicetree+bounces-189978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED10AEA04D
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 16:21:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF76B5A261C
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC3432EA15B;
	Thu, 26 Jun 2025 14:18:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="Q+3XRwVv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 889D128BA99
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 14:18:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750947525; cv=none; b=cVx73ay+M583thUgcAZJuxenwTc8SlIM2hu6zt01XUAA2jOLO6CROumgigQmwCFKXU07embrGmRqeZWOdc2eoY3bUXuhqKUUFc3DfQ2PeXEkNlazvwKOjZDNrEvCGiPAEM6q4nmkYfksOWsx88qhXcXbmLntHQuAuwaeuYbUnVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750947525; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XppMwkfiUx2xJ1k2OzLIqSPoyMTfmWthsGfBg1TzLhjr6iNTPjhiFHiyZiUNbJ+g2/sOH0gbky8XqKsfMEdZzuQ0I0tk7nzE89AP+bagx09jAtY/KQLPO6TIiF8CPE6MtGSqvNLU4chF/uZ+23FMRDU2jAWVqb2JG/ePRmlIeGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=Q+3XRwVv; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4a44b0ed780so15340991cf.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 07:18:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750947521; x=1751552321; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=Q+3XRwVvifso68eoSPHeTrETilw0BjmE6zi2Qgr/KWOQUOfH9aG8rg/HuSZHJXgHTd
         wyV3MDdwhbSxdKESYk30NvNVq5ESiXh4kuoYkbzInQu/6U2h0DOEAZFAmfYxbS4r1V69
         llhrmTlsZb/ptq1wZF8oMzyz3ddkoAmBNnYoIgTqOlq6qo4rD2mDnRfFBtjdFgtHWwjy
         R4ngaZkuoZ6AxQ/6MNoEuh7cPPDYXY6Mn37gn3iZAJH+3Gu6z/6MFl7zhks5WVswtPKD
         xqYzxbhl6DyP6gscEQvhNrXESret0poR9CJElypMtswv4w6+wwS5lojVE9PjLXlHPL4c
         3xmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750947521; x=1751552321;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=rNnR2hTeV4XUIKDuCIRVFZBL2IWwSBeTPm2IX7erok7r4m0ihuCv9KMaTYhILteL8M
         0XGgckmcxr8pDA2ewveNH9XP2BEx7BCZH2SPzcpNpTNPjGX0dmlmw4IorNfDkOKNls0x
         TX69llCBFJpusl+AagYaoBdvhxQn6vR2U6sgrb3MNMg4gS0f3wq6VN6erbasEN6M/K/k
         4H352r0Ds5VRIlZ79hX3aYZ4o+gqbzjMcW/TBZhm3OV+eurQx0iHEmgbpEJjquUvEQZ9
         V0Z6bx9DXbRikj6Aw7mqDzqGMO8HYfYIOErQtyqhwBZgh/kL8SUvg6Yq6DYsgbOfWY+3
         2rSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWUJijssCqfRafiAvt7B0xWj8j08Fk1LkQODso1Sr15K3j87m1CXZNZtGJRurtIhLK5ymJG86oe0fRK@vger.kernel.org
X-Gm-Message-State: AOJu0YyNzJ7tfc0EstrACme0QhXfs/76WBQkh0Jiy/HMjNzGSCh8jCnm
	tYDUAhqUirUxQa23hghVWQpKh741mb65Cpo/z5M5vnLjF4wHB9o7/P4mxT1vN9wrBYU=
X-Gm-Gg: ASbGncvds3v1aV5mLfcpk+3wrN9vh2JDYX0BjhYI1qlXUEjGU+oljcA9L6lC6NP+RQ0
	ITsQ95DhPvVpz0StZ4BOwKawZ+/t3jGR3RaJSPBPLA0oXT3LDoKevUmFn4573uT00mX8Kmk1t+Y
	yCJ8+jc+LdG98hQeDFJDeWEjlKyYs2gh5i+nCFGvg/2SUe+CCiGUdLVb57Ww4EiwYCWiUAoOjnQ
	atTPN7lwKdd1dp245z9BKr51nBVF3zzjDKIamNzVok4sn07Hwvr6+dNUD0721eF2XyyY5btPog/
	wFdu0h2xWrORmxtS904nIQ93CwT9LT+rgrE4UMWmuQX0yG+miuw7RyTYZzt/J+rQvMHs9s7RjIz
	1b+t/qYTl6cTVH74anv/PMp5e9HFU559NPs4=
X-Google-Smtp-Source: AGHT+IHsx3U02C9l97yXNhErNtXWuqZBL2Ji63UbeBAH3WQ3eJzVVCOgX1IG2CL+5mxLNXJrr6vN/A==
X-Received: by 2002:a05:622a:13cb:b0:494:7a16:18e3 with SMTP id d75a77b69052e-4a7c07ca74cmr99997701cf.29.1750947521231;
        Thu, 26 Jun 2025 07:18:41 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a779d6df17sm70266101cf.30.2025.06.26.07.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 07:18:41 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 6/7] riscv: dts: spacemit: define fixed regulators
Date: Thu, 26 Jun 2025 09:18:25 -0500
Message-ID: <20250626141827.1140403-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250626141827.1140403-1-elder@riscstar.com>
References: <20250626141827.1140403-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define the DC power input and the 4v power as fixed supplies in the
Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index 7c9f91c88e01a..a1c184b814262 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -28,6 +28,25 @@ led1 {
 			default-state = "on";
 		};
 	};
+
+	reg_dc_in: dc-in-12v {
+		compatible = "regulator-fixed";
+		regulator-name = "dc_in_12v";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		regulator-boot-on;
+		regulator-always-on;
+	};
+
+	reg_vcc_4v: vcc-4v {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc_4v";
+		regulator-min-microvolt = <4000000>;
+		regulator-max-microvolt = <4000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&reg_dc_in>;
+	};
 };
 
 &emmc {
-- 
2.45.2


