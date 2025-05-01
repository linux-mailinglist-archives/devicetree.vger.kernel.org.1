Return-Path: <devicetree+bounces-172728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E17A0AA6120
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 18:02:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8119B1B66CE2
	for <lists+devicetree@lfdr.de>; Thu,  1 May 2025 16:02:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E27DF1F76CA;
	Thu,  1 May 2025 16:02:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tAv9PVSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 159D818DB22
	for <devicetree@vger.kernel.org>; Thu,  1 May 2025 16:02:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746115338; cv=none; b=i68MccKea5ahUxC8bt1u22QcxqE2prWpaKQwX0zaPQxZwMIeWLxX/dFYS6n16aETX3IK4itlrHnAdQSg3OQYFSd+hlcFmCjVpOTq9UzWeiEw1dWuqg4IDqDqwWMQVF9ZKHEK3VuVrSV8G82CgHoFj5/T9a0KhgXJMeQYgEMyXNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746115338; c=relaxed/simple;
	bh=MUVlOhiC+9LNR8vM+05XZ7Yaggp3NsZvqmvdhwJ2lSI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QflBTTm1p+EOaYH1KEgCzxykUZHb7cmUNFclztz9To1ILmKQS6a6LGN/01RH+WYnKJgFiKX/Nqro6akMIfrGFy6RLYlgmkepz3ePAaEW0cb9trmaIevkamyI/O2Q1vERiKY5sj5Lc73rBh2DYr/sDd91bLVprFzBnXrSqP4GMy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tAv9PVSp; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-43ceeb85ab2so1332845e9.0
        for <devicetree@vger.kernel.org>; Thu, 01 May 2025 09:02:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746115335; x=1746720135; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=d7SpZDu8jv4dHbSla5ZPIdsMVsPrAFAZvTLD9tcwZgo=;
        b=tAv9PVSpgZRY0GA2xOPgqb+HDPADqLmDkOByxTeCrOsOE++3Uu8+TttHfqjswDtJIW
         SHbrxNJZdscSqhKo52yulGAvlI4JgrCP/+eee4L+GF9nyPVc1awJlKgYMKHaCEnP38mC
         ALwxPOHo/jJ3UU4gwsrgcX0KW9PlRFkNckJ/+P0/+CY9K+AVN9/VvF8rBwYeU6yNN7fa
         500REHKJzeDRjHfCQKOHAM7B3QQiw2iduBgNw9brgioh8UAThaHSrut1NarRviellqnm
         ZPsAtVjZlF1wHJnZrTKn/oeUGnYKidvTM5CN0e0hk3qIzDbxVonbzUKNGHhadY93qj1e
         xD0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746115335; x=1746720135;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=d7SpZDu8jv4dHbSla5ZPIdsMVsPrAFAZvTLD9tcwZgo=;
        b=ss7uiIgTNf5xfhHwERxV6zKNl1bwbeeYEnqrBMgB9AoE6fEQ5wvGOz5u4hsuxOKCKC
         lHsTiCCud1w1SaAJIbIZz8Undi/WLSer47N/QDXi5TiUD3yzzVvLUVfBEimOpr4aNiFx
         LOmQzbxc05u5V3gXTlcLhQmL3fIHCSFgAcb9X3gu0bZ0NyhzK6JENJ8Ze1HtSE+DYAyG
         hnhu05LQPeJnhRFl7rr8cBsWuN+ba8gn7vZnuH5SO0tCRf9aG59fPpzrDr5JijD9ZKIW
         fiXKtgaD1ZRmBxd+d3o2Y9Tzu4syHcRDG7lyLUEwckjupqsikjmDJavfavcy0qM+aXYh
         rx0Q==
X-Forwarded-Encrypted: i=1; AJvYcCXK2DkwsjKGfGrtRafLGk0p0OWFn29pfFaAWollrEKwkF7rX33/c4I72NHxNDwY6YcaS+92+uqzvqmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YymwCUq3vTAiykT7+hcKxjOQScchJfjUr9dgzgZ0czqzYQGXwYo
	5pr52JqYPuYb2kc5ORbRtG+1qSG+fkw5cD5HengmUYTbzjvs549y3MYYraaov9c=
