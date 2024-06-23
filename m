Return-Path: <devicetree+bounces-78905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 83C66913A4B
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 14:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3C1FC1F2193C
	for <lists+devicetree@lfdr.de>; Sun, 23 Jun 2024 12:01:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9189F181BAE;
	Sun, 23 Jun 2024 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="necivQJv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD9E181B82
	for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 12:00:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719144034; cv=none; b=KQe3jqHy4EcUDT3EMWDFe6nyF2c9ZnYHIAWhKhGgVm7xX99eZNWiuY3C3o05g2R6VwPN0CRrjTBe4mMptLITCwseubf0z7aGuz5DXb169/btooIO/2Md5nWiaYZiL1w/FFaQ3mbUB08lXzamqRWFFqoVFocgFkQdKwXD4WKlgrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719144034; c=relaxed/simple;
	bh=w7QmicMOY3gkCg20Sf6J+bR20DHpDJ/1/bdy0XRaFQE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EeiqdHnpCd9YnmvnuJ6+fnsfPwifqpxm8qznSWGio7xyDZvBEidcHJ5hj8Gc4wd1/gn9/2cA4+x1hgky9FhBQY52Oqqpna31OWLh50Hehgb9bHtKmEl4xQ0+Ge3biUT3IRTZw8ZCUI/aR1bY/YgBj0ffck/8SDlbWObMpPqRpuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=necivQJv; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-42172ed3487so25412215e9.0
        for <devicetree@vger.kernel.org>; Sun, 23 Jun 2024 05:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719144031; x=1719748831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D5pRySu+ARf8jWv+YeotUn57i8P3KF+qPMZ7wIjslP8=;
        b=necivQJvFommC63knwOs+2OKBfec0oP7Fm6NH/8S0fbaBl8cxNpGekpZZuKxTlBgTb
         0iJ4H4HsOdPVmLINmqpMzTiV4W0PFVBFcXAKBGQ1mGHffRhR+hRHY6TZjbL0YwGm+Rn9
         dF4rjHCEqlgMDCooytESL6NYl5M/W1Ipkq4WMXJoO4H/+CdyKbKtf3Onm8DsZSPV7tLh
         8bTclQ40SbE6WyKIPf9kOPfDjqPZK+lP+o/fJ1fNILNtyKCYrZp0JjV0Kt0iyTkWAfqa
         ObtHgTwsL0ztvpZnD4SjCglOjPX7rqQdY9UnwKy4/P7SiXgYABeeq67Lw/JCdlZ5fSYs
         G5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719144031; x=1719748831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D5pRySu+ARf8jWv+YeotUn57i8P3KF+qPMZ7wIjslP8=;
        b=LisT4v2HzABHSapNkEQc2dWGFzJzAy0QhQGi6X3q50ZAj4vWgCVCSZ/fwPpNChtI+Z
         ADYhue9IoBhyoSiQ+awdGbUccji84tpTnU3qGytDduifTeoQxA00+uN6eX0ZrC1zw+9V
         ei+Bk1+vOTlbsLIUpw2ziZMXeqRtEeVrwUflCntEML6GoAfz+E3iMoXoFtG5qD9DiMrl
         8+RwR3SbotCFThwRFAyw28laXAmAaMWvwrw4oRVbcLgTrGv2fakTH35SwwZf0/jM4G7d
         +OTK37jz5DOW7eyyDTxGGU36jRSPB5AYdxKSNShvp9tPrdfNr7hFtCmFNeSq/W3z4lVY
         ziUQ==
X-Forwarded-Encrypted: i=1; AJvYcCUlKQY2s5I+Sc5x5UOB/Gscx7yAFrPCdrnWeweOxB+P3Efg2BY+MRFzlyfs3hOO3Ep+5qjwmtIur7ynJANmAdlNfYq+uyCJTkKsvA==
X-Gm-Message-State: AOJu0Yw5/ZkDQYsESNLeZ5Auj2o0dDazABQcJe+LPMjtWq2/p8EY5VRK
	lUWlSQlG7E3Yv4CfvK58fg6oyrlCRza0GJ8FrhF5vPRtPZih03m7QHP5L78yKuc=
X-Google-Smtp-Source: AGHT+IEXP7AJ8wGYP4P3O8ghUgKEsx/NMem41iq5obFqMs7hv1GsRgZtKTmlmuq84/7vHtVQVzL0xQ==
X-Received: by 2002:a7b:c4d3:0:b0:421:7c1e:5d70 with SMTP id 5b1f17b1804b1-42489e3ab62mr20397615e9.16.1719144031293;
        Sun, 23 Jun 2024 05:00:31 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4248179d3basm105465515e9.4.2024.06.23.05.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 05:00:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Clark <robdclark@gmail.com>,
	Sean Paul <sean@poorly.run>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] dt-bindings: display/msm/gpu: define reg-names in top-level
Date: Sun, 23 Jun 2024 14:00:25 +0200
Message-ID: <20240623120026.44198-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240623120026.44198-1-krzysztof.kozlowski@linaro.org>
References: <20240623120026.44198-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All devices should (and actually do) have same order of entries, if
possible.  That's the case for reg/reg-names, so define the reg-names in
top-level to enforce that.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/gpu.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 253e68d92779..baea1946c65d 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -46,7 +46,10 @@ properties:
 
   reg-names:
     minItems: 1
-    maxItems: 3
+    items:
+      - const: kgsl_3d0_reg_memory
+      - const: cx_mem
+      - const: cx_dbgc
 
   interrupts:
     maxItems: 1
-- 
2.43.0


