Return-Path: <devicetree+bounces-137160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D350A07BD4
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 16:24:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BB2A3A3913
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 15:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A65121CA1D;
	Thu,  9 Jan 2025 15:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N70x+o8V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CB8521C17E
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 15:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736436247; cv=none; b=H3RF4sEItFLyyMZ35wY4z7S717co/abDCTEULIawHXQDHmDa7suWz7jOtHFkdDZYLXLtOiuhP14td6I/0yrcMfqEVsA0+IRz+dE53Bz4xrU++DH4fzaUQWavRDBLNUOr01Gx+zN7V4m6uKqj3msSe9ob03KZNIJf//S2FRIrzkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736436247; c=relaxed/simple;
	bh=rhTBVIa6Z2yjlqW0cljU/JWm9DLEsWHp+KGdZgAU/Iw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tUwSU4yY2/6OQaO6N/lse6cmo/HT40P3HMnBcSAVJ7QdGh/TDYFcy+pCyo9HKHeBD7QUKNA5IX0bp4LTQiqk7UZaUF0rIA09kaisT46nZ7UG1mnm4LXVhE48bjtLtgyWl9FW1Rhmh3hOeyVVtgVNy4dTZT4E8NV4Gx/StMhVk7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N70x+o8V; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-385e06af753so562891f8f.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jan 2025 07:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736436244; x=1737041044; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Jwj8eZNz0nnqHr+tVnOwVmMBRwGwTKx/FOPQGDcqsfE=;
        b=N70x+o8VNml0W8jTy2hMUZGecJnFIAcH4qCba2ec0J/xrJYJWL99D06B7kL/Z3O/rX
         7lcwkneqddzn3jpZZqzXwWI2k+SZo6hDJ5GLiQsyFJlGWKECQgSe0WHeMgK+kGxtxWyC
         nuNlxGWTt7rCkoZGct0H6wMRBAis8gtg2OzAwXK5u5GAUEWBgqtyw4dJJGv9L7curiPU
         wmmTN1PVxMNj/0997MgkeL4UOKUGf0rmS0c9g76dzJQ+OiGUtc0p+75QHexSuTCSg3kD
         8WhCOG09fXkGwWxC08Fh0McTESzHVtnsA8EDTwP8KdpUvxEvPxV06v1VAF7Kjgb4rOHA
         PgLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736436244; x=1737041044;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jwj8eZNz0nnqHr+tVnOwVmMBRwGwTKx/FOPQGDcqsfE=;
        b=u7CZzU/zxxUys2DQ38hJfshfOlXyVp1hyXkmVRDkYY0lZphYb3+28vFSFO9SPESw7g
         CeKX9Uk9xL6p4fkw2JIbrdWmCTa/hsFM6crombSKBPP5FwEJF4sFHC+ukl3FmBscrze7
         la1y5mzMnKqanuWcQSJCnPt6kIB0uz+UwIvZPwQNBgOk3Dd+KFawNr0pkoMRoXdvqZ/y
         6YHvvCBWSwPmB9Gip7s3zQ7Y734B5cI9MHilbQyfhfIjRRo1SZnhOqjs17rldM830URb
         tTHFBGQiVB39GXp0eI1DNguT72jsdV9X0nAnj3aHmxH0HnBWXxYnvnZayAPNMpGt5nLF
         hSRw==
X-Forwarded-Encrypted: i=1; AJvYcCWD4aGXVIQ1h6XPLiJOijIh/rJJmESr5QdUev9FyGYUdTIWgNfO1MCwOdKV5PuQam0M3btcZ4Pdg8Hg@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8bdEvBf+yJm3TbyqOsZK1tfo5vG9Meg/6iNLNQ8/VWVoNyRFe
	iWf6+dg7m2RWVsrE41FArTL680JKvlQ9DLpAXlixLYU+0lvwokKWOyKDN8q8Bv/4voqss6Vw9Nm
	C
X-Gm-Gg: ASbGncvYwtqWyQx8zhmJRYmOYXUsUNbjgDxYkv+7cD4In6wVVoCdl6LR13KDhJ+MHhA
	6oMiwNS0lkwar66c3oNBT1f3w9R9gOCeinx31ngZaN4HZWHYnSvkX9qsAzEXh4+vZJURQvOY02e
	agcpwI5AuloeZvag/e7+yFcq93qB6SHZqBspDFSJDn16iVQP8tHvZDlADx1c7l5JYUMuS9GDO47
	YXyl+1tTziN35y44U1DuG6tlYBdZ+qRxkwr1LnYyR3B1hHqH84UvBKuRh7DUaub9X+TzPDnIGfK
	tA==
