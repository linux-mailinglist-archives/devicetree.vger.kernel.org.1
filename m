Return-Path: <devicetree+bounces-141725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CAA87A222B3
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 18:20:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 02420165D57
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 17:20:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51A0C1E0DF5;
	Wed, 29 Jan 2025 17:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="UNIHWYgG"
X-Original-To: devicetree@vger.kernel.org
Received: from out-186.mta0.migadu.com (out-186.mta0.migadu.com [91.218.175.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5411DFE01
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 17:19:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.186
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738171200; cv=none; b=czgH26/9US83IPGog7Nj33dv89Z3mL7YlY+Vz8yT6C+8RqxiLdFAu9rdZtOZ26YGO5wOQeQCdpdJ/Jwsa7/2yLja2d5AuJ5++r/aREbLoGq/8LfBy73QfVnDoD299QCL+tySwzr0NedSuXO8i/VmQOXXIPOi0x5q/X9BNV4gehA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738171200; c=relaxed/simple;
	bh=6bP6dOWk0CZiMQmqQ7V8tThH3RlrxudkJqBNhQo7WoM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Q/snTnas0J1acRVuTHzzUz8Hs8KP0qw7lpj5hUxhKq7mwV60yalngQpfhWPcsFLcNGInR4/PrUYzMKFxcvENg+Mottn7hE8pZv8A4wjoVzQiLA8ujWmHpf8WFIBBeOzNM1VuQu7IUTyl6+XWjBrZjZqBb/X87MKgPeTP7mFpbH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=UNIHWYgG; arc=none smtp.client-ip=91.218.175.186
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738171181;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W6xxV0PtQ3PAKtzkZYBXyssRiVoSb6vmC8HEN1Bw0iI=;
	b=UNIHWYgGEXiY7lg8/XdTLW4UiTcMxM+LKgAOwbhrfB3hbyrTZxCguT+/uvTxI14RqUEygF
	0X/bNkTQCv7l710ZivRIXnQHTIDnpgxajBZgw2FgBgv1WXEgKEMKIBJB/oiYd6rJf2cYCO
	iIpWiJAzbfSaf2/mHaK+/I2EXCWRRZSzttouNM6USsrW6yuJqQw7OB/IEuO2I/QOUPm0hb
	Qjixiy9llpkEIWgVmi6R5fohA3FbVBOGmkaBvmePhCV6rMlRatNrH6EbRk00dyYVt9lcMb
	MeDcn3FS2+t9uybsfw9LPO5y/Pm1Ob2Y6V06fvwjgYR1+rPnNZVdPi4nEAgXGQ==
From: Alexey Minnekhanov <alexeymin@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Taniya Das <quic_tdas@quicinc.com>,
	Craig Tatlor <ctatlor97@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Alexey Minnekhanov <alexeymin@postmarketos.org>
Subject: [PATCH 1/2] clk: qcom: gcc-sdm660: Add missing SDCC block resets
Date: Wed, 29 Jan 2025 20:18:40 +0300
Message-ID: <20250129171842.1588526-1-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

This will allow linux to properly reset eMMC/SD blocks.

Fixes: f2a76a2955c0 ("clk: qcom: Add Global Clock controller (GCC) driver for SDM660")

Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
---
 drivers/clk/qcom/gcc-sdm660.c               | 2 ++
 include/dt-bindings/clock/qcom,gcc-sdm660.h | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/drivers/clk/qcom/gcc-sdm660.c b/drivers/clk/qcom/gcc-sdm660.c
index df79298a1a25..1856a2d96dde 100644
--- a/drivers/clk/qcom/gcc-sdm660.c
+++ b/drivers/clk/qcom/gcc-sdm660.c
@@ -2420,6 +2420,8 @@ static struct gdsc *gcc_sdm660_gdscs[] = {
 static const struct qcom_reset_map gcc_sdm660_resets[] = {
 	[GCC_QUSB2PHY_PRIM_BCR] = { 0x12000 },
 	[GCC_QUSB2PHY_SEC_BCR] = { 0x12004 },
+	[GCC_SDCC1_BCR] = { 0x16000 },
+	[GCC_SDCC2_BCR] = { 0x14000 },
 	[GCC_UFS_BCR] = { 0x75000 },
 	[GCC_USB3_DP_PHY_BCR] = { 0x50028 },
 	[GCC_USB3_PHY_BCR] = { 0x50020 },
diff --git a/include/dt-bindings/clock/qcom,gcc-sdm660.h b/include/dt-bindings/clock/qcom,gcc-sdm660.h
index df8a6f3d367e..74c22f67da21 100644
--- a/include/dt-bindings/clock/qcom,gcc-sdm660.h
+++ b/include/dt-bindings/clock/qcom,gcc-sdm660.h
@@ -153,5 +153,7 @@
 #define GCC_USB_30_BCR			7
 #define GCC_USB_PHY_CFG_AHB2PHY_BCR	8
 #define GCC_MSS_RESTART			9
+#define GCC_SDCC1_BCR			10
+#define GCC_SDCC2_BCR			11
 
 #endif
-- 
2.45.3


