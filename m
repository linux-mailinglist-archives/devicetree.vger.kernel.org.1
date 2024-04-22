Return-Path: <devicetree+bounces-61533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 539218AD1AB
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 18:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 07438281717
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 16:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38C5D15381F;
	Mon, 22 Apr 2024 16:16:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nhGbeLGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526F715380F
	for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 16:16:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713802594; cv=none; b=E0HRAf2Q9+qPovgA5Tb0abpZC4Ms0qKaZAo1BeXQlVGww0H6wEi1MZj4F1oh1ZQxdUPrLJoOAguWoZznmBFaxtXehaQrtdryVquu3CH8kx4gcfAIisOatfhVXygLCmMOU8dWF+7SClLRQisRZph3b8s0pLuw/iJ5soUFf/ZtJZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713802594; c=relaxed/simple;
	bh=IcItaCJcy/U1d83MujZnE2JgJWxuhjjJ9qQb/luPL5E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DgD5mPmWOrk2iPWW6A1kY3uhMYZ3UJxq+z63bm7buHmUlkfWJmds6+Y/hFvceSA9QtJJY3era7VV84fSi0WnpuGV+SzZXnO+t2XPNtibdpEwKoh1HjY+6whFoaiq8f8iHG38f+DZHa+FkXq6lgQSsjFTzBa+EXvDRqR260nrTNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nhGbeLGn; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-41a1d2a7b81so8835575e9.0
        for <devicetree@vger.kernel.org>; Mon, 22 Apr 2024 09:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713802583; x=1714407383; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bU8SyWH9gVcDdv5hm4dos3A3o5J4VFVoeYlWprMACSo=;
        b=nhGbeLGnlO1yav+e+z35Wpa+br4q8ME8D9INN/bUz4Hj5mNRjvzjgpopk7uZlMiADr
         QuKQbusbyuIRhWqB1lBp2Yd2jVQ76BnZY573SCy+uk8csP2mK5+sna2j75W/0/KRk+IV
         APqguvhV8txS1sIvTMcg8uObkqzJKmM/ctNiZsmKxrlHAwV5DMGfI1q9uGZ3bgopyA2R
         fGmW6AJ0fpYqsOy4o91OqJv1Cpr+0WVZhkUUsQ88J75APoi9DNAZgZfpfoLFcYF4X+7U
         AdnUDlunMAYHbK6T/ml4LG7O7q7Ns//oGyyBjBHVe5RpYTDQkUp+j/hi1ADgT4iz7BTH
         eJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713802583; x=1714407383;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bU8SyWH9gVcDdv5hm4dos3A3o5J4VFVoeYlWprMACSo=;
        b=X6Z25KwUu74UDC0qJeAI3tRMbplGuZgZGU0K3ax38fibZUCcy7xwi/oLdb4yNoTKT9
         n02yzpG+b1/Ov+x3Cor2QO0nlwGwKtg557ulvjLyduvA3kMXI/8biFk/ZUGsenDvdMQ/
         YhTjd2riXPNBsT9WYKApDOk3LRLCxMMuSQG0xTlj7nQ1f+x1ENtNZNZaWhjdStQH90O7
         Rc7Ac/hkpQ8ekFnHTXOFN11tIXnK6pXfzBdTdbTz7qnnMwgUoMBTdCdDgsl/kXnISuCl
         ulTAmw6Mgh2C7c7J8GE20At9V3oyHOK8qD8ynmf4UU8zKTuSHbNn1S2yALHy51CMfcLP
         vYUw==
X-Forwarded-Encrypted: i=1; AJvYcCXnO0z/CHuskb4AZhZnrtYioG8dm3P+J//UxBgdqeNg7JYWHE3667aFOfREfzD7B5jIqRKinAHCXVo2Dpm6Z0myc1HdTvvNt7X1YA==
X-Gm-Message-State: AOJu0YyLFZrxasCDOAb5y053zWdyC/ArixJ37ukWJCXsyqZt8ovbSDM3
	+ryzTaQrNywnXTTHGOEyCZxXyMWucUGet5q5IBZWNCTunvGmSlhqZDsrPehNRVKuKOGWBcZpHWY
	m2p095A==
X-Google-Smtp-Source: AGHT+IGQycu7zBCUOYhRB7R+N3JQTO7Wm414XLk995+4O5kncaGlgaSVmV9SUmCLVYdtLHUFUnGbcw==
X-Received: by 2002:a05:600c:4b92:b0:419:f4d6:463b with SMTP id e18-20020a05600c4b9200b00419f4d6463bmr102677wmp.14.1713802582985;
        Mon, 22 Apr 2024 09:16:22 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id a12-20020a056000100c00b00349ceadededsm12463710wrx.16.2024.04.22.09.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Apr 2024 09:16:22 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/3] arm64: qcom-sm8[456]50: properly describe the PCIe
 Gen4x2 PHY AUX clock
