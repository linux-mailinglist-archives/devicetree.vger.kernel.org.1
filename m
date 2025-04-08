Return-Path: <devicetree+bounces-164246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F4230A7F9DB
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 995AB3BF07D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:35:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 356BA267AEF;
	Tue,  8 Apr 2025 09:32:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UF0kdsn9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA4B267724
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:32:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104766; cv=none; b=Dz+jPGjFraoVtDU6Zlf8q61CvvCD2wMRm+wyL90vHsqFI0N8TE6TYVm8+YFhFZg1tzQkVfgXxzKZ+alf3wam9jnGLQJJtMGDnggNXSd5nP5dxxhwIL+CufpNPwRog/J43LJ4jug0dusf8SolY9qxcpGimsasJoSLfclIqv7LFv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104766; c=relaxed/simple;
	bh=M4fS18wV/N/X4pK9zNCKm4Msj6IewLiSiVDe3r0i05M=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tqJhtWvIidD3Z05WfYq5KRjNVcF1vl95XqU+kRK5lfIDTdbLz4n8Lckqo5GqR4NEtB703LGQsNGeHn6t9jqh5/ws6dJ2xxubg9Yt8mAkJCEfh/ijxLId8cu2p+rtq09Y8YRd8fdOCtthFyGABaSRnzGakj0xFUiyns5tdfUI55Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UF0kdsn9; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43d72b749dcso6180575e9.1
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104762; x=1744709562; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1VBkJO02dyoagNQ6pDN8dhyYpKnyWMklQVY5SKdGbWU=;
        b=UF0kdsn9qb22OiEhW+gTDGyTcxUjXJbPmcsjcnkd2t+C+7D4cHdV9J2C6RkelhcpzQ
         abTM1vSrkowElrRDb1BoR9axwhyVq4nm6J2OBd09HKl5Pp9mKFHqnYzODG4uebkmztB9
         HO4hHazO+IQSNIo/ceobPRHgBLKk/kM7B9UrmV2fFkFKvXb0wKcP+wnxEBSfjm/OKf9V
         B0oBnODdftEgdCITLbHrh6zS+RO52l1TkG/paTTCMbm86GN5LayFceiZJlzqTA8p/sDU
         MFymxTMCkT2fMbEfUujkc3PE+W7Wf5Iq4wbQCBhSZORaSegubXxmfiixZHCe9iPP0RwE
         yGCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104762; x=1744709562;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1VBkJO02dyoagNQ6pDN8dhyYpKnyWMklQVY5SKdGbWU=;
        b=OLv0WUdjxL9Upb/sRmoMU/zszMb9WC8wufEjxDXly9d7y32yxsQLWD9NMzcMPZt41H
         ajHqg3f63kZjfOu11+jxLk4dEDAnBE7F4JadIYB48KIjppoO/I4Ip/K2zCeeaIT+EC58
         +Az89KW1lU4/YbpxkWsDDZliDQr96Rssm1HFVrZu87DxGF892xjpv56gJKoWMZ4LqIKL
         BAL7A/tdQOrms3PVrVBwm+NxMzKPasfoppWJL48+2kkWCVFQyHZgwE7heMxhiNszA8rw
         W3z56xxefg7NntjHEfSTE0XdUY3tcY0WZ5l8lLeZ7PI2yXt4C4zMNeq7SZdyK/HqjvIz
         A09g==
X-Forwarded-Encrypted: i=1; AJvYcCVosH56nyD803bFOG5Erpomf9ebN2WSqGqbX/EAZH4ql2CtzvsgU3HzCfn421QcKiygtQPGlioAKmW8@vger.kernel.org
X-Gm-Message-State: AOJu0YxdHUMxTKwUKNQkGPlv6qgCsyGTmSf1bLK8FI1gMXGxXPuA/iZE
	U4GKzSsftbNBVgohr69UvgLHrV7uy34WH92eor7WoTDyNCfnDnl38fR9rw1ZTe5h9qc2kYw5MfA
	L
X-Gm-Gg: ASbGncs2fI/BhNl4SrGwNUfqUhRg04ZJefmgrATj4sHwaw9aTp3/0rUBDJMJnH4KD98
	NqGS6mGCvJzPtGJ8sFlqfQa6Kqcp23ao94anJtexzC3iHFnAXcTAzlGL6LmrR5zdyYinQ0YDfmW
	TpH1iYH5DEmGsQhF3WsO10djFSV6h+QRWDssNbjIplRVurjUQ/qhf6RA+uEDe72na7UWtNtRLFv
	PQgxqKLlbrht/qEpUn9aeN6ypq92LTKzldKtVeduuxu3Je4bagwZadmYEilzuacZFTHcZHPeJLB
	fgna9HHJdj8AqRdBok2j/jV81NWHMCQ3Xaovov1MVFkwVN6UXVb/44m2KKrrxBw=
