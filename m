Return-Path: <devicetree+bounces-199453-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84399B10B50
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 15:24:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 589A31899437
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 13:25:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B0AC2D781A;
	Thu, 24 Jul 2025 13:24:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Md/xGQE+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 359102D6612
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 13:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753363484; cv=none; b=Pbd4E/6k0NL3LP73vRgUHFpAMrTFdG16pc53eu1uLUSNxP3zytdXVlIDlprwfbNnphQDGJt2a+xxV8d6BWjPxfkSsBrYuzPIQJz+e/ZOQI+JU8ZV7AlvT084gvrPTmHH6gBIDNaDAM2rgIsd7p5MxPyHf9fDdlbjUjev56kWlQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753363484; c=relaxed/simple;
	bh=p+yyDfpaikIlbQ0RIIFLKKIRFzhOXHswHzQuMkK5ycM=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=uucSSWSb1JqvwWdpSpCyOxaGZvWLYFRp7rB2ze5oalZg1BGzU24/0G/Rpkjk7nmsBP5rO0hOdwy/6A4EYVhFy8GMS4FhKWfZzfEW9QcJB+E4wykVYlULIkfxi22ojR2xv1O6QX3AVHeTcrCcEFsSh9UI0vyUVXNngEve0o22pSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Md/xGQE+; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-606aadc1433so197238a12.2
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 06:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753363481; x=1753968281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XQadbJY1gERxsaDeJ9P0/TAd0HoKQzKFQkKIHzndF68=;
        b=Md/xGQE+6ZsPYH3pblmW0arkKDb8w/z7REgWRQOuNbOb4dtDYbKhnZctmdWOCzpdlr
         djRgEsxZD9DxWXWpZJBIAIw7H5KDH9/dh8f605H3vfcJN8CMtVfXMz8ps4saVo1as3Mj
         NA1GpQJVC+mbjdfVL+817+MUJA0q/UGQFdbUjyYyjkk2HtrJV/W5N8K4JRnWdeqX1F9q
         SUPZZW/tbA4lT/TbU/13kXLzKt/wGnmb3oM3NPbDkJisZeWSUa4aMz9P1gHIWZJVK6vV
         6334fW9wpqUjKuwHH+2xWcWnjmPNueZ5mPRl3ebUK2l/8PeZBgCqeTFRAu/LNKun894W
         x5Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753363481; x=1753968281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XQadbJY1gERxsaDeJ9P0/TAd0HoKQzKFQkKIHzndF68=;
        b=QeHjZdJHhvU8MraW7US17v+RuM2euXBsUmRdTXWNekqZIhnqIPYgcEYK8V/O0dkAVr
         gpqHxv/sRLcjskK171mD473Iatn9Uysals0aF7Sn8tmmmISXuuJb4OZ9e5wJxuaLCIzH
         xda327UKbtPiMmgCd8LJddw79hZTAYVABWe9UmtPOfcqbH714KkBGEML9ElG2O7FvkzW
         1x7fGOVB2A7peFwx2uI9SBDLN1SE+UGCSw3YAwKV5g61h3SUXmC4v7Qa+F3+xwyMiZnD
         Jg5XP2b0DGyj8lyBbhBgtDSyyco9DmZmpwFQfy0PZ6OyaRXVrI24a2ghz7pK76smk2/f
         z/ww==
X-Forwarded-Encrypted: i=1; AJvYcCWuAsuJOGdaxuEg5solu+TjVWvEsqg7F3y0re3GZvoVuiFe0MidmH6dVYVR57qp+0JtAyTRPWZrGJ8i@vger.kernel.org
X-Gm-Message-State: AOJu0YyTLO3y9UXJloXIR3F+G0kg/zhTqzePeks+D7Bb8nOb96VnIrDs
	1mubsEbxFdvDcyrr4eQG57drtqUs3GTommfuylT9fpyk6SKb7JEagPZjIzpyUqZGP/MYqn6VaZC
	tSnYS
X-Gm-Gg: ASbGncvChS8OBG+Ffbc2pO3WMjadNXaLpsOv90lnlXHI756zLaIvurt7HLj2rvK4aDn
	AH8KowEgom5+2Cx9Oy6Psbf5sOlSsxje2j/cBPknHP16WWC1cY0IOJLgH2P0YiSTFWGgVztnE9W
	fwQK8vGoEXWiNomrcf4e/34uMpxRQlQ2Jx3UOWCFg/uA4c+n0FKRd4HEouQKg6GA+VSOmFodrjA
	8HYJqTGNMdePsgrNmUG4opjJRnC/8y50K5GNh2yGbJRsYel4kKPQNT4NO771FpsbDkt2tAPPZ7b
	WHxFmr2S7R8WFCpkMSnXOg1/cTi0ggQWQ5/nPmP7gBkn2aklzL90nAPMG/vw5qGmbA5mK/u1/l3
	mDIXy1qPNQa6O6zxV9YmtZulok8hHOBv4
X-Google-Smtp-Source: AGHT+IFcqBkCDJgImtGkfeJcJyLjABWRXv6ytc+F4wW968BqqxretSPGh9NNBLe7GYV9vJCCbgUNIQ==
X-Received: by 2002:a17:907:7e82:b0:ae0:1fdf:ea43 with SMTP id a640c23a62f3a-af2f66c63c9mr266600966b.2.1753363481046;
        Thu, 24 Jul 2025 06:24:41 -0700 (PDT)
