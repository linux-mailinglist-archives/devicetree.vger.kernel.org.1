Return-Path: <devicetree+bounces-25228-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A3BA5812B30
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 10:11:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A98EB1C21479
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 09:11:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99205286B3;
	Thu, 14 Dec 2023 09:11:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NqAF40fi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7962210F
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:36 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-77f3c84e0f6so494105585a.1
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 01:11:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702545095; x=1703149895; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=NqAF40fiK5YqihR+79fiGyZopj/uE1n8RTB+LyXXif73wukb1xdu/1uVophzD5MM/i
         /BTbgU70LIQKtvD7mPUvVasuPZRG6zWjqESjdoJSrX3DdLkZH97tnG86Xtieh2mT6i4F
         h+o04D151cqNN5i5kXrhc8nJtV8IeGF6h0I0FQNCGICpCm2HS+Ska0fYrcCCU7KOZolW
         J4S/FGUbIEQf3GzRxguKPB1W/Vq9gp8NOenKEKbnYrlC03o0OHne0JIqADg6imA8vPd8
         nYH/Lf7IRBSAJZQ7Y+RZ+N6SQwiZyPGtKVRoNDXSxgLitCnYU+ACuTSyhpU3Bn9rHLBM
         UMXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702545095; x=1703149895;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4lYTGtSYRVAJ3w0j3YsinoBhP2NVVpIT5xX2iQPFdpw=;
        b=Vjq1e17R6QsTGRI1DvIhrbTdLPDWEnVfVSXIKeUXWWDSiLfEqCxz1nQ0uC8k1shjaC
         dSH4evP0Dsqlbf76ERsifHiHUsQQSGgVOdOEo1IVDNuxUgnxEkgV+GX4qnqbOBf9jBT1
         K7mF0k8NqfK7LxxYEpYvVzllRU0YyNgApQgLFI/5Rg3Ig3q4IxMSHXBbEu38y9LxO5nt
         rqfKtLWuROL+d1TKPncN1a5thu4cIdJrCYN6q7QQoso+gBJd7hF0NmGlWCbZ90jHm6AA
         cmx3gAZ+YgSoWR+I1gRoesSW13KLw2Kub1WXn75BImwJoQmNflt3s6/UMQtTY5f7M56S
         tPCQ==
X-Gm-Message-State: AOJu0Yznyp6h3OKKFTGPOQO4mUdQJR7LNlxJrsNwcVoLhMfLgYRZPieL
	R0itAemvCynyuX+c5XnueExG
X-Google-Smtp-Source: AGHT+IGKjUtEbBXnGiZjfUn0k6n+eh/VheFJ4i3/ykfZueH9WXrg9HF8KfVn30FUrPoO37tXWztR1g==
X-Received: by 2002:a37:ad03:0:b0:77e:fdb2:1598 with SMTP id f3-20020a37ad03000000b0077efdb21598mr9933316qkm.10.1702545095584;
        Thu, 14 Dec 2023 01:11:35 -0800 (PST)
Received: from localhost.localdomain ([117.213.102.12])
        by smtp.gmail.com with ESMTPSA id qt13-20020a05620a8a0d00b0077d75164ef9sm5144119qkn.124.2023.12.14.01.11.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Dec 2023 01:11:35 -0800 (PST)
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: andersson@kernel.org,
	konrad.dybcio@linaro.org,
	vkoul@kernel.org,
	sboyd@kernel.org,
	mturquette@baylibre.com,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 03/16] dt-bindings: clock: qcom: Add missing UFS QREF clocks
Date: Thu, 14 Dec 2023 14:40:48 +0530
Message-Id: <20231214091101.45713-4-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
References: <20231214091101.45713-1-manivannan.sadhasivam@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add missing QREF clocks for UFS MEM and UFS CARD controllers.

Fixes: 0fadcdfdcf57 ("dt-bindings: clock: Add SC8180x GCC binding")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 include/dt-bindings/clock/qcom,gcc-sc8180x.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,gcc-sc8180x.h b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
index e893415ae13d..90c6e021a035 100644
--- a/include/dt-bindings/clock/qcom,gcc-sc8180x.h
+++ b/include/dt-bindings/clock/qcom,gcc-sc8180x.h
@@ -246,6 +246,8 @@
 #define GCC_PCIE_3_CLKREF_CLK					236
 #define GCC_USB3_PRIM_CLKREF_CLK				237
 #define GCC_USB3_SEC_CLKREF_CLK					238
+#define GCC_UFS_MEM_CLKREF_EN					239
+#define GCC_UFS_CARD_CLKREF_EN					240
 
 #define GCC_EMAC_BCR						0
 #define GCC_GPU_BCR						1
-- 
2.25.1


