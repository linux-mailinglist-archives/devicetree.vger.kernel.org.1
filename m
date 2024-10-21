Return-Path: <devicetree+bounces-113588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D32379A6388
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 12:36:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DBE21C21996
	for <lists+devicetree@lfdr.de>; Mon, 21 Oct 2024 10:36:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F4DA1E909C;
	Mon, 21 Oct 2024 10:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WhulcuaO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69471E9064
	for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 10:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729506798; cv=none; b=AoKE33B/stoNs+ha9L9nIkK7se7IUKA+kDmoiIfxUsgBDvnxdYIrY8BiA+MVBKou8KbkkMUpnnJgkAT8AO393eFVEMYyJjvbeke98mTqtzElyJ3Z09/WigyDvw5wjx13MohtXI3YHgGPo4rAoAvNxMe6YKBXvgZGKgcrYi2+DXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729506798; c=relaxed/simple;
	bh=7YeWftVlP2Q/gQUZRfbjxaxvlZtz7wnpUr40ZoRjqrc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=d5DMxwBD4oKV2syKlvPVfI3aemr06GPD1w3eNtVmA05yJvRlPC8U66YMgrpiR5wzm7TZ4JbhmPmTYrjlQomNGSH6890K9C4lj0hVzvPjzxwqFQ4XBVkcA0G+Jc7/bIaTZHGb6n4iykkwUTB+5VMwmvCv5Md8O8wW9AeASq33Aog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WhulcuaO; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb5be4381dso42107971fa.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 03:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729506793; x=1730111593; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=WhulcuaOY+I2biH9f2Cz//kQVjk89+Q+ziJbpUO62ickF2k2dcHIPeZmGgSNSHHRAp
         R0QXQZKQxAyJQNROEUKS6mK3GjBKofzeJi/6dQEouS81k0g2L75kKGHacGgrWkSukFzS
         wlgxl7M1PRfoEGflkzrib6B2jvOM56Vyc9G2P0s9Mse9LzRB8Ydvn2lB+tvBEApIXM1X
         uXqHu3fRtacMPyq5NGv1J4qz4FexTKa43aG/++D7qKb7t+a0C0si1aO8CrQ2W0VJm1hS
         CugYeOy/Wn3VwEmU/XARSYrMOUzpcvnqP4VaKWgMVPilteuT3VD+vjT/p7g84oNv6jX2
         HHbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729506793; x=1730111593;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Dq+HZX/YrY3XCimbXKEs5fGXUV/6PLqs5QlWH/wMocE=;
        b=rhU8zPLnvjDQExXCX1uUK96Lj6Rvd9eNP9kPfX5mqPqWLxpQ/QWtwwlanmlthQ5GKW
         0pwUy0sKCPXa4AN2mpoEqp7hcF+ewDVcsKgKLqULgUFUNX/hhKcFpe/Bzw8Rf04oKXqT
         dtL/xUQMErY++gIzUuoWf7KSZp50foLMhaxkGWynbv5P3fxcemr/AmoXGKHo4Fdc6EGF
         2PiEWf1juQpVlQtzvw2hjSvskO23HjfcEbnfgkPo8SZRz9/O9uXu/ooOhY6Bt96bx84/
         /FDMxRRd+KJ/PUfvOU3gjivD/hG36i96f+dOKArliccN2g2qDNV88VSS7EQWzpfhRgm1
         vtYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXqcejr3zRRD5+3gp8a0eoechfJMO7YND25VxQmEB1Jgz768EQ/0Q2BP5SoO+C4GkKilRNfOxAtKhAe@vger.kernel.org
X-Gm-Message-State: AOJu0YyIACjlDgrZV4EvOKpaDd6mLWyW5WE/vBrQdjm2Cri0yCSqg//G
	ANhjHdtTKw/ybQnx8+nakp/ep+WJiZFwLGFCmup3VHGbWHxp8PAxE2+3Xnhx6NM=
X-Google-Smtp-Source: AGHT+IHrXA0yTSuYlDJ1nxR7O4obHD6PXzXsLUGDH5RpgjhCzPSYejr2Mgj0PH04npOI5C2Lz0ao6Q==
X-Received: by 2002:a05:6512:e8c:b0:52f:c13f:23d2 with SMTP id 2adb3069b0e04-53a15229c2bmr4977335e87.25.1729506792835;
        Mon, 21 Oct 2024 03:33:12 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a22420015sm454132e87.123.2024.10.21.03.33.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 03:33:12 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 21 Oct 2024 13:33:07 +0300
Subject: [PATCH v2 1/6] dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Add
 SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241021-sar2130p-phys-v2-1-d883acf170f7@linaro.org>
References: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
In-Reply-To: <20241021-sar2130p-phys-v2-0-d883acf170f7@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org, 
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1186;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=7YeWftVlP2Q/gQUZRfbjxaxvlZtz7wnpUr40ZoRjqrc=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnFi3kbqrKaNrEeLFVg4hGGH2uG5CeVqVeoDlB9
 LfRyNGn/bGJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxYt5AAKCRAU23LtvoBl
 uPvBEACle3Xj/q7wBu9X/PtDKjasjl6a5hgmsyoWzlxnxBgZJM8MAbjis1hn4760X47VKl4AtfL
 lNitq5WgM2NC+RvkSk3GUJLmov8o1rUcY110nImwa4eEzq2zN8i3bRWL3d2NWBNJjJ0EwIq09nK
 9uN0b/kFawCSbR3TjzU504Cik+9RpYrgVyMfydiR1XbuRwyjHUftVF5QViNS8Meqxd1/JtA8dFv
 5p0bI3eoNLNvRgpinUz4qeWsluYxJFo2FmMLSSJVlpb8m7stOd+XkFwQepW3NUS/cAsqBAkpGXT
 zWViONEgtmEa2Qe8Jp1mVtu5eu4BzYl5TLt04DsI22rZAtaYFz3Zu8OjZ4/7Gc3HzCf4HTsx5Zd
 RM/rxr1mwy6oAJc8hkLn8J7+2qRtxc+7LDvCP77dbndL2NhXl1OwKKP+0pYNUMTmXuPipQ4Ro8x
 x+xu36WTBLE+C61XIY8nk1xYeZHIEFbj9OgtqHDPqDJYbE17zTdSRZ4c7FHtYjbad4PfbkFlgoa
 drqPQuNLGiaOANLPHSrqTgJeQ7m0TS4lEOZ4vw1XqYsAP9zmjk6zk5nWD2SteqrgGblPbDXS688
 GV/oepP7YPb0ErtLJsFgUCgpWy84TjSJgCBL6wpAl/oKm2OufkoKK4W5gsbsVBScFE476r87u2G
 EnN5gup17yejuLQ==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the USB+DP Combo PHY on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 2d0d7e9e643117f5ec625e49270ac94c70603e7e..358a6736a951ca5db7cff7385b3657976a667358 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,sar2130p-qmp-usb3-dp-phy
       - qcom,sc7180-qmp-usb3-dp-phy
       - qcom,sc7280-qmp-usb3-dp-phy
       - qcom,sc8180x-qmp-usb3-dp-phy
@@ -127,6 +128,7 @@ allOf:
       properties:
         compatible:
           enum:
+            - qcom,sar2130p-qmp-usb3-dp-phy
             - qcom,sc8280xp-qmp-usb43dp-phy
             - qcom,sm6350-qmp-usb3-dp-phy
             - qcom,sm8550-qmp-usb3-dp-phy

-- 
2.39.5


