Return-Path: <devicetree+bounces-171823-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F86FAA04DB
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:44:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2A2291A87746
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 07:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B8892957DB;
	Tue, 29 Apr 2025 07:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ydvwkmPw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DF729116B
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912593; cv=none; b=o2KJk9tpDvXpHeYdmBCgg1J9oS89ZUdW2QHRw0RAe4TshAF8ldTlp0Wt9zVCyPi1kqi+TL197655awEN5cxjk4kBrgnWT83gGtl2hM4zTeMygy5pdfD6Tiq1qCuloFy9f4C7CjiIGHRrNmabEuCBDWAiN2w7nsqTaC3D4JJRxp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912593; c=relaxed/simple;
	bh=tj3xZeZATeVmYvUTFwcmSAky2uxb2oS5CdYv+BBD7vk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Kqq7m3gQEh20dRDTxNyxHWjaFnu3zxARmzUgeAHaqgCZ2tE7SncpSoe2UVglSRBvciQE9si0ALyZFCW2E7ClC+yW2uGBVDcp03/rPoLGhbzChw1DqcmL3/hNckjgOk74p5LItAeMY1n/o/DiWFzhgyrv9uGWagNK1E7dX3VlPoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ydvwkmPw; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5f63ac6ef0fso6921277a12.1
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:43:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745912590; x=1746517390; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q/np6qWxJtu/oIRM2gWP+BJxzHRCwLXGvp3Gb6G56Ss=;
        b=ydvwkmPw1nYyndO0KkrK2ohPh78jI5xfr6csteaqUfYqncWKnWLLWo97iPNp05SPUb
         EJXMpI52RHsOLkg3TqY2JReB4bITPdVoSlwJkrKNGYdAV2cr0dwvjbZ5jF/etraBe42R
         pOI6jkz5GbpQ+8hKGKuGUvBUwUykEKbxCElOQlh11g4a15JQN/EE+EbwOEb42k7DST2n
         QKzgPFd9bsHd+nczKv6l6EjxWZiaijiJmveG0/U4M4ULd2nKC9Gv+yVYRMTqcCHaymMq
         k3VwB7ypBl2E4m+5qw6/fqipUIQV3a2eLNmqGy/EFfR8dl7KPIa2FgS4MWUhQrkCCXYs
         A/Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745912590; x=1746517390;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q/np6qWxJtu/oIRM2gWP+BJxzHRCwLXGvp3Gb6G56Ss=;
        b=eseoH2OG02/8jBd/c8RHlOQFvTK6cPxCNfr1r84G/gG47hCHBGE5NXDYXCIGzO2F+R
         x2Z2riTbI2YcOnfsWJyJxf2s8lh278dxu6nr2m4/b8p4bNomiz22+J4gALVIzu12fK3F
         rP0mwwfA9DEteFUz0zOkhiK8DY7rPfkkaUBSuzsgsr1CG7dGAJ1SVN/g+lOU8LgzoQjB
         MmjNhPG6usRYpYR7M+9o2xZrDUreEaRHPOBOmSKueQe87PspdV2kJqThHVOv1bGK0DGw
         87ID1Gg70Z9Ddcn+o4nMrZDclDSQxkvtqTaMV3ca92YoRTFaJ7nWLBdct/xvuDo8Wa+6
         69UQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFqHl6ZwpSKVZCAhoPPBJXGisOv6UpluLT6p1n23WvMhBljEsq75lS5x4REPmIhV9uYF3UU5cGfQAA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+gCylDNZG/yet+WsmlNg1py9CFZ61JrY3R5oyf01D8ZVD6f56
	iPVDNIdpsAQwqfRbZjryhdx0Lfu0DoWtqjAZlnJu7Vs9Y5FPML5GMwFTM7fxCCs=
X-Gm-Gg: ASbGnct0vJHtapJE92HnybUAZLYi7dRAGTug9avyhHOWFEapMzxZvBmJXJW80DNGFF8
	c0JMaQaAgNd4YzqOjtGsY6wBnC3srcrY9XSHjSHE/9brrNx1tu2pakUy2guP5ibG+ZJ4DxNawc6
	PQ/RLnP+FEOOfw+fLCPzffWGyeYFlX8w3SRAnUGUC9+BZYEpIRv2rGF59WDr12tHGKN1MX2Lee2
	fyhBWh4X+TP/sDAIEYv9SFAEechqvTOwpddTluzJeUw80V1vtI6z6GR9zTZNz2XlvXlZG5Vn3uU
	YGUCsIQnLoem3YPMQRDIzdg1RKk8vLqdgl4B1QY=