X-Google-Smtp-Source: AGHT+IEnSwkYNEUIMIA+e+PZxWoejVqQZk24l7VLml+XJY8MKjWBvHDb6mA0X4DYzMS4VtWKFu5wKw==
X-Received: by 2002:a05:600c:474a:b0:43d:301b:5508 with SMTP id 5b1f17b1804b1-43ecf81c639mr54484605e9.2.1744104762203;
        Tue, 08 Apr 2025 02:32:42 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:05 +0200
Subject: [PATCH v2 08/24] arm64: dts: qcom: msm8996: Use the header with
 DSI phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-8-73b482a6dd02@linaro.org>
References: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
In-Reply-To: <20250408-dts-qcom-dsi-phy-clocks-v2-0-73b482a6dd02@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2467;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=M4fS18wV/N/X4pK9zNCKm4Msj6IewLiSiVDe3r0i05M=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0dkiAm1ThIF40nmL12uD049QNeVcK4GrwFB
 bl6KkRdd12JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtHQAKCRDBN2bmhouD
 18ThD/kB/dlwJ0Pewm6CK0MwduIA90sex0sSchHb0OB/dl3uUg8ZN8sg7P+0PFVmf6YfOUU1Baf
 cetBEeA3YMDHRxmX8Lj9Rod8prwLuRSD54Ept9XdWDeMhXJD+7eaDNk5bmVEua0nCv/PJL6JCsY
 fCXppdLf6L4Xfy5q4l+uBTGIhlhpmcD6IybsaDRLQ7N9zLcwdWIctIWDE7xrIiNOGDbD76v1gHt
 rK6CieNsRwAPPRdZfrL4gBAtAR6nJV7f07UcGWNACMYI1MkZH8HlfLVvhbL0n5dJcl360zJqKVW
 TUsIr6stPi8I40mM2N8jN/r1fS88BgqEp6DBxopU6yeP2FKEhNY0Vzwwv4U5QL0UOoH8SYNpfbL
 mzfaoeC+dx7DVQZ4chMjts5o+Vr/56Lk43qlGrrmY6GBBOl7w1l9/OoWsibNlPj6ThfSzNELflj
 Iaw5VnSUAucwABz0wiTd2KAy8rXfgL352dzIVxbTkUUcRo1Elq1fRmBid1W1bTHqKhjKshGTgQH
 hVdm9DOt3BQMImAIuhJQWB/2Ld45S9tLpdL3ZMewJ/K5MKeVHW9GmdToTteC5zAfcfq5QldmqQ0
 giYqd6sEg2tSGt7qxvf+rZLIzvdNqwBUGJKokgG355JNDpvM95O1w2QeLjG4yBx1dsvhJAccng2
 LUM62sZBctdcJmg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/msm8996.dtsi | 21 +++++++++++++--------
 1 file changed, 13 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
index 4719e1fc70d2cb15a6a63d3e28622ae078a367ef..ede851fbf628428f5740ca8add65ffc05360cc62 100644
--- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-msm8996.h>
 #include <dt-bindings/clock/qcom,mmcc-msm8996.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
@@ -937,10 +938,10 @@ mmcc: clock-controller@8c0000 {
 			clocks = <&xo_board>,
 				 <&gcc GPLL0>,
 				 <&gcc GCC_MMSS_NOC_CFG_AHB_CLK>,
-				 <&mdss_dsi0_phy 1>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi1_phy 1>,
-				 <&mdss_dsi1_phy 0>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>,
+				 <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
 				 <&mdss_hdmi_phy>;
 			clock-names = "xo",
 				      "gpll0",
@@ -1071,8 +1072,10 @@ mdss_dsi0: dsi@994000 {
 					      "core_mmss",
 					      "pixel",
 					      "core";
-				assigned-clocks = <&mmcc BYTE0_CLK_SRC>, <&mmcc PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clocks = <&mmcc BYTE0_CLK_SRC>,
+						  <&mmcc PCLK0_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				phys = <&mdss_dsi0_phy>;
 				status = "disabled";
@@ -1139,8 +1142,10 @@ mdss_dsi1: dsi@996000 {
 					      "core_mmss",
 					      "pixel",
 					      "core";
-				assigned-clocks = <&mmcc BYTE1_CLK_SRC>, <&mmcc PCLK1_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi1_phy 0>, <&mdss_dsi1_phy 1>;
+				assigned-clocks = <&mmcc BYTE1_CLK_SRC>,
+						  <&mmcc PCLK1_CLK_SRC>;
+				assigned-clock-parents = <&mdss_dsi1_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi1_phy DSI_PIXEL_PLL_CLK>;
 
 				phys = <&mdss_dsi1_phy>;
 				status = "disabled";

-- 
2.45.2


