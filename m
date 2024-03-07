Return-Path: <devicetree+bounces-49248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 739D587584C
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 21:26:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EE406B2774C
	for <lists+devicetree@lfdr.de>; Thu,  7 Mar 2024 20:26:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA872139591;
	Thu,  7 Mar 2024 20:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FeF0tkYM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA31B1384A3
	for <devicetree@vger.kernel.org>; Thu,  7 Mar 2024 20:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709843200; cv=none; b=agFKqd5ZcsjZNcygc1flHvYIbrIVJhPGzwtb0ThZ+fP+ecdGMAD9MXL7x0JXljPDrscUFeP5qMsQZ2s3rtUlhuFFY1MStj+ZBSM68k83jfPGF6UBWoGa62q83GehH6ezGOO0/pZdMrcNo8ION6h5PKMXoKLDBY1SSZXGakdkh0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709843200; c=relaxed/simple;
	bh=8/DGQ83cSrSaq7LKUH+VcyTeHlJ4+6SBCpMrcm8Id5w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eMUx24sXdNg0Mq9VdUpqPulkbjJkxVnES66u1HaEGW36exD7xbiWT0AQPKyT8DAC9t/RfBW+HrkGyNHJO85oA47J5e2oIcQbPlg9z0ZWfEgPOjf3DbDnrq152FZW/P7GBeS/dEXNW8kKtPuZaO3qLPZyXYoSmiBZeUPNFymaK2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FeF0tkYM; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-512e4f4e463so1821607e87.1
        for <devicetree@vger.kernel.org>; Thu, 07 Mar 2024 12:26:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709843197; x=1710447997; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KXLwWeiszGpI6rrdYGEs9FVibKJ/VcRC9EN9PxgZG1A=;
        b=FeF0tkYM7p8K+uO++OZ+5ekUyR1DFYG/YzA+aWPOQXeW/qiIZpWxAhmJW4QSQL1m8F
         K54AIDCUW7xBfSeFn92dcNV2mawKKHTXo4f2kYXkUmjWlq+i4DGldo/H9LpuJzqNl/UP
         9un2Pe1hL274UPyaElKN1lVzOJUNloP5IbZ7snDh2cQuyqbxAtrdUUi0YrrEdHbGLBQ/
         cd9EvjQvBOXxGQeMyh6Se2qbbZCuYlteYGlPq3QzMzagiCcoWN3LcDLb8yDf398CROgD
         3ZqHKqn9WqM7mPm/Mw7s1SwxJwKXCaMvsKzO9xBYa5o+2zVIMwrcDYkZjUyWt+1OqBTn
         sOuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709843197; x=1710447997;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KXLwWeiszGpI6rrdYGEs9FVibKJ/VcRC9EN9PxgZG1A=;
        b=I8zqd5hXpd87OiEvsIAU4xzmFSTH0QhNwtm+10fd41H4Qdyz6UnKCgtPJShhmu1Hca
         h/RyPkox9PUQ/2jxWbMLKP3jXS453w/RFkljSqJfwLEhpraWFtrtHNKSl/LKSnUJaZs9
         3XCmrCul7b5uEZIHVgZ5iebbHnT5CC0VxBTzvDNS5jj47Jds5NVivIx4WqMgCZWtT28t
         niwD8mwzuSw2tNGv6L4K7s2zkesP7Uyx6cVHkjwTY57AN48VrVZNDSRrljs2ITo3kjal
         TsAALNNEamnCxPArsva/NXf1eRxVacYUrQl8xvaVmdN9z6Y8dsSpYz78mrqZCuTrjTkj
         ZKgQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpYIVwO3cJXdx0vSNW5GpNIxrwF145yRkFKE7QuDpjpoC+l6G2IDbQMk9u0TaqK2v67nct5CF6PACW5XvawQbHjdjyyiqzPHEZtQ==
X-Gm-Message-State: AOJu0YzXNdoDpb9IaBqamSvNao0urzh8v077ftGo9FMVhk4jQGssLtI8
	NQu6Jb0s663BP78EVwiztaY9NiLp5fHGtwD5g/QcHqfLuVXDjjkeZgWbSsbjWfg=
X-Google-Smtp-Source: AGHT+IH93hG+h+Zy3uBuBwbbaDvrwkiy3pPB5UMxB0V3Sm698sVGTruTmwRMuXQR/YJ5ItnZI0ed2A==
X-Received: by 2002:a19:e047:0:b0:513:5b81:f2f8 with SMTP id g7-20020a19e047000000b005135b81f2f8mr2139044lfj.54.1709843197150;
        Thu, 07 Mar 2024 12:26:37 -0800 (PST)
Received: from [127.0.1.1] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id dw20-20020a0565122c9400b005132bf9f8dcsm2957606lfb.303.2024.03.07.12.26.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 12:26:36 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Thu, 07 Mar 2024 21:25:55 +0100
Subject: [PATCH 2/4] arm64: dts: qcom: sc8280xp: Add QFPROM node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240307-topic-8280_nodes-v1-2-4eba20e08902@linaro.org>
References: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
In-Reply-To: <20240307-topic-8280_nodes-v1-0-4eba20e08902@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Johan Hovold <johan+linaro@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13-dev-0438c

Describe the QFPROM NVMEM block. Also, add a subnode to represent the
GPU speed bin region within it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
index a5b194813079..a3725d917bef 100644
--- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
@@ -862,6 +862,18 @@ ipcc: mailbox@408000 {
 			#mbox-cells = <2>;
 		};
 
+		qfprom: efuse@784000 {
+			compatible = "qcom,sc8280xp-qfprom", "qcom,qfprom";
+			reg = <0 0x00784000 0 0x3000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			gpu_speed_bin: gpu-speed-bin@18b {
+				reg = <0x18b 0x1>;
+				bits = <5 3>;
+			};
+		};
+
 		qup2: geniqup@8c0000 {
 			compatible = "qcom,geni-se-qup";
 			reg = <0 0x008c0000 0 0x2000>;

-- 
2.40.1


