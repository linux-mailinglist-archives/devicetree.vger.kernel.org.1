Return-Path: <devicetree+bounces-138842-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 74073A12873
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 17:15:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D63363AAACF
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:14:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2EB71C07EE;
	Wed, 15 Jan 2025 16:11:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LS6aV9Lh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A8518A93E
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 16:11:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736957475; cv=none; b=txpOZpixcuScipFS/Q5khdY5skHCp1HwfLkvfbMKIA+3i03hWDIniwo0w0/hxvpivz9+cec3Px4ePz2f4hQ8NUHuSheN51/29XK2i1aL0Ng2y3nhhLO8e6fDYgAe3mOD8BjBLzHD380sH/mBgmPEmslaafnIcq8EhFS0tk6HrcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736957475; c=relaxed/simple;
	bh=QUweSS7Ezk07GROe4ptc2JCbOPNeoO1DPWPu/QS6yU0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=U8tJg3OtnYrI9xnfZs4GKNjsdzGF8efKskvHvYtbSRHpPh+O6wI4yoFPcta8Ixy+KTh0RmPkulOL7ZbFeZVullgBvDokCWmuekOT6Ay8ZB7XHAPxM/cv6b8UeTou1Xy+6xEbWH9A41n4qQ3RLg56Ez/GESgCoCT1xedBpEJc3PE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LS6aV9Lh; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5d932eac638so13286379a12.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 08:11:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736957471; x=1737562271; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zWj3M8A+8QkmZTCPt7r4bM5zsk4erApcDBVhUj+B4N8=;
        b=LS6aV9LhUAkX5U1c5UhixWlk6gEAEMf1gedD/7ophK1/eCyIQRA11A5DbwYGN3zWyK
         4x0XXkw0tLdvu05r8O+DvbW5pBj/ZRFy5F+ClA/gW30vylYJkz7Uo9PnFwVUspXxFULt
         J3Yl3QcpULQ9u44mt1MKA4HXeVke/0N1Ae+Am5v6FKvdGaehluNDpcZsngtFYNwrwrvp
         jENiqZsC3Q4i+98M/g2VLhnQMVihUZoAOAnrT9TBdH5L3aeJKxCBFov2HsofbCEny+RO
         Ir1cli7m9aCAr14otitnBxgYeb6i3Oxw/9ugB+TVibkEXJGmFVkFGVOfugVDL+h8AvL8
         XXjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736957471; x=1737562271;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zWj3M8A+8QkmZTCPt7r4bM5zsk4erApcDBVhUj+B4N8=;
        b=r5RDdxfFJ6Hrv9dkZVE7i0zK/glcWaCcyqNlfypoE1qgnpHTdNQ30qD/b8XbYeoBtq
         fIthE4rDm0RZTZ9Cs8v84eDhn1QLpp6Dlu/vicksSNoR5nEt1v6B2gcsB05OcZM6o90h
         3v4pi+ucVcZf2Ddhba2uDBzSjp7fTksRGXyOEiGuA1th3fzRSbz1pnsWTkyo7mH/OLgx
         /S4tvjt68Hddp6xhIItlWYxtdVvLpWC3eAqXivXWCyt0rwZ/o6tRSlN3Q/63UKcym2gv
         zSS7bbfge0EkncM4VIzzXAcIlqZGO8wom1dlp4GP+vqaS2bLT9jXVKlCr+Aki17pSsGO
         k3rw==
X-Forwarded-Encrypted: i=1; AJvYcCUcsQ02QlRFAEfJYGHqbVus9e1ZgX3bpdiUzlGcG245KY481+5qWZwa13JkKzRGl8OkiqjPj53RaQmR@vger.kernel.org
X-Gm-Message-State: AOJu0YxYOzSB4hYCn60LLwOpdrnkFROsoPojw1D/xF5iFpWLaM35PUNN
	K7ox8cEOZCPOm81WUbpMxgvS3biaSrqZiVlErvIz3uQFLl+9dMEKnS+BE5BsIro=
X-Gm-Gg: ASbGncswhdxHAa/PpGnO6aDcllVeGgFF4WIiFWKvAcwXkuKvOThKxwmmwZbP7h+Lm5R
	n9+D+uNp/CDfm0Xug89NiiCwQ3LA56KfLHSQ4gKB8azfb+6ODvH83qlc5rMcBidv554JYrdQbmG
	ZIw4LLPSgpSt/P1YbMwVVs77LlxK5lRS/K4I1C7EGdDQcQnTESdusawdW+ZAF/NIAtNBr99X/ys
	SRGE9CbTomPpW1n9UgX6jPDthOHI0uUOyETBShJguXzxCT6Ts9aO15KR/xZrFrRZgwD/uPFsdE4
	YCp2Nnxc4MlZ76hFQkD7IQGNPJPeo9lQMYSMY5uI
X-Google-Smtp-Source: AGHT+IFGVlW2mK15C3vwD83ymqly7SGDcdZjGDfxtGUMODDwfwmSvKBHDe930bRBFlKZrwP2V54i3A==
X-Received: by 2002:a05:6402:13ce:b0:5d9:f0d8:22e1 with SMTP id 4fb4d7f45d1cf-5d9f0d825d6mr625838a12.9.1736957471141;
        Wed, 15 Jan 2025 08:11:11 -0800 (PST)
Received: from puffmais.c.googlers.com (140.20.91.34.bc.googleusercontent.com. [34.91.20.140])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d9904a55f9sm7416232a12.81.2025.01.15.08.11.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2025 08:11:10 -0800 (PST)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Date: Wed, 15 Jan 2025 16:11:09 +0000
Subject: [PATCH v3 1/4] dt-bindings: arm: google: add gs101-raven
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250115-gs101-simplefb-v3-1-52eca3a582b7@linaro.org>
References: <20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org>
In-Reply-To: <20250115-gs101-simplefb-v3-0-52eca3a582b7@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.13.0

Raven is Google's code name for Pixel 6 Pro. Since there are
differences compared to Pixel 6 (Oriole), we need to add a separate
compatible for it.

Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
 Documentation/devicetree/bindings/arm/google.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/google.yaml b/Documentation/devicetree/bindings/arm/google.yaml
index e20b5c9b16bc..99961e5282e5 100644
--- a/Documentation/devicetree/bindings/arm/google.yaml
+++ b/Documentation/devicetree/bindings/arm/google.yaml
@@ -34,10 +34,11 @@ properties:
     const: '/'
   compatible:
     oneOf:
-      - description: Google Pixel 6 / Oriole
+      - description: Google Pixel 6 or 6 Pro (Oriole or Raven)
         items:
           - enum:
               - google,gs101-oriole
+              - google,gs101-raven
           - const: google,gs101
 
   # Bootloader requires empty ect node to be present

-- 
2.48.0.rc2.279.g1de40edade-goog


