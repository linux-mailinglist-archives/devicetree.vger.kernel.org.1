Return-Path: <devicetree+bounces-151937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB64A478A2
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 10:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8996F188A8CC
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 09:05:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC2CF228375;
	Thu, 27 Feb 2025 09:04:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B84DIOLM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB495227E92
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 09:04:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740647087; cv=none; b=EEDuwAtTQPHCekKWsnN1hDNS3Rz4ubGWAaDnypUkmw3mwjESp3Hy1h3sVJkzMuC3QZ08HUqrGo6yPocQdF/VCSpXwqUG50t+qffDPjYZ8gsXisqUocpDXEpFIoZ4sB1pq4YiXrwRyCIzwqyFZaPNeu73XeOu3SS57L5WVY09Dnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740647087; c=relaxed/simple;
	bh=k/Ub0j4ZPZ5XJlCOR/aNVmHDxi435bw376+PW8znVRM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ee3tm6fOzN/tKi9iina7+sN+7d8DaO8DKg3q9emzNEUpE0FuhK4Ljnv3vnH+Ezrod8oDt8MpIOKY19e7/tb13gj/L1keaN/tFE7+Z68j+bDOsT1KCys8fovyKZOv6hDSaRV8GuZnKVZobtpHIYKSNeLP4aEw5eECu+bq0rJvprI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B84DIOLM; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38f5fc33602so464266f8f.0
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 01:04:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740647084; x=1741251884; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fkITjQmr9TX/26VhCMssjv/ZXVYw9RYOTlGukmEo+nk=;
        b=B84DIOLM+gyEsQ32YC9CBuU0tq1WoGUFveL/T16xI9T+4d5vXNVr9ThfI5p3vxQueg
         McVVt1ZUksXJojxof1WjbbMOxrqpCEZunupcqrn4xDs4BqJVt68D1ok+Pe5QYlpXHTf1
         5/qoEewRz0GM9VOAYo9SU2jun8Q1akes6l50YxxxCSUc2v2sBM2d6AhL9mufjhzicx0Q
         4AWLN4B7V+dMpMGrd+3DQ9zSUcTcYdOvBB5aIB2gHJWig0QgBJFw0zvzetIgkGJoIlbv
         QnsT59HPIW5k+IfCUJ3/brZ/ve/VpOxBSyNORxLyD2ActuzOqAbEgLf0zlZF+eTMZ6eK
         Z8FQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740647084; x=1741251884;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fkITjQmr9TX/26VhCMssjv/ZXVYw9RYOTlGukmEo+nk=;
        b=EJRKI74+Egj4STP8o7Hed9Mm+NiwP4yOcou1PE2+MQS3M0LcQZ3nAIICnGJY3SSwbp
         32EsTtKqigwHSDPHjFKWH3HXae+W27wgZ3C0FqLoZvI4ziWHEKmmrcWDepHWo1C+JEod
         SsB1RfQ11zWtOcNv3u4SWul3kLUMen0IqkoIdMJby/c4KyI2txr+y7SUEvAfdAwAAMo/
         XQz93OZK97DtSxUb523SZ91O22xRUi+inQZF0fKhiT4xnpRQWIms4yp+VlgQoMZH39H4
         p3o5WxzihnodLHplsJOhbZOisUFF7/a44421x3bOgh/l0nqNYc7KxRYMSsj2kIeP+7Pk
         G5Gw==
X-Forwarded-Encrypted: i=1; AJvYcCVI/knkxmsdbyCdcfgcILI2YnwpDamYXD7U8magWu5T+q6FK9aMhQ1jsaRWFWxeTS5eWz0krOTIyjaG@vger.kernel.org
X-Gm-Message-State: AOJu0YxnWZHK09eSu+8iCbkgKA8JLAjjUTkh2Hg0EvjSZ610Dv+l7Xls
	p+GuTqvI82HAfoWHO1wQmkqlVGLYvQVKV776TuCFeQ/YtFfTx1Qwy6DrRm6JITQ=
X-Gm-Gg: ASbGncvHHHQBGvT0PpTiRj2BcIttfu8opokCREuNTLRBwWVA609WpJvb3dAeTHpGZq1
	9cwtoF7zXDFRWfMlgj8IraB3nhAfe/Nhrasn1CJyvymSzfZOQOIteAXarBvBJeYMvRzG7biTxbI
	CEvoka0HTm+uobVDw9DI4/i9fdC0wB1jNX5/HSdevEvgzwFtoisyv0cXp3Fja/QVffoif7jrtyU
	Exxdi3rkbtIz23QAnJenTHCaHeqBKDb3Gpxw5Xpyp8d1ah+FLBQorKHT6IYzx+9TPit+czIaBox
	gkVQ0p+C7WZe/aBo7HaOSlmU0AQ2Ik+b0NRezN2SdkkU9mw=
