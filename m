Return-Path: <devicetree+bounces-12490-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DAAAB7D9B25
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:20:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3A8E1C20FDC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53D6C36B0C;
	Fri, 27 Oct 2023 14:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Pd9NHANu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0BF36B03
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:20:38 +0000 (UTC)
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8DC0B129
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:32 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-99c3d3c3db9so344314566b.3
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 07:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1698416431; x=1699021231; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f/YAcCQSyL0MrtnrGqDdCH8ykc9V+03QnHqH3Sh41Y0=;
        b=Pd9NHANuXdyDutJRghNRBB8Qbne9f6dkiWP3Em/pVqchrFambs9beQYLS1j6ZeThDd
         ODiF7mGAzx1OZmkZovzeRgXcawOnwb+8vwYE9pX6eUJeYzGWJTIxXNze7TYiqr9IHmLu
         Vsz6I+GbRN9O1XV5+KPgL1L1TkpCxCeeJrNVM9RfG1GEGsG5e323UeRAySgAB3Q8Fy18
         UrStoU27WAaa4Oq/RiZFmy59kweDwSf7m29rHIedlEYLzKsvfkoinfNfxJaurFivZbA0
         4aTTmoN0XZLwtoCLYygAqIkfo3k8x/XNFatlvMvkgZ03E7Y2uQKO5ZYzJmN8fbxQaO64
         zHHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698416431; x=1699021231;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=f/YAcCQSyL0MrtnrGqDdCH8ykc9V+03QnHqH3Sh41Y0=;
        b=gQ0fmp2XJ4E9cZr1jvQE/BGM495rij8ehWbDjvM+i4WNFEcbmog7dao5nu/m9NZQjv
         zFACdPWm3jewQoos/sAzYxdbwYvn2Mdsf7+P8AWqsPEEInN5i8Xi2PIhPgE2mI4tutaM
         E0fUG0/TrQOziCgKhagJJwWdl5KR5JwdPurXaw91/dg5fRb+NmX9LPDWwptshLc+/6Uf
         +TI6f1t6gGLCPubQIMsVws2nqHQuPTCXlB+7UB8T4AFDvKlHoTIls/+FTDm2SieJRadM
         /2V10h6CUrKmbVtAL5C+Q6Wic6IwQyYadlrVut9MX7AOVrtSL7kcEsv+Tp/CGM8hZCkJ
         Yr3g==
X-Gm-Message-State: AOJu0Yy+PqbILMLn3JeJIrIyjUyMtyKzk56DEbn4//W637VOWoo2HShz
	78jrXxb941NC2OrWhqPHMeppg3EAxLIFEEE+Cc+YEg==
X-Google-Smtp-Source: AGHT+IH5OCx1kUMTZKHFrbG9AqS1NrHdCbb9zdWSsXcRx4drhINFK/59KH3fJ0Dcp7kpH4gqfd3e2w==
X-Received: by 2002:a17:906:fd86:b0:9c5:f1c6:5978 with SMTP id xa6-20020a170906fd8600b009c5f1c65978mr2123696ejb.55.1698416430978;
        Fri, 27 Oct 2023 07:20:30 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id z23-20020a170906075700b0099cc36c4681sm1254076ejb.157.2023.10.27.07.20.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 07:20:30 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 27 Oct 2023 16:20:23 +0200
Subject: [PATCH 1/9] dt-bindings: remoteproc: qcom: sc7180-pas: Fix SC7280
 MPSS PD-names
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-sc7280-remoteprocs-v1-1-05ce95d9315a@fairphone.com>
References: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
In-Reply-To: <20231027-sc7280-remoteprocs-v1-0-05ce95d9315a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Rob Herring <robh@kernel.org>, 
 =?utf-8?q?Matti_Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>, 
 linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3

The power domains for MPSS on SC7280 are actually named CX and MSS, and
not CX and MX. Adjust the name which also aligns the bindings with the
dts and fixes validation.

Fixes: 8bb92d6fd0b3 ("dt-bindings: remoteproc: qcom,sc7180-pas: split into separate file")
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
index f10f329677d8..6f0bd6fa5d26 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sc7180-pas.yaml
@@ -114,11 +114,11 @@ allOf:
         power-domains:
           items:
             - description: CX power domain
-            - description: MX power domain
+            - description: MSS power domain
         power-domain-names:
           items:
             - const: cx
-            - const: mx
+            - const: mss
 
 unevaluatedProperties: false
 

-- 
2.42.0


