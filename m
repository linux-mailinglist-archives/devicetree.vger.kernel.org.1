Return-Path: <devicetree+bounces-52432-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB5D886987
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 10:43:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 149B1281C43
	for <lists+devicetree@lfdr.de>; Fri, 22 Mar 2024 09:43:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749433C684;
	Fri, 22 Mar 2024 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uxO0ke2M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A4A25575
	for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 09:42:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711100573; cv=none; b=PxtvbIQWVPrPK0sarxLovUoGA/VJfR+SD/2N++KymntFgTaDLUsXNzgQ/6VjZF7xeLlSj7zxgc9vskvjQk5yhKZdeUpGi+f5B5FggjgS5H19U7EFYGJl8wezDbutRl3jaaXYcVzRq8zhkpxc2wqe0Rx7D4PFeq3n8/cRfacW7G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711100573; c=relaxed/simple;
	bh=AAacFwAsEP617vZeav2SflN/fi/qz19efJB6LuW989g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=FE5qbQycWcq8sI2HV6xqv1tw7/SO+GoQhiABh0P5Gm+S818mRB2DieFEJPH8XCpq6LutYbUlEvHReYsWkvzQzUYRx7G5I1o0Nrh4KlCgDiwnUg01UlOlWJiI7qWoP0k1ib57CoE7KZMu+oGpPvp77hqW3TWlH8U+tR8gIjyZ1Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uxO0ke2M; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2d6a1aff12bso17412451fa.2
        for <devicetree@vger.kernel.org>; Fri, 22 Mar 2024 02:42:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711100569; x=1711705369; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q6jwgd2Axk9fB0Aki1YRcqjY/e9Dl6tqP0b8TVLuwoY=;
        b=uxO0ke2MtbkDG3yjeWcXjIwIkSVd5pD5mHajIR+gB7uUGY6PKGY8OqYr4hr4Ta3U/A
         JflEAfN9TWvkIwy364BuRAb/42sPoQQUZIt3KbW6kF3mysSK52oP2xYHMNxqs5xKAC2N
         5uMqNCj89DfahpEQlxyb1Uravd+8vUVul4QaV62n0kOHYCh/wCcNY8or5wZwIrZp2J0Y
         U2Gch7/5Q8fftXWOpTjGcFdVXt7agU47iC9KwjSDtHGIH+xPPgfeEUHrLW1dyqngulMG
         cSix+kGAEERzjsiQ9WQYtYB7Nk2t3DxH6oLg+0hpcLxVNhfYwIhsAOTWvZUAt6gHs4/J
         eH6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711100569; x=1711705369;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q6jwgd2Axk9fB0Aki1YRcqjY/e9Dl6tqP0b8TVLuwoY=;
        b=TeWjW9PbbjMoO7+qBeTfGK0k4JQJkrzsWsoX1bcwwGFs/BdFT7oApFMeJctXxPCmyH
         lwTtFz0HqIw9Mo6Owx6fM5Spq+lB/h3TwIcC6Kcgpy42eVwIKXQx/ue9pb/7ZV1jOusc
         wHXagcmgoQfLyPWdJdYjQC8v/iwvxYG5Fs/vNN+U4CKptTPDA+FgrsXFl/K4k12/AnTa
         ymuTUpnPx14tTJd4BiCZoLK2QjLMH9Lh0YcMs5RWyYAwXjrVPHaHeaJYfRPkvHustfcN
         LkkLjoiI/T3oQasQfHjYWgaJ8byqnYTy6IyJd45GoERRIdArQyR7vAjufRDTvgKG5MXE
         PHww==
X-Forwarded-Encrypted: i=1; AJvYcCVyb62f35lcYrSBFJcl+TQx006KE6U4emrKXKP8mQTXwRdOZ/Vn7esGgikjhCUDbo/iJFKt76ltVkvuHMd8yI6ikHAn1RQaBOIY7A==
X-Gm-Message-State: AOJu0YwIt930wkUrwR/fRFkwuk4bPB22DlG4X74X3XWr1GQWje9bW60R
	5ALPghU1BeT/+Dp3MVPKZi6WgIeFYusmy32Ne64c1Jta6XprZP8DdLp7S/UN0jZ2OF+rkOYVOxC
	O78k=
