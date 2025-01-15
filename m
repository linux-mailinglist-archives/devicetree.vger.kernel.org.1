Return-Path: <devicetree+bounces-138802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9ACA12539
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 14:46:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A74DC3A99CF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 13:45:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C04A24A7C7;
	Wed, 15 Jan 2025 13:44:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hScIhbNa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32FB724A7E4
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 13:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736948648; cv=none; b=q87g5/c6UPWnvmEqgaKbC5PFq67dvrVX68C970DTCdUQP4js2uUxgGs/tCvceFOIEmbuzgpkTGl9Onut3m+tt7HgKUmyFkEsnk3Yr08LvxQpDDWWIM55UBS9p5CwFt0Mn97dnj2lNShlvekm65FGkdmc0PK9chYNCugJqF1JVo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736948648; c=relaxed/simple;
	bh=8UuCn+tG6hW9MwAi3YwmmG+cNK670avytcDu93e2NB0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=p/x30h3LWtOE6H/CTyMIJsqBZZSUB8LvkOPQ0KY86/tJlcJXOyPYFxP6pBLMjnxh3sJZfcawzbRYUDSrl1cuYXg0BcRyXFi0+f+Cndl7gZyfwMa3N+gVaW2fz74+Az3NEw71NrT0kpEht5Jt4ZeW18hXWb8LWsr5TVAPOgZUuss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hScIhbNa; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4361f65ca01so64852105e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 05:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736948644; x=1737553444; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pWOZNGhKFmG91IWJZrSl1HFGG1nyNQH9tCRWals82VA=;
        b=hScIhbNaDMg9SLhdEKIai+jw6k90lCJlnMblqJvcuEnKfP3SlmctkA/uGAsFxrH9JO
         GG45+ZvsYRgCCRpCAlzfrNCTHF+vEXPTwygp6OUW8siOeJkex0YxZvBgCFsGPLEXPQDD
         O/zguV7tPW+iz1GC40X0RETDnjEbI/uXkkw8ZR1Udkt9LopPcp87wAYfEQkmBdcETYJ/
         CvopVNPRRQCk6fXA00lJFOT8H89k0R9SfHlMR4MtMAhoBjXz+s5w/diyLbkrkd+SSgvi
         Rdw16dVtd81J3Y51ndcb/MNnLh0iO78xtQklQ/nDBKeUcCSINl93tKCORW89qeMv2Gz5
         DJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736948644; x=1737553444;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pWOZNGhKFmG91IWJZrSl1HFGG1nyNQH9tCRWals82VA=;
        b=gB6NSsq78xOP+/WpOWvCwNqDUkuZI2tAy+D6BsdR6B7fiktn3f/FZe9R4Ws2Zq9dRE
         L+KaFeOqGnpjQimvS5jjWaXKQuupszXTX/8RAGNmS2pGdRu8+RApBnd3McTQZgFGKxmn
         t8C7Dt76sUXcsiNTeCZgKAZPESGXTJHyMIYGCrSfErIeBk0jgpuDlQTA/B0LmY81V0ot
         4u+0hckDkORt1GjHcZEa1hiUTivwTYLH7zOwLvG5MFiBICrd4PbxNZF1FxqqmGgu7Dko
         7U+tOhotrft0PoWiHhbjZFC9IZdKJwyfilaqZP5RKFGZJisoiQ0c/j/vTcjWwOqEz9xQ
         G4NA==
X-Forwarded-Encrypted: i=1; AJvYcCXf8R3t72uLSIE+deMO5mgD+4wZyo3Pom7byfgw5OorHjCoUzHnbX2CZBnBG7eOaVS0f6XCgpJWuxl5@vger.kernel.org
X-Gm-Message-State: AOJu0YyXl7gnjOixkvRWqPGdBr57EgBRWjcZ+C8VrqisySDE4aWOmlI+
	g0iMf8SN+lmwCD5l0M5O3G+tn51g8vEH5PsYkSmFYNFuRLQvvmkg6H0CNqGWbTY=
