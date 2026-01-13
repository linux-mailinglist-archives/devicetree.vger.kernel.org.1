Return-Path: <devicetree+bounces-254447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A54D184D9
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:02:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2D2E308951F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEA5738BF79;
	Tue, 13 Jan 2026 10:59:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fio7FhER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com [209.85.128.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFC438A714
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:59:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301983; cv=none; b=bi1oK0e3baSMLVXfJoj7mRIXiu9OcCbsgvGcQyO5w+Ml82ph9nXAKNpKuoOcbX5Q+QP/0tv+iq/X8B60LqU+eh9iMlO7DIoWskl0O4y9QAMv931vnmiYDKfqrerdqphLj5bjnikJb5pq4e2pHmzKsIFNHDVjSRXlWhapcDtQN4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301983; c=relaxed/simple;
	bh=WUdMAX8z4QhtVQSfFhWdE8LzEGj91H8aYjzAX8V+ueA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=NpFBz681hYunqbR7ZLkt30vsJ2OrpCEO4zurf3GeSnPPxemHmYSbPHhAecKn2/mvomJH1iUvOVdRhdDbXLTv4m2DUyyv2xXoEWC34phtiy8isS8w7JRe2ZTI7e/umM7oKDHCIME4o9g44jIdGlucjvOpUuMNc5rPcQd9A9blylE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fio7FhER; arc=none smtp.client-ip=209.85.128.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f65.google.com with SMTP id 5b1f17b1804b1-47796a837c7so50675075e9.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:59:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768301976; x=1768906776; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oQMGTyMi20OxWQa8x3f8sz8cBzKODyRyWVPXoBWeNQ=;
        b=fio7FhERSGIwBLdjC65oMhkXwbHE0dF6ea08IxfG/xFgnsjCOmSvKiMQpgSSHjqscW
         0mA5XDGM1gem0eUN6+LxMCjdF++qaDkGSOicWwgotXJf1EbP1PIsS6exV7M5Pd0BvlO2
         Q7Eplk1NOVUUicixcuaraQ6IqWApA2nbjTzc4iVxqpgYksTqqJjlesYMxPdFmy1V1n+N
         E3mgXSbbeQlEqcGgfpIsKa/lMLDy3+v0mOshrcVQcUWUwU2szuliC7CzjLJN1o8pAtul
         dUmJIv540AkXPpdL09BrQhfAKIRHqjx1VRgKl6Xm7j/9jCgzGTbUUYNI7AR9e4uLXya6
         NYHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301976; x=1768906776;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0oQMGTyMi20OxWQa8x3f8sz8cBzKODyRyWVPXoBWeNQ=;
        b=Z+YxQQvPzztKGNsX4/7KhJZMhKgP7i4gcPwQsPBOwkpeahYCgOQyhusZvBPcvFmdda
         SCP5D2lhZIHnhFZBce35v0AYtdMnpS3Id0rtmxp6vxMVZKFYHa3tlFv9L3qD5xG1Hjoh
         rW7NyQbs1RLVUcrEIIWSk2qKLLnrXONtmBmQji7aREhL5G1r1xswYRzDpTLU2sy5tuwY
         ORhlV32iba+ChkT4t/pF39Yw968geQu0Jcom3YJSni/TMxuY9/mLY6vwYpQIVpr9xlkk
         UQm6OFSwami5qLQYp/bWgEYNYHbFPGDkYp4m+ccr+HDX5PDKMEzxoYG0EC1epsFTYAPA
         HfKA==
X-Forwarded-Encrypted: i=1; AJvYcCVMfzhLPocuCbARVr8K+A4Uhuf/LSLzYt+byQMWWk9L7XIqRC+SeLeSCS7t0vSHmT+e1IzYoB9l8wGd@vger.kernel.org
X-Gm-Message-State: AOJu0YwAfil/ZXg4RD27PKtFPXYsWy6mPNXJQ14+8IG8Npfmb/YwmRKf
	SE0N8BEo9KCOk+dxqYivvj2G4uA/L/osU/q2eAG/q4zPWl7aDbMikOltkYcdufCD0QRu/NBxhIE
	8hw9v+Qo=
X-Gm-Gg: AY/fxX5j2hvvTDUZtPjT8tAfogjTW0Fj3D/+GwSZ0TGZGKkmwTtklje6PWTMYMjMvP/
	gV1NiwZhZtpZIbIYgdy/eFt0snMZyIlgWN7ApRom2FmkFLuut2uV8x9Fq2gjEVYt1imMmtNy6H+
	kS9U5b+ENRe97RnSc8hQ8Zde/8lf3RIqxRojWQJH+QReqZvBUMBSIYd/QkSHetht0d6/oFMqw9V
	yLc3CTY7GW9bB9FzxUpdt9RuBFNcND7td+/BCfOZZl+/6Kpz1EQyRZa7FTqtu0F2BIdHpQJEpqz
	S4+L7iMgJWAJXFR1CFShcw2GcaeyGYQc7i2DH4ZNN/FyfoXQw8J7IgJgBfWKsFimvO/i/wi7SDi
	gvwB8UBPZ4ms2GK0ugjGRwJiD1sIntRR95Qm8ayYO8dnTvlPGS0J7DuQWEp1sB55Q6l55hGhIPr
	PZ13C1mrUstSDNpA16lo49CnStz27ifdmgFwUk6nyXJBI=
X-Google-Smtp-Source: AGHT+IFn1dzqQ/D+0QCf5k/jfSxOt6mGZYAi0NlFjRq6667iKCclfMYVXNjtvPWRLhP0JCbSG1j+yQ==
X-Received: by 2002:a05:600c:6815:b0:471:1716:11c4 with SMTP id 5b1f17b1804b1-47d84b61379mr229758235e9.34.1768301976084;
        Tue, 13 Jan 2026 02:59:36 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:3454:384:9eef:8e29])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5ee243sm43729881f8f.31.2026.01.13.02.59.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:59:35 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 13 Jan 2026 10:59:02 +0000
