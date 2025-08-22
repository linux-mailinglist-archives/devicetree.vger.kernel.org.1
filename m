Return-Path: <devicetree+bounces-208124-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C41B319C8
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:38:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1871AE593B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:31:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEF56302CBB;
	Fri, 22 Aug 2025 13:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="POcg3Hlj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A93519AD90
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:31:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869487; cv=none; b=QhxCV51CtjSs5hroTZZXzf05kzxEL+B+hdlWmaQPJWC9S8sXgqH98tvdqo5dYkamRrb+4fzv5OmtKOgdlesgC2oe2dzL7VUUVXQVPB4Rq1GNo9v/608maWPkPtFtyKiboz9XBDFoDs1K+37hTXY3vvQ/trX6QoQa3Eyna8wD7C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869487; c=relaxed/simple;
	bh=3SVpgon+i1YQeIuy3oRoxPKfUy9lcns76Zkt/Y4NV+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=KjWmHPM3QcJ2TZ4Lc/0gXHh8WzgANL4D6py0A060gRrl87fBfArK9aQ4hv5dhfzVEL7tLXwRskEh2Rv8RkkpBD07wBxKO6V44HbzMjpcZqYU0B6A627sB9HQegSJOM7kUPkaP0kWgYvxrfcBwaIDhWJ7+p52sPCkc0+Ye4fq5lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=POcg3Hlj; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-afcb78d1695so27830066b.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869484; x=1756474284; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lLPWBbvJzifuSCPGTnAy7x/NBrhVR2Sch+UbydDDTnc=;
        b=POcg3HljMchyMYWqKeiN+PKBIzw47eumyQGP7YS/y4yNMHd42vAVduGfWx/nGvsXLB
         18PPX/VovJJQ+HoNRapoO5xEM4H4kGEsNyEXxR36sw6uIZ1ppcDrV2Ne8c99HCsS3ywV
         mPk/0ZA9Hojbgvtd/fWSMGz50k3M64PAFPh34ZmYw9FLJPyKQQWH/8tXcBYj0dyq1/I7
         Plj2vo23qD0qlSxFsTqzs1DIW4XIlrUrvK7b7cfzuxksZn29kmsVf4Hc7DBLGr5M89fA
         3oULO2Gvl/WdWEV2dYrvhe4F9wJTnJAy4gHUrDSm45MASrO/6eVtmC4xIUclWEE6KYt8
         izEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869484; x=1756474284;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lLPWBbvJzifuSCPGTnAy7x/NBrhVR2Sch+UbydDDTnc=;
        b=IswqctgcfFB2EJSEf47FvdhrO8YnfaeqGHvdzhaEyNlcPWl6JOmDxw8lagwrs4KLOQ
         u2zUrByKKVnMZNnuOUr3WuZgw9lpQJ9T1DHwE0NLbQw2IQCFbeYVl1/VZWDb6B164GHh
         M6KY+QDrP6e/0F6/MjahZ1R8yNtzzypjquJkLpdimW00C9bv6axvWPrIHjI3cO1ns/9e
         CNUDOdNonMnk4vJzlWsFRSc779H2aC7J5AG5Dv8B+4OKzOJXBlhRBIaBbFBF4eiXh47R
         9s03UFOpkdsnFwPzkGYNnMC8wzPsxmFQ/Y5Uk4CWf4Yrx4tyPwxzcYYHiXcrizCsjVCx
         NEXA==
X-Forwarded-Encrypted: i=1; AJvYcCWK+2hypCBXE50gR+dUGxselAil0eCfrzAtQdc58AFBMiNQpld3yr8dK6ErPT0Hs0OujnZjCl2dKTnX@vger.kernel.org
X-Gm-Message-State: AOJu0YxhDONGbXeMp86qHiqVVGAZFG7M5fcrUY7EoDsbKUUlrYwsvFz/
	1K+ECCb7GRPYGHiV8Ak4xlYo7S5DBh5vlswsvKdvxnDmygIeUd4MYq5crl+HL0cCouIH+n7hl8s
	F6rbt
