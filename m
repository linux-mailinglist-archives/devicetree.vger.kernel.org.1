Return-Path: <devicetree+bounces-134098-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 358AB9FCAC1
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 12:48:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE419161E4A
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 11:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0CBF1D5AB2;
	Thu, 26 Dec 2024 11:47:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SL0UfZu8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF7F156C6A
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 11:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735213676; cv=none; b=C3hhTFwDpRWKNCWIELjmTCEey/QmSsNyAIS5555gBsoY/uP80jfjCKfsvc2CJovGuVrgtK2sw41+UrEVC2VIvQFW1Bd+83gIJqhzSWZqPlabwHBVt3VSLLf5l7bM9R1a50cldVA1rRfj5g6vfR+2H14BdKR9uOA+RtVqFeJPCg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735213676; c=relaxed/simple;
	bh=CAjROTLPEGKqOUJiValyvQKFVtW8tA+pYfuVoJsLlBk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Mt1KqQ1JqhqNwzWG6xKR0aDsS8FqBT55fcggj2PwOsu23VyDpy6/hUDGd32knkxmxYScZ2ghWd6toKIbGJ+Ft6qHhvBgWU3Pm+a1r1ndnwuny09gxZRg3PEn2QgaOMs9BFKwEYNFZMMAMS89nh+ZXKbJcirYWNtpL/VmT+yhn7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SL0UfZu8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-43622354a3eso43713785e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 03:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735213673; x=1735818473; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vhIajUh08/SyVTloy171bjJilnBfmUdkV27TB/pSkWk=;
        b=SL0UfZu8/jmdaepmHp4M91cJp4ADhGVFQpFfgLXykqTGmzgAxZy00WmD6YxiLuEfkm
         iRLz7fc5vHNq40Nx1X7IgFhLTvK+fgXCwWfprpU5KdmubjDdZePjjjKSO75fEBLK7Z/U
         TBS4I/SByCvpKqhCTYTHRwoenZ5X4UZaYSeUiNoEls8jhiQ8Au86ZxBn0jRx73PVE7wA
         DtDNWyqI+w5wOLKHf1vCLPfX4xRPVmoaYbFpJ6MIiKhVyGmK12r5LiGslip/zEJ/4r06
         SAlO6yXWSLmjaDgBB3vVH7iqShBTq95w0EqqfThjXOVX7wvwX8ea8Lh76jVTSo0ODdzI
         YzEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735213673; x=1735818473;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vhIajUh08/SyVTloy171bjJilnBfmUdkV27TB/pSkWk=;
        b=AJ57a1hjg1kJbgO4Mcx5eoaWKH8lP5/whVRl6zkXgycqxGy443qkflSaL4IMS7vfy2
         ZqGKBcdSVhXcXMx48DA17Aig2qx0d0VtN0yODLWREqRUMWNAgVCXXbM0lLbtHZICdzwP
         uzewW7DXxs2rAa1z+F2kHG78g0M890YpC9fbXExUJ0CwrSmN12lYMuIEUPrSSLksMylN
         bfTDnMrLYoN1tK40+N75zBnM78UdcWGUqVE3OeoNj8Y1pmID4n5GyHlSx1Rcgp756P67
         QYUh/Sp4UJ0FukGEmmT7HsUbF1roQzn4kJu4Y+DCtviGgBrx3GabwtMfdszBMki3XbvW
         NUzw==
X-Forwarded-Encrypted: i=1; AJvYcCU47ag8FfrBTMm94E66ubRPrhb1awGloUJkECSkJKIi/UhyI82zuHoFceE0BzqREGp/rQa5fM2O6l5e@vger.kernel.org
X-Gm-Message-State: AOJu0YyApPqrBq5k4vv+mS2W/8RXCvxgyIef8x3zwIhHS1/YncSPiqWf
	xI67HaseAQ8luqnc97GiRCZcGk0xAlUb6z7Y3e20eYtqRVN2i2TZecfO/wFwlRw=
X-Gm-Gg: ASbGncsHcnDiZ2h2f40LW+Mz+R/n2GtVKXKr8ZipfWmnivA6s872cCJeBuumWZhAK8e
	VJdexVEU/qtsiUYktNBX5c4a0OhuCxPVviGJS4qEukwiA4uBSzq5Iz/m61bZxAdm3/KZSYRrtsq
	Dv4+m8eeK9ZtfNmrFnjMa9jNTA1ftUz6Kvk3+n27mNJ0n/hYda4Q3c5mV7k9tNmBJ70SatNsFvu
	cfHlY1ag59WJ94MMceQehStxjMWouyrbgVFHDBvXqcB/zRzn8cKjtxL
