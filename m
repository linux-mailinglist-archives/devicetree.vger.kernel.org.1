Return-Path: <devicetree+bounces-33510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 698AF83583F
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 23:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A62BB217CB
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 22:33:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 482C738F8F;
	Sun, 21 Jan 2024 22:33:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m-r1.th.seeweb.it (m-r1.th.seeweb.it [5.144.164.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E098B364DA
	for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 22:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705876425; cv=none; b=m0NAYUkpn8/uLwfypaeLzhc1JvBHpZuqF5czwrSsD4wHxjTL7LW8QDuFBiyceJQmUX0807ZeqyQFQWPlNnLR3rYYS/FmfXlN/HlYLQwNjljVBkoVGH3+8rIjom2GTa9sUz9rUNzbqvzI3+NhhWFkLohY3MAaTMS7kmqgijGis1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705876425; c=relaxed/simple;
	bh=CTNcfJwybjX/Tkl9gEBdYFF2xig/uDP3Ncqgqn4vJJ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oD6/4rwx059DGpUcIOc23OIt5HdK/XFVdfF94/rqtZPHEv5L8E/taR4okrPOVQ3BYSYBPCbWbNpmu2cHaRQ6a02SdHjA45vUYkpx67nejsP2z3YKwFdSd4vcmutzhs3du5IEfaXiYsC1jgfD1+RrRpbMM4wF1CJQfHsNNoQVA1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from Marijn-Arch-PC.localdomain (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r1.th.seeweb.it (Postfix) with ESMTPSA id B06C32037A;
	Sun, 21 Jan 2024 23:33:41 +0100 (CET)
From: Marijn Suijten <marijn.suijten@somainline.org>
Date: Sun, 21 Jan 2024 23:33:40 +0100
Subject: [PATCH v2 3/6] arm64: dts: qcom: pmi8950: Add missing ADC channels
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240121-msm8976-dt-v2-3-7b186a02dc72@somainline.org>
References: <20240121-msm8976-dt-v2-0-7b186a02dc72@somainline.org>
In-Reply-To: <20240121-msm8976-dt-v2-0-7b186a02dc72@somainline.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Luca Weiss <luca@z3ntu.xyz>, Adam Skladowski <a39.skl@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Martin Botka <martin.botka@somainline.org>, 
 Jami Kettunen <jami.kettunen@somainline.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Marijn Suijten <marijn.suijten@somainline.org>
X-Mailer: b4 0.12.4

These seem to have previously been excluded due to either not residing
on the test board, and/or lacking VADC_USB_DP/VADC_USB_DM definitions.
Now that the channel constants are included in dt-bindings, add the
channels to DT as well.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
---
 arch/arm64/boot/dts/qcom/pmi8950.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8950.dtsi b/arch/arm64/boot/dts/qcom/pmi8950.dtsi
index 49e97ebdbb3c..bc341849b9fe 100644
--- a/arch/arm64/boot/dts/qcom/pmi8950.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8950.dtsi
@@ -69,6 +69,30 @@ channel@d {
 				qcom,pre-scaling = <1 1>;
 				label = "chg_temp";
 			};
+
+			channel@e {
+				reg = <VADC_GND_REF>;
+				qcom,pre-scaling = <1 1>;
+				label = "ref_gnd";
+			};
+
+			channel@f {
+				reg = <VADC_VDD_VADC>;
+				qcom,pre-scaling = <1 1>;
+				label = "ref_vdd";
+			};
+
+			channel@43 {
+				reg = <VADC_USB_DP>;
+				qcom,pre-scaling = <1 1>;
+				label = "usb_dp";
+			};
+
+			channel@44 {
+				reg = <VADC_USB_DM>;
+				qcom,pre-scaling = <1 1>;
+				label = "usb_dm";
+			};
 		};
 
 		pmi8950_mpps: mpps@a000 {

-- 
2.43.0


