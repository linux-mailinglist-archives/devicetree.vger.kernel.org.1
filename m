Return-Path: <devicetree+bounces-187567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D0D9BAE07EB
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:54:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11C104A50A9
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E57828C2AC;
	Thu, 19 Jun 2025 13:52:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="aCtRqmHk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAB8027E067
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341124; cv=none; b=r2W9oSePb2mqLGGfsc6swv2NHKdyc7zD3sQjt8YTuR8UI63XSPOUCj+O0PnSDyIIY1RV3WbqtwQ5c45ZWlEz0vfbncFmuoha9iYwpjvOjQYvvMQIO7CZdweZhFuazaqcTHBwsfgHgJvnGcztio/7IJNuy2QpDpvb61JE4FyO4u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341124; c=relaxed/simple;
	bh=E/I9W6fX+DhSmsmtI3yC9YfnKc4TowcG2XvObw3IonQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cn2EOrqley/u5vSxvyVTYztP1OmM04MlT/gw9ulFccapzaJnS6LMtOEKhAl4YkwuSMJs4FIvZbxS3DRPgj3QtNjWaLUCDjr2H83WgwahZ8H8P+5JIz1p2J0v+1hvGHrV2Jrn4fRkq9X5AlKfXhXf4dJhwUb8oJwZTKfe5YMRCzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=aCtRqmHk; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3dddc17e4e4so2617085ab.0
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750341122; x=1750945922; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=aCtRqmHk9F/nPgarYp/AxH8UIwSN5AoyMYkGvpui64GXmMjl/K0Kk9t/1tDm8p6hk8
         HJOl6dVd/LkWWrGkXY8M43OIGvIxOkBEaYLUrKT7CjEoBYdyEW2ev/4HfbsNhPfauAwl
         OQA77XWwnUVr9IAGVRuai+mjrKmnk/9Yc2eGontdv0uToiyYNXzmrE00niSVZxBvBSeh
         rXBcKgyPM++AkWACeP5HxuPWDAXbeLfSXIYHujU3mk7/xqMxDVIGHjMcvTvi+Qp3lYQk
         YF0LxYOlmnm27IFXbUX4/T3Y8XLPffxb3LWjGfvCwxpEOasJBE4t/CirqPdzvTx4kgk8
         8Y2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750341122; x=1750945922;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bpaBoGbv3UwS2ctJ5MNrLd4WnRBIdXYjgTh8qQmsLHk=;
        b=de/Pi2LSuuLV3D7ag51V+Sg/p3cfHodbzoeVcK1zh1tGafRYhyQDIUbvYnXbZlMULl
         f+GArHmLKWuqCUXZF0oraqAxxhEkXE3R98tiOI8/tAjQQnati5YTNI/LYhFF4zyYioUi
         2rxY0Qe/SBigrmI75/CfEfsfI7zODgfAOFrehBGcmTaVOHRZk+VytNV5NMZS1Ugjvhos
         xCRZt+0llEQVTxOTX8Q/FVOdKaGmLBqHDgFAy4Q1ZwrGfp1dIMb1+uBDx9ea5Yx9kbL4
         5gfdb2/xuw4Bh4dKnzcuEmS8Rg71Mj9lMxWrU106HFJMZX+RzhncOQ+xt/sKhkL8Nr3L
         rtuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXzXK7BUxQz1uBFjR1g+JlR+xuPk3osrJIbY+AHqmquSNXtyng7bwF3GBvv84QV/yet+NG5BlpWGVVj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxey3Qnobkgn2WMSFHzTPL64gd/xEUTBSKgmbpr2BQZ8FLrfBad
	VHcZodDCjstR+c6MBCQWl/kIQq3L/s7IdfprRqxhpkHshKB6tzGNWMJbZBg6iJJ4Ys0=
X-Gm-Gg: ASbGnct8nRG+fkMxNqVzXrgWVJKAo1ged0nviDiwvjXfbY3jdIRAtLI5UOM+PPqAhUP
	V1odKUDZPFqtM8PU0bw5/BMkvmDQWnu3ZUOlsAAAw79gl1rsapG6ctCCXs8Vbyn4SpDqCcgW2R8
	LTXd5IAkiC93/uegl84qAjs3KOOdf4TyAQJRpNYhhTdDy6c6QGKWZHs2sF1YKRT56uP50f2S3th
	N3m/XzIBloN3id6OCOJxOXaT1nPfc+71sgGmheEY2rIq5CPHTGGLnDgsvp/cENeuGwAv5NUYk1U
	5fRnIQqpjJEzA3BUb3SUblb1wH2+npyuei2NkzBBR1eDby1VtyL5RsbrPVfFdcX/TOuoIoKYMIk
	oQv7dWZgdz57eScmzAQNwTjMha0ePgb4=
X-Google-Smtp-Source: AGHT+IGE/+9c8lEGLG5Mz9Y+oJ+vIpq7U0/P4Uj/YFoaee96+eti9bY0TLGKxf+d/f/CIswKZrljdQ==
X-Received: by 2002:a05:6e02:168b:b0:3dc:7cc1:b731 with SMTP id e9e14a558f8ab-3de07c21db4mr231847495ab.0.1750341121785;
        Thu, 19 Jun 2025 06:52:01 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de01a453b4sm38246015ab.47.2025.06.19.06.52.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:52:01 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org,
	lgirdwood@gmail.com
Cc: wangruikang@iscas.ac.cn,
	dlan@gentoo.org,
	troymitchell988@gmail.com,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	devicetree@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 5/6] riscv: dts: spacemit: define fixed regulators
Date: Thu, 19 Jun 2025 08:51:49 -0500
Message-ID: <20250619135151.3206258-6-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250619135151.3206258-1-elder@riscstar.com>
References: <20250619135151.3206258-1-elder@riscstar.com>
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