X-Google-Smtp-Source: AGHT+IGvwml704d/iiHTqR9CcorCR7n9v9zxfSJ14wpNbxXW7JlKH5ofm7J7L7B7L1OM0TuzjALLYg==
X-Received: by 2002:a05:6402:27c6:b0:5f6:22ca:8aae with SMTP id 4fb4d7f45d1cf-5f8391fe12amr1858598a12.2.1745912590070;
        Tue, 29 Apr 2025 00:43:10 -0700 (PDT)
Received: from [127.0.1.1] ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f7013ff4e7sm7048114a12.22.2025.04.29.00.43.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 00:43:09 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 29 Apr 2025 10:42:33 +0300
Subject: [PATCH 5/7] arm64: dts: qcom: x1e80100-hp-x14: Drop useless DP3
 compatible override
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-5-058847814d70@linaro.org>
References: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
In-Reply-To: <20250429-x1e80100-dts-drop-useless-dp-compatible-override-v1-0-058847814d70@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Sibi Sankar <quic_sibis@quicinc.com>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, Xilin Wu <wuxilin123@gmail.com>, 
 Jens Glathe <jens.glathe@oldschoolsolutions.biz>, 
 Srinivas Kandagatla <srini@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Konrad Dybcio <quic_kdybcio@quicinc.com>, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1306; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=tj3xZeZATeVmYvUTFwcmSAky2uxb2oS5CdYv+BBD7vk=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBoEIL9i4X4yaDcISZ3rOi33CtleZkgkHjiUWJDC
 puuxgmuISmJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaBCC/QAKCRAbX0TJAJUV
 VsgjD/94ubPCDyI10UTCOwxy1oWcrLoKcpLqjxF92fyQpfOnC5pJc3Xo5YSC0+tX79xfUgyhYxM
 Yddaz5xArq0O3o1ehjhYJz4ksrKNQeP8R5hKAsvNChQ8hXmtNPcuFN6V3haNJlSkIBrrAD/+f2c
 oP8use2jDjYcor2fWK2sVUIj1wPehSVjBmyrdXcU4DpZy4dAGT1PsctY1ry4iYydtxfj4Z0pzZY
 3Z5FuNxoYMH7pe20mR9N6wu4LGLp9R8f3hp2MSdPMrPrZaFMikfnGyBR2LgxCCD3BspAErBIUmC
 c+g213dNXcBmQH38tCYA+zVyxz5Vt2pqul/34ywBFvnrXcyVpgyPN30lGvhqtifQMWXq3UXr50A
 06WD+xN+5gYkL8EFpojaJk6Cyashr5ZarD6QDs9t86hECTYagkKuLQ8FiIFLVSPqtBNmqzrlbL2
 zg9V9qrgfDfCEQ3NNcCo5s+hm3yEYZNlBQGyHmTUST7120PEJGzNw5qAfNm42bVLwyc8no+xeow
 zrl7/IoFmMuBSoyr5WnXY/WW/aZdIcZJjELVZEwyuH7bxAUDG0AN2d4xajjM/I4wUKjGraHxPIv
 n1+Uo/9MhK8xJy/zk9rneIDky3cvzLEXHQCNJ0jyVdCYX/D+CoDFXzRPkxFbtZYFcBcGTK1RiN+
 O66MY6X7XNSDqeg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Back when display support was added initially to CRD, and we used to have
two separate compatibles for eDP and DP, it was supposed to override the
DP compatible with the eDP one in the board specific devicetree. Since
then, the DP driver has been reworked to figure out the eDP/DP at runtime
while only DP compatible remained in the end.

This override was copied over from CRD which was the first X Elite
platform upstream to have display support.

Even though the override does nothing basically, drop it to avoid
further confusion.

Fixes: 6f18b8d4142c ("arm64: dts: qcom: x1e80100-hp-x14: dt for HP Omnibook X Laptop 14")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
index 1a187dc3684a967b42817e44ff0df10202fe3362..f81e5a479f8d14e7b9c94ab08b5a4f0d9487bfca 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts
@@ -1154,7 +1154,6 @@ &mdss_dp1_out {
 };
 
 &mdss_dp3 {
-	compatible = "qcom,x1e80100-dp";
 	/delete-property/ #sound-dai-cells;
 
 	status = "okay";

-- 
2.34.1


