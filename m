Return-Path: <devicetree+bounces-87257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83717938E47
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 13:48:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46BB9281DCC
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 11:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB52516D317;
	Mon, 22 Jul 2024 11:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EZOK9FoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9C516C6B2
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721648919; cv=none; b=lQ4R8lNAzxzKy+pcIt6IQy2eoBD5ocGpjpxws6tZFP0G3OsvWY0m0vAvnR3MAEUpFTKhZWnwNlCzEKipnUhLMJW8RKX6rmjH3iOgyvo0E8YFBdm8ujvjMRh7cXsLOxgcVDKgj6npuGCIP1jGmODfUNgni59O31B9XbvUUjqYq+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721648919; c=relaxed/simple;
	bh=3Xwhjvm5wbJEdiizucjdqYXuEcrAsilJiNWDsUxK5cI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Wb2jpEwbNpumZwDwUW1PnXdfjOHIMiK039qjKtGnLySqhma9Aa6UJ4r9UGdgzVu+IDx7yFdUvllKqvxagT4jzoVkalCN0Z9SL6+N5CGaYxhUCLg6mOA1NIGqEvsQj9RFUzI7f1Y9Odq68PX6wc14PU+MjTDruGSlHeaTMim35uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EZOK9FoM; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2ef2d582e31so10911301fa.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 04:48:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721648916; x=1722253716; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxCX5fPAViMuGmpSeyA0JTwF6wn4RYFArQbIFQ2vTrQ=;
        b=EZOK9FoMUESG4I55A/lkUpccuK2q2oJ8CPKUrMRExThccRA8I3pHsEV7iu6sFEJGhf
         S3D2dg4pQSJCBmG5eOIxyqcWi+UhN3r2vSJ6Ukw5E9dSpi4WQm30nL8Lss1dkiX+7aZ2
         oOT/V2RhbkFvOangK3vVsQ2amJ4i/TiEXNvH3ktu0OCm5zbrXcyyOQOrHKhtFFbXQYAa
         SI4CQmXf/nnxEp6bcMSpNbPuOkaVDfdq+zXAh4kUUZ+u3cS8KpgeSw7SIdmxjAEhhw4x
         DU5OvVSdcU27bkg2fUoiL+JA76pxBn8gI3z4stMoT2FgrqtZXR/pE4uXjOQRvDSStYYb
         BAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721648916; x=1722253716;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zxCX5fPAViMuGmpSeyA0JTwF6wn4RYFArQbIFQ2vTrQ=;
        b=Rn8lumPrv+HD5bFEPovC3fgLGjsKZqk1sdUsmWg0Kpxwiom2bxrMPW/Ws7/hFFwrX5
         Q7dS33ZUrNf/OHSzBWiZ5VQ1uqpv6GeqmHAFpMf+82M8O3M1vWcW1Nq6STN4FJcqJRSa
         vZH6Yr5kDzRGiTSH5+2nOWr/542e0iwUlv/TJIfYytsw5baBEVSw48EbVNyxO3uQMjil
         8ze8UNABivAm7cUe5RiU5pZze7krTFalFo2klZctVPDBF7ZQNmTk89bF6/lNhfn8h5Pq
         ac7JQJxenjKCmDr9Gdg9RpIw5qLZwWOR2cMHgcuJyCs8ypad+UIsyOyOZeKviTH/NmRo
         hRKg==
X-Forwarded-Encrypted: i=1; AJvYcCUScQinyk4woBY3pgmA/QHeVXEzaQcVzsUScxwVXQPCqrkbXTdp6gYRuFcTXUHM7zDL3ocyxtt+W0+mDNOFPIt+L+gY7PestfCDeA==
X-Gm-Message-State: AOJu0YxJuGTdW0QLyRoD5Qb4BolC1RuC1ClGobdYQc4Ic+s7NwXeDFrm
	DiciZ5LpBJ5aXZriYn2xvFBm0elEXxGrTUgQzi3Z9bobe8MfPQZN0BY9aVSWbG0=
X-Google-Smtp-Source: AGHT+IH35TeIaOyRUboeH3UdfecFWIeyAoEP0iJfK1YfO/fp2bVWpoSUS025RhJSlGJzRTjJJlT4lQ==
X-Received: by 2002:a2e:a27b:0:b0:2ef:22ad:77b8 with SMTP id 38308e7fff4ca-2ef22ad7b3fmr35328011fa.23.1721648916185;
        Mon, 22 Jul 2024 04:48:36 -0700 (PDT)
Received: from [192.168.1.191] ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d68fa17csm125681235e9.2.2024.07.22.04.48.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 04:48:35 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
Date: Mon, 22 Jul 2024 12:47:55 +0100
Subject: [PATCH 1/3] arm64: dts: qcom: pmi8994: Add label to wled node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240722-pmic-bindings-v1-1-555942b3c4e1@linaro.org>
References: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
In-Reply-To: <20240722-pmic-bindings-v1-0-555942b3c4e1@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Rayyan Ansari <rayyan.ansari@linaro.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=748;
 i=rayyan.ansari@linaro.org; h=from:subject:message-id;
 bh=3Xwhjvm5wbJEdiizucjdqYXuEcrAsilJiNWDsUxK5cI=;
 b=owGbwMvMwCXmtuJiX/SRuS2Mp9WSGNLmuQs5xH/sker9zLblypq/U3dcuqvIpb1w36bvu2ve5
 tU6a95s7yhlYRDjYpAVU2Q53PRlzevtTkJXtledgpnDygQyhIGLUwAm0iTG8D9xybt7Nnpf2Kan
 LBEq9gvwO9hy2MEuNTWiU7/ExiJRNp+R4a75+wbz5tt9TpLM/6RFDqcfLkuu4LyZebj36qplnZa
 z2AA=
X-Developer-Key: i=rayyan.ansari@linaro.org; a=openpgp;
 fpr=C382F4ACEBB74212D4B77ACA46A8D18E5BC49D84

Add a label, which is a required property, to the wled node.

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 arch/arm64/boot/dts/qcom/pmi8994.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/pmi8994.dtsi b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
index 36d6a1fb553a..9ee59e6d2cdb 100644
--- a/arch/arm64/boot/dts/qcom/pmi8994.dtsi
+++ b/arch/arm64/boot/dts/qcom/pmi8994.dtsi
@@ -57,8 +57,11 @@ pmi8994_wled: wled@d800 {
 			interrupts = <0x3 0xd8 0x1 IRQ_TYPE_EDGE_RISING>,
 				     <0x3 0xd8 0x2 IRQ_TYPE_EDGE_RISING>;
 			interrupt-names = "ovp", "short";
+			label = "backlight";
+
 			qcom,cabc;
 			qcom,external-pfet;
+
 			status = "disabled";
 		};
 	};

-- 
2.45.2