X-Google-Smtp-Source: AGHT+IFKbMC1s6wqqPUhJW/7GMB8Y7THK880B/b6bjhNmzH93s3LvP0Ub+ycCPoHRdbPHtzxiFVKtg==
X-Received: by 2002:a2e:9b90:0:b0:2d3:aecf:4c32 with SMTP id z16-20020a2e9b90000000b002d3aecf4c32mr1295935lji.41.1711100569287;
        Fri, 22 Mar 2024 02:42:49 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id j9-20020a05600c190900b0041461a922c2sm2547845wmq.5.2024.03.22.02.42.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Mar 2024 02:42:48 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Mar 2024 10:42:42 +0100
Subject: [PATCH v2 5/7] arm64: dts: qcom: sm8450: remove pcie-1-phy-aux-clk
 and add pcie1_phy pcie1_phy_aux_clk
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-5-3ec0a966d52f@linaro.org>
References: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
In-Reply-To: <20240322-topic-sm8x50-upstream-pcie-1-phy-aux-clk-v2-0-3ec0a966d52f@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=1175;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=AAacFwAsEP617vZeav2SflN/fi/qz19efJB6LuW989g=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBl/VKSvg7Tvnjp3QY9GSz61hPxi7sEpbaE5DYgzELK
 OhP+/8uJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZf1SkgAKCRB33NvayMhJ0URLEA
 CE+/A3kTJC+heZj8hKqmqzp0kpMNxTtOyNuBoV3WwN0siHNKDIN7Eg6nVZCJ4QP7lFI5x21rh06d3z
 Z9vXQrH7DBL1aZTkBdt1HDO2scC+V1gdE1hubNfwFf0xYiJb/L2hXxDokEX6ucKhwbq/UvlBp2WldW
 rkvYUGdBRdBDP32xrpPZ1qZNh+iJNnWFNywd5AFz5r2pwEPycW99Kj05zjT9t06TCOGjyTuaPY4WHl
 Z+FMx8K7hcU19zKWTsJM878uAcCvDENdVRx6WaAbUXFKVHGojzZEl08otuP1eXkUzZcBbKosn7BT8q
 of/m7LwFR1wyDQL4YOhiGAc3un3g7xZfr/V/EiTXeS/lLsqkmsKE3tRVgyRl6FrbYcPyEJ1RJBZZYY
 bJXskGyQal6BznNL2ca7XvDhgdn0NjnHyhFUdYxS4vkccGCpdRFMNPkI/95Z7RkMeGmUJxMyhLu7PH
 pnyLh7jTv5NtUv4ktE96Y47zfM0zrFjntKZiCTmzgpiwyj8xr6Eg7YKrvv29qvHlHfD5HRGIP1TbVc
 SRlayhQqj/4jsStJiBYeR/y7PcjOgAcfmZQXCPjDJtEr/aUZH2BrCpfM6n25qH1YRkf1ZhteVCN3zQ
 RKruGREzYYmM046dRLFs9Q6LqWAfgQdhddZM6dEP/HJ8kQV70uddSYDyaUIQ==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Remove the dummy pcie-1-phy-aux-clk clock and replace with the pcie1_phy
provided QMP_PCIE_PHY_AUX_CLK.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
index b86be34a912b..32361af98936 100644
--- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
@@ -754,8 +754,8 @@ gcc: clock-controller@100000 {
 			clocks = <&rpmhcc RPMH_CXO_CLK>,
 				 <&sleep_clk>,
 				 <&pcie0_phy>,
-				 <&pcie1_phy>,
-				 <0>,
+				 <&pcie1_phy QMP_PCIE_PIPE_CLK>,
+				 <&pcie1_phy QMP_PCIE_PHY_AUX_CLK>,
 				 <&ufs_mem_phy 0>,
 				 <&ufs_mem_phy 1>,
 				 <&ufs_mem_phy 2>,
@@ -1988,8 +1988,8 @@ pcie1_phy: phy@1c0e000 {
 				      "rchng",
 				      "pipe";
 
-			clock-output-names = "pcie_1_pipe_clk";
-			#clock-cells = <0>;
+			clock-output-names = "pcie_1_pipe_clk", "pcie_1_phy_aux_clk";
+			#clock-cells = <1>;
 
 			#phy-cells = <0>;
 

-- 
2.34.1


