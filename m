Return-Path: <devicetree+bounces-207246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C9D1B2EF3A
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:17:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F8E45E0199
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:17:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BE1D2E972D;
	Thu, 21 Aug 2025 07:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gtQ0mDo1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFC8D2E8B96
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760608; cv=none; b=k5f7sZjiQrNAKZztqVoRE226Tti/P4fZyNfND72JwfJX77q9DTgvLIYwbzezQm9zHxJ6/aRdm8R2c7YxmTG86YfJO5+Opw9eGed+2mVzw45MzPxVeyetzTB7UNAO2Il1mzWFI4eBVdWwuHJJ7u2V+kHv3nosBEqoROKIVSRv2Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760608; c=relaxed/simple;
	bh=BQEb51m1KNR4zEP9Hy/a2qgZsX8FrITaZBjGkBz8Oxw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=IWXVMYvfAJRmCzp//ED0BVLoIlEmRnQy+nsNOU+CRQ24R1Z/uvGUDcrgU7bFJBUHQy4f+bRYXug1gJkVaKqtjLDvT33TQw98M5tMZNFqCw77gWEJ23zxPjFcHRaoyx+jcEXZiUn9NhJsrhpN7Ij6PqRAL4A/h+bgt49Y+V2gUYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gtQ0mDo1; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-45a1b0c52f3so3632615e9.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760605; x=1756365405; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0tYvRKLy4DbgrwS/0cap3qewAHcSq3fstkqYfrmF5uM=;
        b=gtQ0mDo1AxR7JzrrWxf6JmYxIQzSroc516rBbKSlbFOKvzyNJyntL++ZYPOcEwHtRA
         O5wF3gXRYimUtBxfxz/Ipz/CHgMsEM7zwHzdryE9fw17PlTkO9mQteKfZBzBt/OR0nJb
         Gd2S/g500tMyCfTS/qoGSpdo3e+sraD53FG8IjmIsZzaUm0CCqUVABCmT3rGOAlp/RqI
         2JvK2M99xF4tVzWqWsENwbigESzeSG7ZLk0x/tOaiVNuGS6CUkuLYlAGGVLA3d64ogIG
         hm4GrfqMfOl2o7e/llbx0bDHbqYWOCTKKBTVQPJpl9xStiLg0hNnCUz7Cnm+LYpIlRAm
         a2Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760605; x=1756365405;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0tYvRKLy4DbgrwS/0cap3qewAHcSq3fstkqYfrmF5uM=;
        b=qrq1zfUgii1pf9qC+ZsSzI+v5oMXmreDke2wpqjf/TQTadhdBXiVtNrr1/AP0Aevw1
         WGFopIs4pb4s0A8tbEU0Jd13+lcd5xIAp+zPuwdTqMGP4NCmflcJovWKyVlupSXTJBU7
         iv16kmuZeMI02JBvLg7nZSCZXLv3+Dvkset1HGuIN98I2EZRYnbxaeoANYY1ZiNkoS5O
         Im9h3EoEEknF/MeYasytIpcTMivpnpURNIQH9IFsJqwkoSQaY5tVfswWr+TkCeZnbULX
         Y3P56GFtKjtzfM5noa6hiwCdbjg2R5rx7eX1R35cTluBcU4aonWB7o1NHtKwKp1nwgm9
         vocA==
X-Forwarded-Encrypted: i=1; AJvYcCV2miRqPEW3TJB179LE7t+BWRDV3EpQauqt2BAScYjORyzQ+0WrK6jw+FS2VrYni3jkpLxAD4akd7dq@vger.kernel.org
X-Gm-Message-State: AOJu0YzXzWzNHl4IAnT3deG7oTQwEcZAspv/ssiJl299qij1yIzIb9MM
	onr39PzGfXUa7/lE7pxcX01gJ8r563hQTbAKyc3QKHRuwx8QMjtd8eYChfLdnJNUj9g=
X-Gm-Gg: ASbGnctVObqAI6ZYEC/+Gz76XE0uR2Z/iUpXVSHulqwHk0ENpB+tsL7k2yOlbz7B8/e
	2p3oxQmasLHDbaYnb1hWexgYee8ilGqDdES1TJgfg8mbalXFKpiw7tR1dL720SmYXZQP7hkmAYi
	zL8CzrCHEuzClwzv7AcyJiWsxpXPkJ1+twdNccoXEgXeOFoVEFtEje6Vr73M2gPdeRWiBYKWcv/
	1814TPH6VDYnBP67FWX3xuvFAKn5cdtDKfgIkbCIys2X5U1VkFEOWHq0pJvcODDJ0dU3UjcAR33
	Xg+2wgpammPjOBEx4cDOeMj6KDNmy04sVWLoOTczEAh3Dxt8Q+kSV+4vmpKqyOBhnoagiM8j/fp
	blMN6mbE5+gBSce+h2ckbvQ0DYiizyz5yegiOZVLTnQs=
