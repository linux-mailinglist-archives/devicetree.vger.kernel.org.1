Return-Path: <devicetree+bounces-253962-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 69BE5D13124
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 15:19:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 51A0A3045CEE
	for <lists+devicetree@lfdr.de>; Mon, 12 Jan 2026 14:17:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2508625A354;
	Mon, 12 Jan 2026 14:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xf1J5GdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f67.google.com (mail-wr1-f67.google.com [209.85.221.67])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836952512F5
	for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 14:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.67
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768227433; cv=none; b=U556zVvJ2/TiWqvaZfsaWyFDIHMGtKjN/7oqfpSSHitOtiGsCd6h6PeE6Qhluox9SijI7Jgynf5OKygG06LFtsJ7DNDHcba3B0uBQ5UyY37jjzmEcFBhAjqYLgMkRsdcp61Ivl23jPlB/3jg2VOQYcEvzEd6WXluOzWmt4+sE/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768227433; c=relaxed/simple;
	bh=TtRpDGPGpy/+0HSyLMeQr2ov6Bl/3yzopI+7aSfxFj4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R5RBAUn9U31K8b7334WDTDNuwlCJPNUeSV7OU3V+cZwTkIOPhMxAuIzC4OIkMW8Jl6c2jCDra0dSaM59a6OaFDcilb66DFR5TAgJMRn0Qv9jkdDMukV1qkIGxAuLichfQTf5ChdD9ki6bVu51KApafb5p+bCn0zFv9tTLxopiWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xf1J5GdR; arc=none smtp.client-ip=209.85.221.67
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f67.google.com with SMTP id ffacd0b85a97d-4308d81fdf6so3317871f8f.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 06:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1768227427; x=1768832227; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c/mVNh0N4oZBNRtG/tnUEWsskBYzPAI0h1SdKQuAkes=;
        b=xf1J5GdRHQgfiO9VaiDsd4CmDGPUrgLB8aEwTd/395JHRttHIPASoVWpfrjmerXOOC
         c46rkcuqmIr8sHR94LdyNmFS+eWzcd9oVLpmdty3EmkwrhhtLkieRJFfJkLd59QWfI5B
         dKgoD5tkFd0kiAhsycedB4ivtb6jZoTH3Quh3wyMkMoVFiNOQCZu8yU7mpFIlP2mLiah
         IOfTh3I6iAN+CcrfYtteKiCRxTg0EgiF5v8D1YEG9Mmh3qCazh3DmByP28y9mc6x5K+n
         vFr91fS/smsL5w1tkA7RrQdFbv2p8feM7gd7s8N5ujDE/o3UM/WEz7T1U8qcKfU6+ukA
         e+sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768227427; x=1768832227;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=c/mVNh0N4oZBNRtG/tnUEWsskBYzPAI0h1SdKQuAkes=;
        b=XYW27sznAbbc5SKkqBkhpT5MYC48LdH35aGWTPFqiUXBZuwxX6p8aTDoyVlWeEro/2
         DaOlU7nl3uTir/wAzuevK+4N5Hpi90kMWmWZ9Qoq4CGosVPKDX+emXYqFQTZ6fNrnieJ
         Q2bEs1Tcm8ryrLaoz9uJIn/8PhnLc+AAOn/AG4+U0NBlFy/a0ZEquzS1HzsBdWpOX5cA
         Lyld1/7u8FbplcaCswd7sKO/OeSLqhTYVijLY5ROdG836WNCkU6xY0Q7ErXcaSVZ/hBY
         GIBunDZ5L5mwcaKXohXx2GUnFgxtpS+HgANk6pPiUhfPCg9agvxHgG+3LxTq6SEEpqOk
         Gfjg==
X-Forwarded-Encrypted: i=1; AJvYcCWT5k46iRGwT4/IqJKmDK6opPrVbLaC3ptShvqNeN818nA9E4dSfQji2t7HmEMql8Q7fMRXfVD4PfYb@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj7JmGSmTctOOpP3dookZ5svUzGyTiK0Vf8zTvLJS7QPzmAr10
	ow6Cx7yZxD/MFE3O+WWZv8UAncdsM0JV9DMV10+pAqhzZrM51h0E/MwerXqYmXNSs9s=
X-Gm-Gg: AY/fxX4tsG1XiJw9UmNTm0m4jylxBiLpyAFG62pufL6CAu0G9jEQS86U7YdXv3dr1Qr
	LHa17pKTkmb27y1aSn90zVpyiL+ZjykllqfojWK8bKLQ0QiM5f8jW9yGWBPvd4SwxtAbZ+CdOcx
	izzEBzdyPhGroy2qyJIMM6Xk1XS5G+hzEOFuhOGBjr+nQsRiryY7gLo27ZDF29TfJv8OnnAayAS
	ObQE1KRoWiE182VMLAFQCpfgpLKsP5pmYDBFCsnE0GRZoMv1SdwVLmIziUlJeG2l3/lJA3L4WRS
	UclirIdigDVX1WFzNBzUId4rcSoJSYD1yFJ/fDV2bhMQbhQ15B0Bry3Ajw5HtW/CIYd18pAsfsc
	snjIXuFKISFrdK6rac0uvEsU8uraT6z2QxztXXvHRN7gkrLtsTJ+hwBXxKy/Oupx8Hl2wPdXhNS
	Gur8sg+R/A+xxK2xwTmQvTWsrdgww3psGVoMr3oBEbmMbE
