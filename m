Return-Path: <devicetree+bounces-207975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B7FB31404
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:49:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EA8765C4321
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 09:43:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A4A52F4A1D;
	Fri, 22 Aug 2025 09:39:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OCJkmWcp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACC52F39D6
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 09:39:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755855575; cv=none; b=r5tYyIK3iyho1WYX9sAc/qhJXDXLeA3rAp42fgy+wj6W7au9pUYUtzcScID3K9oA5s0aWHbGbIIZj9zhZXGMuGLq3ArVLERQB8QLomkK1tJKuckF2YkqhFVf/YOyVYN8+BycEBgvtixRZKXp1HZppdOty2v9SDTFfInxCit/IeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755855575; c=relaxed/simple;
	bh=sucDWngkcc57lEpuqUyMvN5D5nggCib4i3lqmpo2kAM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JzrOX/TqmJgXNKCiTn/VvOyd9HtaS6twN3tv3OpY45GI0QoZGpQMbjYPZm9girWodcEDa4HGE9Nyq5LDfRWJBqxEzv5xGtqmG/XH0yDPehEBn2WAtnipnX+jd6jdokmeWoHsxo5v3TQ06QP9EGug4QoueQhrrOC/nhAF7tB8ggY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OCJkmWcp; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-45a1b065d58so15658015e9.1
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 02:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755855570; x=1756460370; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/CdhuTg7uI5AhWYYHaCMZroPXcVIf1dIpA0xTfE6eKw=;
        b=OCJkmWcpWNt8xqqaxLonlH7LmAGXgJeBISG+md8EF/T2aZo6/DHtYljd1DVXJwlSaS
         cb/afgfzhxGsn36t5TRqvvKAvxhgbjkICdq3jycTHq5XVm2t0ado8mn5NmpWJwzZ8Zh4
         n2oU/120KzoYOONulTpDa7ONU6ill9sR2s4ZacZQPU1/tjieEVpqOBYm9svciE36H3x/
         zInAmXKt+jzY6qK99XkEfmpnUD3MIGpIU2IxvxR6msEO4vJKfRnPSesFHfx1jSNOdgrm
         O6AFKvhHxf1h6gYTXqUPU8CzQElYhlI1smQJMPTdXAyTz8rtdXz5xtYjGrSVAI1p5JyZ
         ZGTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755855570; x=1756460370;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/CdhuTg7uI5AhWYYHaCMZroPXcVIf1dIpA0xTfE6eKw=;
        b=O8TbL02QIjIHgECpZ0aq6i/AJePTE49u05Z8DrEigwZ+c7s74S+BlJlI334PI0wW/s
         EEddl8G9Ml5zRLwrUZyHi11LVrrhzQPeRPvLbFj5jXxSF+TN5UbncbUduDmuUuik2uDp
         StRRPx6Iovvg3m0/yHsA7JhHEoSoLT68hlV6oxhrZzShoz3aEEX2mnrllOwrgEnYE1aX
         7g9A5QVoG0mwRkoLGlszg0eLCK8s6aDLlqZQUM4zuiJHUERMWx2tlXVqLxNFHbfyiufE
         8q3z4qUkjYnb0gf1vY1F0M8YcSsiWE5zT9wO3UpwG5Fc5MUQBeX3ttPFYSN/ReQzdPNk
         Osvg==
X-Forwarded-Encrypted: i=1; AJvYcCXJjDcoJbGCa7ILbrwzm8lK0ZXN2FksJfOEnYUuixtWXB/OUNgDW2Tl1lXcnq60yDnnBWgiKFMctf11@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4O+S64qPuxN3NBLcyH1ie1uNj48cMbu8s9G59o0mRmRQMTONU
	goTNOPR/p5BlbIuMiQXD/UwUb9b5VUPyb2N5sGP+5QRRVCKHeX5JQc4ynPOviDWqxqE=
