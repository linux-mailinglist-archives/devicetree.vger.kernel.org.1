Return-Path: <devicetree+bounces-207243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B55F0B2EF52
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 09:19:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E9F65E5782
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 07:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 569192E8B8B;
	Thu, 21 Aug 2025 07:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RFGF80bN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBBD0283FEB
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 07:16:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755760606; cv=none; b=H8wMGeSsvSa9f0yzAwcXWycwoLGRHEz4dl6qM3Axk91M/vlMXD1L1tMAaC6xmf4Av7JUgA16U3RRSnMYeGizYDUc9wLVJWwdjome83y1PqY9gGA1fBilpoDxE3vE5lCXQsbwjIHCL5TsCfFy+3U64l9g8Gp8ig1L7zi/AYqnUUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755760606; c=relaxed/simple;
	bh=EozGwzhOh3I1X+JJ959OoYogUGcWDH9Wx35GVW0UTUg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=qJjwXaW/Tq+qUcU/G579juXXhtW8NaxxlhgBxmQULIZhgjZJkhyZoqpwD9cOacPh42wbMHQ7+EAEoWdL5J7himZZZAVsx+b76MFOq96cW7fo0p/9atIcCrNKCzeQ1kwmJcIN9ZduwJeTgLCmyGymu8MwWdOv+iK2WNxI1f1N2yU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RFGF80bN; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45b4a25ccceso3418895e9.3
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 00:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755760601; x=1756365401; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x4ZWv8sIvmYvWntlLifcDW/9ms/EL3uocJBPdLdSANA=;
        b=RFGF80bNaNQvIRG090YjEaJYU7MnjEH4I4TU9mxng1mEfmiHawEpL1pqC8j2Ftb47p
         sEws+e9fs/C/tA7NnCiqKaHgq6xeGEFyP37YDfkl1ffeQuShPFxSkwag70HPuiDU2ekZ
         ib2QlipvkCopVTDShV46nejJizpTCZacXCg6klMCv0cNZqSpsejTVNFXi13US8ro7s5I
         eb/KYmsfViOPmuSBVVkNy/xZ3evx0Akk58sLkhVipyfgM9zDRmpkhUEqRVH/9us1RdaY
         X7v/Jxov0NxjX9wkXepHs5A9Ge47KsnhJwMueIabwLzUBClTlbnQF6qRiIi/38EwaDMV
         fc+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755760601; x=1756365401;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x4ZWv8sIvmYvWntlLifcDW/9ms/EL3uocJBPdLdSANA=;
        b=bIAQK4XXtJsJa0Olyup9A6wNo9RDkI61G1v0KbNmOjCFrjdqeFTW9HTjcTxigp9pFP
         wv1pjo0OHjSX8OM9AMlEdWLcrSSFOnBCj8dDKuHhlKWFgx9YiBGibDXxLEMhU/K+P5ms
         pTOZ7Ru0HqRniCCZIbG/OELnqrRwdZwGqg1pbTa9pBATccxzM2B2mk3I1ynSfve2EeMe
         T6b3PA4RsU2XcC/6HytIjRqFhqeyOcmMUBM4hXgVcyqLIhe7s96MyArM8CcaNGm5RI/p
         U29MwDj3CJK3rWRPWKLpkvkgI97E19wQPUheKPmh3Rwv0QWOaGBbpo8clofYQhFi5je5
         3+dw==
X-Forwarded-Encrypted: i=1; AJvYcCWlXXCxLrPGRoZb7FOFs6FZG1HBN5h5AM3ErylM+Nwu9Z+qcYKLlt/qfkKWRS3Qgp/xhHUgf4AAGOsO@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4pj0WkrgSd39zWFOvLwr1HYmmr3msI2i0i/z66wQcejxri3gW
	QzRld2eClFDu2XPMCCG0sfubaL/H4GwsbjI3K+Erf5+jY91oFdF4DrjeV/7iERSRCIs=
X-Gm-Gg: ASbGncvEtIGoSoJTtN5IQUDlyhNppWvREDcD9yk+Yqf8XcFQ0ITFexh99R2K0FYhM89
	IRgzLdxqY4I2SdRJFzYhWwudjCI9HoBRfwgxsp65nHV3uvOJxEstIguJQzvBMhrprghKZN27DeA
	OKUyJMiWEm1iwGWvvk+awLZHd29904EEGSUg9au1GMVsgaLJGnd6PXrMnGk3gYC3B3YsC5yLTwC
	ZRtdClyk/H0nfmhxBSi8VKxSpk9vc7DaLuUOoBpb+ahEHv0JBeJrM2jPd2Bxi7IOboLZWuYtsl8
	g4Cegjf64vHQrJ8vUyLpBhKAA/gqo8geC7Gv0Zvcc+1FOhsmwOwi4ZosuzLQcUHdwstkur5+IZD
	AKCXXAkjCk8xasoP4HJZIP2gpui9M2MPmKG/Ggbl5/no=
