Return-Path: <devicetree+bounces-5383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6037F7B6233
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 09:10:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7078F281956
	for <lists+devicetree@lfdr.de>; Tue,  3 Oct 2023 07:10:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E698BD277;
	Tue,  3 Oct 2023 07:10:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B8FD26B
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 07:10:34 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE253B4
	for <devicetree@vger.kernel.org>; Tue,  3 Oct 2023 00:10:32 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-40652e5718cso5701325e9.3
        for <devicetree@vger.kernel.org>; Tue, 03 Oct 2023 00:10:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696317031; x=1696921831; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cLb8XoK4xSjjsLEStZVUx0dslR054K9qkL2umFuXmJI=;
        b=iAw2ZftUVWWv+93fWKZW8nrbN+MiECIIfXdA6iAmLbuQtiae6Uc8cYgvMOZFZLtPrD
         X/dGqFiNCKylqs1/p+DCxLZceNy+jOkjxr27ctBxfK7ywJt0zrwQNohBePZ9Djl3Bx8i
         N0+V3Rw60AN0rJjMHhoS89wvX8fGu2R/+FaD7fhvqOOF2NPktuzajp7t0tgAJ76zenn5
         pxCp80SWDa0JDpgh1b04tn85vg25tdUI6IemY1YBNxuHrBySPcmJ8fYBOUlQkGlkyJ5h
         +3hOjOftltvcz76RYlpiKs/NegypEYiNti8pvacWOIGZ0VGbALPpVqDHzew0Bpdn1D/E
         pe/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696317031; x=1696921831;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cLb8XoK4xSjjsLEStZVUx0dslR054K9qkL2umFuXmJI=;
        b=LBWI+8dRgfskE1QkmaTSg9rwu/LpdBedd8hS40ZMvWBJG0GWTOXBaMmiGl6buLDFpB
         SFgXNORn+bRsW/asVHOeBBvQw410v48/SvDWnk5/acujm/ACAQViTZw4gt4IF34k2KHD
         O91Xa2lU+L052Mkl9URyw3cD574jvPJS9KDD/5Gq4Yg+Z0hVSZ8T4HCcegzyaDxzj9IN
         94cbKERKq148iBx4Dz/4cCsfbPr6SwyHpf/2mKc2qJ9TWVxXSOVNjeP4ZWY1/AlgXAe3
         mOquaxwnj1DFr2vPeY/7a1dzjONYE5CcyrWz9/zL6zLQ9kZ6Z1gFMmMzIRH7G9ADWXq6
         DK6Q==
X-Gm-Message-State: AOJu0Yx4P7x53oWN6MOzMoC2g4UjdXiv6ZMp4vRZ8hogLWqYZvk5gnpg
	gQYhhgkixABio18896NuU25S7g==
X-Google-Smtp-Source: AGHT+IHurqPmTOvQyywenR4me6Rb+i5W+aB4YiRsbt4CxttjX51aKVEL8lhtgZye9Gb5Lx1RvbgloA==
X-Received: by 2002:a05:600c:1c1a:b0:406:53c0:3c71 with SMTP id j26-20020a05600c1c1a00b0040653c03c71mr11351278wms.37.1696317031207;
        Tue, 03 Oct 2023 00:10:31 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k2-20020a05600c1c8200b004065d72ab19sm8746652wms.0.2023.10.03.00.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Oct 2023 00:10:30 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Tue, 03 Oct 2023 09:10:22 +0200
Subject: [PATCH v4 4/5] arm64: dts: qcom: sm8550: add TRNG node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231003-topic-sm8550-rng-v4-4-255e4d0ba08e@linaro.org>
References: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
In-Reply-To: <20231003-topic-sm8550-rng-v4-0-255e4d0ba08e@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=811;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EgwvrFMRksPbvZchOPqxaCjQZivk90KnsC77FZnwMJk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlG75gZ7bQ7XpHOKc3PJogc7Mtyyex96/6Kl3S8QgK
 2Sy2qTaJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZRu+YAAKCRB33NvayMhJ0R9GD/
 4p+8ciexogAPDkS7uTlwEf9YXZ2vrLOwUzBBEtos6jxzNxEckv2opMRaLR6vh4Ayr2b6PsUiZo4hcS
 8ONS5EYJFiFZN6sRiAoVRqTBELM6iEPgn3xA73aTPa2Cwg9jv2nQW72dDiCpzkqPDspf5SrZ9spIuJ
 VuVgOeUnV+TqFhMbVnwkp5W/I1BfOIn0gkSIcPw4Rl/1cFVfCnL1K54h6EiwOTeoowCckEzgpMVgvO
 j5J9NhtSrHWUFICxefvm93rSA46g/c+IeOsabCpY2Txdo4eTGZQ+++3/tgtGDVhIsHJEuwBN/byRkt
 +4DzzRoK475lOYA4NMx1F/Tg3Jvs4fOw/QkG+LTqGC/iUIZx5AXkb2DzOrkQx2s3w6CdZK8b0VIDBn
 4aHTHqs4yEJj2ahjzq6ZyN/J7q96RTld7MZDmMBj/J5qod1OhYJ0gDEk5xJiDlXtMaSbjB4b2Urk+b
 fbk6erm12zjOsZmx6sh0KxyARAJoipOoRXnLCntnevg+Mj/+bl6pSWhHMVgwlA4IgLgydlGZoib4+9
 SJLE4rh9K7Ods4Z/dL5smpUuGb7PzF0NQ6kK1rbe92ahVb5ps9NFCkhPqh/sTDYC+9iJ/+siqX+WL6
 CRn8fgVnZSackQLVmogdlfI88VocHjqueuvt7eGTuxnEAecWDOImoPReKvaw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the Qualcomm True Random Number Generator node.

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index 7b9ddde0b2c9..7bafb3d88d69 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -1677,6 +1677,11 @@ mmss_noc: interconnect@1780000 {
 			qcom,bcm-voters = <&apps_bcm_voter>;
 		};
 
+		rng: rng@10c3000 {
+			compatible = "qcom,sm8550-trng", "qcom,trng";
+			reg = <0 0x010c3000 0 0x1000>;
+		};
+
 		pcie0: pci@1c00000 {
 			device_type = "pci";
 			compatible = "qcom,pcie-sm8550";

-- 
2.34.1


