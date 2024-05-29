Return-Path: <devicetree+bounces-70436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C458D3543
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 13:17:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC14A1F2373F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 11:17:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A195616D9AD;
	Wed, 29 May 2024 11:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YwtUvQI8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08BC14A61E
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716981445; cv=none; b=H6/Ja5y+MLLArK7guvihs3RZveLhzrdHQPaseEnJkh3vp1rU/sr8LvwrGqf9AoNZWIxxtFh+4mruPy8625XhDR59CytQS2rl3bQZJhZBuqqAzj8ikYSf7boLeFpHx9Mdfp/FE+Q+ANfbyJyKRhty/ZCN8vARzDVYno7U7FrGHB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716981445; c=relaxed/simple;
	bh=T7Z2Sck/jt0itBe5pBFyR8LvjbDnUNo8VJgcGpOJdWw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=K+8Cdvmq5QQHEamYjP3XIIACZiE/6+IYwaWc1D4botIFBXXoA9fVy9NdjBwufXMGfyHhbjGtIuQOedFn7W7hakQhQaAlPzD0/dQBZ+0Jl02Ixky+W1tJgifzSxNUWLit5cD4oFrWC47V/LYXeZxN40bxU2OGnhvBq5ZBEoE+8Dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YwtUvQI8; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a633ec1cecdso194048666b.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 04:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716981442; x=1717586242; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GWT+Yj9aOVJUdE+s/PQsri3HPWPJOWjaNrs5+NUd7FE=;
        b=YwtUvQI8NqvAlofpn88sbPfSPg8TKToBSIgyRFcmq/W1gQ1LN8ApJN7pymrb84CDRO
         4CtAQeFhR341twWiCTUwCApGvUs5D9D8M8zfPKksbkmTccd99FYrvUHkKrgNNtURAb+b
         1JRJKq8Mt70kjwqha7wcySByMv1Nl7o+4Q4380HkNxyeMEhhQPr97FbqNJDnHzDp1fY6
         PRtc4MdOGIsGwhPYCCR0xiorEF1cqazw3uxhaucOFy9SLPsKM80GTJFqC2nB0Mp7xGZE
         pmUxPwKkoalikTv1GTintqy+t+BZce4fM1yKIsWNk3DO5rKKGWsvzNQ1oO+pySzaPc69
         lEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716981442; x=1717586242;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GWT+Yj9aOVJUdE+s/PQsri3HPWPJOWjaNrs5+NUd7FE=;
        b=lRYUrWZyf8jwXs0C2v+v3TTQK2qFDzLKxOFGhbg/FThvPuuO8FOFeZY6oMBagdjenX
         w5HVFPvvLt8Ws1ea2wI/i2mJ9+vG+JbXCfElDUbH8fgKICQEdT+MK7GSnYcNCgLRCUxI
         q98CxDM+wMqRxbIc0kTxawaTBZPYrS69FpzM5kUyjXNloO/Hsd0S7WslzP5MiWN8lxGV
         +a266aGHb3cw3YK/BcFuMYOSbxymtF7nHsMre4WSWy+FVmLAM8IEElJpw/XfQXBUjBT+
         +tTy8jgmdyxrhNQrh1vzc8GpAuo6V1wA91Z9uQWde6Je8Xrci1ucK47vxiuGuiAEroJZ
         BRjw==
X-Forwarded-Encrypted: i=1; AJvYcCVDX402IavXEVY85Fv78SARwWA2jju/nOI/R7S7Zd1BgPsnun7SwIQ8lFLeNu4VAZ1oACuZlDEpUHSw8A0MRg2hdeiwhyODMPmtzw==
X-Gm-Message-State: AOJu0Yw2masf6xTEYg2FcfRuuYZW4WtrKnNmIICnDjddgJ5uPXCiLIFL
	7Z6WyiNa6smGgxLwRhBNHOzFu7m2k2/gSxAO5ebglbL/cRYEI0O6ouX+TWkBte8=
X-Google-Smtp-Source: AGHT+IFYpLcT5LZz/xhQwC6AlKrAeroeGqsjcCv2A9tAsu/MMnwi1UzMFWxxjzyf7sAYPMNcz2fSqw==
X-Received: by 2002:a17:907:39a:b0:a64:a091:91f2 with SMTP id a640c23a62f3a-a64a09192cemr90559866b.37.1716981442294;
        Wed, 29 May 2024 04:17:22 -0700 (PDT)
Received: from [192.168.128.35] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a626cc8da37sm708826166b.183.2024.05.29.04.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 04:17:21 -0700 (PDT)
From: Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/2] X1E PMICs
Date: Wed, 29 May 2024 13:17:16 +0200
Message-Id: <20240529-topic-x1e_pmic-v1-0-9de0506179eb@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALwOV2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUyNL3ZL8gsxk3QrD1PiCXCDDwjDNzMA4NcXC0sJYCaipoCg1LbMCbGB
 0bG0tALuxKTlgAAAA
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1716981440; l=772;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=T7Z2Sck/jt0itBe5pBFyR8LvjbDnUNo8VJgcGpOJdWw=;
 b=8wkg+8xxZxXh438X/Ptjuakae3FO6nAglupRCQccyFy6J7BJ4plzEbWsPJOJEmnDZz5+mig/C
 vrA/TPGtph+Ci+ftOq71xzaKA48e9gjHf61VV4kD/6OpTHDGa6GxWGn
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=

These were overlooked during the first submission, plug that hole..

Depends on:
* https://lore.kernel.org/linux-arm-msm/20240525-topic-pmc8380_gpio-v2-0-2de50cb28ac1@linaro.org/ merged into next)

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (2):
      dt-bindings: mfd: qcom,spmi-pmic: Document PMC8380 and SMB2360
      arm64: dts: qcom: x1e80100-pmics: Add the missing PMICs

 .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |   2 +
 arch/arm64/boot/dts/qcom/x1e80100-pmics.dtsi       | 480 +++++++++++++++++++++
 2 files changed, 482 insertions(+)
---
base-commit: 9d99040b1bc8dbf385a8aa535e9efcdf94466e19
change-id: 20240529-topic-x1e_pmic-81f603ed8983

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


