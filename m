Return-Path: <devicetree+bounces-18789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E5F7F8B5D
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 15:18:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 757FA1C20D0F
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 14:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6005A182C8;
	Sat, 25 Nov 2023 14:17:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XMUvah7Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com [IPv6:2a00:1450:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B846182
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:17:52 -0800 (PST)
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-54a94e68fb1so5725860a12.0
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 06:17:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700921870; x=1701526670; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eqbb19oWFPD8qDhmzNJu7LExFvnUbJSOuyMJKMhlgUE=;
        b=XMUvah7Y5bmCLGppXyFecSHUS4vd5revorZmDf7dzLCYhOMKzetRVzBU2pdUax6K+w
         Q2+YrboknWr/ZpWDGBzwDfZ6C2yQGRadXQXMQHltZjD5YOyvHyrHI3yOsfZ5F/gnkbTX
         36qPdFgNQWQNhWcQOjNLhSfb4XcWhiFcMp58hkHD30Dck4Q0hClvWulmNdoYPytrapkO
         qb8SeLqxguscKJUjjTdszaAX/MXKO+4Po2GjXBAE13lrS8UxHyWStARKF4FXXSXjTXwr
         e47DMbQMD6eWn35YpEfqwxFgqV21RunFmMOvLqsPP/Fqz6/u+DUUZnzafvYO1jyZTPZ5
         XpJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700921870; x=1701526670;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eqbb19oWFPD8qDhmzNJu7LExFvnUbJSOuyMJKMhlgUE=;
        b=Lz54u6HZRDLP6VxxaqoHA4HqMqJXogttdDp/0mNQxhgEyg43GtZ80QyUuvac0LU2AU
         7nVA/zRNwfi92VpbYD7DBcPKB+IJZR7YAdTehMLTD2QKF1aNLUye1pJ7M71ytQTzfjAk
         PACITZEnAxMxdSB03uyux6y2H97i8sjJDPkKxANZqS2ftQ0tY2nJMKdcniRqKwFfIlA3
         yMpkiZUDoqWmd5TsyaAzySHdyzBb/1LmWSR/S+BxHAh3hvmbqVLqAzo7r3zYvZbryHkN
         X0kBXaIXikRUky14BXG/g4yo6ADsiSMmKlVM2Ls5yrKVL/XExhkBj3VTh6FCx/gY4oKT
         WzXw==
X-Gm-Message-State: AOJu0YzwPCOk9aUYmlt7EYKDNpi324P6iRW3nfd6t0MoKgcd/SVwzh6q
	PzvbHjia7Dn+HhQS+fGxK5H+OuHL7fmy4PlTBFM=
X-Google-Smtp-Source: AGHT+IGR9tBJZuW4Oo7JUrMEGXAjwVM/uMciWDFiip2iKnRP19yE7RUhPP5bwCFjfp39Yo++2RfLfQ==
X-Received: by 2002:a17:906:b298:b0:a06:dd05:d695 with SMTP id q24-20020a170906b29800b00a06dd05d695mr5854984ejz.12.1700921870758;
        Sat, 25 Nov 2023 06:17:50 -0800 (PST)
Received: from [10.167.154.1] (178235187180.dynamic-4-waw-k-2-3-0.vectranet.pl. [178.235.187.180])
        by smtp.gmail.com with ESMTPSA id 19-20020a170906319300b00992b8d56f3asm3500345ejy.105.2023.11.25.06.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 06:17:50 -0800 (PST)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Date: Sat, 25 Nov 2023 15:17:31 +0100
Subject: [PATCH 03/12] dt-bindings: display: msm: qcm2290-mdss: Allow 2
 interconnects
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231125-topic-rb1_feat-v1-3-11d71b12b058@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1700921858; l=869;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=xDff6gIDu+CTWuVjzt1GPZpEINlhu/tSsPBU3gWPnHA=;
 b=YmejfvEjbhNqruT3MXv+XMo97zWiskf4GaKaxji8ggapDZtFzdQgC4kASqndzOWm+67Y8bFa6
 0FF93EB3HtBAgsjYb/KgoXzUsvQdlOPj1tPFtCY7pLo2Hh+D+dYuzrA
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

In addition to MDP0, the cpu-cfg interconnect is also necessary.
Allow it.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml
index 3d82c00a9f85..51f3e9c34dfb 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,qcm2290-mdss.yaml
@@ -36,10 +36,10 @@ properties:
     maxItems: 2
 
   interconnects:
-    maxItems: 1
+    maxItems: 2
 
   interconnect-names:
-    maxItems: 1
+    maxItems: 2
 
 patternProperties:
   "^display-controller@[0-9a-f]+$":

-- 
2.43.0


