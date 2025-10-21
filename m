Return-Path: <devicetree+bounces-229427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47912BF74D4
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 17:24:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB68F19A14AD
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205573451A0;
	Tue, 21 Oct 2025 15:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="khth4l1I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40BEF3446C6
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 15:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761060197; cv=none; b=GQQudZqaUes9gopVB6xMFsXUGAFikqP4VbtfcmHwm+0fnyC4tGzI65pMQ2gAj6MPfQsu+A8ZbWCnS1WodVw/Io0u+6NTvLifQSbFiqrr708V5suAORBEemm72DMPIP59HcIrNPyK+ihDA7txw1R48F/JPn8F5opRWZFjjMOACw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761060197; c=relaxed/simple;
	bh=Zt5q4iLPeiXhv3xhlSGQMsTacmCAuBuHa4mMAKTae8E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CHZSFgLwqq47kl+SlTuUTOTSkAIdvsChjCfeBpwrUPoxFYhRlEns3sZKoVH3sXpeFFZ9SVJYt156f4dnN88TkBxJFKUwL9EGJpMSJDyjWNGPq/LlQfZg7rNA1HswaEzuyx46hSpUuM0SN9cJ9HerjrJgcu1CC1ZS15uXeIouajE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=khth4l1I; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-b6d262c8528so132690966b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761060193; x=1761664993; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JF1Khuy4nqLiE2y1n9lovRhx5obbKE7xwKO+d5/rlWI=;
        b=khth4l1I1jXUTHCCy3zsgCyIXuDj8yQM3azBsg0HFmOdTOqRTvapr05eA6f5HzVZsY
         jalkjLJF2B1FwNJsU8XNB+mmECn0s6D5AMoelzgqY9iYizObnXqbuubojkEYN5o3vDkt
         KuGFRrvkSBiqtXWE0MA9SnfjbsN9M01R3wwSJ11NSLxb/89aXfHCm8cOZ7NhsabOvdYN
         w+c6otsk/siG/WHOtXQae3ZmBN3o/T2q6reZAXjCK9nv8yC10UZ3R0jj5jcRAoe8BG5m
         Xktp2hXjOOHdNPEcsa6z/c8IJEL5hzsFd2oE/SvMJKgWPYzepJlcBdAMxLMLf0AotB5f
         1uKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761060193; x=1761664993;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JF1Khuy4nqLiE2y1n9lovRhx5obbKE7xwKO+d5/rlWI=;
        b=l2EuOUcK667MnULPsYMIcGkDNkJ5wVKKwhb4xf3ZFO9DILgoJYVg7uWmFRWrAAm+mq
         yAQ4eqAvjqFGhu8iGX2+Q1dgC54jf5wZBbUTTuj3KW5oWvhWdRdCxjxli2hpX8AvHRUk
         A8jQdQQfbS8HcwbQfXp96DoDGV/yQNgC59SHluQMJsA10glrcfRy4BqNuqzv/Yq7XQgV
         q1IcWDh/T/R9ha02gtgYtrXuk7GSbbEgVg4pJYqVc142TXA9KS1+OTsJsRInr1gvyD7N
         qPDhWxNTBp9ZVL+kNLLgfhNLNt79bRFyf1tULIGFRM5Q34n1ghHnF/sdYqV5XHw1Um9e
         KDSg==
X-Gm-Message-State: AOJu0YwSVHk35hOuY8nJD3M97a//JTrBZdKiHfc2KUg2j83plvfZLyn9
	FR6Ouh8kbDE45oOpMFpoDBLdZ0Tsek8kaoBMFRN005KQ8p3OCPPt+W6W