Subject: [PATCH v3 5/5] arm64: dts: exynos: gs101: add cmu_dpu and
 sysreg_dpu dt nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20260113-dpu-clocks-v3-5-cb85424f2c72@linaro.org>
References: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
In-Reply-To: <20260113-dpu-clocks-v3-0-cb85424f2c72@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1517;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=WUdMAX8z4QhtVQSfFhWdE8LzEGj91H8aYjzAX8V+ueA=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZiWP4MHYOnVwKJEasNjKHdnZaE44GyYpHQ0eI
 GH3W5ErJ/uJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWYljwAKCRDO6LjWAjRy
 ujQ8D/0egS4XV5yKcYX3dsAb/ybBt7n2mTIbl+uUqSkgvnQZ4m5Z72v80opr2qbajInKVtXcyIh
 Jy+EKJV/MQ8kUT+Ptz6K9lt3BGqpy/ENLkUpoMjRI62kaOEYMC4NbWoUBh2hm26kW+V78zO2bwK
 yiuMYKmrlxrH2Qwl+JOSGIfrXHuXfVGGe3afw1hqcSD0e4GQ9zh7zWQY5DsyIt0GEGx/HInusG/
 MNVzUo+EgdqjsLETTL1QCGQ5krRshz0FwxSCzMr7B6NYmpq3uKQpFHed7712dMqirj4O+R1KkKy
 cE66+RPBeHYdUFSa4R38rYgs1IUOTZcPoVeBlOoZFt1+bGldxxdWpvqownj8/iyxRXACvPX/dn8
 IxrbtKDgzsIOfiukT8wt+8Wu+ziVTOLPI+EyL9NObwqKaSDI5GQhAj6hZ7o3TzG4nMINEv5T9Y/
 MuWE0zWmQCqWzDVMAHoQXQSVs2Aw8bl5mDs8YxWkzSs8OJi9khsmtsCqP/AikzP+U3p0u/IZnxW
 I/LFdJc5Rx/AxGlxcXwUHZUR5F+QZUnMI/EoIyhkZb5FqWR0juEfUzntE9T8NhEtHuvlhHPJjFk
 Eqkvrwkt0CWt6izsAwwvdftnn+0Dmuv3JvmY0CIpEekqibusF7gU53gw20iP6MmSU0RUEzmcfYf
 fs11GbJxI6Ibbzw==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Enable the cmu_dpu clock management unit. It feeds some of the display
IPs. Additionally add the sysreg_dpu node which contains the
BUSCOMPONENT_DRCG_EN and MEMCLK registers required by cmu_dpu to enable
dynamic root clock gating of bus components.

Reviewed-by: André Draszik <andre.draszik@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 48f3819590cf8c05d6bd7241cfed8720149c7db4..d085f9fb0f62ac2f57b104c20880e64d885d0bee 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1815,6 +1815,23 @@ pinctrl_gsacore: pinctrl@17a80000 {
 			status = "disabled";
 		};
 
+		cmu_dpu: clock-controller@1c000000 {
+			compatible = "google,gs101-cmu-dpu";
+			reg = <0x1c000000 0x10000>;
+			#clock-cells = <1>;
+
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_DPU_BUS>;
+			clock-names = "oscclk", "bus";
+			samsung,sysreg = <&sysreg_dpu>;
+		};
+
+		sysreg_dpu: syscon@1c020000 {
+			compatible = "google,gs101-dpu-sysreg", "syscon";
+			reg = <0x1c020000 0x10000>;
+			clocks = <&cmu_dpu CLK_GOUT_DPU_SYSREG_DPU_PCLK>;
+		};
+
 		cmu_top: clock-controller@1e080000 {
 			compatible = "google,gs101-cmu-top";
 			reg = <0x1e080000 0x10000>;

-- 
2.52.0.457.g6b5491de43-goog


