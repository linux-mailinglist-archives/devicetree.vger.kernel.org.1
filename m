Return-Path: <devicetree+bounces-21016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBD3801FC2
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 00:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EA61228103E
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 23:48:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99E4D224D4;
	Sat,  2 Dec 2023 23:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ixit.cz header.i=@ixit.cz header.b="KXGRR7So"
X-Original-To: devicetree@vger.kernel.org
Received: from ixit.cz (ip-89-177-23-149.bb.vodafone.cz [89.177.23.149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A26107;
	Sat,  2 Dec 2023 15:48:45 -0800 (PST)
Received: from newone.lan (unknown [10.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by ixit.cz (Postfix) with ESMTPSA id 8E8431611A1;
	Sun,  3 Dec 2023 00:48:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ixit.cz; s=dkim;
	t=1701560923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=bWhsY9l1ul1TFOq+Nt11jGbkxh3H06G6lnOQM1rmf3Y=;
	b=KXGRR7So4SCHSjH0VWHnTzyf3UoqOZHnkkUB0bjJQaZYawCtEKVftgdJeH3rzUMctu1+o5
	t2nQeSmFq827RKRzriWxM0zl7kRWGNrwqdrjXvBEZ8xIa4m1ANu+OYpJ0ijpuKWcKN3msd
	+z2/eg5ZZHN0YtskM+EhYJukkAfjdaQ=
From: David Heidelberg <david@ixit.cz>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Stephan Gerhold <stephan@gerhold.net>
Cc: Luca Weiss <luca@z3ntu.xyz>,
	David Heidelberg <david@ixit.cz>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] ARM: dts: qcom: msm8916: idle-state compatible require the generic idle-state
Date: Sun,  3 Dec 2023 00:47:19 +0100
Message-ID: <20231202234832.155306-3-david@ixit.cz>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231202234832.155306-1-david@ixit.cz>
References: <20231202234832.155306-1-david@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

compatible must be qcom,idle-state-spc AND arm,idle-state.

Fixes: d468f825b3fd ("ARM: dts: qcom: msm8916: Add include for SMP without PSCI on ARM32")

Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm/boot/dts/qcom/qcom-msm8916-smp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/qcom/qcom-msm8916-smp.dtsi b/arch/arm/boot/dts/qcom/qcom-msm8916-smp.dtsi
index 36328dbe4212..1ba403b83cb1 100644
--- a/arch/arm/boot/dts/qcom/qcom-msm8916-smp.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-msm8916-smp.dtsi
@@ -26,7 +26,7 @@ psci {
 };
 
 &CPU_SLEEP_0 {
-	compatible = "qcom,idle-state-spc";
+	compatible = "qcom,idle-state-spc", "arm,idle-state";
 };
 
 &cpu0_acc {
-- 
2.42.0