Date: Mon, 22 Apr 2024 18:16:17 +0200
Message-Id: <20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v4-0-868b15a17a45@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFGNJmYC/53NQW7DIBCF4atErDsVDNiErnqPqgsykHjUxCBwL
 EeR7x6STVt1lS7fW3z/VdRYOFbxtrmKEmeunMY2zMtG0ODHQwQObQuUaKRWDqaUmaCetksn4Zz
 rVKI/QSaOoCAPF/DnBej4BWanO9U7K20IonG5xD0vj9THZ9sD1ymVy6M8q/v7j8isQILDPlhvi
 MJWvh959CW9pnIQ98qMP2TEJ2Rsso4kvev70OH+j6y/ZfOUrJtsnTO282iJ4i95Xdcbgz07AJU
 BAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=2614;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=IcItaCJcy/U1d83MujZnE2JgJWxuhjjJ9qQb/luPL5E=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmJo1Us0d2fw4Xht4pMnEl+/zfXvIMBe4eCZMote55
 yjw8WLeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZiaNVAAKCRB33NvayMhJ0d4vD/
 99c0TRnK+V+OPuvZR4yC7UKBJflQzJ6ZL/KsUqFc6jFAu5qe8FQEdNpuzgpdLiu5nizNvrukc2zjk/
 qbhntRxtk7/LwGg1McPQg4SfMy/4bOEWnMh1nLw0MG6zTDq2qjxZi8/Dg3fqGIQ3edduWtkel0/1cu
 8PLvLo0UX4jbzMterETkufcyDKnEAr6Fmcs4R1gpKdlhAw80EZpV0Ly3BbNQZK08q4BGu+L46V6KW0
 UbrPNJp71EVlN0HkAPfzqfFbaR8mXfhvOaIZwW/w5pG0/VvCtMH/2FkgMdBof6zf8/pq4Mt+gqRs3g
 O0MEVmsRirMYB2630HKRNdKlGRXDVyJN8anp0Z/oaSk4GQ/snEtnPN/4/fo3OhFhyU+a5k4wZsQQwx
 hiQp9AUOT4/QXA19n1pCnp6uFiGklyMf0KEKIqNMHi6UqpdKN/gaUaYvjTlMCpxdUCUm3LwtaFQ8Qp
 G/DbD9vZuVafgMnL09j16UD9XVe0PJMnBl3hDKL4o/99Jk/sPgpW+Cj8lmuUHdCjZKPYluMsLQg+Ln
 nP/7l0VfaiMlCCBsJyQ58efKtOHsIL61NqbOk4CulauEEupzHRYdkGYWTXdFwksLpeIwv3Mt5bF9wM
 qfbI02+nsJmle+1WLdNHwpoIRUA6JW+VmHTVKKVCy61ML5oaPDnf42WeExqQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The PCIe Gen4x2 PHY found in the SM8[456]50 SoCs have a second clock named
"PHY_AUX_CLK" which is an input of the Global Clock Controller (GCC) which
is muxed & gated then returned to the PHY as an input.

Document the clock IDs to select the PIPE clock or the AUX clock,
also enforce a second clock-output-names and a #clock-cells value of 1
for the PCIe Gen4x2 PHY found in the SM8[456]50 SoCs.

The PHY driver needs a light refactoring to support a second clock,
and finally the DT is changed to connect the PHY second clock to the
corresponding GCC input then drop the dummy fixed rate clock.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
- Fixed dtbs check error on sm8550-qrd.dtb after rebase on -next
- Link to v3: https://lore.kernel.org/r/20240422-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v3-0-799475a27cce@linaro.org

Changes in v3:
- Rebased on linux-next, applies now cleanly
- Link to v2: https://lore.kernel.org/r/20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org

Changes in v2:
- Collected review tags
- Switched back to of_clk_add_hw_provider/devm_add_action_or_reset to maintain compatibility
- Tried to use generic of_clk_hw_onecell_get() but it requires to much boilerplate code
  and would still need a local qmp_pcie_clk_hw_get() to support the current #clock-cells=0
  when exposing 2 clocks, so it's simpler to just return the clocks in qmp_pcie_clk_hw_get()
- Link to v1: https://lore.kernel.org/r/20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v1-0-926d7a4ccd80@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8550: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk
      arm64: dts: qcom: sm8650: remove pcie-1-phy-aux-clk and add pcie1_phy pcie1_phy_aux_clk

 arch/arm64/boot/dts/qcom/sm8450.dtsi    |  8 ++++----
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 19 -------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 13 ++++---------
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts |  4 ----
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 13 ++++---------
 8 files changed, 12 insertions(+), 57 deletions(-)
---
base-commit: f529a6d274b3b8c75899e949649d231298f30a32
change-id: 20240319-topic-sm8x50-upstream-pcie-1-phy-aux-clk-4b35169707dd

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


