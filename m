Return-Path: <devicetree+bounces-12767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EE0B7DB687
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:48:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03FACB20ABD
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE310FC12;
	Mon, 30 Oct 2023 09:48:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tu6lk8OT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2434BDF43
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:48:31 +0000 (UTC)
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FBDE129
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:25 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-507a29c7eefso6084828e87.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:48:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659303; x=1699264103; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A+s31ZrC5VzgVWo4S6ti1Chy3hSPGjdBjn6xdECA8qo=;
        b=tu6lk8OTzLkvyCfWSW/uyUtMLXJMS0GRejHdHzACMjfRV26vi22mDV7gTqjSwU8cGV
         PdYrFkUR3mNiXAtn73TU421HQfMp20B2S0Oe+rO2LeEd0k6jICOhlpYwwYRMU5Q5iOSl
         V/rM6Z5b4vBCTfUfjfZSIR+TsKO8tPAzbiWRPV5tKppOgFNGZG0GG/GH4PCegsCZqB0z
         pZ+Z0+W9WxO57ztNSK/S6U3XzI2ITs1acAosZ03E+NIk8lSbWGznrNVz6/4lzZGUpkGD
         ccUCuzxSuX7n3bp+qAm4prKEh62WlwycyiKqXujc7TXeny3l24cR0kGJZknLkMtzu3vR
         VzRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659303; x=1699264103;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A+s31ZrC5VzgVWo4S6ti1Chy3hSPGjdBjn6xdECA8qo=;
        b=VQIf4I+UWbAZbdMWanr54wNcpx1zQB4hJXZCeOOnkpX9WwyHQZ6uz1kINKNuDXVU1o
         svlVG+FGudtOYfl0zACOPSq1Lw/iJynIwrYx2XOIOsc2N2sK+QLixD53It2LUeimU9iW
         qQdInW1aQ5+X1j9IfPzzZiYe2zgtJglFPDLrQ9dqH/pCRsq09pnkgHZIxI0jwBJqGsZu
         fWAsiThba+da0tFw08so4DGqgvRs3OuHK3S6ughwmwdKkMbrBBatweg9oL3O11V8nbOE
         EjOviS20D6vuk5N3VeQa0AwNGnzqkNgVOhwNZWBtzDYXT6DRLDQ6TbHTekvjCJ2+7d+A
         hlqg==
X-Gm-Message-State: AOJu0YxGm7DVdDbzaIOwQAsApCEhKFc8aglejspkEnb/+hHSdJDyk9i7
	PF2SONrhe5fUQxQUDau6Nihpcw==
X-Google-Smtp-Source: AGHT+IE8F8NNC3sPgy5q41+rKlt8zQuJ8RgN+m5KV40NAL3J9EfJYp+Lb6rShymZMHF/imCoeJZu3w==
X-Received: by 2002:a19:6551:0:b0:504:c83e:322b with SMTP id c17-20020a196551000000b00504c83e322bmr6236386lfj.38.1698659303058;
        Mon, 30 Oct 2023 02:48:23 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id x14-20020a5d444e000000b0031980294e9fsm7854256wrr.116.2023.10.30.02.48.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:48:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Mon, 30 Oct 2023 10:48:17 +0100
Subject: [PATCH v2 1/7] dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy:
 document the SM8650 QMP UFS PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231030-topic-sm8650-upstream-phy-v2-1-a543a4c4b491@linaro.org>
References: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
In-Reply-To: <20231030-topic-sm8650-upstream-phy-v2-0-a543a4c4b491@linaro.org>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1035;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=LrivK+UeN6evTZJxEaqfZCKKVlaycsKwlIH1lL0OHhc=;
 b=owEBbAKT/ZANAwAKAXfc29rIyEnRAcsmYgBlP3vi+Rm7cTfTphKTFr6J27j4orI1KhMuGGyqWQ0J
 q1zFtN6JAjIEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT974gAKCRB33NvayMhJ0dloD/
 dbtCFsmBpv2zGSAOcQU09xemAbSxkmEkTaFith08H/uNzJ54mPtppiweJpRMWtNX7n6xhraW5QWEqz
 w4ciAQdIOXopDD3peGR3e7/zhgadzd+zbjJWqw22tJ9+hyde2k5cWL7w4QhFTH+RBPrtIWOk6jDzoX
 QVvsGMcGNApdiRbIQRz4N6pBTWW5T27Stf4tzOgv1+G233XIqfuKlGUCYtv2yFXniOCJQU/Ya/xTot
 /qHkelCgoZH521rmQccilW6lVIVj/va7kqq8Oj7mZ6i82DYFWTfvuN37T5U7MclG0mDMG5tWRhVsgb
 pS2L4OIltLNYu2fgJdn/M8WQDHa1VIKZaK38YtMAQcjFMZUWXjh+8Inl9vszSmVE1YVUy/zFtdVBIG
 1sJzgyuPH5h+KVlWHx7dG1OxHD6KlKN4mZFhTxP/C/parvSTodHJ1Yui95qkQ3wxxgiRZ74rs8Yp2+
 5dhtvgHsWj5fQRUFaSk5GCuTJVVQrCanS4zjjA5VDa7OkbqzJAsw6Nubw3HfGNzkfZYWQDKunxbkoY
 TzOvJG+U4RLHXm810gB5JdQhwVXkduYJrXg9D/fFbStBEROAMD0Z4uja/aRGDmwAF9/2M75Dva5jTL
 QjFi7yiq03hR6tmK0+6JRNW9/UVKjMU5DAYhDvi1YGyxI+AYNakyFGVdhM
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document the QMP UFS PHY on the SM8650 Platform.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
index f3a3296c811c..8474eef8d0ff 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - qcom,sm8350-qmp-ufs-phy
       - qcom,sm8450-qmp-ufs-phy
       - qcom,sm8550-qmp-ufs-phy
+      - qcom,sm8650-qmp-ufs-phy
 
   reg:
     maxItems: 1
@@ -112,6 +113,7 @@ allOf:
               - qcom,sm8250-qmp-ufs-phy
               - qcom,sm8350-qmp-ufs-phy
               - qcom,sm8550-qmp-ufs-phy
+              - qcom,sm8650-qmp-ufs-phy
     then:
       properties:
         clocks:

-- 
2.34.1