Received: from kuoka.. ([178.197.203.90])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af47cc6cd6csm113077166b.43.2025.07.24.06.24.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 06:24:40 -0700 (PDT)
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
Subject: [PATCH] dt-bindings: arm: qcom: Drop redundant free-form SoC list
Date: Thu, 24 Jul 2025 15:24:37 +0200
Message-ID: <20250724132436.77160-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2998; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=p+yyDfpaikIlbQ0RIIFLKKIRFzhOXHswHzQuMkK5ycM=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBogjQUsNc7ZyFMLMTlPc7kPuk7BJcf6rmVZb6v0
 Jibcr5s39GJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaII0FAAKCRDBN2bmhouD
 1yBqD/0a39vQj1ryMxUxe+GQs86YATCmrS+dpNwn4KSCtump1IBC4ylxKA0p3lXubCFOtnC3u+u
 0mSE40ORmW99gsTew0Q97OsZZbzPgmBpeiaacXunB8ftG1DBS7KQ9oAZFVLrxVZFj+Kl9+VTRXK
 VVevVQ4gDswyXtydUSrFKWhxa+6fe9m8G+nKmrR9gVNDivVZ1IIpiWqNlsX39y72yDdiBcI/ete
 lcMGYUUlw0y0T9mSQhcF/6MpvU19+5RWQLfgDq9oaiUCv+B/7e11HQYWUBVACVPZvgrxNsIR2Xd
 kf/7zC92Ep+gG0/t6zXbRV2A/rD0xOhDSOYEoUjFK/Gug8MSgPGT8sEnNwmjzsfwkNaUP32Azt5
 tqga4e3lVUuIInZouwQxzhb0djUIUXvf64KZX8Lm7AzmJgYXLXFtKWseNCv3Bgw3Ivd/1erF9wE
 Hp4SLchD9cnZF5TpFUp++QDpbYBcBeOCFbIGv0aw5Jdnf5StT8DCNZRkqMNvVApunEP9r+W0Qxp
 uB285IUWLQNbc3iaNdt+YqSMP9SyGgIbPyh+mw5S1xxg1+TPWgd6YkQQLoDIvul515IzBtNGMZU
 kHPSzSzDin22IsEfPdjka3FkSArMrH2AfPqQ1TuUPOEwVpMowmd4zZyOsXcCr6dYkG9aUY9unpv /GJv3dDqRO+6c3g==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The schema and Devicetree specification defines how list of top-level
compatibles should be created, thus first paragraph explaining this is
completely redundant.

The list of SoCs is redundant as well, because the schema lists them.
On the other hand, Linux kernel should not be place to store marketing
names of some company products, so such list is irrelevant here.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/arm/qcom.yaml         | 94 -------------------
 1 file changed, 94 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index ae43b3556580..9598cbe29cef 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -10,100 +10,6 @@ maintainers:
   - Bjorn Andersson <bjorn.andersson@linaro.org>
 
 description: |
-  For devices using the Qualcomm SoC the "compatible" properties consists of
-  one or several "manufacturer,model" strings, describing the device itself,
-  followed by one or several "qcom,<SoC>" strings, describing the SoC used in
-  the device.
-
-  The 'SoC' element must be one of the following strings:
-
-        apq8016
-        apq8026
-        apq8064
-        apq8074
-        apq8084
-        apq8094
-        apq8096
-        ipq4018
-        ipq4019
-        ipq5018
-        ipq5332
-        ipq5424
-        ipq6018
-        ipq8064
-        ipq8074
-        ipq9574
-        mdm9615
-        msm8226
-        msm8660
-        msm8916
-        msm8917
-        msm8926
-        msm8929
-        msm8939
-        msm8953
-        msm8956
-        msm8960
-        msm8974
-        msm8974pro
-        msm8976
-        msm8992
-        msm8994
-        msm8996
-        msm8996pro
-        msm8998
-        qcs404
-        qcs615
-        qcs8300
-        qcs8550
-        qcm2290
-        qcm6490
-        qcs9100
-        qdu1000
-        qrb2210
-        qrb4210
-        qru1000
-        sa8155p
-        sa8540p
-        sa8775p
-        sar2130p
-        sc7180
-        sc7280
-        sc8180x
-        sc8280xp
-        sda660
-        sdm450
-        sdm630
-        sdm632
-        sdm636
-        sdm660
-        sdm670
-        sdm845
-        sdx55
-        sdx65
-        sdx75
-        sm4250
-        sm4450
-        sm6115
-        sm6115p
-        sm6125
-        sm6350
-        sm6375
-        sm7125
-        sm7150
-        sm7225
-        sm7325
-        sm8150
-        sm8250
-        sm8350
-        sm8450
-        sm8550
-        sm8650
-        sm8750
-        x1e78100
-        x1e80100
-        x1p42100
-
   There are many devices in the list below that run the standard ChromeOS
   bootloader setup and use the open source depthcharge bootloader to boot the
   OS. These devices use the bootflow explained at
-- 
2.48.1


