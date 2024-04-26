Return-Path: <devicetree+bounces-62967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C92A8B34D8
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:03:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7DE21F21D2A
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 231EA142652;
	Fri, 26 Apr 2024 10:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ppy8FGCy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A5A14265F
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714125792; cv=none; b=k5HrOqUXJNNnrtC7VjsaHaGYIzIeG2CeHIVOpkfwe9US71Ufnyly2qB+lblBKtBzTAqwsWH9/g86CdP0bVGWMlK1hxkshJ8Pm3FK/0rA5sP2eALWvwUVa7Fri5v20O+Da+/HTAB18d71MY0inTUzUjDETu1dTzJuhiRzqJL3wfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714125792; c=relaxed/simple;
	bh=c4GAR/VHXiSuWKUBHE7VoIKB62u9XWyDx4j4aLii5Og=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mh/sObvx2Grt2w9BfoRHhppmUGzm8dlY77Tj/9W/dbERuQAk0xDo3OVCslMVksORc9qkZkMv3ijHVthqmWHU/Cqj07ssWJXWnCKzy5TML5WUi6COGk+ARjhbT8cM8tBKIrEmQ+pk7a6R1X/4l9lfiFZ+UVx67LZA/ewzHi12tGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ppy8FGCy; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a58a36008ceso249398866b.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714125788; x=1714730588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3DZKoeYKhsS0t9QVM1EShX7SrXXkb1dkzX7KrV4eN3Y=;
        b=ppy8FGCy2CRtcwTwqpxscK70U91NVI9WG6HsTGjN31sDPiEAsyoudReEw/zOL3bBEt
         ZpLpAg5P+qRUWHRFNbC7rIKEoY6JnZeTbYHkSvmckt7mLU2mcOP91Blc3UJkL42bYGEQ
         V9aUwJU07vyjyVwaAgpa7gB6ntHgOILOdjPrw7031l5jFVp6L/VRxh5L4md0f6YXPOEa
         0WR9G6gkD2+6GuBmugjEbT5CTMKaI1Z1N1dxphrjEEK2J6N4N7OuXHS+rQCQ9/D7/aWh
         XtQvsPvy7I0eQS67KPtaxjuNN+cE0ken9An7Nh07fkC5NKZzequFHFkV2HqZOsAP8y+k
         KcmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714125788; x=1714730588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3DZKoeYKhsS0t9QVM1EShX7SrXXkb1dkzX7KrV4eN3Y=;
        b=Mu0VpaNxoAokMVMTnYo6H9DzKOe5rbH4YvpAmBxnbM605pVmJeMpiI/sv1bxcjFuX0
         RbEmrUT8huLBSByLYOyMLAFDE/78RLvIDXl8IUqwcmLKVkHBrKKiP/h8KEuL/WaifQic
         4otr6yC6EK6LM0RaLJLPPoLjvO50dObePasWuocpNfHoFjOLEvFgtgRJXc/vHgSwTP99
         UvXeqOb5J0s/KvxyMJiao50duihjVFKuXutO7BwK1ocsBZEkYg8uOKZ0K4shQHzyNy9k
         9Ipf3gYQi7w5gLC7P4ntLdxyo37VhS3xqx+lv/UZdKcyRYa9JGAuK8PHhYYOyikLhwnE
         Aw8g==
X-Forwarded-Encrypted: i=1; AJvYcCXSYgw8hXejYqh29G1ynYIU/8ziHbEaVaT040Q/C5gLtcQqgX3kzqh5PKp8fRer3gn5Ovm8Rsk3GTdIhpvg9JfvDzIp/m2ui+M3qA==
X-Gm-Message-State: AOJu0YxZqTjuk3n6GGXhbDbsCo7htWmmoth1ly/Z6nsQHEHQ+uhxUMTD
	Yxii6RXQIivOGdvczTsnVDp88qRcemMGyEn3LEQMdz9CxdP2OvkeOGY5vZa98oo=
X-Google-Smtp-Source: AGHT+IF8yC+P3Xjtk6lhWRIE+HMMTo1r+6sopk+vF5M8rRyByCwt/vcu3QmI793r4Uhlx7cGlfzr6w==
X-Received: by 2002:a17:906:c451:b0:a58:c54f:83fc with SMTP id ck17-20020a170906c45100b00a58c54f83fcmr1674104ejb.9.1714125788406;
        Fri, 26 Apr 2024 03:03:08 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id r20-20020a170906705400b00a555ef55ab5sm10417289ejj.218.2024.04.26.03.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:03:08 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 26 Apr 2024 11:03:06 +0100
Subject: [PATCH v2 3/5] arm64: dts: exynos: gs101: enable cmu-hsi2 clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240426-hsi0-gs101-v2-3-2157da8b63e3@linaro.org>
References: <20240426-hsi0-gs101-v2-0-2157da8b63e3@linaro.org>
In-Reply-To: <20240426-hsi0-gs101-v2-0-2157da8b63e3@linaro.org>
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

From: Peter Griffin <peter.griffin@linaro.org>

Enable the cmu_hsi2 clock management unit. It feeds some of
the high speed interfaces such as PCIe and UFS.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Reviewed-by: André Draszik <andre.draszik@linaro.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 9755a0bb70a1..52be951ef4fe 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1267,6 +1267,18 @@ pinctrl_hsi1: pinctrl@11840000 {
 			interrupts = <GIC_SPI 471 IRQ_TYPE_LEVEL_HIGH 0>;
 		};
 
+		cmu_hsi2: clock-controller@14400000 {
+			compatible = "google,gs101-cmu-hsi2";
+			reg = <0x14400000 0x4000>;
+			#clock-cells = <1>;
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_PCIE>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_UFS_EMBD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI2_MMC_CARD>;
+			clock-names = "oscclk", "bus", "pcie", "ufs_embd", "mmc_card";
+		};
+
 		pinctrl_hsi2: pinctrl@14440000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x14440000 0x00001000>;

-- 
2.44.0.769.g3c40516874-goog


