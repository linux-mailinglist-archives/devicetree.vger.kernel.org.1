Return-Path: <devicetree+bounces-11555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E85737D62AE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:29:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 250881C209C8
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:29:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 581B017729;
	Wed, 25 Oct 2023 07:29:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WenC67Y4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87BA2D60B
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:29:46 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6817B189
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:29:44 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-4084b0223ccso41966595e9.2
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698218983; x=1698823783; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mx8IlXiAIz+L/8v+7piI1N8I5OaioAed75m9CEhnWTA=;
        b=WenC67Y4VvDnxSFzOLv4ALAE1hRVwviPLNn5cA4Ndis8EO23iatv7mV6GFBZYkFH/V
         p+8TlDdVQ+VtJbtjePDRtB9Da64RXkowbKJOdznLpOAW3utmDdxou9BDN8rBidmHEIu/
         vvyDTYXU7eXt+tAhOARgEAOrz4RbyD9yYepOp5KUfd+VB4VEprueZyDiYPd3SF3kxHx4
         kCIi2THuHHsXg0cY4k6KQnY2wFvnrT99s7zMlfRoVDnXVftb9KyhDPULB+ITn2ny9WFM
         qHFfech/JH6BSQ+Bg1CEfe4zhiItPBwBzPvcPQRAar89VFc33C3ye0paIWuw2f+1BcQ7
         Nf4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698218983; x=1698823783;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mx8IlXiAIz+L/8v+7piI1N8I5OaioAed75m9CEhnWTA=;
        b=Ea3a6OFengZHAJkNCfEXEUT1pnyIeGhRXjddwHg2TaTkao29FXSgv2ZEaWGsH3LaFf
         zz7esWCoF+PC6DBVhtz0k8ROCQdu7QPuMRUy8oP2rlJWju3/bhy7Fxk3+YASSrIVEB8P
         HjLwkWfS9Ei5h5MWn2maNFGwlBfol5OUl1faQLZZ42nmlt+3NU9pyVRryKeO6nTQ07uI
         uCi2yiacXeI1YFr4PoUTtxdJG2+uvYr9mil9qVeHVSzxoP2qTupwaUn4dAVZWfUIf2s9
         Ro2t5mVRytow8cZnG64IDrFrQ7hmKMpVqxA+vZIJlvkVn2W4wSCXi654pvOhK2gL4FPp
         0ELQ==
X-Gm-Message-State: AOJu0YxI3vB2AYSWDRf9ZpfuSYfa1BGEDuBbAdZgSvsKTMysuTA2fPmz
	P25mQq2qC1KU/7iCuY/CNudYIA==
X-Google-Smtp-Source: AGHT+IFN5mFuPW14bv86l1Vsoyp/x0jnZX72hYe92hmdCXQSsFSxDIaqaDCZEu9HzA/Yy+g2Q6zaRg==
X-Received: by 2002:a05:600c:468d:b0:409:ca6:d79d with SMTP id p13-20020a05600c468d00b004090ca6d79dmr3563471wmo.18.1698218982647;
        Wed, 25 Oct 2023 00:29:42 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id p10-20020a05600c05ca00b004083729fc14sm18296389wmd.20.2023.10.25.00.29.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:29:42 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Wed, 25 Oct 2023 09:29:41 +0200
Subject: [PATCH] dt-bindings: mmc: sdhci-msm: document the SM8560 SDHCI
 Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231025-topic-sm8650-upstream-bindings-sdhci-v1-1-e644cf937321@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOTDOGUC/x3NPQ6DMAxA4asgz7Xk8BfEVaoOaWLAAyGKKUJC3
 L0R47e8d4FyFlYYqwsyH6KyxQLzqsAvLs6MEoqhproxZHrctyQedR36jvCXdM/sVvxKDBJnRQ2
 LF2xcayeyA1nHUFIp8yTns3l/7vsPPqlhMHYAAAA=
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1161;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=Lp3aRQCBhCwDMKgoBNmH8yh9tFS8RCfk68sTwAA5uDA=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMPllkefyT4L6D+1VxS5Ucjjq0DIWvEoqE2oBsed
 sq8T96GJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjD5QAKCRB33NvayMhJ0fScD/
 9kK5I7YhZUaNpUzQVrbRuUI0ymazzepsuA6HAZI+fWkqIEXL669t+GkL87G4XJ5l9/D4+jrNnD+rSz
 RsxlPoZejBBHS7LDdg4zt6cietq0geSiD6Om0u9enxAm1cQROV8LFefIodN1CnlH3aqjgWNgGqqXbP
 YaGdrkoGwP+KDe/FSSipEJEJ2DQiB54LCPmumTvofHkETlT7X/b/T+A24ULLRfnrF6tXeZXWiys6LC
 FAwtHwxuZdjwBcrlzHo2MYQmT4U+TmSmT5vcHB3niP4LZggBeYiWeWkxTyNNCZuec9/NbnX8qR5kzq
 x8+JUdw1QUlX0qj/8vZiPvgUKrTBlSQ/pl/SyaqQ2n2MfVsQ5ZmO7AmbxxhlgS1VWln9vcLEQdhFPJ
 1QSRMAS0PjaP1DcckK4ckunF1KYH2s4a1krz40iKcjahm9lzDWQARG2/bT1juyapA0j/0JbGYghuYZ
 Ck5Cz9+zgRzJNATyL2ChPXIyfi+9gAbeqCiiFHmhWrH1dXqT5tPSMmg1syPiEZi0kjnxd3rOasvuAJ
 hF+P+6k2WNicL4MnhEV0VNcrKNYE/O74JiVnKp9bgvHuupErSoy1tbrQvohNVdz5J+V7OYfZsAK2Ye
 Ph4e/Y7iKtkqqYSYvXzBkkCmcLOu1SC+deAEo2KW+ZsLMR7xxKHGcjTuJ1Ug==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the SDHCI Controller on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 69a213965089..86fae733d9a0 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -58,6 +58,7 @@ properties:
               - qcom,sm8350-sdhci
               - qcom,sm8450-sdhci
               - qcom,sm8550-sdhci
+              - qcom,sm8650-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
   reg:

---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-bindings-sdhci-3a47f07807ae

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


