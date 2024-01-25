Return-Path: <devicetree+bounces-34950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 42D2483BD43
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:29:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78D13B2C594
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:28:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7588F1BF26;
	Thu, 25 Jan 2024 09:28:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WGLMUdvl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54AC1C2A1
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:28:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706174889; cv=none; b=cP6ddYd4CJwwaUDWwKOzR6nrIaXjfVl3+uKCM3jgjUPCtRJaAOI3sRkyNWpU3IcyJb/ntPvxnVpOjbny1Nhu4cYrZo7SpUW3DGb0r3c7pUcnpURUj4+KMV6kDurh7sEvlGGCjRj22sUwZET7OHk62x0tQOi1R9Q05arMjuRm/8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706174889; c=relaxed/simple;
	bh=A4qup3C2FDXjGFn1GSGpqFJKQTN3xm3pX9MXCGXv7Co=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WRGpmPIxAyqH3JABaNJirU8pNLs4YdYlQ4HenQg8jugjUtc14UXf7ZCcSnW3UlqBLRb+ozHys7bkPMV/DBbLbKVjrBB/KVlCV+F/3rTVKYGoHreu0apAZRrXSqDK9aZea1C1p3YTTEmgp689p8OpeP4oc4zSe3PkVYfR+f2IYZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WGLMUdvl; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so7654015a12.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706174885; x=1706779685; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bhafpu9n6kdY2zFZyqYNJW3i6ma8f82fsS6M+cKAnaw=;
        b=WGLMUdvlvUCaEKzkxXsfj3akc9Y7KJL1jl/6Ly/mcN0q/zv8XyGMHjsesjOYnwIALb
         Q0siI2A7HDHNhWhP+YLZisv+w62vj7CPAYZ+5YpeCWbQ7gbW3HBsBS35HVHuVjO4Ild7
         bgDc0w7U49HqW8TUAqzds4GlrdSAAoapz9WQlAsdk6WYhqzotL9JAUr/xb3HvRVJ/sRk
         JiYeVNjVxSGKSd2wd51MMRvh7SXBSy99aPUnkOFfZbciBtHUhsvkf5/UvviAkWXFrxaq
         dkDe0wdbhfJhmOA01/Z0lisbhCCpQWYmyMsab8Elw+VvlEhd2db18JJOtSUpFfUyA6tB
         jB6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706174885; x=1706779685;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhafpu9n6kdY2zFZyqYNJW3i6ma8f82fsS6M+cKAnaw=;
        b=RU57n65ZWcfGCA38RIRSMXyQuGbXtCD8qAGb0UH/99HesCOoREOotopsLRuNcP7c+T
         lxVCPOQZvSisKoP/XXrtUDvYKq5emGrI8HyUHUjgPLVsFvav5WZ3CS9bpyXWBqf6PnP1
         RQqgkGiVn6OTtxWBAxGB2zWbxQhJo+A/aR/ckMX24Wl35HdTzhvtmgBSeIn6UFLwwkBE
         baQeEH8yInJ6y8yMmrVrrsTp0WmO+BU2miukthgWr2jqxN1j1sfo1zoqh2s2PkTSnsfy
         RX5UZIriP27OTvqMgd1V7mPNkvn4gXnZUhFVIBDE7RhRuDrkj8LI/8DhFHSZKltcE5VV
         e3vg==
X-Gm-Message-State: AOJu0YwFC+1aHlnd8OV9qmD1RdBysdVCKsZEWhJlTqqWKTl4FP0PeGg9
	r393BmfrIShYhrFhS1eSAes+yzwfWm8AGVP+oCTNRWurmhpjJHwCymaN3pA1ySRUR3mLkrG77am
	4
X-Google-Smtp-Source: AGHT+IEZ5dM7lzbQUCh5S2FkPS1GYxebGD/3Il6uJ7JafwQG/IWTDxJgAeLaTfqXMgYwi7H+q40y1w==
X-Received: by 2002:aa7:dd0c:0:b0:55c:7c3a:56b9 with SMTP id i12-20020aa7dd0c000000b0055c7c3a56b9mr370673edv.3.1706174884708;
        Thu, 25 Jan 2024 01:28:04 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id f19-20020a056402005300b00554af5ec62asm17356391edu.8.2024.01.25.01.28.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jan 2024 01:28:04 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 25 Jan 2024 11:27:46 +0200
Subject: [PATCH 2/5] arm64: dts: qcom: sm8550: Drop the Disp AHB clock from
 dispcc node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240125-dispcc-sm8550-sm8650-drop-disp-ahb-clk-v1-2-0f8d96156156@linaro.org>
References: <20240125-dispcc-sm8550-sm8650-drop-disp-ahb-clk-v1-0-0f8d96156156@linaro.org>
In-Reply-To: <20240125-dispcc-sm8550-sm8650-drop-disp-ahb-clk-v1-0-0f8d96156156@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=826; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=A4qup3C2FDXjGFn1GSGpqFJKQTN3xm3pX9MXCGXv7Co=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBlsimbJKjz62fbfbh4aCei578ryoIn9mjfGinxW
 WbPtuFjai6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZbIpmwAKCRAbX0TJAJUV
 VsbbEACzQv56RQECz+uDsjAzHtrjKGxBosQek4NvlHT36o4rBZfj/52gxYI6QVHTlG5lxek9gx3
 j0oJ+qXf6WBOvFRfird2afBMPrc6SiJC7kVv8VV5kSjXuTi+psZjqvrKRudDUu/5cHe0pN6sCUG
 fQlb85Gk4tOJ6//U3edszEXWkHiZx3sNztlgL/rnxLoY0GSpxVabUGEaC/jsgwzpSQchbLEJwW+
 LB1jT39BvLJ9HOiZuiiTr5Q3SdYMBEbVqmg73pS8Sf2jZthxXOKcIhX6W6vLSLrtf7BuSZtKo/G
 +MHQeLBiSG01PwU6udPOeEG9RGBuaQOMPVCiUZdnbheD1fE1H2kRLlmgy7Aa9Y7J9lYFIEba8L+
 g8koa6CZ6nnu3dXiG7ClNf+nQAexgH0mosh1aiWVEs6cm1k5iNqG6bQnh34ZEq73GabBJMjJhG2
 0DNmzK21i2TRjjrJJbbGfmG9sc1PJzt5730khXle+dxkVZxKeVedy+ntVDZgtcH6KB0qiP+N7Zp
 6ugIKauzKLFtxXfMgzRKJyBz0iXe1BvtAE3gCbzrHk50EOUZ8fRQA5qlbLRfQWMHI46ayHufazZ
 EAc0mUX76pq8TRB3Do2/kuBXuYeb3PChNdhtIfQShNN1Vp0jLxnJbDakZE8kLRG4/G+vwah2ETB
 60bSnkDWq29OzzA==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The Disp AHB clock is not registered, but is enabled on probe, by the
GCC driver. So drop it from the dispcc node.

Fixes: d7da51db5b81 ("arm64: dts: qcom: sm8550: add display hardware devices")
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
index ee1ba5a8c8fc..59c23d0696a9 100644
--- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
@@ -3026,7 +3026,6 @@ dispcc: clock-controller@af00000 {
 			reg = <0 0x0af00000 0 0x20000>;
 			clocks = <&bi_tcxo_div2>,
 				 <&bi_tcxo_ao_div2>,
-				 <&gcc GCC_DISP_AHB_CLK>,
 				 <&sleep_clk>,
 				 <&mdss_dsi0_phy 0>,
 				 <&mdss_dsi0_phy 1>,

-- 
2.34.1


