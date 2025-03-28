Return-Path: <devicetree+bounces-161592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 874A9A74AB8
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 14:37:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 10BCF7A67B5
	for <lists+devicetree@lfdr.de>; Fri, 28 Mar 2025 13:36:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51E8121ADB0;
	Fri, 28 Mar 2025 13:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="udZ7EYqk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043781A2C04
	for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 13:30:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168661; cv=none; b=PBesVxbKys0S3FKTRDGfGKHpWl1t678NfbK0H+dPW293aeSQq9QS9U7wSv2U5gFA4miJrm/kK67KkKxnNx4yPTczHNjw4mJwbRShZQ12CFVJmv2MMcvs1sX3VwBaIRVoEAZ/biWYpJhU6YQkqPhupFyr7URy7MBP3nGyx4a8Sus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168661; c=relaxed/simple;
	bh=rtY22MgptB+tLy3QVxclIgluL35Op8OhX0cRjsl/mJo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dJtUTUm9f3OaElWjiGlVc3YrK3t8Xdp54RzO8QEyvOYzzpmFHqgaylux2m5mepb/Bx5alzSWO8hxgBBXbirm+nHafLvFv0zhV3OBArzVQnsiN/0b8Hmm+TKO/rvdMzGnW4PImR6kr7YN1ku7VGl2Ei1ZRnmvBciMvhHaBKBTr8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=udZ7EYqk; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5e5e0caa151so4138636a12.0
        for <devicetree@vger.kernel.org>; Fri, 28 Mar 2025 06:30:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743168656; x=1743773456; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eMxQ7UQKMt0+Oaxy9pEE80XpNTXV7CL+WPCOZ4uzjjQ=;
        b=udZ7EYqkiqCuXbSiRXCMBZmiDe3QWEWva5a3Tl21XVIONFFX3Ga/CUAOfR4oJNO7Fa
         7wvSQQEP23kKdZ+CiLQncc0Gfz7pFq5bpayn9fMgltnzJutksKItUmRbte5hGgJcLA42
         JP/Jp4ERedHbLVmXjXBUgKWzIDu3LWlVxfJnaKxhNrwn/2Lyiu3my9hjnXrkNawzJVrs
         AbT2qJ59MzOKV/fKVGYE6k9fnCN1Om0tsjVSXQcGff3YJS/oU/8brGL1vuPFAx/hQm0i
         b6BKdcme94J24CtPFbz2DioFe4X0kmvZyfxH7HbhsRvhNXAE7RK/Tnar73n0lyB1L2+h
         q1sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743168656; x=1743773456;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eMxQ7UQKMt0+Oaxy9pEE80XpNTXV7CL+WPCOZ4uzjjQ=;
        b=jZlhiYlB5NKObMkBXjl/PIynDLmJaYGmTvZAgZv5c++rP+49tu6yen2v1fuDIs9LRx
         FM0QDehQIia9UvzB5257CFaDArUOZkdJw+/N4EmkjtoLAh+l27pXpe5i0Lg94sl9oawK
         Su5j/2xnKJ73yI4wWrf3RFJDu1BUu5lZAwMyg/EZqIUeOU8CQ9J4ZieJzzwPEBIUvPQQ
         xjlqs/lZd8v9FImOM5YpoeMyUVDFzJp7Y/kNXnVRkx4un0T0YkeIaFemitMr1Yq20oHW
         1/xpaEQirJ5e6debq+hsN9RiVs3BJrtkwOYGa1fLeOQv7XNat+Ik6iJaej7V66N5RwoY
         IHBA==
X-Forwarded-Encrypted: i=1; AJvYcCVts6A0RR/mnqzFKhgJ8QXs6NslAaJltZCM0tKD5LmOn1MzpQX+hAgBbB1OaVuZjupn3iXkHW+gY/FL@vger.kernel.org
X-Gm-Message-State: AOJu0YwYoHsKkS57H5F3+xcauynOiLWHebPDyStH+hP/6mziQLVs8glg
	AHJHYAAZ4kRaXdni0wU93h7fdl4NSLGgUv/BX8It7NQuFyGUmB0hUo6U5g1iP6o=
X-Gm-Gg: ASbGncu/tkiVhUFMmRP74n9XPkAkvpPiCJRMNSydRCAyGX7F3E5eu3CRYCkOX52dfzV
	4PbdUoIx11U8/tDp8NbshFIw0uYad3gDLSmqatAr57hp2Be6sIQ2ceDi6JHhzRImGtO3iJDBbUl
	RufPMljhAPtJdwPoEuYXaUjYb7mmC04vhCvtKEcWGloZXaQHqrdm1g5YIdjHXGV2zcF5vNdXwaM
	b0l63WEmge2slDTVc32HP+nanK/eKoSzkhub1pxp1c2Wzntzu2CENFkBom0GCD0m8z5ugzA89VR
	dZtFnZ2aYZW9qhAx1+OGAOZg6ifGhP0+i7es8W1Xl0PDA5jtv+A/mmVFdzHd4ZPMiOBZTGtUWhx
	7a14LExcCVMr3/XTDXHSfc1oetU4OSEBz7Soz6+o=
X-Google-Smtp-Source: AGHT+IH35FaKYo+gSI6anwiHIjdD3ef6MXj/ihpM/TgWINmZ8ShobAVb92+tkqSJyQ+wsMpl6rBS1A==
X-Received: by 2002:a05:6402:51ca:b0:5e0:82a0:50ab with SMTP id 4fb4d7f45d1cf-5ed8f9027ffmr7884197a12.27.1743168655554;
        Fri, 28 Mar 2025 06:30:55 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc17e01f7sm1355284a12.79.2025.03.28.06.30.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Mar 2025 06:30:55 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 28 Mar 2025 13:28:50 +0000
Subject: [PATCH v2 04/32] mfd: sec: drop non-existing forward declarations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250328-s2mpg10-v2-4-b54dee33fb6b@linaro.org>
References: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
In-Reply-To: <20250328-s2mpg10-v2-0-b54dee33fb6b@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Russell King <linux@armlinux.org.uk>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

sec_irq_resume() was removed in commit 6445b84abf91 ("mfd: Add s2mps11
irq driver") and sec_irq_exit() in commit 3dc6f4aaafbe ("mfd: sec: Use
devm_mfd_add_devices and devm_regmap_add_irq_chip") while the
prototypes were left. They should be removed.

Do so.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 include/linux/mfd/samsung/core.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/include/linux/mfd/samsung/core.h b/include/linux/mfd/samsung/core.h
index f35314458fd22e43fa13034439406bea17a155c9..b7008b50392ab857751b89e0a05d2c27f6306906 100644
--- a/include/linux/mfd/samsung/core.h
+++ b/include/linux/mfd/samsung/core.h
@@ -72,8 +72,6 @@ struct sec_pmic_dev {
 };
 
 int sec_irq_init(struct sec_pmic_dev *sec_pmic);
-void sec_irq_exit(struct sec_pmic_dev *sec_pmic);
-int sec_irq_resume(struct sec_pmic_dev *sec_pmic);
 
 struct sec_platform_data {
 	struct sec_regulator_data	*regulators;

-- 
2.49.0.472.ge94155a9ec-goog


