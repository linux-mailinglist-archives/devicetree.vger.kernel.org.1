Return-Path: <devicetree+bounces-187568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6353EAE07E4
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 15:53:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E4DC1BC384B
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 13:54:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF5728C5B8;
	Thu, 19 Jun 2025 13:52:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="AyIkTgJt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com [209.85.166.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D172C28C00B
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:52:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750341126; cv=none; b=MmU0jsLkJLS5smpwzJH/CKnoIlwwjYxMZNUCqWRhZRKQbPo7cU33NTzbkpu/CXO+T5+wQJO91zRH/ecQox442RdhbXZ/RVkdTDWglax05Zu5Qo3TY/gblfP3svj5JcplanD6s3Xol/asCc8/6HglPU6ibkG3PYLpKa3AxYd/stA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750341126; c=relaxed/simple;
	bh=WGruvn+Gqs/wHzBEiTs0RVm377PpbfSqb1Lgjf4ooI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DXelymK1m6CCqWsZ1jjBvag+i1tyjiBGA5KQbU7bS1UseyZeQjnmVzNjQLsRmBETYKXrWo/mogzlAjulj6eExC9tQgTuA7UtbW6dGF68S++AImy+UKPT19P7vyaMCHmEKxW2LKxiDmBy8pd0rXsTBbkp5e+UvEBshhqJxQQcZfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=AyIkTgJt; arc=none smtp.client-ip=209.85.166.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f53.google.com with SMTP id ca18e2360f4ac-8760d31bd35so24175239f.2
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 06:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1750341123; x=1750945923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=AyIkTgJt6+PqSYaQWVu0lx23DQRgEYfHG8YmYUNMGm/40fm91nnfgCLUnksJyUUDca
         Pa+VZG6tnUN/N4UnbhmfI0hmBHxpmK9itvWStnEMjzSMgGH0Ojkj6mr5OgiKBzkQc1aQ
         ut4VkJLEj+6eqwCFQ6f2ugrYYgDXf6k+ZGKshthbADfkd5qBsbRa9zT4wqj7+gs9wOKv
         2qiJCWjymZinkP+lVwXEmfu91GH9o2j68ABmGIYo/4YbEfC+iSfotrTFHFBQsZZod/8e
         mOv/j/aWfjUvWkWnLe0ow2svO03olhoHjTvJSUxfOZHuIu34czmrIYLxtU4n1Xcg1cey
         BnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750341123; x=1750945923;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=UhoPhjAPQfPp+P0H7Z/srys2GlrK0dliFWESStcsJJApCPpiGQqhSumsnPdGjmdXJ1
         p+rIeXtZGsDYAzUxyHeZG7W4qAiokfCYEO5AqPQafxaUoQsClvyVU6uEP20NIF9hRGKN
         nq9hDpqCW/etTTKsfclQL0oz//DeLsnJ6soxBsVW4HzgbTbHjjkU6LPosQYALjE4MSYv
         X1WJWpaXkSPnfYkqrnA7eTk8Xs8CAqHBx71GFKUr2VjOMCH4m3lKwDd+OR5d5ObigYkQ
         lWhBW8arbm/Tek4elpnCXhnO/t8stVs6PkJaRLy7ixImrU100UFymG7DcAnnJcmJYZUo
         wfRg==
X-Forwarded-Encrypted: i=1; AJvYcCXh6+QJ9ljjdsBdrh298TNBoN5r2oNhG3lTuYMB58Dl1V0J2IFVwIJmBe1lAqdq/TSOTk2JRhY56qzy@vger.kernel.org
X-Gm-Message-State: AOJu0YwivnvEsKAqfBFqBxXIHfCZc9+l/LJSbUcp54uv6Cs59dOx4n/V
	TcIxc4N4RKnZtLOKEIIkMocaIYGoIeY5cBJnPWbnCr+rGCxCUjbdlCKV/GJ9pEzPPag=
X-Gm-Gg: ASbGncuiv4PlkJA4qQdF9HixDOUljqAkxtPwX/cFnmGqM54Cy2G9X8acPahYd1fN/hy
	R0NezKGUcM73SjthI7poVmLCMcLq50ITP8Q2uVn8lhaxqYSoGMgQqCtmJKYYTLdvoegjMCySB6P
	yhBcwlHhdkmQt1VkHz+KITQsFXqoEtK4UzhV5G6Oe/cwGYYA2270MviPgANsAqpvBkSBBQ5XDrV
	n2th4QCTU2DDP0tuuwv/bZs0PLiWDtfKC4BAb862X1X6HoO1NFkxytFo3cu7o1pD9R4npI+r39C
	EJz9JKDMPLBoeYpFIqRUtM41nU1hEi48FHVFb/1qVDiaD3y5C1niFpu1OyOkIdsaQR2/WEQiEdZ
	VNyaD09GC3xIlQJPp4IahST8ROX19AWSCDEwyHqjsNg==
X-Google-Smtp-Source: AGHT+IExem0l4ezDbiC0YunjYTLQzP9AWFOBkBc8gw8zgbBmASiZICSB36WYhCAntpWfGoVKA6+PlQ==
X-Received: by 2002:a05:6e02:1a8a:b0:3dd:ebb4:bcd8 with SMTP id e9e14a558f8ab-3de07c5cc98mr247003285ab.9.1750341122994;
        Thu, 19 Jun 2025 06:52:02 -0700 (PDT)
Received: from presto.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3de01a453b4sm38246015ab.47.2025.06.19.06.52.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 06:52:02 -0700 (PDT)
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
Subject: [PATCH v2 6/6] riscv: dts: spacemit: define regulator constraints
Date: Thu, 19 Jun 2025 08:51:50 -0500
Message-ID: <20250619135151.3206258-7-elder@riscstar.com>
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

Define basic constraints for the regulators in the SpacemiT P1 PMIC,
as implemented in the Banana Pi BPI-F3.

Signed-off-by: Alex Elder <elder@riscstar.com>
---
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 104 ++++++++++++++++++
 1 file changed, 104 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
index a1c184b814262..83907cc1d5ccf 100644
--- a/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
+++ b/arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts
@@ -70,7 +70,111 @@ pmic@41 {
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


