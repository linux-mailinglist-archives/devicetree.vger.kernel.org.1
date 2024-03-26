Return-Path: <devicetree+bounces-53474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CAA188C67D
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 16:13:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AE53FB261E5
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 15:13:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E70313C9AF;
	Tue, 26 Mar 2024 15:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="T7r38BeB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D611213C81C
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 15:13:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711465990; cv=none; b=LX9SKsuImeHz6c0qlmAUl0ZpHzQ9fbqFPqE63uWlYx8uQchFsbLTvpTeUhOobRmuv/+6rGd6yXO1oD53Ly1r65PlSAUkUv3LE3/oKKzUfUxGB1I0QXOM6zepTddsBpd0bWy4nSwU1H3h/QWbyTqPXawtU3IgwfcuLY/1D+p2k3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711465990; c=relaxed/simple;
	bh=FeLxIq9atoz4TPPt/7OWo23kfV4aQ2q8J2PJbLuSt0U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IePIspjgk1V43tn9E8ey9Vf0HCd6zLS7/rVL0dEvfCz2BfXhQf32RGcfKmH6NUZ68pB/kEtrPsIaArWIEyHyESEY0KPpQe08C1PbOK6pG8REFZOkrwu88QZyI/1wdzKKr+g2MYI9ak1ny+wUlJPuwALKZjz2aMu0ZbZB43KsRU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=T7r38BeB; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33ec7e38b84so4002622f8f.1
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 08:13:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711465986; x=1712070786; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wlz6Sy54uP+548eyUIyn9J//AASUpkQcLH7vl4aBa9g=;
        b=T7r38BeBBT/mVNNY51rJuK5P+5q57Gaw1rJWD56W7SzMRvW6zen2psnixWbXdb4gXZ
         oLl98OCZjkB7wIoRed5y5NHyJHkUI/ywD/kZ/UhQ34I7tJHrsetKyUubu3BvNDBsd3Vy
         RRZ7mkwKa89kj/Ra8HR+cSQwQQQVTI7C1A90gub9H8Q6oD/9jldzhq61tvQeeRGQd4UX
         9H4bRANgZQxznKRyLOMEOkNmuFCLWiujSjP1O5asJLaV1PRAKP/OaG2WJKO7ATXmlrw4
         aQig8BlYhdFqRDBs3aD93g9P4JysCtRUhcUi40nE7Dr+p0eDsm19D9AjId8ozf2eQ6HI
         KYjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711465986; x=1712070786;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wlz6Sy54uP+548eyUIyn9J//AASUpkQcLH7vl4aBa9g=;
        b=Zii0uowO7MXdSDTi6A0Egn9t+VdEeqEpYqZDdNz8BWv++3R2sf8tkvQJ2iuEFiDgZM
         kgdgTVbETbMjQ4PMFBnzUb/cRBjZVd7+h3RG2vCkbjRR7W75YnPfjAVYjR3abz8BIXfq
         2cxQKPizFqJMakQA8SuAp5lEV4EhAWVXjoCu+yk85znE3l/QJ5ul2aWCExUF9s8b93Kx
         L4eNN9ZZFraXxgP23YdDYjJEj50hyHY5AKp7o5YIJZQUgQyDdBTprUkb0/+mB6M/+1zE
         prBLpvpphuI9Xu1cQ/ek5MH3nM/NwQDZ5sM4lDjbcLYqPbg0m/OJOZRPFTDykc8kIRZ9
         rNyA==
X-Forwarded-Encrypted: i=1; AJvYcCVZXqFDHTety+A9FPT6W46jemqqlqdGU+DRKYQwWY/hIRKjPOnTqbCiOkpqN96x9qOadDz1LxJs11zBHAlxXeNTuHnic55BrEsIfQ==
X-Gm-Message-State: AOJu0YzUBhdCJhPoHNZ4xvqSQM/5R08MmD8BHhnrbVFuGA165Nbgo4Eu
	nC/4aBqQEEe/X+oP+oqvHwBGyyUbyqskqm7jyiuQXCnPHAMf512hc0e4JibfwBE=
X-Google-Smtp-Source: AGHT+IE2q39yRZ0lVDRKXL88UfaNYlGtE1ohcmxKv1HapUorPMZCa98GMyKI3xk9IVqNsvr3qlmwcg==
X-Received: by 2002:adf:efcb:0:b0:33e:c594:f154 with SMTP id i11-20020adfefcb000000b0033ec594f154mr1283887wrp.62.1711465986199;
        Tue, 26 Mar 2024 08:13:06 -0700 (PDT)
Received: from ta2.c.googlers.com.com (158.100.79.34.bc.googleusercontent.com. [34.79.100.158])
        by smtp.gmail.com with ESMTPSA id b1-20020a5d40c1000000b0033e7a204dc7sm12325692wrq.32.2024.03.26.08.13.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 08:13:05 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: alim.akhtar@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	andre.draszik@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH v3 3/5] arm64: dts: exynos: gs101: move pinctrl-* properties after clocks
Date: Tue, 26 Mar 2024 15:12:59 +0000
Message-ID: <20240326151301.348932-4-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.44.0.396.g6e790dbe36-goog
In-Reply-To: <20240326151301.348932-1-tudor.ambarus@linaro.org>
References: <20240326151301.348932-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Move the pinctrl-* properties after clocks so that we keep alphabetic
order and align with the other similar definitions.

Reviewed-by: Alim Akhtar <alim.akhtar@samsung.com>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index a1aff219208a..cfb3ddc7f885 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -393,11 +393,11 @@ hsi2c_8: i2c@10970000 {
 				interrupts = <GIC_SPI 642 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pinctrl-0 = <&hsi2c8_bus>;
-				pinctrl-names = "default";
 				clocks = <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_IPCLK_7>,
 					 <&cmu_peric0 CLK_GOUT_PERIC0_PERIC0_TOP0_PCLK_7>;
 				clock-names = "hsi2c", "hsi2c_pclk";
+				pinctrl-0 = <&hsi2c8_bus>;
+				pinctrl-names = "default";
 				status = "disabled";
 			};
 		};
@@ -473,11 +473,11 @@ hsi2c_12: i2c@10d50000 {
 				interrupts = <GIC_SPI 655 IRQ_TYPE_LEVEL_HIGH 0>;
 				#address-cells = <1>;
 				#size-cells = <0>;
-				pinctrl-0 = <&hsi2c12_bus>;
-				pinctrl-names = "default";
 				clocks = <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_IPCLK_5>,
 					 <&cmu_peric1 CLK_GOUT_PERIC1_PERIC1_TOP0_PCLK_5>;
 				clock-names = "hsi2c", "hsi2c_pclk";
+				pinctrl-0 = <&hsi2c12_bus>;
+				pinctrl-names = "default";
 				status = "disabled";
 			};
 		};
-- 
2.44.0.396.g6e790dbe36-goog


