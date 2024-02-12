Return-Path: <devicetree+bounces-40977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 85C8F851CEE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:38:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40FFC28357F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:38:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31C6745958;
	Mon, 12 Feb 2024 18:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Mxt0im9n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6540343AB3
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707763094; cv=none; b=uzK2eNKp6ZXNMrjL+n8e3i5tHLvBAgHSvccqd5UcTgY9IrU5Ll9qs11gJgXpW6wUm4vRvXDTJHfpGhsueukBf7D58LpEHqRo0bvssM6zugcgM8zy0DvRe+JIrSxnGYnz2nKO48MSvRyiAyG1efULfPK8bXm9zYRMWFIomHVrNZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707763094; c=relaxed/simple;
	bh=DXZJ8SdU6CyY1sR3YPxqZTR4REG8xqBS+RKXIMzNoAQ=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=SwflODrzTzUxOsUJ9okzzBEjRJZCOrvzid+eFyYoXV++AAEKl8rXA5wZ9cd0XiAIaYfOKwbEBOz+geyXvmpRyn79zXwvFi9VQCKYAn7o/AIT+6dxL0SxYn5fyituGAnTmq4EvIWS6MqI7Ghv0QJ8w2a3UfN4VBZ4Ax36+LRTDaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Mxt0im9n; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-33b88069a61so463086f8f.3
        for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 10:38:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707763090; x=1708367890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yfY1ZB/UR7wkcYg1UUPlepgpCujw5oq7QYtIrjgAB+Y=;
        b=Mxt0im9nvt59lD83BBYUrPtR36Q2bs+p17osVcrPpCmnIORUA4s8KXzG5ZR53us5JI
         4jJwoaJEzjSmK1ryidsMLO8nqLRbkGXk+lNXdBFHoyz7Uiaco/iPG+9Ykm4erZJLqqnl
         vGisHThGT0rNv385g2SLKiY1b4NsZvjYhx9yDPWPuPf+w5FBjqOKPM7Et3ltsXcdpcbt
         YkdsZNuRLDf2tYw6qUw6Wp4q4f250kosQfXn6oc9tP9mtF4qxsg3Tk8VoZczI8q3lu/y
         qWb7BgGDrjOohkD9N+Ubujs7eYLf2YVlbuL93gDCkEXLWEN2gMtiJUQnLgPZ5MlGY+rx
         iGaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707763090; x=1708367890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yfY1ZB/UR7wkcYg1UUPlepgpCujw5oq7QYtIrjgAB+Y=;
        b=fFKFNSuCfJXXIAFvKc4OZBpYPrtBagOZEmALZ96SnFnbwNpeoYqnWF5qz+lv2UH+HJ
         5NeqhhiJbj3jUpAE9n1AAUjajgCqQ6/Iop8oUJjKTKQHGP/URIhDU7RAILGdxyGK4s7W
         L4bjZJkPoeeoE+tkeL0qxT2DxOugnGqW0MWgBMvs97V0/0/xPECJLjAS8vSRYEZxu89n
         0B/yp6iVVVshbEBWaedWuPyXCZpRHK+6oWtFI6l0IADemi4mm/upMSC6pe43baeZydAo
         RjimxjwrlvpB4WEPgTcHna+N1CqorrsiKwP7WIollO8sQj3DKzqiXxb7GCLi+BbSWnQA
         Mm5Q==
X-Gm-Message-State: AOJu0Ywb8CFBZXaIyqguwvw13r+iQnqZiADDLydUOYv4nb8Q3YqBGE36
	ocimRT6L6eJJIBqmYJHHCTYctUfiALm2NJolN0NVw018hm0mlN+Vm5niiqxtZju7YeVJZtH1r0j
	/
X-Google-Smtp-Source: AGHT+IF/hwYTN5gLQ3qKoL/DyWJ6yvMswElKu2UQ/C7ATTeBnESdqrjORtlS1g8/T6sopeOxxWDqTA==
X-Received: by 2002:adf:e6c9:0:b0:33b:26be:c5c4 with SMTP id y9-20020adfe6c9000000b0033b26bec5c4mr5070145wrm.58.1707763089714;
        Mon, 12 Feb 2024 10:38:09 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCX7FwCqc3uSItW9zR6KcTc+WJpnm2J7Ag+uFwzHbEezPbTiJaygZkxJx+XyzmpzoumVzh/kUWE9s+ujy3btOIRxOBbWcTsl3baVUVjAW+kBNP58Zgh5iyJBuq+OYyr1hm9XfVfZcJOXrn125Gd7Wu5NwnW8n8C8E4+zzpr1eMqYM4HKfr68ddz6O7DChsNT/g9geQCsrKcdzrUsUUk/3XyneUs7a6yOEPxmejAY5avb12SGkt1FXm3xZBJYLvGGSwWg6G6qSeDOZcEJNxZQyNsOnn2bsSvA1UN5G8/lDQQVCzTIqc4iuHTt3iLmYk4EAcjWyfeum7hjE4CIlKxEJstNCZTNs9hGnBGy1NlfwYdRL0m75u2j9Z4+fCAwqgGhxoMD3OPza07sIlgT5Obg1+sIsGIa8O5TSLURBB9AtFC7qdQEZTTCnQM7l81GDdg3J6kDDFvh0stEkP7uxYICEW5K
Received: from krzk-bin.. ([178.197.223.6])
        by smtp.gmail.com with ESMTPSA id v8-20020a5d43c8000000b0033b512b2031sm7447163wrr.114.2024.02.12.10.38.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 10:38:07 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ASoC: dt-bindings: qcom,sm8250: Allow up to 8 codec DAIs
Date: Mon, 12 Feb 2024 19:38:00 +0100
Message-Id: <20240212183800.243017-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Sound card on Qualcomm X1E80100 CRD board has eight DAIs in one DAI
link (for WSA speakers).  Boards with older SoCs could technically have
similar setup, even if it was not observed on mainlined devices.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

DTS with X1E80100 sound card using this:
https://lore.kernel.org/linux-devicetree/20240212172335.124845-5-krzysztof.kozlowski@linaro.org/T/#u
---
 Documentation/devicetree/bindings/sound/qcom,sm8250.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
index 6f419747273e..2ab6871e89e5 100644
--- a/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,sm8250.yaml
@@ -107,7 +107,7 @@ patternProperties:
         properties:
           sound-dai:
             minItems: 1
-            maxItems: 4
+            maxItems: 8
 
     required:
       - link-name
-- 
2.34.1