X-Google-Smtp-Source: AGHT+IHuSiJa5HnlBCTbFlR0CZcuRapAkC+pk7vhPwwaOUjIIyAqKfTMwsgcM4pRjXV067dUB+tfrg==
X-Received: by 2002:a05:600c:150c:b0:431:5aea:95f with SMTP id 5b1f17b1804b1-4366a0cf7e7mr197459225e9.16.1735213673521;
        Thu, 26 Dec 2024 03:47:53 -0800 (PST)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4364a379d69sm256925895e9.0.2024.12.26.03.47.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 03:47:52 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 26 Dec 2024 13:47:39 +0200
Subject: [PATCH v5 2/2] arm64: dts: qcom: x1e80100-qcp: Enable SD card
 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241226-x1e80100-qcp-sdhc-v5-2-0b28f2e13c85@linaro.org>
References: <20241226-x1e80100-qcp-sdhc-v5-0-0b28f2e13c85@linaro.org>
In-Reply-To: <20241226-x1e80100-qcp-sdhc-v5-0-0b28f2e13c85@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1396; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=CAjROTLPEGKqOUJiValyvQKFVtW8tA+pYfuVoJsLlBk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnbUJkVxg42rCutykaFR6u7UTNJObtHyCj7LpYg
 GUnQ6LzZBmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZ21CZAAKCRAbX0TJAJUV
 VjLCD/94dNi+h1GZSo9Yt6dg8LrLEm9/5WbOjifQ/Tpxczr2sR0WE4WliPUCEqtrT0Ck0QSnN8U
 y9m6DyvC1GCgR+BCh1mtBdwcz7v+hvEP0HvtXVK7Y18VtZBS3B1w04sp1ma5FY2yhw3N9T922lo
 1f9eT+E8zHGYzHuEusvZi/JsfUgUt8qlFGD3wDm9Lm7q+uLV49/vwrXUxk9MQqkZXzc9aEdwced
 IbpLGQ67iFLKrvnb1FBjnequYxA37fyUJXr20kY24G/h3xCD12TqFxil7opla1eq1nUXsxGLzBA
 u8QOs5g0o+tmw4BhlO+3T5/FM6CfY/T1ZqmaNR3fz9JLoPTl8haX7s5rNLP1362glzcf8Ckwgek
 86oVEbUqaxWZqmSA2UR3bkCBmbqk41BgCtsp3OPD8CXKuK2BGWK/uy5mhiX1vbPpyKebsXdrSTM
 RtGlpBsuD8y52VHbbegzZ1NfcxzUiRhUHzRx2jMsJ9oTMU91klalM8ZXSyUXLj5rQQBqyjY1gn/
 3G5fD4FIjwUGEwJp/6gX5bLYTkLQPuY6nmc8y6+7RDo9tD+5DdByJEKVHZlmD80y8/WTorC+J+f
 o9C3DbHhj5gPXWRMd/0bt8U1jPT4ld4y1V095Vvph52FFwQo5k+mNHupZYltY5kRAqg1Uq0zvUX
 pFu4Tbg325l/xCA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

One of the SD card slots found on the X Elite QCP board is
controlled by the SDC2.

Enable it and describe the board specific resources.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index ffd28fd8059895ec345f4ee8fe6a2c37e7989747..92dc409f6d5963790f48a76cc421e7ef4c6d6ea3 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -731,6 +731,20 @@ &remoteproc_cdsp {
 	status = "okay";
 };
 
+&sdhc_2 {
+	cd-gpios = <&tlmm 71 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&sdc2_default &sdc2_card_det_n>;
+	pinctrl-1 = <&sdc2_sleep &sdc2_card_det_n>;
+	pinctrl-names = "default", "sleep";
+	vmmc-supply = <&vreg_l9b_2p9>;
+	vqmmc-supply = <&vreg_l6b_1p8>;
+	bus-width = <4>;
+	no-sdio;
+	no-mmc;
+
+	status = "okay";
+};
+
 &smb2360_0 {
 	status = "okay";
 };
@@ -880,6 +894,13 @@ wake-n-pins {
 		};
 	};
 
+	sdc2_card_det_n: sdc2-card-det-state {
+		pins = "gpio71";
+		function = "gpio";
+		drive-strength = <2>;
+		bias-pull-up;
+	};
+
 	wcd_default: wcd-reset-n-active-state {
 		pins = "gpio191";
 		function = "gpio";

-- 
2.34.1


