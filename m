Return-Path: <devicetree+bounces-215916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ED61FB5322A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:29:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1ED91A82FB2
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 12:29:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3466D32274C;
	Thu, 11 Sep 2025 12:29:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mVE4cGqg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53144321F53
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 12:29:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593762; cv=none; b=bb/AXZEzm2JCojVP4f8UPaugsKCaSecw3xTTv2H/K2tNjmgDq8Fr3XCuHW27eyOJYG4X/pfz5iKdNFETZblyWMg1AwA691cJxgoliRGfGISon20mZbqi6NuT/a2NGmqpK1BLkGOpjygSRW5H8es0IoS+z/ACQATnBmAhWJIqsyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593762; c=relaxed/simple;
	bh=AnOXO7m0V2+5EV8Mv50wScBsDq9l11L/Vhh0fgbgYEQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Zzk7e7TUT5A16rOFccCyY0meUW1NfllkSVm9xaB7g2ot7uOE5Ck6uRQ2/e0XCScMIZYoUv97OIr7AqF3Y7oKZjDszf035xFeRhD//Sdj/JwidGl0OZTMOuUwFFqS9WwE0lHAv0rzy8YSPWIZeYstoxSi9XbQC9KOcRUs35OUryo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mVE4cGqg; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3dce6eed889so675726f8f.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 05:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757593758; x=1758198558; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iU5qxqQ3QlAqV/z++RFsbMDTEhPRXVKvJSuYqKmt2lo=;
        b=mVE4cGqgm2tA+14B5FaZ0pixUqx2YS3RT7zmy+bleHHPCcYmwDllZFDcxTwKVgGvG4
         JPUtkM8YEzqWQKfqicOLixw/CODjQFAudFJGV0ktojNUiz8mZ9NsYWRdo5sf5mm8lcZT
         pdZUNCAW4zxpz4wmloeHC4gV0urcJx+T7RgdgTQ5m6IBeLw1IwUawUCaxTRQiHPCi6YK
         NbAsMetfpvth6Oc31DBAJDtC0jzUU7xsh3ROtzRSsvWuwQvTWAqhUuQycvqtN4sRDeXz
         2siHc0M2tjcmtuJDero5W5hXAuiFt0ZvZ3Dp2l4c6PmymdDMQroIGcQDag+Tx+kdOrbe
         z3ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757593758; x=1758198558;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iU5qxqQ3QlAqV/z++RFsbMDTEhPRXVKvJSuYqKmt2lo=;
        b=ot52d/9dhxXHqPcXm/R52pKm5+uMLNewJHm5Pbqjk0BoxpiqOp0h5XY7bpeULdlS+N
         ZkNNOyEhZM5loVrbJB/mjLX3T2BKtd3ouo1Ijwrz7Ytssd9abSq3//24NA71xPzBsa2t
         OWtrt/9fwY2PEUDVkGzpO9KqaV9TyU/noHtInt554k+Mb0IoOYAzGVcIujahcJRX2IDf
         3YJSKSdI6kSs8GFa5syRpI6DBC9okAaXK9OhyBAGBACQGGpZ/yclSnGWhEwPWiWWofTS
         BIlGZFGSmdG+BEvrW+STn15HLckRuPj0bkYSf8kp8cisU2bxOCgfJP8htAvL3ZCt9D5M
         ueDg==
X-Forwarded-Encrypted: i=1; AJvYcCWmj4PDp6Y2NAwbWTThmESIXPHrsLhJOLMU2gKhXV+PWE9IxhtGjmP3LUr4dN+1fUZYTOuCiKW0h8LN@vger.kernel.org
X-Gm-Message-State: AOJu0Yx6NObFKsL9wROaCnLUIKsm17/0PV7X3NMfTeHe6cwf8RbShqok
	ELEHXnglJ+p/ImowqiIMberY4ATYUB8pV3n35vb3vzPb4KKByBTeXl3ZsjIN+otBxoM=
