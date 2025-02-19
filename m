Return-Path: <devicetree+bounces-148278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 649A2A3B7FC
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 72B47161D86
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:11:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 609651E0DE3;
	Wed, 19 Feb 2025 09:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QTo5ZVyD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A151E0DCD
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:07:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956079; cv=none; b=UOVpUxZWVlpZDfY6sC54yEYJSAwtUjfeWnRLMMP7dl4Nv7vtVVxqxC3WMM2H71LEAjriCryv05rETPm6It/X7Cgdn06Bl8PXphzdjrT8u6gw3zc2mEYupwZ/yGUFILiSHA57zd+ha2ryDiyi3u3Gg1nGYyNSP6CWWd48JwFEKM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956079; c=relaxed/simple;
	bh=y9+jjNrpYcM245Swk87rbOZAHH07o2CouN1Un1joEhY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QwykzD4Qt8doqFkcu/8zbdLFHh4AjqayMgwzaUJt6uQ7ulNbZykaJZxPAAVHu0x2sOrRSeUOy3KF6X7KMFSVY2L23fbOoM9TM4IocUXDt7s8d2liXj3eBaPr5daX82r8b1BIXZGEZx76IXIVKaUVDi2XD3PYdW7jQpTHBb/1ghI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QTo5ZVyD; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-abb9e81c408so60073966b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:07:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739956075; x=1740560875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A4rf1uuU3YUUfNCVhsKahUo7qqP1R1Q6wSumwLKUuCA=;
        b=QTo5ZVyDFovRNXtvGjIOhyjiHG+YAvB0ASyble6KO3CcUkjUDwYBb8Noab73z6NQng
         WqjGqi8gJmoYVr+FC8mRd7Ld7f2FT96zYVUBDH5chR7zpEHC6gz5wLvtrSd81k7adMQ6
         U+pzSlcHzk5A1OPkjsn3OFmin3BOJg95ggYJu5zFoyOzEiR5mMjtl0yG1x0aV3p91FZN
         nh8Qwt7PFSqojBwojKW4tDjoZaBH14HQshl1GwXf4BAqh5EuYA+7+f2s7uLwH5n/w7CQ
         2XmzgIit5HF83XUn4ZeFIEmy4fp2Gh+8qqX9AvSIydXG8xfuG+Oe+oDDMziH3P/PQpxu
         bBHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739956075; x=1740560875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A4rf1uuU3YUUfNCVhsKahUo7qqP1R1Q6wSumwLKUuCA=;
        b=Uk+gEUwFPYXuAGtYPdtRQHltDBQumBAdY4yhx5g6+ah7V8pyW0KjKQKiG43WxUXa0d
         eRprAcxCCBS42muhG9nhjHRci6BlvMCwcf5WGyihz4zI/AGOtXS5DQkYcNu5O/IQA/Fm
         LrU5wIqrJUm3ZzviFbNrZJxeNm7hsepneCgILOQxVlJ1TN7yy2tJFUtQgwhyiFzRjWvW
         dOOJmyyLNsNmrCgdjL64o+oVJMgGQ9iNbx7opOD8Fjc3h3rDs3infmjElBywxhHqLU0g
         QhOrh6LiRy5hS2BivNCbHBQ7rU/dXIlypNvjfpbvj4JJM+kJgDS7IkseM0kyqVzYayu0
         sa1A==
X-Forwarded-Encrypted: i=1; AJvYcCVZJHyaOj3hoQMTUMw4xcugU3LJ6rBU4xcr9F5dy/FfmT23RQ4+/2x48UAU2rnK6sIVk9A1UyH1Rn6P@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/o11mdl43qP8r1ZRByG4MTw8s4NhdfzssMFkAk5gZw4Xr735H
	VSbvGHnpMxgxdZXNTSMUOvI57wvFTjm5dEuWVh1lxYUsefy9NU1ZBFyMLDPlVPM=
X-Gm-Gg: ASbGncvES5N51LThI7oxcq5Wi0giLA+VvkMFoEY66UWzc00cG3Ed7+OfoHpOE2MB2kw
	r7gyUMDB0F/E9mTqX5oUuKnZLzeQf9pTPTQU2kA7ZTNMGkCNG1KibbzGFu/drDoLvkmtBnAFfAj
	e/SBWYFLWGA67XgnCJO2o/wn+MoaS9LE9DqWm2fPlF5lVXalvn2R9SPoRsqbRIdkrT2PktNyiDG
	o5fsgmOQFg5d9/0uDinrc38SnHFpmxHEgd60+3LJ9gRFDYZZU5clPn+jBPwj/HpCTfyMrP9rEw3
	NIQBuQGb2UYxxhjE4xYRRlDTRgEV2Q==
X-Google-Smtp-Source: AGHT+IFityvjq83wUTEdE8yjTveE+b43ohcX+t8dYdc8VYTkgfSmcSiAm3lB7Ph2sUv1UfqtdfKuZg==
X-Received: by 2002:a17:906:c116:b0:ab6:d519:f039 with SMTP id a640c23a62f3a-abb70d95951mr781534166b.8.1739956075448;
        Wed, 19 Feb 2025 01:07:55 -0800 (PST)
Received: from krzk-bin.. ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abbac3242dcsm407695666b.107.2025.02.19.01.07.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 01:07:54 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: qcom: sm8750: Change labels to lower-case
Date: Wed, 19 Feb 2025 10:07:50 +0100
Message-ID: <20250219090751.124267-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

DTS coding style expects labels to be lowercase.  No functional impact.
Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8750.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8750.dtsi b/arch/arm64/boot/dts/qcom/sm8750.dtsi
index 3bbd7d18598e..abb92c81c76b 100644
--- a/arch/arm64/boot/dts/qcom/sm8750.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8750.dtsi
@@ -95,11 +95,11 @@ cpu6: cpu@10000 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10000>;
 			enable-method = "psci";
-			next-level-cache = <&L2_1>;
+			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd6>;
 			power-domain-names = "psci";
 
-			L2_1: l2-cache {
+			l2_1: l2-cache {
 				compatible = "cache";
 				cache-level = <2>;
 				cache-unified;
@@ -111,7 +111,7 @@ cpu7: cpu@10100 {
 			compatible = "qcom,oryon";
 			reg = <0x0 0x10100>;
 			enable-method = "psci";
-			next-level-cache = <&L2_1>;
+			next-level-cache = <&l2_1>;
 			power-domains = <&cpu_pd7>;
 			power-domain-names = "psci";
 		};
-- 
2.43.0