X-Google-Smtp-Source: AGHT+IEJFPgvUGDebcNvjiUSRl6GNim066QezVE+b3EzV49nxTPbllrzinReLkEKA/K6ugOlo55pEQ==
X-Received: by 2002:a05:600c:3153:b0:458:b7d1:99f9 with SMTP id 5b1f17b1804b1-45b4d7daa88mr10743705e9.11.1755760601184;
        Thu, 21 Aug 2025 00:16:41 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:3d9:2080:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b4de5b52esm14411455e9.20.2025.08.21.00.16.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 00:16:40 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/6] arm64: dts: qcom: Add multiple power domains in
 videocc/gpucc
Date: Thu, 21 Aug 2025 09:16:33 +0200
Message-Id: <20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-v1-0-a510c72da096@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIANLHpmgC/x3NTQrDIBBA4auEWXdABUvsVUoXEqfpgH84JgRC7
 h7p8tu8d4JQYxJ4TSc02lm45AH9mGD5+bwSchgGo4xVs9HYS+UFJc2HVbhV6Y18whojpi12xhp
 wL53ziqGjt0/jdHDWkYeRrI2+fPx378913aVmPYB+AAAA
X-Change-ID: 20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-a56291d959ea
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Taniya Das <quic_tdas@quicinc.com>, Dmitry Baryshkov <lumag@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1696;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=EozGwzhOh3I1X+JJ959OoYogUGcWDH9Wx35GVW0UTUg=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBopsfVUxvT6mkH0HjvXMJ4XJAZ+Kuvqt3tvCyJEHxw
 NEuZj8OJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCaKbH1QAKCRB33NvayMhJ0WMjD/
 98buI2nZdmohIMGwqg56YJvctiBkSA1nNALMH/bJ2KiLYI9BEMncF99PaQH04AvwwBRfMFgynQPBfb
 a270D1nU8f5+qvWic7Ty0dVpZ8SEb/4rVq4wG8gYhaSboRSJJCHODZYKhIZE2J2if0JU2qoj0ZXGt/
 bd/dquLDynBS9b+1/QbkEk1EwrGFPHjl0LxVHsKRO8uJZe4+dezChQPdVDRzMUou38EaEPkNg8L+gS
 6uUc2jm8aK5X+J7PKIpdgURVwxPr7/MHMT27DDlGBao5InyflwSV1WYKpxJpiF8xnNrIG/IDlMucH2
 Sn67Rq8IFq/SIMatfeHSCzZHg1zH52HEl8vbLOklproZ9+5/zoqp5Wm3mUWhJJHfLAtxtcWXFqPgi5
 UEhgX+nSlRHPfinjFiXHyFlOq5kPhgy0QJLlyEfgQDtF0+VxoeiR+n6BocYoRlaQWxIKFxpatGWqCX
 0+jq0EpyQvNt/5iobPWhez3L4b7No6iUWtON5DXWt9j5bHfEO1VRK/P5KIumZ15pKs2alGNdyroFd2
 WnJkt8AcV3uYaIUwaFIHIF8X1s0aBtTm5RfvGsX0x2J0vRlSj7jGD/lpT8t/3gbEEINqTPhTSFn6qE
 yCNNoQ2u+G/a5k8dlspP6Zq5ElTZSK9gnCQjVEtfJ2l9ubKg0AeFC9F6Tpuw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

This is a continuation of [1] ("clk: qcom: Add support to attach multiple power domains in cc probe"),
where all the clock changes were merged and the DT changes are lying
on the lists for allmost 4 months now.

I kindly asked for those patches to be re-send separately [2], but was
ignored, and the lack of those causes a bunch of DT check errors, hopefully they can
be picked for the next revision.

I did apply them on current next and fixed a patch 4 that
didn't apply cleanly.

[1] https://lore.kernel.org/all/20250530-videocc-pll-multi-pd-voting-v5-0-02303b3a582d@quicinc.com/
[2] https://lore.kernel.org/all/8e56e1a8-7b26-44df-ad57-e2092cb5c9ab@linaro.org/

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Jagadeesh Kona (5):
      arm64: dts: qcom: sm8450: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8550: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8650: Additionally manage MXC power domain in videocc
      arm64: dts: qcom: sm8450: Additionally manage MXC power domain in camcc
      arm64: dts: qcom: sm8650: Additionally manage MXC power domain in camcc

Vladimir Zapolskiy (1):
      arm64: dts: qcom: sm8550: Additionally manage MXC power domain in camcc

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 12 ++++++++----
 arch/arm64/boot/dts/qcom/sm8650.dtsi |  6 ++++--
 3 files changed, 20 insertions(+), 10 deletions(-)
---
base-commit: 7fa4d8dc380fbd81a9d702a855c50690c9c6442c
change-id: 20250821-topic-sm8x50-upstream-pll-multi-pd-voting-dt-a56291d959ea

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


