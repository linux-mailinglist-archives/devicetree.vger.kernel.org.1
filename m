Return-Path: <devicetree+bounces-62968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9DF8B34DB
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 12:03:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 32529B21C2D
	for <lists+devicetree@lfdr.de>; Fri, 26 Apr 2024 10:03:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC1C1448E4;
	Fri, 26 Apr 2024 10:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wrW6Zq5f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993BB14291A
	for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 10:03:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714125794; cv=none; b=PqZHnzoBsfq4puwMXG9LtIG3W0H9J6gErdR9SNBKPcxLF47iHOoWClqHaOEj9/8KL4tsXlMZyqFiLD1bmyJzNJOxglkN8M5uLjIzEjIShq1CiTIFiikBaqcKTGeuf21hJ3TBNqDQx8RiK5fliuGeb63lCrmoQ6j6iUqiUiFYKbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714125794; c=relaxed/simple;
	bh=+UavbOojFmAIVuDGknU8MaLgwR7F3N2h7Re+qQZJ5JI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JDGdKYEj5Z7AW6DCiRutXB9iXKNVoKD2jnwCwGvzf3rrv4OaA0XCA1yxiIboPp6AOM2S7svNII+2nS4unlJzpZcbDV/Kc43+Bl+81dNYyoLcCL9oc+8t1BJntHpzuwfWjSjObEGBRNhbnWeH7xz6zheG5LXPYRz4OXYOQx8aql0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wrW6Zq5f; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a5224dfa9adso359721166b.0
        for <devicetree@vger.kernel.org>; Fri, 26 Apr 2024 03:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714125788; x=1714730588; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7IDPH8aO0C/CgFOvGahjdiLNFhkL4WdyF17UbMtaO6w=;
        b=wrW6Zq5f2XysW3Cr0yx7n2ctr7PF3La/pFcXX1cf3uSQoI1YCLgAJAldxyS9t+D4Fm
         GoDdvmquLTIePuSANr+JgRhi8nq73X5F1WZsv+sw3HeP4Oy/OiB0LpXGIgpMZD1Biz5T
         t1juqnPzs1j0hYA5S27hPH3h/0COcrPR+Ss9b8ousOVK3LYloX4OIBTDIiqroxL0bk6X
         +82KuTSCn8SCHBviI86ugYMrOBxMfdc6FolXkFVdsKyB+EZy1XxbWgiJZkvKr9JjJpT+
         KdBgN47XVt1GJUI6kIkS+P0PjWfNUiQDTu+FeB+WS9oLDIDXf9Pp2hzJk8HzweAlJs/Y
         k61g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714125788; x=1714730588;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7IDPH8aO0C/CgFOvGahjdiLNFhkL4WdyF17UbMtaO6w=;
        b=rmpxCB6YVawJO4BmtWoatJqIQDgd3Ckx04BgCWNQtKEiZbOmV2kevXHjA9j72mpn0x
         OkBtkFoMBSqSdiIE3C5Ia+0MbMoqDCnTbyppuPjoxZFQBrcyT90EZwD9uQf0k+B+8mbE
         BZawZOIMFkht0ig/IW/MMwLbZPr/wi81TdswnK38IczO4nFshM96rO+yV5MiXzBzf/uG
         frFR8Z1Fd0tY1K4wPiDD1zCwNB9qDwihjKIgtWcSrH4+QxziiP3q2NjY63Bf9XcqMf6z
         Ijb5EnefhOIrdA0WeOoMiDZuvbgLFNi5DPdKOBwwk2F0TSjXfBxyEiIKgTGFqLCAD9At
         jdTg==
X-Forwarded-Encrypted: i=1; AJvYcCXLTJ0SkOaAFUKyvnIEKRM/e/xhlEeMRoSxMnV90LzKOkGeyZ4s+81v5mVCbiIv9I7vr8LoxgP/r2ACypni8x13txCrAPdsIdsg5Q==
X-Gm-Message-State: AOJu0YzfoYa5lYntOG3NBRu408lPk/tVK2rD0XxZicHeLtRxOs9kcdIX
	dPhQvEdhXTbehJPs4iNlD3MHQVXwGLyNWnOGIehnC6pXK0SK+TCmsdihtmMRW8A=
X-Google-Smtp-Source: AGHT+IGS1CqfePU/OREWF0dZiT7OJGWZIxQ0mJbOO5ax2VXkTQPuTDnboio1m8aEOqQ2N8v0LyZhbw==
X-Received: by 2002:a17:906:2b95:b0:a58:cd39:d166 with SMTP id m21-20020a1709062b9500b00a58cd39d166mr1294793ejg.9.1714125787821;
        Fri, 26 Apr 2024 03:03:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id r20-20020a170906705400b00a555ef55ab5sm10417289ejj.218.2024.04.26.03.03.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Apr 2024 03:03:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Fri, 26 Apr 2024 11:03:05 +0100
Subject: [PATCH v2 2/5] arm64: dts: exynos: gs101: enable cmu-hsi0 clock
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20240426-hsi0-gs101-v2-2-2157da8b63e3@linaro.org>
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

Enable the cmu-hsi0 clock controller. It feeds USB.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index eddb6b326fde..9755a0bb70a1 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1247,6 +1247,20 @@ spi_13: spi@10d60000 {
 			};
 		};
 
+		cmu_hsi0: clock-controller@11000000 {
+			compatible = "google,gs101-cmu-hsi0";
+			reg = <0x11000000 0x4000>;
+			#clock-cells = <1>;
+
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_BUS>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_DPGTC>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_USB31DRD>,
+				 <&cmu_top CLK_DOUT_CMU_HSI0_USBDPDBG>;
+			clock-names = "oscclk", "bus", "dpgtc", "usb31drd",
+				      "usbdpdbg";
+		};
+
 		pinctrl_hsi1: pinctrl@11840000 {
 			compatible = "google,gs101-pinctrl";
 			reg = <0x11840000 0x00001000>;

-- 
2.44.0.769.g3c40516874-goog