X-Gm-Gg: ASbGnct/du2Y+ygrczxYHE1jyXh8fIWwl5xWb2LsBNpvBdd/sNA2kkTLOQ4yiBURLfM
	ZM+I1w+VPV7UjTNYbOb2vAFDpp1MkYaEzBWhwSeL3z3FG1zlRg+QjczWaZgFF/M/G5KeKYYY/r0
	d1igoSDEaH3tyCm8G41iW7TLWj1KzCnelwY6C9AeM1+VP4qaTwN+pYbAkqj9E4+VAIv0aLI5E8y
	xkO9dfIrfqvCTYMqMDIFLNFtwQF6hFd36f9hRCreO4ssGvJBBpZs2WeEsP81kXhS49boNpMnzve
	0g==
X-Google-Smtp-Source: AGHT+IHStNt2w2bFRjjzdLtb4JcxNddxLVusSci+LoTdfamwSlC7DwiMfeXfMJiS59LDSM7rKNPw5A==
X-Received: by 2002:a05:6000:186b:b0:386:1cd3:8a08 with SMTP id ffacd0b85a97d-38a872d0006mr25094949f8f.5.1736948644419;
        Wed, 15 Jan 2025 05:44:04 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-437c7540ae7sm23454655e9.33.2025.01.15.05.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 05:44:04 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 15 Jan 2025 14:43:57 +0100
Subject: [PATCH 05/10] arm64: dts: qcom: sm8650: use ICC tag for IPA
 interconnect phandles
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-5-eaa8b10e2af7@linaro.org>
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1106;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=8UuCn+tG6hW9MwAi3YwmmG+cNK670avytcDu93e2NB0=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnh7uc65VQykfbVdMFFuxNGuQZqA7zsDQDVqL0+g/e
 pBmnhtqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ4e7nAAKCRB33NvayMhJ0RJND/
 oDusCp4GFp7/L/ElF+nuCmFQ+Ia5EzJ6b0We7fUYES+DBDXoW/fU9QZk7+zk3KV+9Yhkw4EWwY1nnz
 SHF7wgtKEs0lC2T/VH8q2RLyLq0d12GvqXl3TwoYhhpBSi4Nm7+E5XU4NwFnaViQI/pdQ63RH9Ejk/
 e3/MQvAWXasLN7fB7aWMQ1hThQdr0Q25k7NDCuhA5mLnnN5gijSnlfT83AzcHzM3IZb5fxXEsWh2w3
 /J48BxteFWkhCcWXMb+dcr3rIU3vwlgjC+fwAx98BlsA11gSW19DhcSxgmTTGdYrPumb2RXk2/C+mO
 tpFntszqrIaJR9ptvHBDP0iE3AIy5estYuONLS2wSZaY73KAFIHv014cBs2C5ED70QoyQgoUzzQiwz
 Tde2aC1JOI4yJWOthSS37NFHxdraXu3dYDmb5swXJ7AZCTtSNofvnQvEKW5+It+NqkMMBogynN+sBw
 UB4UxCvTXFtZf+iE5Ic5ILI5pMQpk9MXrDqJV/pnq69tmI3WQ/WHX/NviD/8OiIcTkV+d6COUSa3t4
 hktXACes89oq73QWuprDTSoR1IRxSS9533ovmmA+5RWWjb+rBJLn1p47kqo/leCf6y2Sn4Yr8xV1eY
 C1hAAU6TQz8IfrabVDDtVdHYQ6Pp+UxmuU20MjRDIQUcZqjYanevLJe+DBvg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Use the proper QCOM_ICC_TAG_ define instead of passing 0 in the IPA
interconnect paths phandle third argument

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..0658982a748ef4d9df0fe12ecc68c4c23e3c2566 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -2889,8 +2889,10 @@ ipa: ipa@3f40000 {
 			clocks = <&rpmhcc RPMH_IPA_CLK>;
 			clock-names = "core";
 
-			interconnects = <&aggre2_noc MASTER_IPA 0 &mc_virt SLAVE_EBI1 0>,
-					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_IPA_CFG 0>;
+			interconnects = <&aggre2_noc MASTER_IPA QCOM_ICC_TAG_ALWAYS
+					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
+					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
+					 &config_noc SLAVE_IPA_CFG QCOM_ICC_TAG_ALWAYS>;
 			interconnect-names = "memory",
 					     "config";
 

-- 
2.34.1