X-Gm-Gg: ASbGncubqeXapYbabBXyxasvKZqjae6XI4gHHlTE1KbY1MEEc0qYxAicXzaeoOWu/Va
	k7dSr8GHfQiv/IayZ3b7UWRlRF0YnpEz9geid+7yGk2mENeTPk3jnFpKJkZr2EczSSlmStZYHjC
	bpBldJ6RhGtGXpmQB4rTClrT8xuZGJX416ubDiGGSrvmBLC4qRB7wIA2GA7LF3HfJzTZnDfnXzm
	vH2iwH9bfNR6UokY6r8B5OXz44ht8JgsBN10qNPcIK1uC12VLUL4EoaGh9+gBbBpNEFSmkxDAq0
	cT+6yHdbes+SrGidZgjtTsO7uvFzRaNWXpx3DG9lCWHFvBtQM9U5kFZ0DeYwXPx7DgYcrOPkR07
	Y/swzbOBJNe2zavf3d/XsMQR+kIsDJQDov9/IkUX7gbfYa9s4cwqzFyHNhmkUuBxxOo54S0ClvI
	G4VoFLSz73WjtwpHPt4sTG7YHuFwTf7CJjmcO41w==
X-Google-Smtp-Source: AGHT+IG8ZMx/3IH1gWXA/kMHWe4Ced895g7GfNQEjLkqqPoqoeKq+HY9fH6rztVBxeqVkVrZOdbVkg==
X-Received: by 2002:a17:906:794e:b0:ad5:d597:561e with SMTP id a640c23a62f3a-b6475708a50mr2149204266b.56.1761060193479;
        Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
Received: from tearch (pc142.ds2-s.us.edu.pl. [155.158.56.142])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm1082737866b.31.2025.10.21.08.23.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 08:23:13 -0700 (PDT)
From: muhammed.efecetin.67@gmail.com
X-Google-Original-From: muhammed.efecetin67@gmail.com
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de,
	neil.armstrong@linaro.org,
	lee@kernel.org,
	rafael@kernel.org,
	efectn@protonmail.com,
	daniel.lezcano@linaro.org
Subject: [PATCH v3 5/5] arm64: dts: rockchip: add Khadas MCU and fan control nodes
Date: Tue, 21 Oct 2025 17:22:45 +0200
Message-ID: <611deaaa0e408eb042db7faf215b85370569edeb.1761059314.git.efectn@protonmail.com>
X-Mailer: git-send-email 2.51.1.dirty
In-Reply-To: <cover.1761059314.git.efectn@protonmail.com>
References: <cover.1761059314.git.efectn@protonmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Muhammed Efe Cetin <efectn@protonmail.com>

Add Khadas MCU fan control to Khadas Edge 2 with 4 fan control levels.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 .../dts/rockchip/rk3588s-khadas-edge2.dts     | 58 +++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index 2c22abaf40a82..ed5168d50e182 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -271,12 +271,70 @@ hym8563: rtc@51 {
 		clock-output-names = "hym8563";
 		wakeup-source;
 	};
+
+	khadas_mcu: system-controller@18 {
+		compatible = "khadas,mcu-edge2";
+		reg = <0x18>;
+		#cooling-cells = <2>;
+	};
 };
 
 &i2s5_8ch {
 	status = "okay";
 };
 
+&package_thermal {
+	polling-delay = <2000>;
+
+	trips {
+		package_fan0: package-fan0 {
+			temperature = <50000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan1: package-fan1 {
+			temperature = <60000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan2: package-fan2 {
+			temperature = <65000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+
+		package_fan3: package-fan3 {
+			temperature = <75000>;
+			hysteresis = <5000>;
+			type = "active";
+		};
+	};
+
+	cooling-maps {
+		map0 {
+			trip = <&package_fan0>;
+			cooling-device = <&khadas_mcu THERMAL_NO_LIMIT 50>;
+		};
+
+		map1 {
+			trip = <&package_fan1>;
+			cooling-device = <&khadas_mcu 50 72>;
+		};
+
+		map2 {
+			trip = <&package_fan2>;
+			cooling-device = <&khadas_mcu 72 100>;
+		};
+
+		map3 {
+			trip = <&package_fan3>;
+			cooling-device = <&khadas_mcu 100 THERMAL_NO_LIMIT>;
+		};
+	};
+};
+
 &pd_gpu {
 	domain-supply = <&vdd_gpu_s0>;
 };
-- 
2.51.1.dirty


