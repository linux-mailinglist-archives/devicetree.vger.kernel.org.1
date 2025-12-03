Return-Path: <devicetree+bounces-243842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEE8C9DB53
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 05:05:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 182A13A1A8E
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 04:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67AEA271447;
	Wed,  3 Dec 2025 04:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WCHxXBQl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9011727056D
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 04:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764734747; cv=none; b=Oucf1pxj5+xdqVqFGGfT5tOIqHIfsnrfJYa/ktoNOvXfE6s4gD/MLBgL6A0NusqKBU+Xs1Q5iQRq45qh1gZ+GpLPPjqvTKhdIthRkjWKZhw1TAL6AtkybBKQt53EaDaQIe/wplq30aKS5SBAXJZYKIlSG+04Eo+cZInVSi1OuOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764734747; c=relaxed/simple;
	bh=nUUvt6bCpdyUlj04W2yoXSYMiNWx/MmDymoKDyVQVHI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=aaBiwSOCOM1axl/SAjcbkq9UTyzfy9x5R3Y7xSD+LW65zU4x2KOrL3gG+iQLxGkSxp5v9Y2hfbb7wnS+eLmBqkv5/vcT7PeQ7tBOX1Q2YpDf/tDhb7plVX+0i6NqXTC7uPeGO7KqLfQNvhu2IqAdB3RI+sUUTkl6v1Tgzpfmp6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WCHxXBQl; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-597d319e0acso78615e87.3
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 20:05:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764734744; x=1765339544; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FYAjeVRzePHcmocoxGrnCVUp2pgL4UnGFLxhN/mpap0=;
        b=WCHxXBQlIacsnhDvL2Jgazx3PSG0mB74ppcpb09KcHLuk+abzirmdOpagZr0MVAXdR
         z1vLLUDJjIb5jQO6e3s1D9LDuoeCmsGRfAX2J7+mtzozn2TRdQBecVjGqyeo42KYBeEc
         I155Wu2I+nHUKf1SN7y7gKRolPWrJ11hPio7prasg+InpXyyNf9xz22qkRbbtsFZwyUv
         UTBjIPdx3R8qnqWN7V9dekxh4Xx68kw8YaOqh4kxQBsLUcnz1Kg4IDBJlSNJR3p9xAcr
         bD3ZXGc8LSOY9YW+SARB+Cw0ZVHwr6X4PeQVjOnsGq26pyL3ltjygPP2Sq1O81LIDjB8
         rGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764734744; x=1765339544;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=FYAjeVRzePHcmocoxGrnCVUp2pgL4UnGFLxhN/mpap0=;
        b=nRlNMT6zxaAqMAZcqOVWGbIkPeY6+JjjVPNE3iGBXx6IWBRej0u+mJ8rkPeslV/xxc
         UNWrT8oPP76sl7iKDhGkKAhI8sP0XrYJyRLQcNToDd8lCVw7xIM0gl2aASRDOB5Q1xqT
         qR7IMR3lWF54c4DLmHmibIMOJgVePEEKoA+FLUv1Io5VO0yMIxuy0Dc6g6IP+V3eXGeS
         uX0t0cEvGSgQNBqU7RUoqZKvADFNPuHc2PS49p+s9bOUL7CuK+MWzKmyqHDHqMp7COK+
         +xWXmXDLnSk5KbuXFU5YskaiqbRFmd+CfRddaOAmaQW70JwlyiMF2Kj5tHbfA6sbkJnu
         V68g==
X-Forwarded-Encrypted: i=1; AJvYcCVUh6my+1WLA7PEqsyM1xWjpxf4pJgBy6lQjVj8yYOlOme4g1tgE92oEMA1mgAFu/dfnhoqbuWJ01rk@vger.kernel.org
X-Gm-Message-State: AOJu0YyKB/SLpkA0vvt27Whtx1UynMuotJxXcEzJ/GpMkxVJEHOVMA32
	TizD8JDa/MWHCwTuUrgT0TG7JZjEuUM6XVvbseSF/kbxf+r0dod3sS9D/Tpjzqt4mHs=
X-Gm-Gg: ASbGncvNNsA3EBPdHYK45e+VU/pOL9u4gbhTWfxErDcmpZxXXVxxQxIoIN4wuvdkVnP
	oLcjls1XC37+RARatBoMCTtSMAgecdgzOmOHUiNPCHN3eUd2qz840F4j8ItdiNeJXlEZD9pDq0G
	WmBhNMgf+tUasd7buMWhRunDNedo2dQFQZHpD54K2DkXIjrfhvfUPyjHdAqvCsSxePUdPPWTsqG
	KW0KR5rT8jsZfS4m3zoxIhPp+TMlwZc4v7nzLx32u+OwGppue7sAZ6HIy/k8q67F1WcZFBGyCL3
	ihRRcT5uF9mwRbPCY6NU03jmaPzQ5KeywxHP8cus/6MS5loXXMmiHid2IvwRU0355zGbwcmW5zv
	kwSUuP/csBSg3C5Gsb2z+nKbCSbJTovQPuozf+y8AUNbUPyddWkXFi/Xk9rASpgaCxN+4cSJz6G
	p78g89uG9EjTH7oZ2Hm9WgnXKdL1JrU+um539Z1ci4/LS3446PcSwOPQ==
X-Google-Smtp-Source: AGHT+IHmXqXE8Htr/1ZWJI/C+pN9P9erYWJYrPujLQl3VvZgLQiwUjq2GEpxSai4MMkQG23fGL6vZA==
X-Received: by 2002:a2e:b8d1:0:b0:37a:5ae5:a1d2 with SMTP id 38308e7fff4ca-37e66d76ed5mr246901fa.5.1764734743598;
        Tue, 02 Dec 2025 20:05:43 -0800 (PST)
Received: from thyme.. (91-159-24-186.elisa-laajakaista.fi. [91.159.24.186])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37d240981cbsm39505631fa.24.2025.12.02.20.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Dec 2025 20:05:42 -0800 (PST)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 1/6] arm64: dts: qcom: sm8550-qrd: rename image sensor supply properties
Date: Wed,  3 Dec 2025 06:05:33 +0200
Message-ID: <20251203040538.71119-2-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
References: <20251203040538.71119-1-vladimir.zapolskiy@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

At first voltage supply properties of Samsung S5K3M5 image sensor got
names following a pad name convention for Omnivision image sensors. Now
the property names were corrected in the sensor dt bindings documentation,
and it should be updated in the SM8550-QRD board dts file.

Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
index 9af2a4fd02ea..77a7e45660b6 100644
--- a/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
+++ b/arch/arm64/boot/dts/qcom/sm8550-qrd.dts
@@ -748,9 +748,9 @@ sensor@10 {
 		pinctrl-0 = <&cam3_default>;
 		pinctrl-names = "default";
 		afvdd-supply = <&vreg_l7n_2p96>;
-		avdd-supply = <&vreg_l4m_2p8>;
-		dovdd-supply = <&vreg_l5n_1p8>;
-		dvdd-supply = <&vreg_l2m_1p056>;
+		vdda-supply = <&vreg_l4m_2p8>;
+		vddd-supply = <&vreg_l2m_1p056>;
+		vddio-supply = <&vreg_l5n_1p8>;
 
 		port {
 			cam_tele: endpoint {
-- 
2.49.0