X-Google-Smtp-Source: AGHT+IF22QGsytI2xvU6xasu+HV1wb94nCQneYiwPiwPQBUnrywKcqu4STvjyA9YvI0m+23mdWankg==
X-Received: by 2002:a05:6000:1862:b0:38a:41a3:218 with SMTP id ffacd0b85a97d-38a8733899emr6430016f8f.36.1736436243868;
        Thu, 09 Jan 2025 07:24:03 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a8e37d154sm2160643f8f.10.2025.01.09.07.24.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 07:24:03 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Date: Thu, 09 Jan 2025 16:24:02 +0100
Subject: [PATCH] arm64: dts: qcom: add missing cache node for cpu1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250109-topic-sm8650-cpu1-missing-cache-v1-1-0e85148a48a8@linaro.org>
X-B4-Tracking: v=1; b=H4sIABHqf2cC/x3NQQqDMBBA0avIrB1ILAmJVyku4jjqLIwh05aCe
 PeGLt/m/wuUq7DC2F1Q+SMqZ26wfQe0p7wxytIMgxmcsSbi6yxCqEfwziCVt8VDVCVvSIl2xuC
 8n2NI8/qI0Cql8irf/+E53fcPGUHsTHEAAAA=
X-Change-ID: 20250109-topic-sm8650-cpu1-missing-cache-8566b98abf39
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1094;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=rhTBVIa6Z2yjlqW0cljU/JWm9DLEsWHp+KGdZgAU/Iw=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnf+oSrcPDIRK1hF1BUciaar+IosNZC0Lj1fnR+eEl
 3fPNmECJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ3/qEgAKCRB33NvayMhJ0Tn8D/
 96ve/r9OqqEhVrRjeI88rIpbHU+cBANM+igyA0+9rlqOHWh7Bo9Mf+kTsZ3dQj0y84Xu4ov3yyJXK/
 xWwI9tUNzzw7r+p2MrixSWNf49lU9ncnWmlkZ/bKwrBsKCb3ClFF0P0K3GBI/rZqhKWFOOjtZPgTr9
 NrmvKiOiNjY+v22/YvFUXfIiuSoiDAnIZGZZcH/kzOZcqg9LZ3hchiBTy6Za9QQyZ3N37MInTtv2Q+
 9kudKzSXRkXiH8YkQOXMZwnpFSWkWlzIhdqgqezTTKuwjJ9PQusW931jB38ofvku3VmbzBq8O2iCv6
 yXJKpW1xwZFQ8p0bbDXSYYf2elMD9gNrSqAwPTx/gcE+p9QdTEj0Kay8udYJNzHkduqA6zq8+6xgCA
 KN3sYFj+iHoIQhUmJeGltY6yjurERhq3jBtEW0anikGDWLggUwkPkoC2FEuGMLHgQLukFrVDmucXm6
 wn3ZtbJ3YerWn9Vys4yzw+G0zhlqdczHMGfSZKv7ciRVpDiZyJN0gX28SiNTT8qps6UNwDLvTjFO4Y
 EU2y5jH7lXlrHgh/f+Yrvfq++rF+1/9LTa2mdukGE9pK0u4djhP97RV7CiHk5ldOFHVTrNMeAosU2e
 s46CdPt6ZPRK0i+urkDVF4nSqAgCK/ynax5rJ1lv9rD4Bd4OcIeUVxZUyyew==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Add the missing l2-cache node for the cpu1

Fixes: 20eb2057b3e4 ("arm64: dts: qcom: sm8650: change labels to lower-case")
Fixes: d2350377997f ("arm64: dts: qcom: add initial SM8650 dtsi")
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8650.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
index 86684cb9a9325618ddb74458621cf4bbdc1cc0d1..832f3a2c400e8348847bc24b27397e2a0dc08db8 100644
--- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
@@ -119,6 +119,13 @@ cpu1: cpu@100 {
 			qcom,freq-domain = <&cpufreq_hw 0>;
 
 			#cooling-cells = <2>;
+
+			l2_100: l2-cache {
+				compatible = "cache";
+				cache-level = <2>;
+				cache-unified;
+				next-level-cache = <&l3_0>;
+			};
 		};
 
 		cpu2: cpu@200 {

---
base-commit: 6ecd20965bdc21b265a0671ccf36d9ad8043f5ab
change-id: 20250109-topic-sm8650-cpu1-missing-cache-8566b98abf39

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