X-Gm-Gg: ASbGncs6GN3MO8B9h1GLuYfMEnFd0tyubkCcbk9wbHh+8nHl0RAOh2kW95mWv9dilMZ
	p4211JO2tMZoSvIFsQcQ74y/lAyrDYkeRgHd7y9LIx/tnXFxGSkCkX7f6MRGy/iuSv+17pNoJ07
	1qkR/r5ybWztYDD7c5fKxZJ+ukJxhDOUstzwBcyN7h+VPaQbLUlJ4p2QJSMgD1LUezz6nfPVvwf
	IMaKWZ8lQg5wjCfVBoGnGOePPFdWeHn4h/8aJsOCOaOyQjrbfbsRLMVG90R+hYqbmuhPcq7AQFh
	QrIq/ZwfP3eeSdSpS+696bt/4GEtCH94ZNnpC45mfq2yno7EyBmmczS6pAoXDtHrtAxT68EqAZw
	u4SC+tgivfpWPw4J2A9TsO2XcYJOvFtM3ig==
X-Google-Smtp-Source: AGHT+IFWZTWiXMDADOt1G4QAp/SFmNA4LJ7kToOBm61D0izqVFxvUQDX8KXFSUag/JDhBo37YTQjjw==
X-Received: by 2002:a05:6000:2502:b0:3e7:4835:8ea7 with SMTP id ffacd0b85a97d-3e748359441mr10681959f8f.8.1757593758409;
        Thu, 11 Sep 2025 05:29:18 -0700 (PDT)
Received: from hackbox.lan ([86.121.170.194])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7607cd424sm2230444f8f.36.2025.09.11.05.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 05:29:17 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Thu, 11 Sep 2025 15:28:49 +0300
Subject: [PATCH 2/6] dt-bindings: display: msm: Document the Glymur Display
 Processing Unit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250911-glymur-display-v1-2-d391a343292e@linaro.org>
References: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
In-Reply-To: <20250911-glymur-display-v1-0-d391a343292e@linaro.org>
To: Rob Clark <robin.clark@oss.qualcomm.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Abhinav Kumar <abhinav.kumar@linux.dev>, 
 Jessica Zhang <jessica.zhang@oss.qualcomm.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kuogee Hsieh <quic_khsieh@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=906; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=AnOXO7m0V2+5EV8Mv50wScBsDq9l11L/Vhh0fgbgYEQ=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBowsCRIB7YzDXcPBwww3XfuZwJ96qdhgZxW+R9+
 CJm7Erg+b6JAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaMLAkQAKCRAbX0TJAJUV
 VueyD/4vMtmE+QKJqal9APF+kXMGk4ZAPOWfXP3dl0dBg+0h0tdInJRu/Do4YH125zjiG5dBK7u
 +HWqfLrlaWCCFKoTSyJ5cwIQPjz1uNHUKADtGkgTS/35F5q6VQucEthCeqiAPzdHN41oGG+AGBB
 VMvPgvrAITIVenCzY+QHi1urWXtgkQhdazYZf0xpH4S54w2s97CAhnHOd5lOCfHeifAESXdlsWt
 ponTQTcqvzEH3zXsm2rWfOghtc0STMzVNqafxZZL+o4MgghO/D6G4uN4oqbKwLOVf4SCw9vAlF8
 7AX9jZ49eK/+nC4An08NNEka0KepmWEmv0AWuNkMv7PS0Y2kOYo9tRMizkv47I/9gUbnfVEjmZs
 SoMzlBKNMDjIqa+yK9/lbuzij/tgObP8qFtkbxjD1fdgSunKi61ldchgvC1/855LP5Rlpjwf4v2
 1f+IRct9ASrlOdUpUIkMX2AFfZPyLxqTSKfjy0+F0z7VlAHFpiyVVFRNjBbawkwmudOIasgH1N4
 Ln7qYqSejvwnLyCmTK2Xi2xSRZxT/lGgxV8mpdz7FMQ0nIUQ62cX5lwljAGpyUO3lcnFGgozpbx
 KCyz+KBDTK1WbH1hdhXBf7Kxva2WOrCawj578XSp6vEaRRfAzBXV9uCer5NORaIeKZNaBr/RWyh
 Ys0TT+ArWe7Uq1Q==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Add DPU for Qualcomm Glymur SoC which has very few changes compared
to SM8750, just enough to make them incompatible.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
index 0a46120dd8680371ed031f7773859716f49c3aa1..feb1b8030ae0e381118a9482252a915199e19383 100644
--- a/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/qcom,sm8650-dpu.yaml
@@ -14,6 +14,7 @@ $ref: /schemas/display/msm/dpu-common.yaml#
 properties:
   compatible:
     enum:
+      - qcom,glymur-dpu
       - qcom,sa8775p-dpu
       - qcom,sm8650-dpu
       - qcom,sm8750-dpu

-- 
2.45.2


