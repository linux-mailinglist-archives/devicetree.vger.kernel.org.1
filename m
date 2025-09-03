Return-Path: <devicetree+bounces-212271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B59FAB42383
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 16:25:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 142E61B2567C
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:25:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F27B311C39;
	Wed,  3 Sep 2025 14:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z4iikCw1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AFDF30AAB8
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 14:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756909483; cv=none; b=MEsoUQ+ZT5oX/ofDkmMmeKAZjrpWwMF2vg9EvnKKp/6piEbUGZp/m9avSeDKQsYI7jbNYD+svKiUHzYYB4f2TH2kwrZ9o2kvNJ+50z1v77VR1/B4M1xQ1McKcqOyLyqJEyIrVp5PW+sz1wmqiqP2ZdCFlBeK5FnuFpZ/wmJZZSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756909483; c=relaxed/simple;
	bh=O0ZaIGzNEXwrghncj9YNIJwIZXgEV0h6GP+O9Ob9bCc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ArARRCjqdcMTANgEp62xxPIgDQkWSNq+QWTSiujHWzfCKzEWYN93PQIaiNGG/dpcqSsIvgZ/WY5/na4vsSOWjTFXqUwQl2HSG8tnbw2la8rv6Tc0ZSAIjHLIx6d96o7Yt5AO4QPqcuLBjniyy4jqDImPHy/ji04PBUlPIxRbuBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z4iikCw1; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3df726ecff3so359936f8f.3
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 07:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756909480; x=1757514280; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dXbwYHHwDtZG7uyxiQ/Fmn5Mt+BEh2eODNORnfwMtFM=;
        b=z4iikCw1gTz5ZpisslL/pguJonOHjVLMnpGioM/7uchq32IcYVHDmsPLA3h8fDyZMf
         De8Y/nYwbtVq/YFoDpbyoD2E3X49f5wyjG0asUJcE9ZUzRjMygqiJTOTlwG8wpcHpkdv
         chbXc/Fb20qikQuBd4pmDx7AszFRe9B+RvAAohuE4OYoJA/MkvBs+7VvKI39pO/uXqGy
         yLry0Fn7/Rwz+tcuIRgJvKpenUS0a9MXSp2quJnWTIczTXfHTL/jojil1YGBean5/XN5
         s5ntOTq1H/TSfuYmLrPuX6JUNNPUuWJH7AQqo2LqQLquwxsT/UeezZUoNLMcgNzMuJDT
         3tEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756909480; x=1757514280;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dXbwYHHwDtZG7uyxiQ/Fmn5Mt+BEh2eODNORnfwMtFM=;
        b=Da/BHhszRHYSzLwH09u1ZbdZWy7nI8CzdXEnG0NmmPIfYO9+tB1MjsedfH1rSzDDHl
         8I8ZwVGr75IA4EZik8ZG8GmeygFzhf4CrCHedh+VyuqEP8u2iQbjAZds41XcoEGOQhfg
         aKwy1/xTHPUtJ4XGvh0P4kKGjBy//yYzd7VKY6PEXcUa5cifo8v4NrwiXAxej74k7Pqu
         Hel7roDYxZUoxQajBAI3X2OhDVX7sC8eIy7RngeaaekfqN2fn9UxlnMSy5H2PjdfdJ3o
         CBEFiuQf9EMI5aXOP5ISyOvdFKeJmCDXMwKE7wFvOjlxGgKW37KgCGRllpP0+VLLGRXu
         MMLA==
X-Forwarded-Encrypted: i=1; AJvYcCX0ffJrX0zyt1U9sK0rVOGqa/xe5OCQcJSTLPwfyYgS+aXSYSVN6LsggedbvYQwu/hTwtiIVUQ4L8/4@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf/D1MbJdizSR63JNE14c3H6c0KSwbJWQnCdCPYwKlP89MLMHo
	RLKTphA/tHJeYSnAUU2H7539e5usrzd1NGtD2KXJi8LuagwEPsSLgGL1wyKjbHOqcJQ=
X-Gm-Gg: ASbGncs//Jb3isX9qoW+pA7ioMf3ZX0Uv1CF4G09fnl8jzrC1+7jP7AoRhLCnJy+uip
	YNj3k+jqhT2HzUIZQGTOFAkm0PsVr227Z2qOPXtDTvXDqif49OEtyZEPO1+Thzq09U2ywtMIwMe
	f5a9niT+PC3aFpt07b6EcDezYjksAfi4Jlq7c6/LkD6JhGG34GqzPPS+cMQERAbgWasmHmgFNZb
	bOFBTlrDjsiwiHr6Slvsz/o/0TnawVIEoyboAwPv0OSCpsOQySc3wtr2awaqolHpzvCpBYqSG5y
	LdNehlFUg5HZGA0WsU+AEjl9+WENITaeuF3nlkmwG4ymAGIjD++wyFrvavwEOJMVXXxJHVJUh8r
	88Q13rlbDuTDaQfRv+68OREZBW7606s8mTCYRMyivO8l8fAkEOJ/IAcOSrH1HbhREuJ19vG7ibH
	oAVg==
X-Google-Smtp-Source: AGHT+IGElUVvAdnTLsoSyPE4S7KSi1NXgc85bTjMPXuYMbOZdz2o4+8xSGY8r8pqxR543TVqoUC2FQ==
X-Received: by 2002:a05:6000:1884:b0:3d8:7c6e:8ad4 with SMTP id ffacd0b85a97d-3d87c6e9003mr8330251f8f.10.1756909479612;
        Wed, 03 Sep 2025 07:24:39 -0700 (PDT)
Received: from ta2.c.googlers.com (219.43.233.35.bc.googleusercontent.com. [35.233.43.219])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3dc1cd4a7d2sm3996035f8f.33.2025.09.03.07.24.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 07:24:39 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Date: Wed, 03 Sep 2025 14:24:35 +0000
Subject: [PATCH v3 1/3] arm64: dts: exynos: gs101: add #clock-cells to the
 ACPM protocol node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250903-acpm-dvfs-dt-v3-1-f24059e5cd95@linaro.org>
References: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
In-Reply-To: <20250903-acpm-dvfs-dt-v3-0-f24059e5cd95@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1756909477; l=858;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=O0ZaIGzNEXwrghncj9YNIJwIZXgEV0h6GP+O9Ob9bCc=;
 b=Vo6WkR/E//OV0DsTSlpds8sKzQhNQBSu+HqfP4AtDKHJiLDyc7STDizBG48Nhd4baH1I3LEcE
 1EAmsYRXET3B43eHFQZqaTcqLTcXr2LlCFSs8nmManOhkxRVzbBznF4
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

Make the ACPM node a clock provider by adding the mandatory
"#clock-cells" property, which allows devices to reference
its clock outputs.

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index c0f8c25861a9ddb5bbd256b62c66a645922ca74e..f00754692bbac39fd828ebd4ef7c269f746f2522 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -202,6 +202,7 @@ ext_200m: clock-2 {
 	firmware {
 		acpm_ipc: power-management {
 			compatible = "google,gs101-acpm-ipc";
+			#clock-cells = <1>;
 			mboxes = <&ap2apm_mailbox>;
 			shmem = <&apm_sram>;
 		};

-- 
2.51.0.338.gd7d06c2dae-goog


