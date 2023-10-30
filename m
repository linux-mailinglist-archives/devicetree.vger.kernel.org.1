Return-Path: <devicetree+bounces-12786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF2A7DB6C7
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:55:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CF4FFB20D12
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 876E1E56B;
	Mon, 30 Oct 2023 09:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pkMhWuN8"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424AEF4EE
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:55:28 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50CE910F4
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:26 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c51388ccebso59167301fa.3
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659724; x=1699264524; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r02XzfMz7t5m8e/QRtdWGgeVrD98wGj55swdSf9w36Y=;
        b=pkMhWuN83g9LGzhb/dYl95jAnZhqj0p8mRmJ2euwrCYydNTSLMhFt12n2cq7MJsqxH
         kNfqRCEpWehBEiD8iee7ggGYME9LRRU3BpyTwLslPzR/SErLAQFbjo+yE6IhRK8ZC0hB
         1pF7zJVpoKUnkMSZPFtGyTIR34s7gl1ziTrzaZ3R4YZO9MJhb3Qd45DCaw/Zxkcoduow
         myyiD4GNo2uwiZsFMmTM/ljNNre7FdZr1MAjBC4AEe0sNZnpkbLDF/5GUYoHdmU0IxxQ
         pOThf6mIy+ZeZyeZy/WZC3xnAE43Wt08GFBy0PlUVByBASSx4HbfekINa1hhnW14bcsz
         sbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659724; x=1699264524;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r02XzfMz7t5m8e/QRtdWGgeVrD98wGj55swdSf9w36Y=;
        b=ck4fGVRkUSoxZ2JQPIv3DgqncfE78bITN07joIrFnd/hNPBKPllTmyWwGnoIA93nD3
         CrOe1mQYJdkVNnmnhnU7XhM62qSpLCB2jzCB8AX8PSz90voPQptCeBC1sYgLqQ8vzNJe
         GPOh54a8PXxQOsOLxNnVfLk5oJ/AmXk3gMnmz8BQ9LScUAMArKDnnbDMAFUtnyLDAMVU
         qlmObHXVfc93T+bdupZ1Ov2yjVsprdFt3EKbp8Z6bX7C+xJgzsHSCNkTeRV2hLGzfyg/
         QEcuqpgt1YPlGaUzfKVctfnq2PakPZCaMidyibhl8wuULYIDsnuqor3x9dCXVnMkRsDf
         2MOg==
X-Gm-Message-State: AOJu0Yxl0NKxq9ePZ/sijaoZ3mIp41fVNoKahHV5lRaIaWillpz8ZSXU
	fSCxhwOOoFS/n3TnUEVJs9hFLw==
X-Google-Smtp-Source: AGHT+IEkEpDmYJs6Z8Wt0rHwSJrdFdEaJDmZTHR7XwDAdZ6Ce1flzbaMZjxTyrIGw3eeVeKucltswA==
X-Received: by 2002:a05:651c:1a28:b0:2bf:fd6c:ddfc with SMTP id by40-20020a05651c1a2800b002bffd6cddfcmr8610897ljb.45.1698659724296;
        Mon, 30 Oct 2023 02:55:24 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id m11-20020a05600c4f4b00b0040651505684sm8783759wmq.29.2023.10.30.02.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:55:23 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:55:19 +0100
Subject: [PATCH v2 1/2] dt-bindings: arm: qcom,ids: Add SoC ID for SM8650
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-socinfo-v2-1-4751e7391dc9@linaro.org>
References: <20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-socinfo-v2-0-4751e7391dc9@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=654;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=fnpn3bO+mHDBdWe7hBx2DnPQoU2QixJH3axFkhU5t/I=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP32J0cgFvT5edU1gGd2Vb4t8Rs0PsEeniABZ72O/
 8hwG1xGJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT99iQAKCRB33NvayMhJ0ZyLD/
 9KUgAgxRAi4MiaVjbWGHC/PfhHxaGxkHuLGSYMtIHilvS8wR14lRCRWxXXkSsJcoL/5y8un4BVtBF/
 Y2ThpMoELJQB6YJGLb5AuieBRLPzwpArcHlhy7c2ZdN+Lg5+JPY+SSeim9537vQyN6B7I8D+huhKC2
 Icgb4o2I3CUMgdTDxjtFxQ2Rd7iG6Qg/paJ2F4mU5+SBPBPANgakpBbqfkee334rcoPQxc/EUFD3uz
 Z2R42t54cDxKM03rOUQpRaU5nczo46kPstDocteOcmtftukcQrpSD3MKVwvVQr9Qhgj1jjZ1ilPvzU
 71o6N6h/6WNcWU9nH7iDQpTxdUh+qGME4SJZWtHY8beJjWiqLaA9VVAd5V8ax0iobMQxmfM9HG+CMu
 Q0HSUupm509bePddWgWbBs7NiwqJ+nfHate+vaCCmr2fsZJlbllhWXHfZjqFX0v4KBWx4b9ejNIJRt
 VRvVv4JkltQJ7rfDMUZqftgkHqEE+eogqlakMBmfz/Q1WYOoF6DpJkk7ji0MC5uKegSDPH8fjYl1iO
 gZ7WpsFkuelhN1pnWj25nDmq9Q8VxeKmHxxxgs9mjCf2dw25QZOlFinMGWMq2J2bAkdd2FzdSlbpSX
 zFMxPH4NNCxSiZr+bru93mjm1xKtzikoCBCgszKonZIdnErng/d/Ofxndw/A==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the ID for the Qualcomm SM8650 SoC.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 include/dt-bindings/arm/qcom,ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
index f7248348a459..51e0f6059410 100644
--- a/include/dt-bindings/arm/qcom,ids.h
+++ b/include/dt-bindings/arm/qcom,ids.h
@@ -255,6 +255,7 @@
 #define QCOM_ID_SA8775P			534
 #define QCOM_ID_QRU1000			539
 #define QCOM_ID_QDU1000			545
+#define QCOM_ID_SM8650			557
 #define QCOM_ID_SM4450			568
 #define QCOM_ID_QDU1010			587
 #define QCOM_ID_QRU1032			588

-- 
2.34.1


