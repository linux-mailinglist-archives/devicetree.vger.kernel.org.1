Return-Path: <devicetree+bounces-141401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CCA209F6
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 12:53:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 455171885E75
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 11:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3398D19AA56;
	Tue, 28 Jan 2025 11:53:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNtVR+ef"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6A49199E94
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 11:53:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738065221; cv=none; b=UVYlzCjqTxPCTXExrv67s7rU3ZOXP6AbRyPypwfrKwIE4S7IatSYS9BqABOTpoz3Vls40XO+1jcxgCn0lncUomEPFmfBrQtUJp938hpeMeseCYXYubrMWWZSf+eXvV3vIHs28ZhbvxWuCbp+Ou81nnuohH0qhCXQeQr1K3zYRP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738065221; c=relaxed/simple;
	bh=thYreHVKI5SWRkq5Ra0cLWy8XMUJv5l48C+D+iV+2F8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=WeyE3Af0D7iBPBTvp7KAZMXOItZ1W8mQgUPL9SyWB9KLAvjEmd12pzOtFPejmJwdICPSh3OQAPLJEAmnE9ihgSgL6JQrbzEnIJo94n+gNEMuesmpYhBsD6rarq1JV4IO+r7LP6UT3KUW8TiLTYdc9Qfg72ZNNPHFBjAUG4oSSrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNtVR+ef; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-4363298fff2so4242635e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 03:53:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738065217; x=1738670017; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iKMNbtERschnPULr7kKZxRmXBW6dOIFE/0WjjIKe8d0=;
        b=VNtVR+efDbloL5UHhB2lan0N44xB9tVE9xDkSQOmKstwRvwC2sElEbv0AcOgQZTN7l
         uDAwVwPGLf7Ob5EN23vgJ+ATWRZUxgfNn0Tf5B4V3c5RPfScNyrmaSmWzQFTD0VrJXr4
         211HFAKB+WLIxeXAsZjL83fVG6sWaLClK7NcOttwLr2EdoVVxkyMkTnus5jgVboWSEV1
         5s8zbNkf1BHRJ6mlntdO0u/pB38VPpsoq5djlnb5PDunud/GgJIvUO4/SJY9nNQz3rhy
         rBURfSz/FXkSP09N6B1yTbzNNdE6h9Ccb2FCXpXX2JlQ3j0z5411UYjtToalNAIMFy91
         8XfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738065217; x=1738670017;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iKMNbtERschnPULr7kKZxRmXBW6dOIFE/0WjjIKe8d0=;
        b=m1WFLgy7C9iiGpx+tqxfvXdCESLlgY2CqljM4aFIaz1DhBjRLp80wfqMya7qFmcAWV
         2H1uiu4sMCjXeOPGiZMXKCt16C6Cd/3+PQcphLSbHe7yVNDRxuMH7PIdlUNOKVTUIMZg
         PB03tsUuS+K8LIYblAEDC7YWvwweu/eoYXk6RrGcLC2Ki0ME3vBp5YndEyVD6k/7NoiR
         vkE2fuirgkROPPDWkMKWT3/6oWsIPY11mBiM9x6shKfbIIhjNP2ihUKR8XUfpcfguQIZ
         o1VqZDZuojcFXGvVVxIlktUapsBsVVuBELA6XTLLxRgV7GlDd21DUQ1jw+uxz8B+vhf6
         QRJw==
X-Forwarded-Encrypted: i=1; AJvYcCXhVH2osGYfPrDMjjLuQHn8s8pqzscZXmRbIE9gX0Gk2TJXAtUWAms7zuShADPGPF+/Q6AGYZ0fqxJy@vger.kernel.org
X-Gm-Message-State: AOJu0YwBFTsc/Uho4RsNgHOPxruJ5sbR+CWiGHw/1/fUO8YdSIxoCM/G
	wKLeDEztvuKA2o9pJVscU7LW/tTEUO+X0YY3r9i52SkFbAFNjbZpfeGFvR7sVGs=
X-Gm-Gg: ASbGncsxfJtX66igOZIexfmFozXFLJIHrGVbPEKb4j1FR8Wze8Z6Kf9vUtxZaNNSCq/
	N8XocrMRCCFo2B4SAUr+IyaLjZmx9Hu0MVh6WF0QtENPGDjUrbpXO9mx3RPPz7WaUDBtUCUYwSq
	XjMZiO3GXuansbJ8iwC7701SGR6VdpYi0KxeESFhmXyoV5h2nJvpMh0/L72vIZZ5D4fl27Mbm3M
	E+qwriP1gv+HToz/wNOk2jb9IN2WlN/FPFj6F56uzyj1qB95jcFjb4RwmiR/HWG8fH8ZhLIA+Nk
	flCPzhk5piFj5TyeoCgV9B3+Fl6R
X-Google-Smtp-Source: AGHT+IHaKxNKbstmg/oVxzJ+41YPYsfc+Wp4zXa4sdTmv66gglPRj7ELhLUFhy9UduKgbaE7dDdkoQ==
X-Received: by 2002:a05:600c:4ecd:b0:436:1ada:944d with SMTP id 5b1f17b1804b1-438b17b0bdcmr92799705e9.4.1738065216894;
        Tue, 28 Jan 2025 03:53:36 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.98])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438bd47f269sm169140195e9.8.2025.01.28.03.53.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jan 2025 03:53:36 -0800 (PST)
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
Subject: [PATCH 1/2] arm64: dts: qcom: sa8775p: Partially revert "arm64: dts: qcom: sa8775p: add QCrypto nodes"
Date: Tue, 28 Jan 2025 12:53:32 +0100
Message-ID: <20250128115333.95021-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Partially revert commit 7ff3da43ef44 ("arm64: dts: qcom: sa8775p: add
QCrypto nodes") by dropping the untested QCE device node.  Devicetree
bindings test failures were reported on mailing list on 16th of January
and after two weeks still no fixes:

  sa8775p-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
    ...
    'qcom,sa8775p-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']

Reported-by: Rob Herring <robh@kernel.org>
Closes: https://lore.kernel.org/all/CAL_JsqJG_w9jyWjVR=QnPuJganG4uj9+9cEXZ__UAiCw2ZYZZA@mail.gmail.com/
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 11 -----------
 1 file changed, 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index 3394ae2d1300..23049cc58896 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -2418,17 +2418,6 @@ cryptobam: dma-controller@1dc4000 {
 				 <&apps_smmu 0x481 0x00>;
 		};
 
-		crypto: crypto@1dfa000 {
-			compatible = "qcom,sa8775p-qce", "qcom,qce";
-			reg = <0x0 0x01dfa000 0x0 0x6000>;
-			dmas = <&cryptobam 4>, <&cryptobam 5>;
-			dma-names = "rx", "tx";
-			iommus = <&apps_smmu 0x480 0x00>,
-				 <&apps_smmu 0x481 0x00>;
-			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE0 0 &mc_virt SLAVE_EBI1 0>;
-			interconnect-names = "memory";
-		};
-
 		stm: stm@4002000 {
 			compatible = "arm,coresight-stm", "arm,primecell";
 			reg = <0x0 0x4002000 0x0 0x1000>,
-- 
2.43.0


