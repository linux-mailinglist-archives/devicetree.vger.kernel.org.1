Return-Path: <devicetree+bounces-170296-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A32BA9A6D9
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:51:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DBC31B87720
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:51:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC01222ACFA;
	Thu, 24 Apr 2025 08:47:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SE8ksqsK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E43F22AE4E
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:47:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484475; cv=none; b=uq0TwbR/qISAyweDni6OXi9LaKCP40MTDliLqzL9mJZwoBEnn/St5AM6Xx2pcmvlswAji+enVms8VlIE1UbAml5v5Lajk8irPzn7X7ngvcm5Y7sz87SA/2iPGYM8Wv/lthj7nuSUckeaiQlK8cNwRiPEhUJRqh3Qy3nbxln5TmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484475; c=relaxed/simple;
	bh=v9NulOKFzzn4VjJSv/C3GeIHdwxmdTo/iASPuVTpKQY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UsNiAc/jZuAYMImrZsdrazZrjV3MtLOhDVls3OUdSb4aFj9GAme9Pof5pG7MLvB7tEAjtAiruB92oq1+CFUTHFXzDL3i8xd3ZKP7y65UPyvF6K+F5k6NvYgnJpp4Ioc98zPw0/FfF/95/hSNywJO9B+p5KdcxTZbR2+VUr04b4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SE8ksqsK; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ace358c4d35so8455366b.1
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484472; x=1746089272; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cCBG5OKG/N3lD91xNoXYGEZyIt+oU9U/CB++e5u2IUo=;
        b=SE8ksqsK0lfxE7OVNW/efLYXcmjlAf+PKG6/MmtpFYaX2kiBcunEJykFPWxqrbVN2i
         1IT75nxdPLKlfuasFUqfjlZLcqU6KNGwK7564WO23CI7kmEdtB6Po2AcoUaWef70Xmaq
         OehLDwjJpNhLaS9ZcK0sA47vNMQMTtY9CTWGjBBmw4igIKzyxLI5ytBk7sJNsefil5zc
         KizOGMRHJSJ1gpKqdSqZr6dH+3Ez4IYXqEp3m1I8eIpq0t0HsrxO2wLSECKyfHZh8CjI
         l9kHIh1sJ/hyI1oAFDoD1wYAnLBUycL5NnsBjMeOITIKHMDYt9BxqwfdBpjtN+hqMMM4
         IMXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484472; x=1746089272;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cCBG5OKG/N3lD91xNoXYGEZyIt+oU9U/CB++e5u2IUo=;
        b=miZD5zHcmTJhRQCOaOyYizCgaKFJr6MWnn58Mya85RdN5bLy5p5R3jwA/uVAxqMeG3
         QIfOnZcP0N6Vj5Aw6M7nqWwbmbusaHpDkLnG76VFRb/h59/r1PcYmVPFLPuKajIT7UCt
         15w3NqXAuY3gKN7h6NWIm/rGTT2yn2I625xrftVFQztn87T1u+aMPU+xdViZAogeP9Nj
         tScgRzVYRfKlbNFtuiuNNrnsyBBQkOJ7LZWQxLFvjLjdB9AI5F5HVCiMXVhSMPcSd2qA
         E6Ge2Pifg8FkySjK4EaFHLGegZ4/XLrXX3GaFmZ+41pcbqL3aXrjhUrQCVy6ew/Ez6Qm
         rtHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMfmDcUUYKpTscTD/Gw7scNt9H0xpBTF3cetBkO2MVMDF6YK4bpMVuJgeL2T+Neg3DB1fSgLXoilNR@vger.kernel.org
X-Gm-Message-State: AOJu0YxRx89akTxV38J6MIPnETv7JF/ua2iPDs7aELXn7TySkQM/Ca82
	OJBQ737qsRZgsRHoj0xmXs7VDoYmmOMJuhYgJ5SrvPHrP1EiIHAbPSR4HKTSjNA=
X-Gm-Gg: ASbGncumEi9lLrZDDdGf8TJt+QFk0SkF57uxCMQ5Hh9REk22mbK5hiCnOSuGPNgjvA4
	6VWeH64OvOi45spetqhiuIg54d5mstTtGRVc/CcG4MDKV3l5MEN4MjbNxl7hUvD7L6e+H/WY+/f
	yWOl/oxA9CFYzyAr8zDDQ4gKdGJrmcLvcZAgldBOg3dO3QvCXETmF897TxBL+8mUflr4pYJWLOw
	NvSf0UGz3Xiw5WblpUsDbKUtze9yO0N6eNq7Jeusda/2daj7G6iOHT96dklOdc1UqkT8EnUn3dt
	oyNXU7TOIZ3ll6S9kGfW8vEam5ad9bkYMN91HzG+UKLdNXYHJQ==
X-Google-Smtp-Source: AGHT+IGYMQ2nZIejb29IR4qkaCq3mrCgC2opvXN3m7rH6EYZg1uUUZwVfU4xVuZHISo6zU7Qmm70ZQ==
X-Received: by 2002:a17:907:72d4:b0:abf:7a26:c45a with SMTP id a640c23a62f3a-ace573b05c2mr52344766b.11.1745484472280;
        Thu, 24 Apr 2025 01:47:52 -0700 (PDT)
Received: from kuoka.. ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace59c25bdbsm71213966b.141.2025.04.24.01.47.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Apr 2025 01:47:51 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: renesas: Align wifi node name with bindings
Date: Thu, 24 Apr 2025 10:47:48 +0200
Message-ID: <20250424084748.105255-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Since commit 3c3606793f7e ("dt-bindings: wireless: bcm4329-fmac: Use
wireless-controller.yaml schema"), bindings expect 'wifi' as node name:

  r8a774a1-beacon-rzg2m-kit.dtb: bcrmf@1: $nodename:0: 'bcrmf@1' does not match '^wifi(@.*)?$'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi b/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
index 1489bc8d2f4e..d40a7224f9c3 100644
--- a/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/beacon-renesom-som.dtsi
@@ -300,7 +300,7 @@ &sdhi2 {
 	#address-cells = <1>;
 	#size-cells = <0>;
 
-	brcmf: bcrmf@1 {
+	brcmf: wifi@1 {
 		reg = <1>;
 		compatible = "brcm,bcm4329-fmac";
 		interrupts-extended = <&gpio1 27 IRQ_TYPE_LEVEL_LOW>;
-- 
2.45.2


