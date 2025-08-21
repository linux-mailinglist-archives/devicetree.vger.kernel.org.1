Return-Path: <devicetree+bounces-207490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B7FB2FB22
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 15:49:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C29B5621878
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:43:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 565C0353356;
	Thu, 21 Aug 2025 13:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AwDa86Vt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E39F34DCE3
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 13:37:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755783465; cv=none; b=pZTJLruLk2IRi8k/+bKbUbdyACHCUbWbPeTeS3RHDM0T2rxE6ZYm42T+z3xu9dZZfolDOaiXPhULJ1sDGBAd3pOvNC0Lu8NEQ4gaScnDpw6bunilBn/V+WuRs2dgrwJqGVf5ehWbWngXail7WTBTyqIITk+5LrYkLvZaME/lFNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755783465; c=relaxed/simple;
	bh=DbsExdoRyp3kdjCk0epdoDIR0B1+3ES9cdqkRoNTHi8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ucs1cHVschdXURoMh1UcBAaJmFBzPttaZigFIp5j6vAPNsQJCSJPyXZSXZEcG2zhLU0DM4cEMWQrYK4miUr9z3pI3oiJShxfYN1PpIy+EJrJEwve7HwgRKHz13BqOQmgCbIv8VOHzBcw4qKm9podu+3sBsxiIoyqyYrMOQ8fkqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AwDa86Vt; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-45a1b0990b2so7367865e9.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 06:37:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755783459; x=1756388259; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5otisq1c/9/dwhaTo3HsCPZ/30o0nEKHZQeBlO8KVEI=;
        b=AwDa86VtvaSxHS3ppCzDF66mhlLKgsp7de37euMR7eShj6DWFE1GWfuft6eo513720
         wgVI51R0deL0rPxzyx/GdsseBVDgokNC3lGquAfCj9XTmCoRIT4el93O0aK2yj8FhmSN
         a6PprRhR7j5OgXDk2QGvyrPrTx79n43CAVZLQV83yFsE5lRfuYMzlayKLq/zgQmFvZdw
         AFZXu4AaqG1ms9B0BeLUwivbjCc61yu/P7t+DO1WZ437jVxB1+sejfZrmfaUSijoDasQ
         iUepdoECf6onRTjz3r/nNAQKn01RowEANrmwtHEKZe0/Y1rH9zQsjR8pIsD7pTXb0k7x
         LthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755783459; x=1756388259;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5otisq1c/9/dwhaTo3HsCPZ/30o0nEKHZQeBlO8KVEI=;
        b=Q+V5ie05x8s/xppH9gG4ghTBYGdd2tfpeMBfeYG+52EDXZQJ4RuYwpFZ7xWcdb+G7C
         XY3UdtwWJIY3ju06Pv70VpH4eUr7mf4AunQsZS4F8Mkb5m2kaP8BnFgwMiaMZMeUJmws
         P8sf1lfzHGkSe0Vgbisn43cubzt3Ool/aa7nhabSLStlmxGULhXxbzNmRsoLva/GseAh
         TehVSkiDCA+3DT2MERTRBUtYGSWVEB8QckpwxH0yfBZA4tw0qj2uzw64pE4b1FuNEn8R
         1lj5UAb2QEKZP3hXsl/mzhMuY4dwEO5umWKRzy487NHDYH6jQn240lra+Myi4E9b/v8m
         zWZg==
X-Forwarded-Encrypted: i=1; AJvYcCX7iA4ShnHrxVNW/p9X4HbaUKg18+nsu0GTxEVmvrtTXSrGd00ndezNSUqwghcfmRJx3Tz/shCPnYab@vger.kernel.org
X-Gm-Message-State: AOJu0YxGssXVzt2HbrwrGo8lWFiTgjQmDtLczKcGu+g7yrbaABl3whOe
	LfxbvRoC5sYfm6zhI6zhL8+vSWWVFs2FKEW7FlKIfU9WmOTpXIndRDtCKJ42TT/DQ1o=
