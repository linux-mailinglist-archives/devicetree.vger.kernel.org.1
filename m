Return-Path: <devicetree+bounces-213396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A9B14B454FA
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 12:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AF24B7BF172
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63CF3308F1D;
	Fri,  5 Sep 2025 10:41:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ZcwfmPxg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 035B53043B4
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 10:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757068866; cv=none; b=Bgne3BLWnzVBe1S25nin6n5UK2Y2vySqgycvpdwAWLpqNUJrDR0CC9+BoJxqsWDKxLUsMIwGl/BpP7Mx9XREzHYC13bdQ6yBOLBppcUyPpb/h58goeVKGu1PqKkNBVwaC8c+8H91WP8wjF2pmU15xynGbVIKIoTIEF47Cyb5BYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757068866; c=relaxed/simple;
	bh=UimigBuUtMxs7F8gG6umklkndUZUFsafBa5o33+qqu4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dkS/PM0AkjZfyLmjpfA/ueUKk+btC9DMyZL9Lp1mb7rv7mGPWkWeimDCzdePneqpIJ6HhZdfeM+vxcp8JHATaBWP+ZyIym0wWH5OyZfamNlCjoEYA3SqhoPKYTKe6yTNxg0jB6nphucxZ1s7RS8BDpPSs0ryZLak+VyGz5SRl1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ZcwfmPxg; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3df3be0e098so1078442f8f.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 03:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1757068862; x=1757673662; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4h7YaMzyJCzszrOQdboJaFyzXH8sFl3aopVTcpiY4P0=;
        b=ZcwfmPxg1kS7c4snlPFJGd3LpftrF0U4jOpMYyjkvXjXUhoB7GO4x7mwEedpHIGaac
         FcjWCBH80WKu9FwZ+ucf4GqwMtp5K++vVKguT8RLEaE5lrcY02Xmq/Bh7eS6yUM2t4Vc
         8aI+x+wV+lQZr8Nh1JBC60cITCIdfri5tpxAncb8erHY0IrYQAM33WlTwd9GzZPU4LPJ
         oM/n+gmfXBQNn/+7lOPnrvXOuU/a9ynpC8ZHeXOAD+HS5PMiLr9X0bVa+K+U/jCrBd2r
         Gh0j+uZCPbHi0gPt2zOuFVFPfECUufWbLy6lDfshjqzeUMlZLQu37VW7yUA4KC9AD4du
         MEwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757068862; x=1757673662;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4h7YaMzyJCzszrOQdboJaFyzXH8sFl3aopVTcpiY4P0=;
        b=vy/aQTVJqKERWb+9BQCGMYBwYq1rqYNyZQAwuhSlkI8JcDf4895/hAlWsHMvMJnYA/
         plJ4DGgvx7dmjbZhsd9US7htMZsYvDbB+fmst6Zrf0ILShKlmYn3BIioWW5pU/ehYrBY
         agRc3jjPF35MA5Thx1oxR6HoaolbyauDySV3iZovDU5mWLWWwIZLXi0sUXg9kxRKOFhs
         0GNUJss0QZOZbjHGxIucclG+wfcWz5jVztKkEur9Zm+Y7wyZW/hbyZzeSEQeUClbgcqG
         Abnqxc80+8mqzTLaDtzsl2JOy3x8RpgHAbF38zD0reU8ehJNJUNoRWtpVtCQj+S2dBnD
         jOMw==
X-Forwarded-Encrypted: i=1; AJvYcCVFzMmm1BSxhsz5Nxjh+BxAxCGX0EZOZFit216pJ6nlSc7QbRxwfKQdkoAi6we7uyAjlklwUf7wQPJU@vger.kernel.org
X-Gm-Message-State: AOJu0YzIJR6wwKnNKfscKevmoEk5WB8no7Wm3Cmypwy39oDXlewfCZ4H
	G152tc+cnWB0/SXFulLp3scAZYfd4LEqBANj+a7qL4jlGqNlMj9HeFX7ScHWPjNiQXw=
X-Gm-Gg: ASbGnctQUTlWTwY+wauN0xv4ifP+h5SIhEdbaYMMX/DmTlaFoLo/w33MlsTQQuKqQbb
	GIkfNc1rhAy/AzoAp3gqGwPIEglt+Lswa30h6NXouDXu+G0nE/omBPk3tVXDUh0Z4+2zMROrxuv
	+rpt4LPTLd3xFzwqqxs3nHVuemZQFRl5+9wKfMlO7KAAONGiuo9R1mVSlv2aBnM4I06LnJUr3qT
	Dqg7Mxcsia+K69P0Ww/gtVXP4/EIaCBgeRsgjkQ6FwZfFdjFya/zZQAR3z6WRG556w6VbRhMp6/
	Q59e+JGau5uQGF9q7VAN/hbhEd5ukfJ4z/LP7qccfpFHCMrM18ShCoMi55DNjEbf8Ccxe8UbFbz
	R63Jb6QSX3CFMMCgHc2cdPFv9xuyEj5bZEseGXtgm8Br4y4yoTnerJ18zxy4qzsJf1cB9rvFoht
	sgMWcj8f7LzY2cZWZABf0SUySF0+re4g==
X-Google-Smtp-Source: AGHT+IGtbARUvUaTJ4NIeSDeweSSytYiW6yHSoPrHxfTOVtady6hveXqNdHAZNNKJxa9x3TrxVsf3A==
X-Received: by 2002:a05:6000:24c7:b0:3e0:152a:87b6 with SMTP id ffacd0b85a97d-3e0152a8a00mr6371616f8f.25.1757068862097;
        Fri, 05 Sep 2025 03:41:02 -0700 (PDT)
Received: from [172.18.170.139] (ip-185-104-138-158.ptr.icomera.net. [185.104.138.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d6cf485eb7sm20990738f8f.3.2025.09.05.03.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Sep 2025 03:41:01 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 05 Sep 2025 12:40:32 +0200
Subject: [PATCH v3 1/7] dt-bindings: cpufreq: qcom-hw: document Milos
 CPUFREQ Hardware
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250905-sm7635-fp6-initial-v3-1-0117c2eff1b7@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757068857; l=1212;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=UimigBuUtMxs7F8gG6umklkndUZUFsafBa5o33+qqu4=;
 b=DY1pFCOuq1avbn5t7ZPvcE56wWF7XIf1yrr3163XBBi/yD3M7RGi5JrUxggImZlz8IomMu7gf
 B9cbK5HaeebCOw3btr4WhZILE7SRIK7H7piwrfjlehWfycKYwf+7HoW
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the CPUFREQ Hardware on the Milos SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
index 2d42fc3d8ef811368c990977173f41b26535e0c8..22eeaef14f557d615b06ec13e71daf86018fcdc9 100644
--- a/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
+++ b/Documentation/devicetree/bindings/cpufreq/cpufreq-qcom-hw.yaml
@@ -35,6 +35,7 @@ properties:
       - description: v2 of CPUFREQ HW (EPSS)
         items:
           - enum:
+              - qcom,milos-cpufreq-epss
               - qcom,qcs8300-cpufreq-epss
               - qcom,qdu1000-cpufreq-epss
               - qcom,sa8255p-cpufreq-epss
@@ -169,6 +170,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-cpufreq-epss
               - qcom,qcs8300-cpufreq-epss
               - qcom,sc7280-cpufreq-epss
               - qcom,sm8250-cpufreq-epss

-- 
2.51.0


