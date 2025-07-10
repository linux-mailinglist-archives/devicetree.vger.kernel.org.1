Return-Path: <devicetree+bounces-195157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E91DBB00AD9
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 19:55:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED66F18909E3
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:55:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E956D2F6FA0;
	Thu, 10 Jul 2025 17:51:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ozX2/iuD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com [209.85.222.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C0D2F5C31
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 17:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752169886; cv=none; b=P8WRsaZzfkM0wbaHF6wP/SNzfU+e34xvZs+mvA8x4eo8rKcqI9EkXWAVpvoxr25w7du03w4qBj86R51oZdstQb7sy++PTReLqS29mBISOEHzKXKl5XG9rK2mevJn+TGsR8RbFb0hwBEg2bXTgbp+7/PC+oO1BxGCicRHWK5ZcS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752169886; c=relaxed/simple;
	bh=WGruvn+Gqs/wHzBEiTs0RVm377PpbfSqb1Lgjf4ooI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=t1dtg6fqPvd+sa8jbjMoO4PgMAG7p0CbkTZysl/NPZ0u2Me06rMmxqS+qHxl82v+kLOMJlCmzCQUpPrdwqMuS6/RKzcr2gv4UtXK7WMADjWsP/5tE019FP2wJFq4Yj2RuxSA4ADPv06VPNTaenP/v4parbMShoKb3t4YZNn9ag8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ozX2/iuD; arc=none smtp.client-ip=209.85.222.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f178.google.com with SMTP id af79cd13be357-7d3f192a64eso128486585a.2
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 10:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752169883; x=1752774683; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=ozX2/iuDyCuB+v5l0BCwyVlnRu8gv9qCQxXNMGRIDSUoMrml+KZdeGKPq8F67fCQMe
         3Ojk/yKCAZFLNmj9f0P4tHDkiAHfxRhryI9pzUDoC2j7aCaPXHg14Raphd6ixY2kSREY
         moRSkncj14rpddVXYBFcsro+77BmwC9OkbRDB5fVSwQWOtKmmoYL6BgH6pi2k8b4TSSe
         0AQOh0Jfx2yFyQ8RXLOqznejjMyHZAD9S8uW2fW9DmQuBGLoCyrEOORiaSMVHTtPupnB
         XwAT4T+EweeDSfLdMCaa+HInmgVMhVIJZgoTrOMCurST/ge8Yvs8P3IVIMcjvU1ENJOe
         A/ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752169883; x=1752774683;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=EhEWVSm8lbuO4hjrtbgc8Y7w0FA/ZWz7zJR75IU0RquALfXu3KkEF/mMGQu7o9tBfM
         NLsPgvk1l9+nuDIMT1LY7fsAU3qRbbY8oxTaIUdFPr/UE0gEX/qWWhcQ37zHkuaJw+OM
         MXd1y4XTViZh0yXn1KJo4TlARHga/gTnrR8Ow9EebURCWhUwdBvcR+Htmavss572ymPZ
         iMIahj9Cyz+oqWZGS12/Z/fqQEMtb8kVaMxGZYKCiI1N2P6cp0U3lKP0tYZIG3YpFEf+
         Hz4UlqAZW8Dd5XldSoaHSbmN3JNOc7EbmY+Malhevpg2URk6oCwUXzb65QP0C1eVuJpK
         RVtA==
X-Forwarded-Encrypted: i=1; AJvYcCWP6UGjhjX4NvAEg2aWp/86QMMvocILJkWYQeoqnviDuCzdo9NjRIEi3rQ3ivN9MlMpzgtf2XMnT57A@vger.kernel.org
X-Gm-Message-State: AOJu0YwZJ+8vKTNKJlvKjL39+knRGRQtQtm1jKXt7eCxXY1V34zFDm4l
	oimrfIy0KW6eRxuNGPTRawZNCWr+rj0rFdpiZEiQlQUXaqp99n6VX/ki3pAXkkemKA8=
X-Gm-Gg: ASbGncuxgxXRoVi/gQpKkYMJZjZGIjEQRVV/4LbhwEphbui3H1NCKbYAva2VOw3IPz1
	nmSVNScq/GxXAdrnSnmVU71T86k72wq9AO5CJUnwtJF5ntm1IVGkTRQKyBA9SJ8Mdm8SDTX4KsL
	aopSSlKfq4EYIYMfhAL4qn+XajecFdh9bBNLMSwC990P8Xxy6JHdntAJFhDWMH+PDzydm/s5Npm
	5FZFx0jFM+c1rhiwY90vuWwtQhxg2oTG/uLT1P9prGAVOl+Q+VOKTJBnjKOwE7/Ma22Qn+pNkBQ
	Hu24g7C5cccWZeyoR7zB6LddBFX45nhrt+wya5vQKWjC0almkCDpLCG7MlMQu7P23QKgZR9LxhZ
	UtdZGFg4xCZVkoLIdg2OzfvScNKuEPOE3f8Ux0KFOHl05Lg==
X-Google-Smtp-Source: AGHT+IEoaJ/MKPD+CK7o2MydxVCmaO05jGvY7/XoDfctFPCiw8+3wLCGeJ2afHZxnC3BYh2lChbupQ==
X-Received: by 2002:a05:620a:4450:b0:7d6:f801:ed52 with SMTP id af79cd13be357-7dde9b5ef8amr61941285a.2.1752169882818;
        Thu, 10 Jul 2025 10:51:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4a9edeee300sm11165941cf.73.2025.07.10.10.51.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 10:51:22 -0700 (PDT)
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
Subject: [PATCH v8 8/8] riscv: dts: spacemit: define regulator constraints
Date: Thu, 10 Jul 2025 12:51:06 -0500
Message-ID: <20250710175107.1280221-9-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250710175107.1280221-1-elder@riscstar.com>
References: <20250710175107.1280221-1-elder@riscstar.com>
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


