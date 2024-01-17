Return-Path: <devicetree+bounces-32750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E3C83077C
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 15:04:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4661E1F2574D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 14:04:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB6D01F952;
	Wed, 17 Jan 2024 14:04:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j0DVEn6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BACA2030E
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 14:04:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705500268; cv=none; b=rtPg3gAw/ZplMU6UDX9QB2tVtS1WZEHUVSm1M7x1QPNx7vt5A5nTU46uk5NEZ6bLaHqnSdrOQSgAIzFkho81F3QxLGJcga2n5ua22NNQ12mWF54q48AdQhTMC6shmdtDz2BuyqkV19iX0qBK5XEmhyqOq5LuVSDfURUkG4qbCd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705500268; c=relaxed/simple;
	bh=BNkRiqUWArTJ0KVqmkfyrxNRNLwMagIurNBQJ1C0EgM=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 Date:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key; b=iUpnI2rvVdTQMcjyxPj8RBOh821VivtA8Q1Zn5VgEH4yNkDKRMckJACDmGPlFqVZWZxfFKQQoZGQN4Q5Y8lCsVJTL1dR9OIN79vbmxz7FHQeKRrsCrD/XVPjPXwqStnWDZctd4PvJDwTbXd6jgVVcNLbjYTJMx+Rdiw9FyOKpbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j0DVEn6K; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50e7f58c5fbso15025594e87.1
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 06:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705500265; x=1706105065; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KbLebAsEZ6c2w85zme28SKXGx9zXJ3HsoqbiMbqoTy8=;
        b=j0DVEn6KgPuD66QTIQEJqjmHdHnXrTdb1IYNnLSR18By5HjEEFqXaL65p/o+GKb38I
         azpWlTWyR0xC93v295SF/7Hi4CheJVzg9KIiO0uDUfo95bxrEQv3FxJxzhE/iOnOtzDO
         0Vj1S3/Ff5tfMmEXqZtd6Qdvpo1+Qvij7VgHNDvCWfqndxFINhqbEJTtkLpNfuz/Bu09
         1pzxrZuJAt1pGuAReGfjdXadLZdVJNqX09miRfMbc/vpF2QoDi9wlLnAYNHQs7wS3CyY
         1iXKxfMY77hxE/FkH6zWnxhSo1vJ7+0wELDQw4pO0LCuXgiKdgXLa2woWKG6MNZBv0fi
         tHzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705500265; x=1706105065;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KbLebAsEZ6c2w85zme28SKXGx9zXJ3HsoqbiMbqoTy8=;
        b=nvVVaUowqTmv8lD1fsblT49kNfAxQxIm8k+9g70yfpFx8z+K0+Ishrkzt8u2MhnGZC
         ohSE3X8vz3hJJnSNHQ6cPlHLVwNQodoWlr92P3IwKMNVTCj6/UeSAtb6z5f4yjKwMRzl
         +bQHt/R4v4/S8XH+oRaqVOMudGmWXBEWMGk7a8uHeaAoKryvtcxscgpIdJxqMRmV/jEG
         pW9732NOY4zc8uGhyrnH7R0CTPLw38nFwtcYEJHdysaGzQ6GglRIbc/3RfRQgKcsJfIc
         HYx0sFM+AEQh+Ko1ANHuWLzP5KNf6Mm3L3gRPrbKldtIPkHo1csXj1SM+6mgcaoxgsf+
         IMrQ==
X-Gm-Message-State: AOJu0Yx8LnVuvd974AJ4+KLryb0X23S7J3IdxkkTjYi8DCN0JwODz9DT
	sUR+FCnZ7GyNZxm+uKo4EtCCPb/OiohZzQ==
X-Google-Smtp-Source: AGHT+IEci5w4VaCrjhPVRmsfWaQ2FL4MPwZ1X2aiAPUFUfEDYDWcAf7EinIhfVzeZWQw4HBq9Bwbdw==
X-Received: by 2002:ac2:4896:0:b0:50e:aedd:ed76 with SMTP id x22-20020ac24896000000b0050eaedded76mr3980995lfc.131.1705500265272;
        Wed, 17 Jan 2024 06:04:25 -0800 (PST)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id y29-20020a19915d000000b0050ec7a26420sm269711lfj.204.2024.01.17.06.04.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 06:04:24 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 17 Jan 2024 16:04:22 +0200
Subject: [PATCH v2 1/6] dt-bindings: mfd: qcom,tcsr: Add compatibles for
 QCM2290 and SM6115
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240117-usbc-phy-vls-clamp-v2-1-a950c223f10f@linaro.org>
References: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
In-Reply-To: <20240117-usbc-phy-vls-clamp-v2-0-a950c223f10f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Jeffrey Hugo <quic_jhugo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-phy@lists.infradead.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1121;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=BNkRiqUWArTJ0KVqmkfyrxNRNLwMagIurNBQJ1C0EgM=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlp95nRkdSUFFPVRgTFObupXEVUkGLJJlBCCc+Y
 tA4+bRCycKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZafeZwAKCRCLPIo+Aiko
 1XnzB/4sv93LwvfIhcO0GMpB1xK3Bj4hbNRik3mVZ2P2W9HQgPrO+EldFpGPvSnlD9GnXqk861r
 ciGeIO5h8aCdnKY6u2F7d+oBfPVeg4s2C/B+f1Ya2i0JLVz+pd81dyW/wRRdyAEcwNpDxxS514t
 nqz50x44sMVjk5ycRKMgUoq8mLmXAU8lIycGHSoKQr8tzL74bn2YX/fedihkVHBYIKIqduM09wN
 SLnf7Mp5HnQTIhah2Z9RyC+b+8AhleF7p3SVuNxybWM79FOaLsXXSi1vEMPaDMtYfgLI8UM2GXC
 EBIUOnCMeN4aBfmWOT9z5mb9DMLXVTgjUJc27Z196CCCq8fx
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add qcom,qcm2290-tcsr and qcom,sm6115-tcsr, compatibles for TCSR blocks
on the corresponding platforms.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
index 798705ab6a46..b97d77015335 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.yaml
@@ -19,6 +19,7 @@ properties:
       - enum:
           - qcom,msm8976-tcsr
           - qcom,msm8998-tcsr
+          - qcom,qcm2290-tcsr
           - qcom,qcs404-tcsr
           - qcom,sc7180-tcsr
           - qcom,sc7280-tcsr
@@ -28,6 +29,7 @@ properties:
           - qcom,sdx55-tcsr
           - qcom,sdx65-tcsr
           - qcom,sm4450-tcsr
+          - qcom,sm6115-tcsr
           - qcom,sm8150-tcsr
           - qcom,sm8250-tcsr
           - qcom,sm8350-tcsr

-- 
2.39.2


