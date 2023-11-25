Return-Path: <devicetree+bounces-18790-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 485227F8B65
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:18:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 044C228160B
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:18:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4A0A14A9A;
	Sat, 25 Nov 2023 14:17:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zlPiEMUt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50D2ED4E
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:17:55 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-a0bdf4eeb46so47223966b.3
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:17:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700921873; x=1701526673; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oCxJjrmz0z+H04UIqC/ZDHtTQyFYGs6I+ck9k7G4Dco=;
        b=zlPiEMUtAIYRjaigsiS8XxggmWtq8FEo6GLn+Xyp+g5cIWyhsgte6AahCl2VqpsFAW
         aFZKav0Rd9rqJoWGnk0De5TlvJPwudRZaOcGvYsleEyvCMHeYjsZpk0cfkeITkwUrPEJ
         5imii9zLTlcGQxJG89d2khBsSYQPWHQFQxDJkZDAmBjAZHT+CKxugxacZSRUbDIP3CQ9
         +RFvrHDDvwBk9UxdyCvYPWyX8agG79dSHflIliL6nor9V00zMLAIQCniEHN9ZT817O04
         RmFQZr6l68ebV28qbrCl4yMv9GrRqQIi83jQeWK/KYjP7e2b2jxXnUF0ATj4R16hXTSW
         ZjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700921873; x=1701526673;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oCxJjrmz0z+H04UIqC/ZDHtTQyFYGs6I+ck9k7G4Dco=;
        b=RTWeJKj1frDLhct8C4AklxYQtJStzvywevNxlMvAx+B4jPMusguvSzP/dJUbqgWw4t
         we1OpG4b8vP5S2ue2RKuOVpYX5qOLbBbrVer1WYbhRtJsAma6Ym2riiQkN8IUlgBkQpS
         BfO+NW7BINJbfMXvub84e4XeH2q+mecWO6TtwVSsWdnrwMm1PeG2fVvgRe+FQFUBR9ZO
         Y4RZBtVJA2Z6EgDhMyG0PcHEwoOsOlrytHAbAM9U6yBpJDHZ7RDGP6LlO3Ha6qrBbVhe
         joJO/+VVPHCSivG0HWZisQtG1Lr2kf/7iM0IMT//P3u8dQ6t/6qKuK4CWNj/uw6UUiYr
         prxA==
X-Gm-Message-State: AOJu0YzPczxqidLsEunA4K/R5Ngzb7pdwY3nQQFD6TiuRG9YSHxKZ66A
	KBpFlpNB3839Ki8h+O62cGe3PB9ORMkgUIh9uFY=
X-Google-Smtp-Source: AGHT+IEbr7GDBeTPnW9gDDdo6VkIGH/WLIKWJrPZjcT5euLmhj3AB5FHgBzeyAAMU2jqxkCAgOefqA==
X-Received: by 2002:a17:906:b796:b0:9fe:57b3:bc08 with SMTP id dt22-20020a170906b79600b009fe57b3bc08mr4394797ejb.41.1700921873218;
        Sat, 25 Nov 2023 06:17:53 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id 19-20020a170906319300b00992b8d56f3asm3500345ejy.105.2023.11.25.06.17.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:17:52 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 25 Nov 2023 15:17:32 +0100
Subject: [PATCH 04/12] dt-bindings: display: msm: sm8450-mdss: Allow 3
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231125-topic-rb1_feat-v1-4-11d71b12b058@linaro.org>
References: <20231125-topic-rb1_feat-v1-0-11d71b12b058@linaro.org>
In-Reply-To: <20231125-topic-rb1_feat-v1-0-11d71b12b058@linaro.org>
To: Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Sean Paul <sean@poorly.run>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Georgi Djakov <djakov@kernel.org>, Will Deacon <will@kernel.org>, 
 Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>, 
 Krishna Manikandan <quic_mkrishn@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, Das Srinagesh <quic_gurus@quicinc.com>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 iommu@lists.linux.dev, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700921858; l=865;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=deb9D2Xe1g6rHblNJhukz7PgRHVCdj6e1NcVucThHsI=;
 b=04VTSyTWm5dlypXw+GdRqYQamBFxd0dqxWXQAZG+T+kAWcdfLMeRvfERanmuPSleYxvb1DvOc
 JNDbEQ+SZ00DtKtwDgvwPbS3PZP48Bpj+WwtQ3aYwSNN8E5K2QOT+y7
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In addition to MDP01, the cpu-cfg interconnect is also necessary.
Allow it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml
index 001b26e65301..e94e8630cc85 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8450-mdss.yaml
@@ -30,10 +30,10 @@ properties:
     maxItems: 1
 
   interconnects:
-    maxItems: 2
+    maxItems: 3
 
   interconnect-names:
-    maxItems: 2
+    maxItems: 3
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":

-- 
2.43.0