X-Gm-Gg: ASbGncsY6M4U6hpUNKKh473ue4N7AdMY4Wn3T7KPjynYSNwiMlyKUYKTDCG5wBoacqP
	VveCNcGwQWd1vPQ48jpWsdYDagsPSEBYxujSyRvCDIZjiy128ra1V5Exjz64i7LRP6YVBNO9C2R
	D1zPOo5r8M3es98BKbpdL47zAXbyrSmidaYrdPBpbwVmx07m/P8R2GdVvi9Snwoz7C2R6ufDYbH
	yu4fFxgdqZY/Pm7KNtr/aVTZ/EiYPs4Cejrdu2mpjUvPf+qlIrDNGxwN6A3mYCLX70QSaLY6OE0
	BTFY8Nqt94rfZAeQ/1FAjjNhsEdMoFA3rYHftjknjUARlhsOoTGdSloMab34adnmEh0442cAewk
	WRYv+xxxKl5bYUZTDdTMgvodhkTGMRqJNV3X2p+c=
X-Google-Smtp-Source: AGHT+IGye/ypxcYwHYTg5+3IuOjm1+gEOjzMVOKls45nzJUtB1Xa9O00N+ETVyA5ZLC+lUcykguCIw==
X-Received: by 2002:a17:907:7fa3:b0:ad8:9207:b436 with SMTP id a640c23a62f3a-afe29048212mr148055166b.5.1755869483728;
        Fri, 22 Aug 2025 06:31:23 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afdf24bc40dsm554863066b.109.2025.08.22.06.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:31:23 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Fri, 22 Aug 2025 15:31:10 +0200
Subject: [PATCH 01/10] arm64: dts: fsl-ls1012a: Add default GIC address
 cells
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-b4-dts-interrupt-address-cells-imx-v1-1-f1b479da9340@linaro.org>
References: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
In-Reply-To: <20250822-b4-dts-interrupt-address-cells-imx-v1-0-f1b479da9340@linaro.org>
To: Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1322;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=3SVpgon+i1YQeIuy3oRoxPKfUy9lcns76Zkt/Y4NV+k=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHEgiIiD6BglCYSYhzqb8B01pZD6xzH72ddRt
 SeeZP/7jl6JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhxIAAKCRDBN2bmhouD
 16+GEACReaQu8HmfvIKNpHLlEbY6YYh0s0nof4k3fX9yB1JvLMmDUYQa2XucniT/Jjqxn/FpXnc
 1Oc9F8wHgQ7A9tfonoMlLWbMY+n2dy4ZPKsQ7127kXGUnPs40RoNloVb5C+YJprflb4cPT4kFY1
 hD1mLDtmN39cN26PQSkK1cOChLCJ9MkuQ8oig7UmltQO0YU6azgpYcgfrmivxdt/mVD7fWiCddc
 9b1/FkvhKrt0ftpy8WXriKE03cZMgKeFczZrMOB+Cn0NzzevCXi2c9AnTx+cfJsOF4QrGMAx/Kv
 7PmwHYJZ7FWwLo3rx87JZ+NxFVJAuN0GhZl/eoWfXQR3FbnrZRo/XI5b6M/PKMoLLwoa2PmWElA
 Ss1Me+3WYH1tQXKprVqtvkdzlBrhPsDUAivEDiNSJQVPeMdocN2eMwj+qyrr1p4NICMUx6rnHTH
 VJKUFko2xx2xtgkxiEieJ8qhfDOaJTC/MgBquy33kn5/t44wFV8rJj/oPfggEGGgF3TcGoEb5PJ
 BfY8Uq10AX3UWhY+O1/yDV+/xblulpI6ckf40CL2GGeCsxatWkvHaSc2WuHvjFrQcEvQLxS8kkX
 Z2ju3N74J7IDTL+m8izQAEQCxEHMNXg3NWV+YuO4atriqT+vRBz88c0WTTe6qJGJfEij014Q+ns
 i5V0vR3VPO+IctQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  fsl-ls1012a.dtsi:548.4-551.32: Warning (interrupt_map): /soc/pcie@3400000:interrupt-map:
    Missing property '#address-cells' in node /interrupt-controller@1400000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
index dd479889658d452142e6d50b507147ba91c799af..fc3e138077b86cd5e3cf95c3d336cb3c6e1c45ef 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1012a.dtsi
@@ -87,6 +87,7 @@ pmu {
 
 	gic: interrupt-controller@1400000 {
 		compatible = "arm,gic-400";
+		#address-cells = <0>;
 		#interrupt-cells = <3>;
 		interrupt-controller;
 		reg = <0x0 0x1401000 0 0x1000>, /* GICD */

-- 
2.48.1