X-Google-Smtp-Source: AGHT+IGrjkphBrBUHoWxV5GomEjzChV4z9wUOmjxmNJ7kLEntCvVPfSPqTzU9QahqpWDlQJL8YvPYA==
X-Received: by 2002:a05:600c:1d05:b0:459:dde3:1a27 with SMTP id 5b1f17b1804b1-45b4d8593d2mr9130075e9.26.1755760604904;
        Thu, 21 Aug 2025 00:16:44 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4de5b52esm14411455e9.20.2025.08.21.00.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:16:44 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 21 Aug 2025 09:16:38 +0200
Subject: [PATCH 5/6] arm64: dts: qcom: sm8550: Additionally manage MXC
 power domain in camcc
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-5-a510c72da096@linaro.org>
References: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
In-Reply-To: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1591;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=upcVCnSxZ6EoV/U+ZWtCwd9UHXRYH/X284bIHe/yBco=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopsfX5RQMR5ME2XKV/xvo39Fq5C39Aw29Gei6c54L
 w2gGpjeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKbH1wAKCRB33NvayMhJ0eAHEA
 CDD6fkC08k9iUrE9eoVfRfM6riJu8SCs3n0NqXskHPC6oDj88gGWN3xQLuxwmtsXjjf41IokDXHw8C
 6xmocVO8aSUvmuFitQskw8AUwjx99yEwzqe381HByJL0yfdxFcKwpLR+lalWyN+ygsP+qjPAzSK8qx
 IXqzGZiAb+Xzxxr/tB6sNaFawe0ULrWzCd9SuUzMUkOEu0rqE1rNltGTEQZG0EFBd4egHs3/IBUjI4
 2RzRRnT4/fAkzzghdDq8hSlJEdKjjICGeLaTMDQjsQdKzyQD+EVG4g21fE4m9c7ugGnZEX/yuN2QQj
 2P72sjQrUo4GRH7tVDwEYZQ0rpAFh87OpUyxMEMIBAfTx2KJQ0X4kEq07JiLZzx/foXC2lGtpBmdkb
 Xdse+rgHwvKL9WKjl8+zcyZdqnfPLm5YvNwoY2QW/7270YiCoMH1Citjp05JEi4rL6jOB+NxPz2wU/
 BEjHO95Jk47VRFZ9RTg4WsT4Jy+yX1lqlDnHhvA2hFaiM38dRFkCYDP1SxtK2i5QNbLUii+GL0uNFf
 91i6SZ0wEt07NC8ni0arwyUwltfwarsqJxtuXRK71VceMKxVGPpk7mm5ZcrdywpDDhEjt5dybBKN70
 y6gpB5Ywc9EAA9yyhBrPxrBOwEHNv+JH1K6Jur5TYNnVacmdrVwEqiPNGxPA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Camcc requires both MMCX and MXC rails to be powered ON to configure
the camera PLLs on SM8550 platform. Hence add MXC power domain to
camcc node on SM8550. While at it, update SM8550_MMCX macro to RPMHPD_MMCX
to align towards common macros.

Fixes: e271b59e39a6f ("arm64: dts: qcom: sm8550: Add camera clock controller")
Reviewed-by: Taniya Das <quic_tdas@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index d4bffcc244c98e87464cb2a4075c21f3cd368482..54ea21e1778a7c104cdf6865f84a7f8b5a8691ca 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3625,8 +3625,10 @@ camcc: clock-controller@ade0000 {
 				 <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
 				 <&sleep_clk>;
-			power-domains = <&rpmhpd RPMHPD_MMCX>;
-			required-opps = <&rpmhpd_opp_low_svs>;
+			power-domains = <&rpmhpd RPMHPD_MMCX>,
+					<&rpmhpd RPMHPD_MXC>;
+			required-opps = <&rpmhpd_opp_low_svs>,
+					<&rpmhpd_opp_low_svs>;
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 			#power-domain-cells = <1>;

-- 
2.34.1


