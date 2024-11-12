Return-Path: <devicetree+bounces-120982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 510A09C4CD7
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 03:53:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09F0F1F21894
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 02:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9478208213;
	Tue, 12 Nov 2024 02:53:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gOp5U5/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64809205AD3
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 02:53:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731379996; cv=none; b=IkDWeZU14SnGKEa6zOLfZLkqOPXavNnz+G2PpuWe3owQ7JS24aVCNW4+YjjF4u+LEmDDZ/5YY3Chn17/ZtlYuZ6LpI9MjMlNxfoha2QjsV6ZDmRqhQ6F2tUOhkIHz3KTqP6p2rbn35QNH/k5CbV+zR6CCkes+pIMhBcrMmJFEGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731379996; c=relaxed/simple;
	bh=ucgy9cTopg4E0lG1/WUWNQk0L/jEkoP91XiRceUS+fY=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jFRO7iEjEGsTZNcId4ZWrZN+iLLv7z4RG959vyz7ZaTDOzNmnK4YikcOsJoVhGHZZp6L9wSzXo/QJyF1+qeTjRtCP8e/rSTX9i+KZaij9SboV55YnTIFfp1M3heCHo1FCb/+k9uOCElD5oHOvwzXOFi1slFpJFnhY2S1WCJgDPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gOp5U5/f; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4315baec69eso45381315e9.2
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 18:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731379993; x=1731984793; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AUmkRrbbbyk9xLx54NwTCapKIUbE/O+g3oU2muHUiIc=;
        b=gOp5U5/f4RbKfVW2JEv9bPATv0in9hqoVo24bRUCJ2UZX/FtW6FpfNjXsRn9Vvsuyp
         GbLr05sU9YTSpFrFpg8Jj8ojcnuiy/Ufxu3EDevUNbYi5zYcVIK9JatWz5Mg1K8y52gX
         2tHfwWNuSZTMh1BfGg5Ui6SCl2DyCgFpXTjK65PK/W9airTHxpDUJPxon9AvYstKsbX3
         f14BGCVZBvNzD4u3Fsd1o8C4lSJ/gx7O1F6Mb7hshYhi/MIWqORUCP96KJbbLOwWbOa3
         Nwihdtlb0KPJCQIjmIleBjfifmepqHgOqUWC8KJyM+qqsS79HAwAOzK5jRj1nWElzgjE
         /oXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731379993; x=1731984793;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AUmkRrbbbyk9xLx54NwTCapKIUbE/O+g3oU2muHUiIc=;
        b=tuvyU76MeVLTfiLSlS6TyYtV1DTK3AeSEdO65Zv3QxW0SizfDwSiy3ESoCvA8dBCRE
         xfxey2TLOZOyfOB0hVWi1sp9/EUwZ3tz2yJQXMOsPw60ISuhsoel+EN3hYNePzKMcbZA
         XUt2AExX5HfrK8ETVnpVX7TCY1PX/c952LGlPxJDke6XNvxy4YGZlgIt9WBNIjbgTJi1
         iAmU4S7XJUEXsI2GqCcAOGve1E5TxzlSkuRUUvHCRiDG666E+31/VW23aGXAAKm46q12
         JKSNdgr/oFuOtIfLmRUQ3A21X3D+C+JqHg7hl5nULr/D8JHDFpGLV4OZsIlw/KXjLnHs
         liRw==
X-Forwarded-Encrypted: i=1; AJvYcCWNMdSZv2sArzylIPQcNZenoNIW6U0ul2QEsIrFWUqWd3ZITsimBnLllojQaIdMHWwSHrw5bYyeAy+A@vger.kernel.org
X-Gm-Message-State: AOJu0Yximals2Wdo2Q5Gg0mMeaoSFotLdYl3CpAmqeyquslFtpyIpwJf
	z4g9z88/klLf+IAjmcX2iUKHD+9dkjTU9/N77YH8RFHY1fyw3c8JRHk1thn3nMg=
X-Google-Smtp-Source: AGHT+IEwJoxeWcs+JgTBSm7RguLuVxJryodvRLUUZ779A7RyAXR4KAjN/Qdedun538HHJYqULBojOw==
X-Received: by 2002:a5d:5f52:0:b0:374:ca16:e09b with SMTP id ffacd0b85a97d-381f1863404mr12322257f8f.9.1731379992780;
        Mon, 11 Nov 2024 18:53:12 -0800 (PST)
Received: from localhost.localdomain ([2.222.231.247])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed999e0csm14056380f8f.59.2024.11.11.18.53.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 18:53:11 -0800 (PST)
From: Alexey Klimov <alexey.klimov@linaro.org>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: linux-sound@vger.kernel.org,
	srinivas.kandagatla@linaro.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dmitry.baryshkov@linaro.org,
	krzysztof.kozlowski@linaro.org,
	caleb.connolly@linaro.org,
	a39.skl@gmail.com,
	konrad.dybcio@oss.qualcomm.com,
	linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/4] arm64: dts: qcom: sm6115: add LPASS LPI pin controller
Date: Tue, 12 Nov 2024 02:53:04 +0000
Message-ID: <20241112025306.712122-3-alexey.klimov@linaro.org>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241112025306.712122-1-alexey.klimov@linaro.org>
References: <20241112025306.712122-1-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
controller device node required for audio subsystem on Qualcomm
QRB4210 RB2.

Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6115.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
index 816b8331933d..df2241237b26 100644
--- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
@@ -16,6 +16,7 @@
 #include <dt-bindings/power/qcom-rpmpd.h>
 #include <dt-bindings/soc/qcom,apr.h>
 #include <dt-bindings/sound/qcom,q6asm.h>
+#include <dt-bindings/sound/qcom,q6dsp-lpass-ports.h>
 #include <dt-bindings/thermal/thermal.h>
 
 / {
@@ -810,6 +811,20 @@ data-pins {
 			};
 		};
 
+		lpass_tlmm: pinctrl@a7c0000 {
+			compatible = "qcom,sm6115-lpass-lpi-pinctrl";
+			reg = <0x0 0x0a7c0000 0x0 0x20000>,
+			      <0x0 0x0a950000 0x0 0x10000>;
+
+			clocks = <&q6afecc LPASS_HW_DCODEC_VOTE LPASS_CLK_ATTRIBUTE_COUPLE_NO>;
+			clock-names = "audio";
+
+			gpio-controller;
+			#gpio-cells = <2>;
+			gpio-ranges = <&lpass_tlmm 0 0 19>;
+
+		};
+
 		gcc: clock-controller@1400000 {
 			compatible = "qcom,gcc-sm6115";
 			reg = <0x0 0x01400000 0x0 0x1f0000>;
-- 
2.45.2


