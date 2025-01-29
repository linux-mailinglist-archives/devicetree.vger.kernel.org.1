Return-Path: <devicetree+bounces-141752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AA454A22598
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 22:24:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 14BFE166FCC
	for <lists+devicetree@lfdr.de>; Wed, 29 Jan 2025 21:24:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628661E412A;
	Wed, 29 Jan 2025 21:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="k9xQk6tr"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta0.migadu.com (out-172.mta0.migadu.com [91.218.175.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEDF1E3DCF
	for <devicetree@vger.kernel.org>; Wed, 29 Jan 2025 21:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738185855; cv=none; b=qJ+ye+LHc8ixSfcyCZOkeD2InpjwI6oaaNdqWdJ6Q1mqMAtAzVj6oPfoO6zB+36UMwm7yaduWXC/2HhaHQpBJB9mcG5+nXzmTz1gW1hHrzod5UPcXlvLnZjAFHm8ZO7EzEhAN7gTZTXRwa6HlTr+gi4YZv0cgMMGXdA5tKL6Km0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738185855; c=relaxed/simple;
	bh=f3evC/oY3fjdbNM/0tiFbzXA+mTC23foFmmh8nItasw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=iBsTQwbYkHz/aIbbN3AeQliOGLTgNJsCoVEHQqdCo9G5+3gcWRuSCMnG5B9oLmz6pL698Dvi6MeyaXkBQZgMUHN88xlIDsXDK+uVdnoMUwk99Ud7aJazGA9AhmrvB6luSveSoOVWDQlx86ZIw6Pb4BrXYo+h1bzj5eZnbB2+Nx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=k9xQk6tr; arc=none smtp.client-ip=91.218.175.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1738185846;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=PaBQAJhIKg0POoZsVE9daJKs9+de/rzQ98P8jcQTJsk=;
	b=k9xQk6tr7qpSigifNeL7pDNtKuOrwtbFcZ3NCuamMNTyabPZy4qGC7wM6GEBrua3qr0je8
	xKR3waaeb9Pqg4rMn8+aY9Q739Nlkmiz75l5B1EP3JEubojNmYzlqgTxCvh+yAZ95QC7/9
	B4uySNHZX9up2I6pN64KgNdsb9fmYmVUXs/6GOyMf6hTLK+VqQvZf0LnN2AMzkPRS71/Bw
	wNOEV6tGMjhyCkI2BDvjexGIS9n2IO0HF1hnZYwuw7zwLqnO1lln7BafNJjgPf/vHotOke
	8KvcLZUonySMEYiB1wy7IsVicTetIG+zRHlTuW08e+udCs5AMx4VdEtoHQmWug==
From: Alexey Minnekhanov <alexeymin@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Craig Tatlor <ctatlor97@gmail.com>,
	Taniya Das <quic_tdas@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	Alexey Minnekhanov <alexeymin@postmarketos.org>
Subject: [PATCH v2 1/3] dt-bindings: clock: gcc-sdm660: Add missing SDCC resets
Date: Thu, 30 Jan 2025 00:23:25 +0300
Message-ID: <20250129212328.1627891-1-alexeymin@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Migadu-Flow: FLOW_OUT

Add resets for eMMC/SD card blocks that were missed during initial
driver submission.

Signed-off-by: Alexey Minnekhanov <alexeymin@postmarketos.org>
Fixes: f2a76a2955c0 ("clk: qcom: Add Global Clock controller (GCC) driver for SDM660")
---
 include/dt-bindings/clock/qcom,gcc-sdm660.h | 2 ++
 1 file changed, 2 insertions(+)

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


