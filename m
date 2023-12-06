Return-Path: <devicetree+bounces-22268-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DFB7806F3E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 12:55:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6F6C2B20F5E
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 11:55:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B9B03588B;
	Wed,  6 Dec 2023 11:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p3QqQYRs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F8B7170E
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 03:53:39 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-50be3611794so5598520e87.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 03:53:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701863618; x=1702468418; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=79i0nr6Mx6SDbEcWLjAX+WhVuGqRhzWJkAvdfcMiEaU=;
        b=p3QqQYRsXWnbie5anhv/gEkVbmXP+eNkMWIqF0qOZJjof3kLrph+lqB5F0Bc2Gxr0j
         rxNHvLYAXfmdFv/k886Unc/++nB1yCsa4Vqa4nzO8FQvKJmZibNRNMndsIdVX+xGQ0xP
         vdV+nkfWmR1PkxvPyJqGoKkL55KqdzYfSOjx4WrVeBIGQo6Et9DXfxqvwnkkleQYHpLT
         iFda1dgJGvEzAMxnF+YZmGxfS0uMNtExTzbV78MjzsbXGEn0vtyZdh2nvaeJJdJ9Q02b
         nN6aR0Rto3AXzUVgE7J84UMxRFbac2QfYTed2E8Yw1HtEWDvbjgUMb6H6RFRTxDKPTGA
         vEWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701863618; x=1702468418;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=79i0nr6Mx6SDbEcWLjAX+WhVuGqRhzWJkAvdfcMiEaU=;
        b=BgCswoDEaCvyvc4E+C/hrJ+P9cI9EYW7xI85I0+yWvTnRdrHn6UgIJPDPyOQ/wlS5v
         YofbiSdVcM42EGel+N/meJhvqliTLTS0iy4sjyC94Yx9gXni9gG/cYEO23G5rE4LoD+v
         M9tFrxFOOLZvUsFcIWe4ro/oMVtVQj+CXnBI2GXaPvc4GFDoeJhi0r/bViTZFfBYseU0
         3Tzn9XkQJkyVEGVLHci0g9O7zjX9a39x/M7old/+PuxVxf20z1+q6nAKlxwQgLdGnqeW
         BO7pAfzlBzA0II8rQeAqdJKqEdpSLcKPzRTd8ayWj1W0skokMt8bkGB/KnpHDpAvcQYC
         KljA==
X-Gm-Message-State: AOJu0YwBRb6ScnnS2edvzqkg4KgPAB5NB7pZTa63+SfUu8d3l3Nkrf1R
	C/2YH/iNFSby7ZrejAXiGczQxQ==
X-Google-Smtp-Source: AGHT+IE2TaPbtSnOjycRibKiMQ7n6YkJuP7QLfBLSQHgPk0U78Z5dIgqJ7F7+2AJZOkjIqFCKRcb3A==
X-Received: by 2002:ac2:5511:0:b0:50b:f82e:6d54 with SMTP id j17-20020ac25511000000b0050bf82e6d54mr496504lfk.20.1701863617804;
        Wed, 06 Dec 2023 03:53:37 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id i13-20020a056402054d00b0054c4fdb42e5sm2337326edx.74.2023.12.06.03.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 03:53:37 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
	Mike Leach <mike.leach@linaro.org>,
	James Clark <james.clark@arm.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Mao Jinlong <quic_jinlmao@quicinc.com>,
	Hao Zhang <quic_hazha@quicinc.com>,
	Tao Zhang <quic_taozha@quicinc.com>,
	coresight@lists.linaro.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] dt-bindings: arm: qcom,coresight-tpda: drop redundant type from ports
Date: Wed,  6 Dec 2023 12:53:31 +0100
Message-Id: <20231206115332.22712-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231206115332.22712-1-krzysztof.kozlowski@linaro.org>
References: <20231206115332.22712-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"in-ports" and "out-ports" are defined by graph schema, so defining its
type is redundant.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml | 2 --
 1 file changed, 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
index e55f69c2ff38..66d291b56019 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-tpda.yaml
@@ -66,13 +66,11 @@ properties:
       - const: apb_pclk
 
   in-ports:
-    type: object
     description: |
       Input connections from TPDM to TPDA
     $ref: /schemas/graph.yaml#/properties/ports
 
   out-ports:
-    type: object
     description: |
       Output connections from the TPDA to legacy CoreSight trace bus.
     $ref: /schemas/graph.yaml#/properties/ports
-- 
2.34.1


