Return-Path: <devicetree+bounces-145919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C10A32CE7
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 18:07:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDF71188CC61
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 17:06:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DBAB262816;
	Wed, 12 Feb 2025 17:04:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FfwEZOHQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC5F261579
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 17:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739379870; cv=none; b=qY6PA/sjc7PHSw9zcbRumbkhM6OM2jhPoFUYtVoiLXrjJHmhgzfjvFOLmYy6eBVwyJ3KciTKjrxBFgtwHmP/WFRWCggbrL48uL+ZRd3XZbgSKDPpfquxdTWLscDD0VJBotp3PZgni33Mxye0jD/klmlPzHXi0uDKY5Cu/u7tkJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739379870; c=relaxed/simple;
	bh=gm/du2YybA38W7YJqV/I0UhkP/ii9HBt6Lhq0K+G8zk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=h5Pmt4cyA2ZZ3D3Puuuv2vOPpPxCRqyc6aCINSjkt3HHAVcDAM3j3lyIIgRZDEocUJ1ote9glm61mvLut72TvxAutau8+xYLCMlC4Xv1JXCnxv1lx9iUqD9TlisGxzV41OgQkpUYcqmdGWE2JottSB0xq0NKCImPB3yOCsG+gwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FfwEZOHQ; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5dccaaca646so2111535a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 09:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739379865; x=1739984665; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ImRVu3AddUI/G7N8wE6yWqCv2pDeO8zZgPLOwwAUrbQ=;
        b=FfwEZOHQ5WfoIzMz/vMtt3jhfvrybbKssShql2Z4raVq2oeUWvBNQSNgbwv8X2DRot
         d8rWvrXbZXXdae5XZ54YlP/7cDZ5EZZ0Nh9vgbPYmML7xL/qj4NXuwOWzzePKX5HAQpb
         RGgGN2JILGHceifqelmt5Z8K5wMthd5g12gW9HpyLScSkrUp2FnNoizA/fMAfh8eVQx6
         yeE4+bS9RsFDvYknZ9YB4lavp2FRqqWZvpABG4fWWUXMnn7IlfLGkkpiTV3kCL8y97Zn
         08GiqlY526PhhQAY4nwig49fb3smD83/shfIaKAaZMxznC+WCFJvy4SPXL4F5PR5XjOk
         N+Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739379865; x=1739984665;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ImRVu3AddUI/G7N8wE6yWqCv2pDeO8zZgPLOwwAUrbQ=;
        b=tg7lFkpPi6S2XfBd2GbtOaLDmFze+3mMvOiqDVVIc7UQyMR9ksxEOnT1ZI2t7aqRsQ
         BHEkDbOEI+xQsP39EBuj4eJOffV3BF104t70hq4ac6MFHWMuLZn48EB/muF0vCwKKHHD
         qURV9weQDP5MrNTjhLTJJcUSF38QQaDZ/vbAiGrdUjTES/ck4hcW7gb5ZweZ3ZKTfEWp
         pCfvdph1DFr5VXaPRk4JZQUoN/pr8lHmD6QCLz6Ibp1qy0+gvDTCrvbJRIfzFK9YCe2O
         ZLq9gKyXdV/FUEQk0gWuVpi6uq/Pfscsg4i945VVCV2pGiwJppRg9IOMsdF0zamvUbKX
         RVgQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmYYQbni8GHhiamwzAmmu3215Mpf4fvITrmPhOHnYeOpl2hZGP0wWrT56XxMgSQIQz/nddPChjTGIn@vger.kernel.org
X-Gm-Message-State: AOJu0YxJDc5uoy9o3tLQOdWXT6Bz9nQG0hjqj37LoyKT4jIf+kipo+9Q
	MtrCoMOzQDmyGl9/R2SPa9+qhfgqwN86yFM7peiwgSQ6Zewd1wdcMNpHS0Qc9eY=
X-Gm-Gg: ASbGncuZXd9CmdPvhQs+UOuzKMkT4pHIis1qQ0NMtbIxw2j1f9DASzGnGedrceRq/iD
	6mv0muJEG39a18A1bF0sEMdxGzpkmRmVfQ3IXIkhjly4fTamlPDZ/wm3R+1mNGzUtlxXwi8NG7q
	IHmJRU84138b72sLHBncLFxIj5kd0kvcObu92gtaSZabx3NLGyoVvQ7hAXCHZOf6pGtbNsEQzzs
	3p/w0K0Ou1aCI/QtWqzjbQXDoY9DmffhSyhAQ9X4igWS5TfQScA3ERPMUDqF1EtVhn3WiqN2JNh
	GBAi/hbQn0nuSmwskW1CTrdal4FL
X-Google-Smtp-Source: AGHT+IHcYXuecofg3yiMP0NUjYpDinedFykVXcImtUN6fTzgyJOzlkYtZX415Z33x8WimpPahFb58w==
X-Received: by 2002:a05:6402:2755:b0:5de:5939:6c34 with SMTP id 4fb4d7f45d1cf-5dec9950b77mr20409a12.15.1739379865117;
        Wed, 12 Feb 2025 09:04:25 -0800 (PST)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:52e8:f77:3aca:520e])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5deb9f6e46bsm819230a12.71.2025.02.12.09.04.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Feb 2025 09:04:24 -0800 (PST)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Date: Wed, 12 Feb 2025 18:03:53 +0100
Subject: [PATCH 7/8] dt-bindings: dma: qcom: bam-dma: Add missing required
 properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250212-bam-dma-fixes-v1-7-f560889e65d8@linaro.org>
References: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
In-Reply-To: <20250212-bam-dma-fixes-v1-0-f560889e65d8@linaro.org>
To: Vinod Koul <vkoul@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Yuvaraj Ranganathan <quic_yrangana@quicinc.com>, 
 Anusha Rao <quic_anusha@quicinc.com>, 
 Md Sadre Alam <quic_mdalam@quicinc.com>, linux-arm-msm@vger.kernel.org, 
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

num-channels and qcom,num-ees are required when there are no clocks
specified in the device tree, because we have no reliable way to read them
from the hardware registers if we cannot ensure the BAM hardware is up when
the device is being probed.

This has often been forgotten when adding new SoC device trees, so make
this clear by describing this requirement in the schema.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
 Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
index 3ad0d9b1fbc5e4f83dd316d1ad79773c288748ba..5f7e7763615578717651014cfd52745ea2132115 100644
--- a/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
+++ b/Documentation/devicetree/bindings/dma/qcom,bam-dma.yaml
@@ -90,8 +90,12 @@ required:
 anyOf:
   - required:
       - qcom,powered-remotely
+      - num-channels
+      - qcom,num-ees
   - required:
       - qcom,controlled-remotely
+      - num-channels
+      - qcom,num-ees
   - required:
       - clocks
       - clock-names

-- 
2.47.2


