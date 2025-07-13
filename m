Return-Path: <devicetree+bounces-195754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0078AB02F98
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 10:09:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72BF93AE1CB
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 08:09:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 387631EC014;
	Sun, 13 Jul 2025 08:07:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="zd6OKtlv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F903220F5D
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 08:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752394056; cv=none; b=rARi6JAVxvGrkqlUW1r9Gdri7cPdS8nXld8g7g3DmobeHmA11RIkQSQRLxjAHXiGG52wHzAdALLvqCO06E/bL07/aklwcGXx2IaiTR0kAU14U25UhA7ZA6Rj3QyB4U0yb3kMHOF7xpCPrl6aETvktEtrwcrVQOwONMBOCn6UVrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752394056; c=relaxed/simple;
	bh=aDMmuhwLGm8e9aVoqg3PeCCwJAaRLrTPedtNvgdSwWY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=pTGw7YfCCzvc3zlkSPqSsyfusXLzJ6K4PCFRCpX53uJT7jlsuvp65bZ1d9KyrMZRzwz/VwVgyBcLbDQOcZB2Ir6gezmwyQizCI4+ug+5RAWB2yHkULFs0bAw5JoUZI1iECwGozn6LkZAFMfwTGdC7WMXpIaZfbWjDUymxRNZSuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=zd6OKtlv; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3a53359dea5so1861615f8f.0
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 01:07:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752394052; x=1752998852; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9/c/J3A9ASq/x8Yj1Xu/txbcuuFB9UfWNR/sa9FS0As=;
        b=zd6OKtlvvCClUwllW0CO64sKlzsP6TbpD1VGG6auzuAmCJEVoreA3lWokdtjNOUL/E
         MYk1bTMuV6bZtow/wxvLKKu+V6LUDJkwEXmw09v9RwBnL/l1HdNxvCq6JXNQC2p9pkRp
         bbnjlAUchvCzHC7kbb5iKNWT5VPsvQU/hCEpc21hHLwSlu5MBl9iko75YGMQ6cA6uv69
         SbihEP40qDhrNYAKFmh6w9eHvgXjTsoQ2gl7f0g3NJ9vfpRf2bSsUD/kuSbm/lv0p/SS
         VzroI0RjSw2wMHm9IqFnI/GcQrEWetSUXWBCAwsav2yCU+CbHurxRFiU2iebpD3KRlU7
         BddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752394052; x=1752998852;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9/c/J3A9ASq/x8Yj1Xu/txbcuuFB9UfWNR/sa9FS0As=;
        b=XcIFnucVg+SFkEcG2A/ZgeU/CBBuU146FAnvs652xUPD6INGU8+8yocfuYE716B62o
         YQD0jJ6Izj+g29S/Bm6sORl9fnK6Wv8PHSqiQwjZx/Ow9i/kQjQXaE1Cj4B+W1zncvB5
         31GeOSJCoHvW17a1if/63Qwf2hnYuhK6F00VR34ixqVt9etqcULMyq3doT1pm4sHgXOe
         rlAOlNmNItWM6/29oL7CVaFic93I5DZcZt45/RPlWQMH0xUs+1dbWmwSh+WdTJlAx7qd
         csAdWHRtuSFf9IAb59bjUNsc4WLoaaT2nK0WzB8btSIbjSD2mr3dDjBE/ABoF8x9i/oS
         JSog==
X-Forwarded-Encrypted: i=1; AJvYcCUTkh4rPyO/9vcTTKfIA+B5v1oELQxq6jig+ayXYHGFVwuvr4yBuCYVHntwc62g7GHLBWNj0WuMdfC2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5M0VDr/xRp/b6P3AbmZQg89skOuRVxsMCvmFNOzpwuO6BBWD2
	Qu7lAZ8rPWFGARb0pTX4zVzoCKJu9thodDma3BxK9/WrlvftRchIbb31f1l8/NF7JG0=
X-Gm-Gg: ASbGnctprUqsHTnXcysXHs4Pocpzh0tBnuEBlX+F3DUoq8JVEbm0P51PMj/FlD8VQnx
	n9RpvlCSktSwomPLB+FTLTJatqUfmkJHbCGXEpn/wX+LnvwZAMApeDE902l1v52PuQKtvCPJW6v
	xmRSixWrZEGJyshQkT/yKeCjlUrfLYzZh8nNrDAmSc3vWeJvBVVkeWod7xBogXtLB20CrmrOIpG
	QHfHNvWFF/4IgIYFJP9awRyveYvXb2couquc4p69fqkLtvV8RzYNHRzW19qp9qE8y81bnTO942i
	ggGI+XX2UNkRU78IKnuS0hefg9CebX3gX9LE+BnQRYZ24Ehw0GJC1wHf8MoR1wAOo2Ip3EfOzs5
	wmL0a6b7VmlJKHtH3UC+SsBV8nvv0IyUoWDql
X-Google-Smtp-Source: AGHT+IHfutuWB7rD4cm9MzDFG+4cnjfzK3xIdEUacutPo2JmbTjuiRMzIjn8M5NoivS2vTb1Jp+CSw==
X-Received: by 2002:a05:6000:470c:b0:3a4:d994:be7d with SMTP id ffacd0b85a97d-3b5f2dd470dmr6368310f8f.23.1752394052404;
        Sun, 13 Jul 2025 01:07:32 -0700 (PDT)
Received: from [192.168.224.50] ([213.208.155.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8dc22a8sm9386608f8f.34.2025.07.13.01.07.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 01:07:32 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Sun, 13 Jul 2025 10:05:32 +0200
Subject: [PATCH v2 10/15] dt-bindings: mmc: sdhci-msm: document the Milos
 SDHCI Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250713-sm7635-fp6-initial-v2-10-e8f9a789505b@fairphone.com>
References: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
In-Reply-To: <20250713-sm7635-fp6-initial-v2-0-e8f9a789505b@fairphone.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, 
 Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Robert Marko <robimarko@gmail.com>, 
 Das Srinagesh <quic_gurus@quicinc.com>, 
 Thomas Gleixner <tglx@linutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>, 
 Amit Kucheria <amitk@kernel.org>, Thara Gopinath <thara.gopinath@gmail.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Ulf Hansson <ulf.hansson@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, dmaengine@vger.kernel.org, 
 linux-mmc@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752393945; l=846;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=aDMmuhwLGm8e9aVoqg3PeCCwJAaRLrTPedtNvgdSwWY=;
 b=QyvoywS+ViPILVHSWP4Oe4jmXijRzJRl4R/Cid8Kttmp8MEimcvZbZ2reSR7fMW32bxl68sjl
 rIaZtlOjefZAQM2+cVveN692VtVF73WT6QgLclxD9GL7msUjQM+72/5
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the SDHCI Controller on the Milos SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 2b2cbce2458b70b96b98c042109b10ead26e2291..6f3fee4929ea827fd75e59f31527f96b79b2cca8 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -42,6 +42,7 @@ properties:
               - qcom,ipq5424-sdhci
               - qcom,ipq6018-sdhci
               - qcom,ipq9574-sdhci
+              - qcom,milos-sdhci
               - qcom,qcm2290-sdhci
               - qcom,qcs404-sdhci
               - qcom,qcs615-sdhci

-- 
2.50.1