X-Gm-Gg: ASbGncuJyX9o0SSauLaAYHzJT6GeTSM0B5Zb7mZMwIKUAffMR3WdVnwmYnmhZ55Fnal
	9ngVdFgkYfmPR9mBnBy/3M/YtMhzAq37vY4zQ+QAG8k2FSztVsRbVtKRw4BDtJjDr9HC6qOiMIm
	veYBnVNrsBFc9tTsfnmzlM+T9Ywt9nZChb3v4Qt+mBImY+mNLyn4XgsEhOix4qJnZTOzXbebBVz
	WbIhcp1D5kbTfiMkgSxp68EFkEDM8QlQG+DXgJCfXgPYbF1sjggu5XGJKPTqgACvxJUUXMFlJcP
	22W4X9vlxLM7QFu+D3zYrpJkTIaR6PNgJ5wHwznuuIwSppvOIMmqZhVRrXWx0svLj7xS6iFeXWk
	UDEDuTiR8idlmts0hSGg+7op3rssZF1GydiU+xl8W5Dg=
X-Google-Smtp-Source: AGHT+IHEs+R1LKsR9RVEL5YYkxKqu6VpP01t3/djpZn+0eRzKazkU80lVkXlPQRhE7sU8srwi0gBgg==
X-Received: by 2002:a05:600c:4da3:b0:45b:47e1:ef74 with SMTP id 5b1f17b1804b1-45b4e8f8e38mr10664155e9.35.1755783459514;
        Thu, 21 Aug 2025 06:37:39 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4db2ab4asm28937605e9.8.2025.08.21.06.37.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 06:37:39 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 15:37:29 +0200
Subject: [PATCH 10/14] arm64: dts: qcom: x1e80100-dell-xps13-9345: Set up
 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-x1e80100-4lanes-v1-10-0b1a0d093cd5@linaro.org>
References: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
In-Reply-To: <20250821-topic-x1e80100-4lanes-v1-0-0b1a0d093cd5@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1070;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=DbsExdoRyp3kdjCk0epdoDIR0B1+3ES9cdqkRoNTHi8=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopyEZ5bn6oS1bR4zPjt8iIEQweKLkClCLGnRt7W1C
 1cPXKJOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKchGQAKCRB33NvayMhJ0YczEA
 CrvCBjX0iDeoT0nlZ7oER3u7O+Ltxo+Nv7nP4Lk9T71+ST0I8+LDMTWDuzMw1LsiKxlA97GmyUAxTs
 xhYaU9VyTYEn+UNdUs4qG8Afy086wcS9ANcCUxFKcD+1elSPxb3VdEHiaG01EnGYMBpknliuX3tnXw
 brFP3r2Au74Uqk0YJUl5aJaiVt940OIuUVZoV6GV+rFAJY9uNCjoGFFUTwQZDUuDDsvEvb4TZXqzl7
 u1a1hviq69zK3pM+JwjnKELdJ+jHNcKsD9dkpgCMEueDXgsQNprIncc5QRbeyqt/4GYXr9NyTTUUUD
 my/kdFGG8+NkOTGrUtbl+obqfmCB0y4AAAyxT5PUYEOw4QUPXBRuaRBCckEL5c8hf+bXWsguiBia4C
 tzki3sRoQw42ifFk3akW/urDstvwGrxw9sKQRxi8OtCBZKWFRxgaz+X7sx8k9UTKf50Wq4Np3VgJxk
 6PzaMKw1miZn0TcuAt/P2a85t/Ur7LaffzXHVICVzTRTiSPpp2ptlolbZD6aN35dzVse50zS40TVVB
 lOa6Efw9ALi41a1m1F5uSQud+/8FA+Vqc4SE+5W6Q6iFm9f0MqkD9tuGByrNjw6lzbDSKcweYgW6LT
 QdghTIE41oMQQ6bh/BagF39pJWiPVKn53zhkpgVssBlI776e6AtVCC74Fa+g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
index 6b27067f0be66b5c41fa681ff3b4f535100bdf59..293e557ee07e0e622984d6f869a5f79a5766ed18 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts
@@ -884,7 +884,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -893,7 +893,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


