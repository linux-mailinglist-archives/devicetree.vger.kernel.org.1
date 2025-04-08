Return-Path: <devicetree+bounces-164255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E053A7F9D7
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:38:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 69E67168BE3
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 09:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1900268FF9;
	Tue,  8 Apr 2025 09:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O0Gzif5J"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E832B266B73
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 09:33:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744104783; cv=none; b=rdZTdJDo0aR9hKJYUienU4vn4MN80WJ91jWBQfAucoL/z2xS5cK5b8XOsp6llcsg4A1oofmMQKDNfUOZy1seCDfZNhGcvlcMKN6/065c1pI1gJ5ezisCAo6gJqzfgYdO+qJACMB1p1BKwt+Oz1Ar3mtx4z2UPyVM77nY1dKgiJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744104783; c=relaxed/simple;
	bh=/qlvo7WRWRfBULoP8E1uf25WXbz+yxhNkGXGS59tH7s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=TZrJzOrPYHrMDfogZTaYQd/7QfWXFRByOYyT33fd3ZtbgkXpJThS88ldRkHaFSN2XZ+DGqSDhkawwt1+ri3717/9LfsdgjtuyhNAiYg8aF3PUFQsNkWxs3Cv9qQu2VyOfRi/Pq+IbQeAVBOqB8TyARFh7sbLNps7tJKJyiVB97o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O0Gzif5J; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43cf89f81c5so3754725e9.2
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 02:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744104779; x=1744709579; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zkw3bPNyV+ObOHsEtnik0ULuu+tLx5svbt/X39Q1ZXs=;
        b=O0Gzif5JLeGxDDJ4X8vlC1EkU72U0AXpQybdL8cZJt9FN0Nx84IZrMbtEISAHxkFKV
         prsBf9u6s/6p6lgDQeYSyyDd/++0lz4C7TwDHWzJqMJDua8UgxT0KoP79S0G1jXbgT38
         Ve5xy0xkP95OSTxO5AHfWhKH0Bh+6ue9tLmT9TDodOwQqP289cqJ9ANn35XRnuw1mWc4
         mEng4nmR7RG7/ZGz3wNSo+Zh7Ki/GHgYVlpftBInxhEboOobDXeoF95B6eukq103I8n3
         6xABz6uO/F8GEHRehf0pETQkWzILBp8EqkpMWvK1vUK62rR4Sr7859aa8FriiBn/qjwR
         vuVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744104779; x=1744709579;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zkw3bPNyV+ObOHsEtnik0ULuu+tLx5svbt/X39Q1ZXs=;
        b=mfgpzmuHHz6f0IPLezvU05/o43WnNd4DRBipGNbmKpeSQ55iQrkExC+++5hOA02EUY
         bnDgQnbGYN5QVIvMTH8iW4MgQGg2stuo8nUkYkgmW0y3nZtZ/00AIg7mbFgW7YDmGHAB
         B+IEkXPi1nBSY5BHKVBw7TO0jLjhcLQgNY08bn9IQ6uB8rHri02KlXZ7MXUmwwHdtxLK
         ZX5tt4GJsniY9/euH8FQhMJRVMGL9p2QTqbkASzJ/6sxZxriggsVoQWPUh7UxTeDtvk4
         zFW+3+FK0GFC2NdXW3I6m5huS7bkOgQGRMi8WvYyR2qj79bG9QQylkpJSM2zN4/ATQnB
         s6Tg==
X-Forwarded-Encrypted: i=1; AJvYcCWSBb2GFTbdmdaYh5n4FBSH9KqnsqfQAhe5jxtMYRq22Lte7lH+uKQXKDAGGAprR32VVpMv+MnaPxOc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2mChXt6ST9KNw6y4tF0IAbuy9hn3LhM3QY8EIzbtbuLwagHWM
	tCNVia510/e/Ha76FtTM9eZyVoDpzBu10bMhcd/awZSlqGoy2jaxcBoeZh5eTBY=
X-Gm-Gg: ASbGncuKEqPFElremGbJwHAHx6Gu0/KcjFE84ludyH28WIXm0o/OeS29l4rwUarQpw1
	2jLwq2YjLSbcOleiVa+Ya52il9ATTJaYpm+xFdgFZcuh3wpB6GzWewjq1oXQBOo7PJtG3EgcJCL
	VYXQGAoyT4oMXcXNJJXQLrChxlFonXLmuvbt5cHu629Q7dOuLvgo0DJl/XhrDJho8WD9EZvY1Jt
	2JDDaAgZ9u1lJArq31EGeCX120IfPTtzKI98AHUuTYyTGIXOLy7BAZY49WQnZul0KGK6YytEaRM
	5IFRirPp8HNpNt0faMn9WT6M9s8oUr9IAdRejwskXRjWN1395mRzpXgy9cK/Ljifw7PaGBkcSQ=
	=
