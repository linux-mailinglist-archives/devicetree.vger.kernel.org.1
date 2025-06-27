Return-Path: <devicetree+bounces-190392-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BB5AEB9C9
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:25:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1EABC189E48E
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709582E54C7;
	Fri, 27 Jun 2025 14:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="dT+kvDuq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D6A2E5419
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:23:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751034207; cv=none; b=ewQUy1fvwdSpvEpOvn9Jh2EemhLERITAZ9JeLhwLKPl1tjNdh6P/l0og6LaBX8X71fu6OHbC8GSH3HU1SN2f4/zR/NVOqXi2EbeQjjSZj5As8iKfnDCR6pxdrWrLBXcg7pee+MmZIh5KRv1GZsR9y6AjG/uy1oqvlZNVhrZT7kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751034207; c=relaxed/simple;
	bh=WGruvn+Gqs/wHzBEiTs0RVm377PpbfSqb1Lgjf4ooI8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VoZLogxGJxwvar8AAW7ethsV3wm32QxlVvt/nBykRJFeVhGclfbHLaWa8nQOosg7sjCcCP1Q6YuX9+V/66BZoVCjQQTOGycEVgvhpnQ+VIRavcFQgTiBMz21D+cBJVsKehXVlZEtwYeHVORYUU42e3eIouz2sq7+t+g84S++ZFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=dT+kvDuq; arc=none smtp.client-ip=209.85.222.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7d3cc0017fdso226869585a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751034204; x=1751639004; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=dT+kvDuqF1kfPGWN6JwDW+vev/qmOzlGa9RfYmZOsbIb38Eqfan9QVXZMZTveDhzzP
         yW4aJz9PcxsS0YdWHrkpomTRATIBHe3QqvgoSnyN5bbvokUnb/gvx4NhN6a0gma3yxJr
         6PIWbgCPszfeiLbki+XzYge16kwuUedMT1ii3hYJw6VUw8w0ILq3tcqnRKR/dkKqz3GU
         wH0zpxPCXkbCOPKr4IKTEtE4MjzuHkwj7PHnOQPLv1ulWVbaOP9Re78XD+GgIHHW4LjY
         1dQ1Si/RisDnIejzyuto2VC72ojx//yJ5V0BFbgWMrUI/uvufnYedKIBjqJFIcrtpZ9D
         eCWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751034204; x=1751639004;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ihUO+G2zPvFD7djd8+4VxSPuuLI+GNqieXaQtnBxio4=;
        b=Dcirkt3VwiD3KNSQGuDp/9cMF5u8lBxuaUkdBgJVWdXqo9NZWAThTc15uVXJc7yHx8
         yiCCNxhTBN0vOlQPE2m5I9LEToMrOaJVhgDzXFFez2/tXlvAfoPaRbSOqtRjydf86Rvq
         xKd1xj40SpPMFotFOLuHi4GzwewvtH561uCDUoNw9kGQkDCUOY5lqwZrMCfIrKjlWv0E
         SdJ3NCTZqKA0oTFe/GQ7/00TagIqAHL2xgaWOPBeq20aEvNmkCP9Lx3dSysd9Efpd7I3
         e9nEv9ypqGDwpZB+rCQR6jp1vQElvzm3OjsMXHalGr6x9VtxQauQyl267WWtoYSJukBx
         aH6A==
X-Forwarded-Encrypted: i=1; AJvYcCWYSG+jiFRBYNse0fiNUpTjrV4y9XuyenBXFEXJ0f54gxm6o8iwFf/B8fE6dFYZq9sC2d6AqYcmKzVz@vger.kernel.org
X-Gm-Message-State: AOJu0YzMwdHSo9inFbhD0XS/EfwNyd6vj/lgM7Mg1ilneZ7GKGXJL85B
	9EdQFwJpKtsxRIw8roHbI7IH3dRy6TQd5TWZGfBdAE1NMs0uSZecfaEuJfSNHSyqW6Q=
X-Gm-Gg: ASbGncv1EXI8QdXkXmMenETbeDRWxUxaETlYOgxDCUvWndqjvuC5eTbV0CGPP9bCNxl
	2wZiYLzabkBB+8h1YFAc+yOOw+vLms7otQE42TAgV/yMlkfXMEobiFpbJndyv9je9EGls2eNil+
	8SOIhITpxwbB19NRTaIf4s4V6h9aLWRbgibgQl7wdB9VuxH/bQwECCa7A0qjeHSZSMC0hylptPy
	Um2bIauLvPVQlq1ega2dTM9RWsfGv4Q7GfCJ1/QVqxK+PghjmtZBvxlkYybUdNOqkZyd4cJDiqq
	2DnM9NS+dA8imvUTIfFJP3Z0Nini4NNC+U5/9uXsh6jXATa+PImJpwl03lfBY1A1NE7AJceQhrX
	cg4aypfAn9rF/Z64lmVGYYIUKir82awVio6yH9EqA6o9tMw==
X-Google-Smtp-Source: AGHT+IEOMLIfoVtqd+xrDcmHNR6PL3WFi16wi4PjfJ1dVACxbcBTOICTcDqGxxibtiWpz5q9BS7ImA==
X-Received: by 2002:a05:620a:288c:b0:7d4:3d40:4a with SMTP id af79cd13be357-7d4439b8e6fmr452165885a.51.1751034204384;
        Fri, 27 Jun 2025 07:23:24 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d44323b4c4sm135708785a.106.2025.06.27.07.23.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 07:23:24 -0700 (PDT)
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
Subject: [PATCH v6 8/8] riscv: dts: spacemit: define regulator constraints
Date: Fri, 27 Jun 2025 09:23:07 -0500
Message-ID: <20250627142309.1444135-9-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250627142309.1444135-1-elder@riscstar.com>
References: <20250627142309.1444135-1-elder@riscstar.com>
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


