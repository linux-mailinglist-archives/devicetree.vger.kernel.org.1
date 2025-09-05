Return-Path: <devicetree+bounces-213399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 878D3B45502
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 431FC3A8B95
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0DE30CDA8;
	Fri,  5 Sep 2025 10:41:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="LA7iSbfz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC9E2E0B64
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:41:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068876; cv=none; b=GfSLMPusorORJKsTkMDx/KAuw1TDSIdWLK5zKj7/z4sZOEzshEhjXGmRxPsYEzjWX88OxtPktBFG2OOOEv5cUYtq8CcRy4afNZIx8VNhIuhRfa6oPO1VRSWT72m+rl3RXA0sCjSHKnZeoHU5LRIBIOANSDPFtkK5MRqeH09XgrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068876; c=relaxed/simple;
	bh=Vv9fLYuM7b+kP/yRcfQ9Aaf/yhYxH4QsjzEqIWP0bPo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WUlyv0ZvWzsnJ6Gsqnd3YxSYQHjrvnZMxpujBE7w0okL0NKD9/i7qD4hYYvZ72CSyiCnUtN1KWidIXafMOQKVwnCz2bRnlbjMrl6lrNQ9tuXZBG1IvNGt2eskE3aUZDGMqXTUgaB0dGyWFPOlumbUPxXOOvFxrfV7RUo4H9Gq2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=LA7iSbfz; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-45b84367affso17619515e9.3
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:41:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1757068872; x=1757673672; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iUxSJ8NS/EKCWIWVdT7Xows3IlnWCRwYYijslmaC7tg=;
        b=LA7iSbfzvcyDSnKZ9m6v5oqFRyHpQTZ6jrqp0o2ppd6/WKeqF1tPDst7m3CLSJmsMy
         2sgzIKq83JngnZk9HAEs147LUgrztWn3Kwajxnu/IfbXhdffrZXjQH1KylQoopN9KW5x
         XrHD5jgzMglmqH0QPjPdiEFiQf1VdTB3HUEGg+Vh9o/PR9rf49Fs8IoUZaJkZBGH3RDm
         CtJ7cPPQf1klPHoIgeLa9yfSw7a9cWGi89pRK0I1S11P77MK5cAiUWVp71wJgumUWh0S
         7LcVFjOlmeEX7/g8HLqpzhfHjHoI6h23/fuR21cpEco4QC+Urb3l9XsxM9qkXss6P+MA
         FJSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757068872; x=1757673672;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iUxSJ8NS/EKCWIWVdT7Xows3IlnWCRwYYijslmaC7tg=;
        b=HK1TALbsgrDTR28bSdgSaggbLfKKFaF7ln9yDIa+7bH4u4sVv/x4Fcj4GyNLtkTLxv
         pmxhA0xurvf2Q/OhJLan0wB+qht+DUpb1ALlqKYFxhw8hd/+0795rotpAdRknC8iqhny
         ZT6Fle7vlUjBEzWHoLmS4/ggAxTbeTrfrrASUGtkfKmutQ1M/x5YKzykfbg6Cg76d3oA
         7jsJzX+56pfF+pBA9ZSw/d16fOjhA9w/nuVM037kBCsLJmaQDCltDYKGp+LWBiwCYj1W
         paDNBq4XXt7TmFUFq+swCQEffkr6cVMhCAeszmZyQCTUNRTJReaAzR2P7k3Teoi6f+a+
         XJ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVr/+3ROcxklcEou1EyRaahEG6E1HjBTnq3elk+Eu20OD5s6qS87C+78MYFrVNoVAyausGs7PKhzLH1@vger.kernel.org
X-Gm-Message-State: AOJu0YyAxAbYECoNjpT0XZV8jRDS1hLkGEuN5gEOBpjRAfGcVLdJOQlF
	53KVlvGlaai8+gXLccpnaPjmsPnL530nu6f15CEnJIEEJp9rgCLtLSG7nFHwt6g7H3Q=
X-Gm-Gg: ASbGnctV/LRkHWJbdCBaNSK2qF1ZTMTi4geWvX6eV2SoqjGTkn6PUqBHsTewB/aLr6R
	HEZr1382G4PZsK9TNet6FdLI0ix92axGyM57IM+3A/OJm8gMckgQKsRa1mqUNuq5QEnr/4Nj5ay
	KwZG2+d5vQctGfyshm+OqiVh+B5Rgq6cgZetJsANVZcDvWAFQVN5rZLKLGzRye6UmgUCnx4bXVF
	OsfPe+jw2pQFoAbbu3QeOMrGM0xtElzxdIAy2q39ZGThZbyh8vpZAzl7ceOHzh2sFra1Rgcymo+
	fo6ixUBREpcSvlSav+NV10nIigQFgd2w8SwXHelz3+ukTOn73Och/rv8274fq5lYE6VwCD0seUC
	l4yo4gboUUabm/wFlmiocb7pOQF46+DU6s76CFYeEtqqg2GUvNMCyh3SCTEcSProMNrBIbHVFsT
	1yHg50NV88FNhZ7jDyEgs1sbus8j9fKnWx4Kvuqm/K
X-Google-Smtp-Source: AGHT+IEVXQE/CskVMSpfS1GtOIvpVNOfUMU+P9xIanoXIT05tmzKechNro4i6hwVm9EJLTjofdfxZw==
X-Received: by 2002:a05:600c:4454:b0:459:dfde:3324 with SMTP id 5b1f17b1804b1-45b855b34f8mr174028005e9.29.1757068872257;
        Fri, 05 Sep 2025 03:41:12 -0700 (PDT)
Received: from [172.18.170.139] (ip-185-104-138-158.ptr.icomera.net. [185.104.138.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d6cf485eb7sm20990738f8f.3.2025.09.05.03.41.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 03:41:12 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Sep 2025 12:40:35 +0200
Subject: [PATCH v3 4/7] dt-bindings: arm: qcom: Add Milos and The Fairphone
 (Gen. 6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250905-sm7635-fp6-initial-v3-4-0117c2eff1b7@fairphone.com>
References: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
In-Reply-To: <20250905-sm7635-fp6-initial-v3-0-0117c2eff1b7@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757068857; l=880;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Vv9fLYuM7b+kP/yRcfQ9Aaf/yhYxH4QsjzEqIWP0bPo=;
 b=XzDY84jHgnwOW/UMZlFy7LOSxACVXWrRrAIQsHGoMcTUKa4XPYE4kxJ3MRwgYaFc99JjXPhS5
 IBoEJqN22GXBcGyGqN/515GfauIIGyEksVCUeNPCws6B2PhKU4SaaO2
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Milos-based The Fairphone (Gen. 6) smartphone.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0110be27c4f6602b25aa4feb742bfe62e4a40d51..b4ea462062bfe1ccfb34d22deb1d2407443430d5 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - fairphone,fp6
+          - const: qcom,milos
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.51.0