X-Google-Smtp-Source: AGHT+IEcDag0Zl9N8JeCicgWpNE4MUHLLL3hYvkjcECxSoUILvLCJFg5uEOCJSgHDKukRtdJsB91DQ==
X-Received: by 2002:a05:6000:1787:b0:390:df83:1f22 with SMTP id ffacd0b85a97d-390e18d20ddmr1771311f8f.25.1740647084194;
        Thu, 27 Feb 2025 01:04:44 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47a7b88sm1362380f8f.40.2025.02.27.01.04.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 01:04:43 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 27 Feb 2025 10:04:40 +0100
Subject: [PATCH v2 2/2] arm64: dts: qcom: sm8650: add PPI interrupt
 partitions for the ARM PMUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250227-topic-sm8650-pmu-ppi-partition-v2-2-b93006a65037@linaro.org>
References: <20250227-topic-sm8650-pmu-ppi-partition-v2-0-b93006a65037@linaro.org>
In-Reply-To: <20250227-topic-sm8650-pmu-ppi-partition-v2-0-b93006a65037@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1833;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=k/Ub0j4ZPZ5XJlCOR/aNVmHDxi435bw376+PW8znVRM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnwCqpDyLRWaVQvhbd2/CzIVYOqzXz5gMqHm0jDq8p
 UFIoxYmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8AqqQAKCRB33NvayMhJ0Wx8D/
 sFXR4XRXUMwe+wzOQZkk9549jr5pdzc0yfTGe8aPUSOvJ7kebnpgFn8oxriVn7ujC6W45uPEElqEmh
 6oG9Z66xvenLQUyHJayjH0pnZVOgWXFfyvMBPpGRchukp2ZuKXWm1xkRjAiVHmwBPx+Lw5e+PmETYL
 qBLHOXGLmtPvuwIWQY4+Pmppl+6V3xtwtjxXxC7SHCMsnwhU6XLLrCBThRzMgr+hsZUBf4yDtZRVAL
 3kmSXdx7GvK8A5vUiU3+Eoi8e0fJW3NfLYxwm1dHvmSw5Wb46zXeF3Nw8MALmg/xK3Z+UKCVvC6xzP
 baLnC0TcPN232EaM3XqbXvIBiEenwS6FkIjUakvlcZlgQJrf3Z14cJ1du+l91V422VASZNdummU1y8
 mup/1cFt+6B4QoUNciUHvUi4x7GG51bKGLmPbSGFG7HFnIRwrDYj7lPkmXXpIuUH5PCvmQ3bguWJln
 rEQSia5gYMuooHEfPGwN2hHaxvOFHK3A1TwLDdOHeKRaC6dpJNEKcrwqB6PJ8QNyHFzf9JpFMMHdoL
 5sr9ZoUqFky+1oh24qReBa5xdNHU8DfcO6Luyl+PMVdskiGKxEKQw44r+1rKsw+lsndQN+UwSPK4cf
 sIrhIsBXfYs2rpoyWRwbpoNwWHBsMYLre5yJWX1dR/jQCOZeyjgowOV6u5Fw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PMUs shares the same per-cpu (PPI) interrupt, so declare the proper
interrupt partition maps and use the 4th interrupt cell to pass the
partition phandle for each ARM PMU node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 273170a2e9499b900b3348307f13c9bc1a9a7345..58646b50bb437fd5eb2ac8cf3955be2db020d6e1 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -1417,17 +1417,17 @@ opp-3302400000 {
 
 	pmu-a520 {
 		compatible = "arm,cortex-a520-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH &ppi_cluster0>;
 	};
 
 	pmu-a720 {
 		compatible = "arm,cortex-a720-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH &ppi_cluster1>;
 	};
 
 	pmu-x4 {
 		compatible = "arm,cortex-x4-pmu";
-		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH &ppi_cluster2>;
 	};
 
 	psci {
@@ -6590,6 +6590,20 @@ intc: interrupt-controller@17100000 {
 			#size-cells = <2>;
 			ranges;
 
+			ppi-partitions {
+				ppi_cluster0: interrupt-partition-0 {
+					affinity = <&cpu0 &cpu1>;
+				};
+
+				ppi_cluster1: interrupt-partition-1 {
+					affinity = <&cpu2 &cpu3 &cpu4 &cpu5 &cpu6>;
+				};
+
+				ppi_cluster2: interrupt-partition-2 {
+					affinity = <&cpu7>;
+				};
+			};
+
 			gic_its: msi-controller@17140000 {
 				compatible = "arm,gic-v3-its";
 				reg = <0 0x17140000 0 0x20000>;

-- 
2.34.1