X-Gm-Gg: ASbGncvPMl+mBih4PNqN/wydJ0MHMbnQiH0gny1plfV5I5vL9Y3UyzdFEl30eR/Y2Ll
	9De7XspSQVBlNNnuYK1d+iy0e0BSwLMfx8nHxl8+l9nd+Gh0dhPfeK3hfU29Ilf+gnEerogOCra
	bW1o4eL6mdDgAV8OZ01tSU9PCCm0IA30vcxjKpgIedIKDkAiYaH1MaMbnkioutt4Gxzj59dv9RL
	BBbgYbcsK7+wmeZqYbKJtWhhu8lHDep2VgagtWzqs78d6Ql6XvI/y1rQ/phIZGptVhKYsix10Ma
	4Ufg9rYpGIJAtJY5m9QdWRr0y8fzfKnqcHtnxR5uP3Mw3KM7hQ==
X-Google-Smtp-Source: AGHT+IHuAg916EAmQ+Jj9V0jJg4osfYO4iVeePCZYPPcsGtTccI+ph4PfvFICbp/E49W1nNjF8EQAg==
X-Received: by 2002:a05:600c:46c5:b0:43d:745a:5a49 with SMTP id 5b1f17b1804b1-441b2dea5cbmr24622675e9.4.1746115335047;
        Thu, 01 May 2025 09:02:15 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-441b89cc441sm16841485e9.3.2025.05.01.09.02.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 May 2025 09:02:13 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH RESEND] arm64: dts: rockchip: Switch to undeprecated qcom,calibration-variant on RK3399
Date: Thu,  1 May 2025 18:02:09 +0200
Message-ID: <20250501160208.96451-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1103; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=MUVlOhiC+9LNR8vM+05XZ7Yaggp3NsZvqmvdhwJ2lSI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoE5sA6JKQyX5fhvHwlA+nyIoTrmSMgCFcHqcKA
 00vojarz1GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaBObAAAKCRDBN2bmhouD
 15DREACNeham5NbPMRDlnqwiikOjOCE4rult541i2EqowVAZYJqvAXuYrIhs9NxWNTZGb2N44Ga
 cOCW2LOIL2YcjXO68yOiqivwMtBUR0CK7LRvuqSj3814L8T3BHICX6Ku9S5K1sULpfKKQ8Mbz5a
 p7HQSBjgfmA5AYINGFvqti5whdRjfWMIUm4XaNJ/u2VIghQUPORU1pRAmNuyy3nFSUTbAeWUrZR
 YRjBJubLkXDharXrVarrXWCFrsi8WaBoZFWoGVK+npHvcg1/Ak3QwpvYBrpMCcP0X60ZpkASZaS
 HO5PcFmisG1Foco3NE2bE8nhpFK4b5frM8BF59/aJ/d05rhGx1dHv+g5LfUcXczy+J4EUD6UUOf
 KmrlqjAgySMXjWuYpG710YX30R/L2Xvey2dw6U4DrPz848/rp6QKY9F4UKMIXvtbmO7/BsYQZu1
 s606jZLp3+z2G4Re6NbhcEOX8j5WTs/rtRdlgjhSRsVV3oO3Pr4AOI1oVnAOUTGmkt8pAncszOk
 NaeBxqAbZILRXPW+BesQL3DSd5lnPR8e/mbraOWSQB+u6dwTLA/l9rzB3itpcWwP2tKHwJ1facQ
 U6iZa/z9yK88yBHUK18AlUrx8TOrfAvtj/uFBBtbwo6r0uxi8B0LGKEuRkILM5ALwvY2wRIksRI G4dvhpbczyhT6bA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The property qcom,ath10k-calibration-variant was deprecated in favor of
recently introduced generic qcom,calibration-variant, common to all
Qualcomm Atheros WiFi bindings.

Change will affect out of tree users, like other projects, of this DTS.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Resending  after dependency got merged. This can be applied as is.
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
index 9e4b12ed62cb..be3ae473e562 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -36,6 +36,6 @@ wifi@0,0 {
 		compatible = "qcom,ath10k";
 		reg = <0x00000000 0x0 0x00000000 0x0 0x00000000>,
 		      <0x03000010 0x0 0x00000000 0x0 0x00200000>;
-		qcom,ath10k-calibration-variant = "GO_DUMO";
+		qcom,calibration-variant = "GO_DUMO";
 	};
 };
-- 
2.45.2