X-Gm-Gg: ASbGncsHB3Bs+gt1EzfASN6KvoI6bYsfnu75GQepc4ydMe08rDxABzmk7Gg16uGE/CG
	VBZXY/A6SZEkDv2qgSn3sY8HjNu6u05u5ldw8ZVTGtloV2GD7alKLXT1C/mf2v+yJYREttN2jI1
	VehMFotI7zvPEupwH/D74Pf1z5Jm53ayhOQl3ydfhDu0FxrYphmsFMGEVr6zQJgxXUffkM66KYB
	5/VV4y+n8NY29UFe8GQSopY9+xZxWX6ym/Je5myR3/5EBawxtxphWZKNnP1vZBQsBQBIlI4Dld8
	KIGHwYMBPDjcTlacoo0Xkg/nBGh9Ne+WF4ver3++m/pHpEMcWyqkgBYqluaL7Cm0q5b1/hTYVmT
	cB4kPPNcawNF7OX2KhMt8vPpN4j6t/8xCBq4T39HiEq4=
X-Google-Smtp-Source: AGHT+IHJ2VaBIzdyibne8vxxSkxVrugdClFsD/VrfwDeBGxeuV5iToOjgPr1P4JAkzlzCNYIwQygzA==
X-Received: by 2002:a05:6000:4013:b0:3b8:ffd2:22ca with SMTP id ffacd0b85a97d-3c5dc540642mr1647058f8f.40.1755855569686;
        Fri, 22 Aug 2025 02:39:29 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c684524163sm609890f8f.61.2025.08.22.02.39.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 02:39:29 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Fri, 22 Aug 2025 11:39:24 +0200
Subject: [PATCH v2 12/16] arm64: dts: qcom: x1e80100-lenovo-yoga-slim7x:
 Set up 4-lane DP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250822-topic-x1e80100-4lanes-v2-12-4b21372b1901@linaro.org>
References: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
In-Reply-To: <20250822-topic-x1e80100-4lanes-v2-0-4b21372b1901@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1289;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=sucDWngkcc57lEpuqUyMvN5D5nggCib4i3lqmpo2kAM=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBoqDrG+LVpddQuq2YhHvZzDua+lPbbR8J/KlSnmNdp
 f8WAwXmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKg6xgAKCRB33NvayMhJ0XxiD/
 9OT8KqBJwiJswl8/KojhEJI+iUqv9U5AXZam0Op9nryRSrD+So4nduIolU9yWkd55RcpdRbbwcPYL7
 /dVkL/4D4b8gzWha1RZ1vAUX96OgRgnw9zJ+dntWpRmlNJ9PryrxglpRbWVJpL2q+CL+Y2TcqqrOH5
 qYccihWrQf2kYeMRrmVGiEhbGA6suED1r5KbZVeaLjplQq626RYNvasK2hcVGIPdgoGc5isbZP7y82
 qnSi2CbyoNKPJRKbX1q1/xhavwRdiqOt2g1g75B1ozFgBkolwYdnTSMP8OqpARu2EKwxpsXprFXdW9
 DV3lqz8XbwvY5j0oGMS4Nc/YU/1lwnEjvoxrd8O2zYV4fwQZFkGXi2bE7j5gFd5WSaf+/6JYL3VXsK
 RxdB/iZd3su3nH5Ono0oXuUNdpfSl4HzNVZDKxP1/Dj89QXpQ9afvaTDy6dVqyeEbL7dt6IVbDY8Pc
 7Ao/yw1WEPJsMEWq6xX4bNzz6Se9pfiBGlz3hyofp/LebUoHQVDSh1SkCXpBRclwttlAia0fw8Fk9y
 RAfXCHtY6iDe+m2kswg4s4VJyP04lPLNtl5TGg3FlGvQsxEj4pzchQz1HNrXRdwKzOPBVMHCdlL7/x
 M43ZqohfHe4ecgzvIry85jEcLAHDZSacP1kCjiu1EkM+Na5CAeHsbjtl2Cpg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Allow up to 4 lanes for the DisplayPort link from the PHYs to the
controllers now the mode-switch events can reach the QMP Combo PHYs.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
index 71becfc5e6f649299b05b0b93cf74b81dea9fa57..4374692d6da9030462a577279263dceeacb3ce7a 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
@@ -1061,7 +1061,7 @@ &mdss_dp0 {
 };
 
 &mdss_dp0_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -1070,7 +1070,7 @@ &mdss_dp1 {
 };
 
 &mdss_dp1_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 
@@ -1079,7 +1079,7 @@ &mdss_dp2 {
 };
 
 &mdss_dp2_out {
-	data-lanes = <0 1>;
+	data-lanes = <0 1 2 3>;
 	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
 };
 

-- 
2.34.1


