Return-Path: <devicetree+bounces-189443-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E61CAE7D3A
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:35:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C7332188950B
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:33:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0AC22EF64E;
	Wed, 25 Jun 2025 09:23:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="o61iw4TZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C12422E0B7D
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843402; cv=none; b=csG6Y5HMju8KbiLTvtXCugeHI1s6icEqSxlqg1S2pIglnu48o5Ek1K+76mLVCbrDl7ue4l2NDHnCmVFcowJeNZi+eHm0dluVGUkJhYShJNP2VyPZUz8UsLMs5eSItrzPWyF3MMg4J21IA1yn4rQs/6aZE6HmodoUtkf2WiXQGpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843402; c=relaxed/simple;
	bh=a9FLQid58ZrqwhwDBssnIOsYiwypbHIyY+vO7BVtkJA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HLF2bo4IVQK5X9nGo3uEvKLDRR5VZcj9Ho1kVpYQ/p39gIEHMYsaARHnG6IFypKmeRH1ItofI+L90BVvcC1FrlnFpck+g2qSVgeSSnAGd6uAIWGl1WaGx3wF1aTuyaWT0kX85d9f9Y9bFtCuDg67zZznPagcKEwJbMXSpp9/UzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=o61iw4TZ; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ad93ff9f714so249862866b.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843394; x=1751448194; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GFd2WA4jaSsi6eBpJft54R30VZiUHUNL0WjIOmacH+w=;
        b=o61iw4TZFyTkUIj7PoZHMG4mEEXTObVv8UmhymegOnr0oJbZOhDbz/N3MhtbVS+84z
         xBeAFOQadwVcJSYBQsAi0wnvAnopcfdR5Z5USYokbRvfT2Dz2Z/jq8VGofmftPZLZ1n7
         UiCGfLxSUFis697RiT/wcY2Q+rtRPdNzxoulxY2wZHZ0SUhXkrcOzrlWFdgUflna7wu1
         GIQjqluIjgCYO/UU2o8YBNx+LoFKZAru6S/w87lsmzFEoog144obDT0KNuvpjTp5G1A9
         n6jbMtQQb1NjDQk+8YREn09s/qo8G1KOIBdGQlQM9CFsubr97cc0zVjUJqXHp1g56Him
         VwGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843394; x=1751448194;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GFd2WA4jaSsi6eBpJft54R30VZiUHUNL0WjIOmacH+w=;
        b=CFNXpnVd5RLVlP9slc7lWHPDReetvaA6/qxLqtFfLiUX2jBpBYiIm7DOBaop3H+LK6
         O70glOhDMS9sCBDWNFsyP6srtWScCmlYNW8a7iDouFLfS8yDBdSl+05BvNdlyHlbTBQe
         ACb4bl0/X7wx1wAAcF0GCyJWmf/G4r9o+imTofFRTuH3OtiFqGLfUcazs6GCcPCQxg71
         OZFGtPC/o6Paw2NloEYp7GVpXpt/weiUITcQEs63GWeIW/r6+CAVI1vodj7A/jR9yruN
         lHAr4r5EOm9vIkGE4HKH4ShfAnmXYIQ58G1ba+NGiCs5uItrF8pMawnzusVl3B8WdszD
         AyVg==
X-Forwarded-Encrypted: i=1; AJvYcCUdHfGqU8cjrGqFex4dXCt9pXJvc7JxCRRB2mRqonSIIcuK1+K4jg2ZNMooEa5LupwC8xPUzgN+re1T@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn+vVf7DfeHGEQ2jmanOkuKA+b7GRexK8UXq41A6NnTCSli7Pg
	CwXDQSG4Oij1QyJOj8qjiiAohem2tSGxZ4NDK3L056Oej7VVdTIf+E5ErRv/XuX3CXg=
X-Gm-Gg: ASbGncuKe7phLgXAdI3nzVgMJOeRNtwwj9VEDJTJXJbNvZB+zKAC/E040GE4OpVt9UA
	r/V3HI4tMiEDQIR4DLeBlKWs7nn0Q/sxxtC2yW4yDipgmi1bCBjaJgfx3mt+fZ/n3i2KYVi2rug
	GLtez247bHHqKJeat6C7Byda5WIA1shvhnECn4rCBVXYGNIY5FR34LdxWZfvqNyxVoG5neVBpjw
	ux4DM8DyrIj+hMxPnkjI00fl2y85JlpTIMn7w/TFmnHa6UeHu260EWr6ZYA2MWnR9IlQiV09AyS
	9bw/Mka8uvAQi/kJEUCtIc0uw0F2e0hG0EHWv+n2JqlSUki0ANGngbktMEIZY/W02xPgsBShY6o
	PR53VTrrjIybWTH/T0ooYeLcybCN+vEcn
X-Google-Smtp-Source: AGHT+IFjoA9LH+UlMYELvwOrDva8TbPECUBoKhrTSDmX1S6yeylMCFiLfASmbkP/9St1GzH8r2022w==
X-Received: by 2002:a17:906:6a12:b0:ad4:f517:ca3 with SMTP id a640c23a62f3a-ae0be88335cmr241931166b.20.1750843394339;
        Wed, 25 Jun 2025 02:23:14 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0aaa0a854sm270277766b.68.2025.06.25.02.23.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:23:13 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:23:01 +0200
Subject: [PATCH 06/14] dt-bindings: mailbox: qcom-ipcc: document the SM7635
 Inter-Processor Communication Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-fp6-initial-v1-6-d9cd322eac1b@fairphone.com>
References: <20250625-sm7635-fp6-initial-v1-0-d9cd322eac1b@fairphone.com>
In-Reply-To: <20250625-sm7635-fp6-initial-v1-0-d9cd322eac1b@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843387; l=857;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=a9FLQid58ZrqwhwDBssnIOsYiwypbHIyY+vO7BVtkJA=;
 b=M++/VIb7y2T3gKskIlMpYOFvxwe+pfbHdhyU9gVdbfRegUxNj4iL+n141nUA1eMcP60CaNCwr
 IDMwEV8uYYeB8lGGvP/UKlrX7LWLDpIcdln/9pd8d17sYlzfKKWktV/
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Inter-Processor Communication Controller on the SM7635 Platform.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
index f69c0ec5d19d3dd726a42d86f8a77433267fdf28..6e86ec36a82254ebd73c3067de495795c36c6bee 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom-ipcc.yaml
@@ -34,6 +34,7 @@ properties:
           - qcom,sdx75-ipcc
           - qcom,sm6350-ipcc
           - qcom,sm6375-ipcc
+          - qcom,sm7635-ipcc
           - qcom,sm8250-ipcc
           - qcom,sm8350-ipcc
           - qcom,sm8450-ipcc

-- 
2.50.0