X-Google-Smtp-Source: AGHT+IFrBsfMSiMplrBBPh8qUuCeoTdCdDPt+sDIa3dty/7II6lHCVnL5PdVVGI/DhJcYTKl05dvUw==
X-Received: by 2002:a05:6000:4301:b0:432:84f9:8bf9 with SMTP id ffacd0b85a97d-432c37758b2mr23151513f8f.57.1768227426762;
        Mon, 12 Jan 2026 06:17:06 -0800 (PST)
Received: from gpeter-l.roam.corp.google.com ([2a00:23c7:3122:c601:4c43:39e0:348c:a72e])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-432bd5dfa07sm38705096f8f.25.2026.01.12.06.17.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 06:17:05 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
Date: Mon, 12 Jan 2026 14:16:52 +0000
Subject: [PATCH v2 5/5] arm64: dts: exynos: gs101: add cmu_dpu and
 sysreg_dpu dt nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260112-dpu-clocks-v2-5-bd00903fdeb9@linaro.org>
References: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
In-Reply-To: <20260112-dpu-clocks-v2-0-bd00903fdeb9@linaro.org>
To: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>, 
 kernel-team@android.com, Will McVicker <willmcvicker@google.com>, 
 Juan Yescas <jyescas@google.com>, Doug Anderson <dianders@google.com>, 
 Peter Griffin <peter.griffin@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1461;
 i=peter.griffin@linaro.org; h=from:subject:message-id;
 bh=TtRpDGPGpy/+0HSyLMeQr2ov6Bl/3yzopI+7aSfxFj4=;
 b=owEBbQKS/ZANAwAKAc7ouNYCNHK6AcsmYgBpZQJZjFN48vVWqUbIG+U37VQZOf/9gT4bcSvlq
 ckKiGZyCbWJAjMEAAEKAB0WIQQO/I5vVXh1DVa1SfzO6LjWAjRyugUCaWUCWQAKCRDO6LjWAjRy
 unirD/9Mha/fVtxUz74hDxmJSz/VqEgTSj/OJ6u+J9+JdyV7Lwqml+TGaesgzpsxtV+HfQRXJng
 j5Bfpj09IUytDIAVBnHUAEJE4GzXIR5Ce1GeTZhMYiSlgbW3ExrY2ZSAAEeN27s4dJJ2Y2g7OLG
 lJFI5Kv3l89I+rdxPa9i8seWQ+2dn3ziS06ifh+oqjJXqmO+kBCzbPE8YC81N9eRmUWA8LM3lLr
 lkleHD0VSpZEbevHvBb0p2K52mKQDvdZpF4kc8PFfwERWOADsNKerb5sNcufkq/LIUJo6UimYrj
 sl2P7RJneHmHdsiGVoZQxhpWLyVdPjE8oYyyKafk0Ofwgi4obHTVUbxQCV+zWdGLBNxCAhMAanT
 7QKVKmr6tnUzMPeeJ4Dx3Xd2sSNsURfMd3sEijJYXlqFAOwKoopcEVYb24wu3B338kAAi6FOw6f
 imcF9mKH4EmMS1897VNponb7JxFult2xk18Pv5LxmwrKATezwrj3QbfAOuOthqgWkwEA58FZIpY
 hNoUn4786K4qIpQUQylpNL+ZeysvOnXduehZMwVoqgRfMnaLUcXhTnOzl0z8Fh1MOnoKTalJjOy
 aUiZkmgIDx2pTssa36zCiT9H7H4rFck+aWfMcuZvpprPfPwSRWm8I7W3MXAmv+hZssWH3pJsKuO
 hfnOg+XpwVdfS+g==
X-Developer-Key: i=peter.griffin@linaro.org; a=openpgp;
 fpr=0EFC8E6F5578750D56B549FCCEE8B8D6023472BA

Enable the cmu_dpu clock management unit. It feeds some of the display
IPs. Additionally add the sysreg_dpu node which contains the
BUSCOMPONENT_DRCG_EN and MEMCLK registers required by cmu_dpu to enable
dynamic root clock gating of bus components.

Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 arch/arm64/boot/dts/exynos/google/gs101.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/exynos/google/gs101.dtsi b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
index 48f3819590cf8c05d6bd7241cfed8720149c7db4..d085f9fb0f62ac2f57b104c20880e64d885d0bee 100644
--- a/arch/arm64/boot/dts/exynos/google/gs101.dtsi
+++ b/arch/arm64/boot/dts/exynos/google/gs101.dtsi
@@ -1815,6 +1815,23 @@ pinctrl_gsacore: pinctrl@17a80000 {
 			status = "disabled";
 		};
 
+		cmu_dpu: clock-controller@1c000000 {
+			compatible = "google,gs101-cmu-dpu";
+			reg = <0x1c000000 0x10000>;
+			#clock-cells = <1>;
+
+			clocks = <&ext_24_5m>,
+				 <&cmu_top CLK_DOUT_CMU_DPU_BUS>;
+			clock-names = "oscclk", "bus";
+			samsung,sysreg = <&sysreg_dpu>;
+		};
+
+		sysreg_dpu: syscon@1c020000 {
+			compatible = "google,gs101-dpu-sysreg", "syscon";
+			reg = <0x1c020000 0x10000>;
+			clocks = <&cmu_dpu CLK_GOUT_DPU_SYSREG_DPU_PCLK>;
+		};
+
 		cmu_top: clock-controller@1e080000 {
 			compatible = "google,gs101-cmu-top";
 			reg = <0x1e080000 0x10000>;

-- 
2.52.0.457.g6b5491de43-goog


