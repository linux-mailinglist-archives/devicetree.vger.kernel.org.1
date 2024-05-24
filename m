Return-Path: <devicetree+bounces-69094-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ACFA58CECFB
	for <lists+devicetree@lfdr.de>; Sat, 25 May 2024 01:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 504E9B21F32
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2024 23:37:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 41F72158876;
	Fri, 24 May 2024 23:37:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p62/M8bq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C87403A268
	for <devicetree@vger.kernel.org>; Fri, 24 May 2024 23:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716593855; cv=none; b=XI+84/+SwbqmmPgAOZWly69iqkc/LmfxDQ8j+bBLC2421K11JdbHn/JMFNC/E6TO/8LqTScR5ySpfP045Nk7jdDxzPVz1fuvdCpt+orvlxwUrIautmxG2U1fpZmXQ8CGb12A25bRSa1ABld0h4DJTslYmFCj25+dI3Q84fSqEro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716593855; c=relaxed/simple;
	bh=JflTLH918455b/UulNgm7hAclN0c2bENLU63KxD2kD4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oLd+8uXh0Ck8T9tRc7ovTPpxpSWpGOA++CG3o7rUMmQ+3IQdI6QEcqTZbMshG7w3It75anCZ9PwDy1y9pMzW8yJjiL2hoE9ZDIYuE5fDLWVu2PpAzCIeJjXky9kj3Apd+8JfNvTHR5J4GAPxAh8BxUt4iCTVZEUC2qMfD9prUcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p62/M8bq; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-354de97586cso4352176f8f.0
        for <devicetree@vger.kernel.org>; Fri, 24 May 2024 16:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716593851; x=1717198651; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NlfoWRsou0FGSAU+bRIZe3/8khkmJp6TNl2qzTYp4WU=;
        b=p62/M8bqiw+FXFtETOXYMWxqhn+VKlEzbEsETO9q+07ilVpgspvlRPV1iFfttI8u1f
         48KCp3n0B3ULuUI6FCra9hw72pNmSvWmqFNEwsmaZ5z8UpUvp8POJ3/7kdBzcyP85ovS
         W137+bADq5MiZWzn5W9DdnEO8zr1aYem9Wk7FIYuwumaeLCu3/3SB0yX6o3OYCPYWRmT
         l4zMTpmG2FBkPHuTdIFpJGGWbuqkRuVk8s/LXpTIW32duR85R+obGlaeuGzFIr7poBHQ
         T8CGm4sO0wP6yFDhwFbgQWfq0MhytDp/wI6rjuPsVIpcokAYANu0FB9FWChOB867BBSO
         1xJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716593851; x=1717198651;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NlfoWRsou0FGSAU+bRIZe3/8khkmJp6TNl2qzTYp4WU=;
        b=eqCerGzqIAeFMDrYI2wCVbfjesxVWBb6EEiJfDuScQ+muw/GtXr+IRB2VIq5DxNJfq
         NRSNE6YpwlmM2kFUdfAeUhOjEiTLPkNTbT9zWjZQ1UGqHqL8zM+ApBQjJx4X32rpl0oX
         ScX+xhtofciwukIiH2sjyxcg8zve1jF++VsS09rIGyO6laPAG8iDDhdpY2LC9rCMKTiy
         jcz/Av/Op2f5Thx+KSa74z6BaXKVO7r0+f37hYNdMyxmM41NNGPvPCQeNiciwbUr9Hk5
         D6ANER+/vs4kMYDu4HTZL4J3HIFP1tHOc7RZYWE/9JemXpeBrSIA/W3lz+oQqRQoeZYx
         qzNg==
X-Forwarded-Encrypted: i=1; AJvYcCWYSpb2lB8M69NnKupewO/GrSP6fz86KG5NMCf+w/uDOCzn1tK7Wfrii1gmiKgUlAP8A8LmsvPZZnBRSwg3dl8lza8vMEANq2gLHw==
X-Gm-Message-State: AOJu0YysJhcemv5e1KFgvCOqasTftshcDVBqSJDB2fyNbMTK3xsR4ar/
	o4Tx0SrLM+pUGDf7nzFHfJ3halVo4yjSmcUo7HPBt81LVRBI5hQJvRa93Ixcv44=
X-Google-Smtp-Source: AGHT+IHp/7fVQoSDDRZK62VLrQPVjXx7HLE+bPisvOuROu6qqrD/CTxst4QM9J4x5BskJua1Fbqmjw==
X-Received: by 2002:a5d:504d:0:b0:354:f168:9862 with SMTP id ffacd0b85a97d-355221273fbmr2746662f8f.0.1716593851065;
        Fri, 24 May 2024 16:37:31 -0700 (PDT)
Received: from [127.0.1.1] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626c938815sm189475466b.78.2024.05.24.16.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 May 2024 16:37:30 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/2] PMC8380 PMIC pinctrl
Date: Sat, 25 May 2024 01:37:27 +0200
Message-Id: <20240525-topic-pmc8380_gpio-v2-0-2de50cb28ac1@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALckUWYC/32NQQrCMBBFr1JmbSSZakxdeQ8pEtppOqBJSEpRS
 u5u7AFcvgf//Q0yJaYM12aDRCtnDr4CHhoYZusdCR4rA0o8yTOiWELkQcTXYFojHy5yEKTHVhq
 tJqMR6jAmmvi9R+995ZnzEtJn/1jVz/7NrUpIccHO2Ml2pIy6PdnbFI4hOehLKV/QwKoTtQAAA
 A==
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.14-dev

nothing special, just some boilerplate

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Restrict # of GPIO line names (bindings)
- Link to v1: https://lore.kernel.org/r/20240522-topic-pmc8380_gpio-v1-0-7298afa9e181@linaro.org

---
Konrad Dybcio (2):
      dt-bindings: pinctrl: qcom,pmic-gpio: Document PMC8380
      pinctrl: qcom: spmi: Add PMC8380

 Documentation/devicetree/bindings/pinctrl/qcom,pmic-gpio.yaml | 2 ++
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c                      | 1 +
 2 files changed, 3 insertions(+)
---
base-commit: 8314289a8d50a4e05d8ece1ae0445a3b57bb4d3b
change-id: 20240522-topic-pmc8380_gpio-e6d30861f862

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