X-Google-Smtp-Source: AGHT+IG7tCFOJHyvxIZSVBTlaPXbml7Erak9nQYtJ3XMC4DX8DCaekR12FJ5frk5BbC+2jxMfPZuag==
X-Received: by 2002:a05:600c:3107:b0:439:9a5a:d3bb with SMTP id 5b1f17b1804b1-43ecf81d976mr54262445e9.2.1744104779279;
        Tue, 08 Apr 2025 02:32:59 -0700 (PDT)
Received: from [192.168.1.26] ([178.197.198.86])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec34be2f4sm153680085e9.19.2025.04.08.02.32.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 02:32:58 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Tue, 08 Apr 2025 11:32:14 +0200
Subject: [PATCH v2 17/24] arm64: dts: qcom: sm6125: Use the header with DSI
 phy clock IDs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250408-dts-qcom-dsi-phy-clocks-v2-17-73b482a6dd02@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1684;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=/qlvo7WRWRfBULoP8E1uf25WXbz+yxhNkGXGS59tH7s=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBn9O0lsucLsdn8A0O1Kf/WfIo6qT6cb0f2Onuwm
 O0+LVYQkVaJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ/TtJQAKCRDBN2bmhouD
 12U2D/0dir9FiL3PqtftVB8ckEahYH2Cnqppnt51zuGEuOV7CA3+A3Eyb+OwAWVvcz1El3YKnjl
 vhTwregxrqj+Aw0F54ZsUk8/Fx3MWM7IuKKpgVndx/7n3VhMA0puwkLBX5s1Do1rps7mZl+chy+
 mLHm1Hn5rtpBEzDrcbDWibbDwFZU1v/z5Ry55cYLsqTWjk/RsgPjNwy+ApMWCrfaABRXe7qFWYI
 mo6PmA45PkAUlUT8KaBQRqGlNSvfhX0fZwtRI/Ze6CBVsAEVFHpY1OTKLvRyZ6MTfEmRYlJiU5b
 pNYTIY/OdiMjrj49nsrEU+9df6gj3mfAGsD9/mvTAL5JSz8+I4ls8U+hYhQakhmzTIimTj+AzEA
 1GTqJHFnSSLF/qUH7pvDpE9K6MypWMKZmA8biC01lB4rtXNkV4+puDnEPOzpU2FPjZClW1jtntZ
 Xvvc13jPIWn9qjyKLSpVLv0XfFQd+83RKNqwzqiN4x1D+ZfC8TEaOkv3DJJ4VIQStIfyf7/BNsT
 ZuKm08qg8L9wCQleRDscIOnlgV9R9OjsnZIg/sZtljRUqJHF7zb+34mkPB9Gj4qRwzsAtWIV+8D
 w1g9lNWd5m2eXtK26h1cpKMnHjooWD4LIQ0ndHXZZgBpaXD7MeNhgqvQ7ng35sliqVYEFvliaN/
 FXVbs87KU3RBozA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Use the header with DSI phy clock IDs to make code more readable.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
index 350d807a622fd9276e1f12ef7f5bebab50aea15e..091dbdd171b46c1aacb37b90c3fbce14422aa031 100644
--- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
@@ -4,6 +4,7 @@
  */
 
 #include <dt-bindings/clock/qcom,dispcc-sm6125.h>
+#include <dt-bindings/clock/qcom,dsi-phy-28nm.h>
 #include <dt-bindings/clock/qcom,gcc-sm6125.h>
 #include <dt-bindings/clock/qcom,rpmcc.h>
 #include <dt-bindings/dma/qcom-gpi.h>
@@ -1340,7 +1341,8 @@ mdss_dsi0: dsi@5e94000 {
 					      "bus";
 				assigned-clocks = <&dispcc DISP_CC_MDSS_BYTE0_CLK_SRC>,
 						  <&dispcc DISP_CC_MDSS_PCLK0_CLK_SRC>;
-				assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
+				assigned-clock-parents = <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+							 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>;
 
 				operating-points-v2 = <&dsi_opp_table>;
 				power-domains = <&rpmpd SM6125_VDDCX>;
@@ -1415,8 +1417,8 @@ dispcc: clock-controller@5f00000 {
 			reg = <0x05f00000 0x20000>;
 
 			clocks = <&rpmcc RPM_SMD_XO_CLK_SRC>,
-				 <&mdss_dsi0_phy 0>,
-				 <&mdss_dsi0_phy 1>,
+				 <&mdss_dsi0_phy DSI_BYTE_PLL_CLK>,
+				 <&mdss_dsi0_phy DSI_PIXEL_PLL_CLK>,
 				 <0>,
 				 <0>,
 				 <0>,

-- 
2.45.2


