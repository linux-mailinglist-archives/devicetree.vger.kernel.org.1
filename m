Return-Path: <devicetree+bounces-68356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA3CA8CC075
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 13:40:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EB6BB1C22551
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2024 11:40:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2122312C81F;
	Wed, 22 May 2024 11:40:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IgwY/i88"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF05A12BF01
	for <devicetree@vger.kernel.org>; Wed, 22 May 2024 11:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716378021; cv=none; b=R1LxyXF4Db06aBXM+Lg6+3ruJ1/5INKMZ2VTi9XoM7ntCgTP7PaXn5qz0caxxyVCpmOGXAhX0EuZB8QlDuCUe5y18m3ksbdgGJ8iQhOOxm+DC8Kpad5brdbewwrshFEqYkyTt0VkfK3LaK2oDZ3ifFxFMrJAskW99hePYCiaGZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716378021; c=relaxed/simple;
	bh=zukDM/rkHVKYCCkmk3pYVcR9BPVWcup2GMmrpW9m4hU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=riotIYoW2LYspkTFRcL0dyfu/hWvI8cCfzxRcMfw8SKUNXnG9coSGqvRe5xrAKpUpph8fwN8BPxlBQRtnlwDYf0cDrw59MJJuspXoDtFRZeOA7eqt1CHXIuD6qunICVI8h5/AfcFMcN+3XeN4KzjkXRj9Wjb0aSr9yi3RtY7OJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IgwY/i88; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-571ba432477so11368284a12.1
        for <devicetree@vger.kernel.org>; Wed, 22 May 2024 04:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716378017; x=1716982817; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=DpJcWUohmNA/0uynYglcpTyZxKlp3RwgmCGzQAvCav8=;
        b=IgwY/i885C7cY5NsrUkJ8eP7VNhfsiUdhI2Cd/SCOFYtypBowlrpJ4GXsU2xfRKl4A
         hwLjRlFQwn+BBeeEBqG09WPoLktoymJd8oeu32Q8R3mAt1Ve6cDOdqqCqrBrZkpGG3Lf
         zgfzI0U8QDBySCD2La1Tw64uiAZgIX6MFAcw2/lJefq8GCpCHZJC/ujkd8ZVZ980Y6LB
         PWs81adVtxf6TBPNIbNqAoiILBqVWYI4LJU7V2WskLgqiSRgw/nTKAk3+r96qYQSwc52
         r433GZN4yLTUqE5s8O1s1JwIuagfcLiBwDMFZaV5ZVnmblJ/Rd6/GZWnyOt+TvbyM/89
         yioQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716378017; x=1716982817;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DpJcWUohmNA/0uynYglcpTyZxKlp3RwgmCGzQAvCav8=;
        b=xAp5Y67ypvEUVbli+vEWFT9IsNxvEoBnIZh+D4VWOUWdZainlCApjbZJGJ3vkLDnNi
         KBWnJvnvQTbBeLyZbrku17qUpXhWDufWw2isVoNkJzwaxIiv+Yd52+uU4dOvKJIRzxDt
         aifNbIC73IKyaHpfAIi79Howw7+I67XQcKMQ8aTc5KPDFbJC6twNoS95tYpEoeaEKKmC
         tM0AE+KPyCepAZFJybS85PkW/tL6YlFeKmWbcqYAHnd8AedIzg2fwXhxjCTHik8wSBVq
         LSCtuhDoNw6ybViX0pC0OR39Qm6L9ZUjh62Demn7Npc6uo04xS7J9jsjRpezL8cAV+Hc
         sNtQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBWl9RPUe5Cy4VEIEr/AO5fj5MNzgNWtoGfTqciyLu0AC+yGrshJwqopElODcTlPoCc9WdR7/Liu3RBoc1sKqkT68Hc4Ze3t2Arg==
X-Gm-Message-State: AOJu0Yw1BMgTSQj6cLgEjiNacpI+l7FeUtRNfuTEBrrkCitB4mH0ROkz
	iWbbEGqIuVR4ZUWVYBNkOQTJBPI7lFdyZlrnjgxv6NuCvp2Eth8nCDx9otHW64g=
X-Google-Smtp-Source: AGHT+IF/Cv1Mi8KbAA4x6gUHPOZZN2cp+qhIVT9XGLbN8+F7TXmbqop1C6s5IhMoWsSoqcHw6KEX+w==
X-Received: by 2002:a17:906:3e48:b0:a59:a221:e2d4 with SMTP id a640c23a62f3a-a622806b976mr106962766b.8.1716378017350;
        Wed, 22 May 2024 04:40:17 -0700 (PDT)
Received: from [127.0.1.1] ([2a00:f41:c55:53ae:3b6a:7bb9:3183:8e19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a5c002103desm1022089466b.161.2024.05.22.04.40.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 04:40:17 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Wed, 22 May 2024 13:40:09 +0200
Subject: [PATCH] arm64: dts: qcom: x1e80100-*: Allocate some CMA buffers
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240522-topic-x1e_cma-v1-1-b69e3b467452@linaro.org>
X-B4-Tracking: v=1; b=H4sIAJjZTWYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUyMj3ZL8gsxk3QrD1Pjk3ERdIyPDlKQky0TzFAtLJaCegqLUtMwKsHn
 RsbW1ALKwtLxfAAAA
To: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

In a fashion identical to commit 5f84c7c35d49 ("arm64: dts: qcom:
sc8280xp: Define CMA region for CRD and X13s"), there exists a need for
more than the default 32 MiB of CMA, namely for the ath12k_pci device.

Reserve a 128MiB chunk to make boot-time failures like:
 cma: cma_alloc: reserved: alloc failed, req-size: 128 pages, ret: -12
go away.

Fixes: af16b00578a7 ("arm64: dts: qcom: Add base X1E80100 dtsi and the QCP dts")
Fixes: bd50b1f5b6f3 ("arm64: dts: qcom: x1e80100: Add Compute Reference Device")
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 9 +++++++++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts | 9 +++++++++
 2 files changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index c5c2895b37c7..cfcedf1d26a0 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -49,6 +49,15 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	reserved-memory {
+		linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x8000000>;
+			reusable;
+			linux,cma-default;
+		};
+	};
+
 	sound {
 		compatible = "qcom,x1e80100-sndcard";
 		model = "X1E80100-CRD";
diff --git a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
index 2061fbe7b75a..8f67c393b871 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-qcp.dts
@@ -23,6 +23,15 @@ chosen {
 		stdout-path = "serial0:115200n8";
 	};
 
+	reserved-memory {
+		linux,cma {
+			compatible = "shared-dma-pool";
+			size = <0x0 0x8000000>;
+			reusable;
+			linux,cma-default;
+		};
+	};
+
 	vph_pwr: vph-pwr-regulator {
 		compatible = "regulator-fixed";
 

---
base-commit: 8314289a8d50a4e05d8ece1ae0445a3b57bb4d3b
change-id: 20240522-topic-x1e_cma-221dbb9a7d89

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


