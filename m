Return-Path: <devicetree+bounces-112573-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08FBB9A2C05
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 20:19:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC86AB2A3EC
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2024 18:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EA381E0B83;
	Thu, 17 Oct 2024 18:18:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ml1xJB89"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E801E00AD
	for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 18:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729189100; cv=none; b=XCSSAPuqMWhv5I6OkJQzkZUPFTGB88kJdu8V9qdf6ztd4SSQwz9of1IvXa9XcFf/yX5jDeYd5RHjswA1fD32riLpN0CUD3YbR8yKcvj8wflRB7TxeJ01T32GCOYGqOtJJ42B1Jt9myYJu9PhImYUZQs9Ykfw9KEErvH7ak5FqCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729189100; c=relaxed/simple;
	bh=0eugToX7z234BcTzmo9EqfIAVx4aY2oi8rBYwWepSGY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=kqG6o5qE354eORN6JN4BMzT64Z80sI7xApFvuAIOXabzRIG4wo4H0MOXqRar3YZVGk7I+sKayXKGDp4wG3cpj3IP3j486AEDXya0N/2q8NesQvOpEJ3RtClgD+HHOtZLe3xWh8AEKfTCafDyBvRd+nfQBLq4eTJ8s4QfLHpyOo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ml1xJB89; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-539e13375d3so1524980e87.3
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2024 11:18:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729189093; x=1729793893; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8IcJjWsorsQFH/jZQ31t6HYSh9mwsKPZ1qvKjju0IKY=;
        b=ml1xJB89a27g90DRbcnj/s2p4qV4xJ8cjv1SzZ6huVxS5F0qcLNcRe3Zx28kc0/aSv
         EuNPa1aMYBDZekJ42Jj4B8xTrIY31b/s7ngEJuy4MOZIZM7OWsWOCwA4edXCLNvTi55f
         yi7RZ3UigeUMPiHi7Uko2FkuccMra1R0fQlJ1k1gyUDUknfJT02QNFEae3mB6ueFsyW3
         V4jY51TaTegSLVmSEHhUO2VeJrTzsHAi11+TOXQVQgQiCCnOI/c5S74SWsnZnXhODnGO
         7bXIK3hTLOH6xv2ZzEOxDoVWzr7ZXZ7GxPAvKYPXSCGwMGfKZEu2iRvn4qRZefpWVn+3
         xW/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729189093; x=1729793893;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8IcJjWsorsQFH/jZQ31t6HYSh9mwsKPZ1qvKjju0IKY=;
        b=Lik9W2mRiZgV1M5ZvBdc/6mRMMqtkwaio79M9nrkWRFrp0xNK2Z9aV9NLW4bLWW58r
         TbCiRW9NSANaS+pJPW6lLSj/TAOi5lB0/zAICG4r0j9eveIYm1lNGVsV9ktfsYpN70W9
         sQYGWhTcYaDenvzLq9F2uXzVFCmSNVLEWyWnq/v26KjFO/33QTaHsLwdo0pIN+Fh7S1r
         ofmWo7gK9OKvUxT0wjkHkdCCS58yfsgz+wlSnO5e35R2G/UdMKWp1jrlJZWGipaSInHy
         wUeatErzoSKLmW19LQCN9/lY0DwSZt6Cjd6+KdYBKPHlJM9BiN6IPV3/RRG3NNAOlrgE
         foMA==
X-Forwarded-Encrypted: i=1; AJvYcCXkQ/3o7vJBuHfzF2rQvdB7IQF/wxEaQQ7g0Uj792i6K0bQ3iuECHUngxgHxb1bZD+KPBSYwKLZhO0B@vger.kernel.org
X-Gm-Message-State: AOJu0YybKr2lkJuOw4oFsYnTSstgdczY2J7TLUgvg3mkHnhMsEhO8i58
	rsjmTf/gvPw7ktRLpz69GZkR18++XOAJ0EepWzOiodsTqQT9S7Lpm2hRMHWb12FFbD4q+uv9fsD
	uK2s=
X-Google-Smtp-Source: AGHT+IFjdivjXkS+cuZi3Pd5plEXAxECiHdxg4o6Cc+YGMko94XOd4riIC5C/gVIKzEcUn/10evNJg==
X-Received: by 2002:a05:6512:3dab:b0:539:fbfa:4a9f with SMTP id 2adb3069b0e04-539fbfa4d3bmr9653189e87.58.1729189092760;
        Thu, 17 Oct 2024 11:18:12 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539fffa8b35sm828580e87.19.2024.10.17.11.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Oct 2024 11:18:11 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 17 Oct 2024 21:18:10 +0300
Subject: [PATCH] dt-bindings: nvmem: qcom,qfprom: Add SAR2130P compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241017-sar2130p-nvmem-v1-1-6cc32789afc6@linaro.org>
X-B4-Tracking: v=1; b=H4sIAOFUEWcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDA0Nz3eLEIiNDY4MC3byy3NRcXdM0C1OzFEvLpKQkcyWgpoKi1LTMCrC
 B0bG1tQCN5ePJYAAAAA==
X-Change-ID: 20241017-sar2130p-nvmem-5f856d99bbb7
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1032;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=0eugToX7z234BcTzmo9EqfIAVx4aY2oi8rBYwWepSGY=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEVTjT5O06bN5JRGVsgmwH8ECa1wePpndlBvQp
 FqPRk4j68CJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxFU4wAKCRAU23LtvoBl
 uL76D/4pOwZQg57gt8oBeM0iV7RVVlSctY7zdPGCjYPHSfM1X+eUUCB4ib13utNLMnVcpc9ZWWk
 YaMCa1HeEH8t6IYkiczuLmyhqbaim/wmng5uP5QhPV8w/+LlijQdgTL7QCTEGvhQf8bQBJVvMGe
 IZoppnqXuNSC6uVy+WKn0QTWyR483I9bQYtKQ5FZhuYuhqWckRPT83OeHdv9FwUo2LPFj8m+Ju3
 DYtKfUkpNIP66/Nfmd5r8jhMY2FEiY+PXT96fp9EGD10uP3TQqU5EiTLY6lMb03CYp4UMo7C6tV
 jB+JMbKTlDaucnoTlTTeB4lLrMN+7/ZlYAsv8JKjWFFbmFBJT3ow/y6KCnqGHBgc/ZwzAck9jQU
 2XLJCmuFb5wT4mAUPw/uLKt+IYhQnaDzHFyw76QFDGNUzxmA3OzF4hKystjokYo3/MNDbWjS5KR
 f43bAK9ga91SQDIiTt/z4V5lmpvzPQN3FNn/L3sWoJjBC7nJlWVX89DvnmLXBjZkj7sNgJtbeGJ
 Aq1fznOPnfgMRZ6GfNYb52SiowAUlbRH0HNuKdU+0gw8GDuB6G5BFBH9mL3LzYMHlw/KCajt6lI
 mpmf++en0T9APmjSRIIMm4/aIONvqhpvUzwfPZzh+2SJ3yKwvCRgQF1U+fYeZR3aKtOf5zz2S1E
 BwXabhFMdSXdHYg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Document compatible for the QFPROM on SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
index 80845c722ae46611c722effeaaf014a0caf76e4a..9755b31946bf9d4c1055a993145d06c274b61a37 100644
--- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
+++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,msm8998-qfprom
           - qcom,qcm2290-qfprom
           - qcom,qcs404-qfprom
+          - qcom,sar2130p-qfprom
           - qcom,sc7180-qfprom
           - qcom,sc7280-qfprom
           - qcom,sc8280xp-qfprom

---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-nvmem-5f856d99bbb7

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


