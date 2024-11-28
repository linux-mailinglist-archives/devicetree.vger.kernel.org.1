Return-Path: <devicetree+bounces-125335-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DFE9B9DBA1A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 16:08:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4BA5EB225BC
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:08:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D82AD1B6D15;
	Thu, 28 Nov 2024 15:08:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MgMQRqBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 581A719EEB4
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 15:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732806499; cv=none; b=MukaKcJ7akAfUIbonuidOFK7c5hUKh+qcpzznkQur/v2Im3KmnscMT3SjD7WL7LhSwTUMu28N2Kusxc6w7nvB3PGKr8B1KMiQkLMh9XMSCGHWXHmT913J8E7N4SE2D0IW3ZHEbHwu1mXg8VEcvU4Ezz0xZbJnYNBksvAM5thjac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732806499; c=relaxed/simple;
	bh=CZ6F7nqLC3Ppmtpbab+Dy2ETBIdeM8z83VBVqimbS5E=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=baNg1czQHOCBIuzIKXzk6Y0iyJgDA/IH1zoZTlgPJQTbdNHW8b33/2pPpKL70gqk23LSpHyhtzNCpSyRjS4UctslCq96ZOLSRq2I6EZS62eMniHddKv2/7Yolf/UcT7FrPBt5s6f0O4n08yrfbq6wgXHMpTCdnTs/LqBO1+UXUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MgMQRqBT; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3823ef92bd0so26015f8f.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 07:08:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732806496; x=1733411296; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cnZyDPBfm5l/EP/tG0UaARM56VhvQaqB17GitPL9u0g=;
        b=MgMQRqBTbHSnHz65CvrOxC1k9K7aIo0JNJK6et8xrxP9/sToDe+w8rXRzc246Z12AA
         g0uyvHcESA7WlGUTqGvmIH4ZTq+/oDJv90n3CRdZPjcy7FTvF6XazJKPMM2FpntqOqrV
         VJ4UIA4uL2h1ElaW6BeIOEYROu3wkJYiSgHKamfmrEFoeSe+NJMZLHbAkF/I9K2lgqfl
         1U24Ic2aVnc14XOHae7rbmv3Dij4PYcJ0N49KmUuBa6fMVwZPbAUTUT3iBph/xJfgNhv
         BtjCV7iHb8lEva/i7Onp72Z1gVerC80Lnf8X31luYGOt9CK+2CvvRiRxAPXrvZ47238f
         7Rag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732806496; x=1733411296;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cnZyDPBfm5l/EP/tG0UaARM56VhvQaqB17GitPL9u0g=;
        b=jNXjZjTz48OZI/uUdktOXbQIuR7K+1Ww9kZq1s87nR4kDtSLf/+Zas1TOv7GMmrOm8
         wf9ch4DogZp3bY1DksB5x8/7VOpbo8xEoX4OCsGCoqc0haj/7l4nOJ6QfF+fFUXOFf2c
         ewKouUL4AkfNnXUXvhJlkJWmO9dKRUeuOJPUVTd+30uNCwq13tcaIvsWf4tiLNtVC9yX
         rciSxSYPt2l5Ix8jyvCUcIpxshkfXeRIXxdSHRaxv5SwJpx0U5cZ2dQA8znq38R1VDzD
         3hGOPpPL3lqfUGPnPhcIMQYgoWHnJFAERD4EOlYg6aZF3kcvlAX4V+8CCxlMWV0De9PX
         VZQg==
X-Forwarded-Encrypted: i=1; AJvYcCV4cB+2wmQXmwdeAhxp3nXlQKnet0mte14I2wEKyGp+hnVLW7eRbI1CzXHXE21uop9el0kv4aOT3SRB@vger.kernel.org
X-Gm-Message-State: AOJu0YzS3x9AM/rmdc/lUjCkAGoNSVXze5Q5P1VYEgHpZ16OzjzvMe+V
	LigbjdjZT5afo6hxViCGrpsw8FJUOxckRK37XMepQKslBY9fa+ZS2LpT7mdyD7H402Ek0kf8/2b
	rFDU=
X-Gm-Gg: ASbGncvvxK7wC2Yj+JI4Lr/xJpFbHvOgifTECiKsZvs9Yw3CPABWJrpiR6AA3sBtdTb
	XH9CbUh0g5otHorWp2JnOBwcml5G2ZnPY70kbG7+jRBgzZvJi/hysOP6mi4HN5lt9YHdTa56pX/
	6Tnx/P8CDycWZivxSa3Nd7mspeCzWGJad6r2O0vhK+kFs0pepIb3GAOnwWfQ5J5VPOfW88HFfa7
	JqTefzyc6YMyA+szeDfr1z7cuMxLMLxk8nRRy+BGMcHeg3Exps+YfORAjEISO/G
X-Google-Smtp-Source: AGHT+IH0F/SgQRnJQccJB15pgwsxTAk2sPvb84dHeuiTIlcEPKTfPH4i0ZSHzGkFw4IcGv6Ldbkl8g==
X-Received: by 2002:a05:6000:154c:b0:382:4e71:1a0f with SMTP id ffacd0b85a97d-385c6ebb203mr2554289f8f.7.1732806488992;
        Thu, 28 Nov 2024 07:08:08 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-385ccd7fc33sm1828291f8f.94.2024.11.28.07.08.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 07:08:08 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/3] clk: qcom: sm8750: Add sm8750-dispcc clock controller
Date: Thu, 28 Nov 2024 16:07:58 +0100
Message-Id: <20241128-sm8750-dispcc-v1-0-120705a4015c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE6HSGcC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxNDQyNT3eJcC3NTA92UzOKC5GTdNIO0RPMkM5O0xOQUJaCegqLUtMwKsHn
 RsbW1AKJmVCBfAAAA
X-Change-ID: 20241125-sm8750-dispcc-f0fa7b64facd
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1154;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=CZ6F7nqLC3Ppmtpbab+Dy2ETBIdeM8z83VBVqimbS5E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBnSIdR1orKpaaLqfpdyBOkxr/V/WxoTayfM2sPp
 FMQjutqeFKJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ0iHUQAKCRDBN2bmhouD
 100sD/9VJ9Hrx0e5+jwp0shsOpC/+TmO86/seL3ejD5yWFsqb//gmsyi4fLxC2LkJp4HAN9EZvX
 9/iUtWUprPEWrbrUbv3hRiX/cuyfAYEDJrQ9zHFnIzt30iHohqccwluldTaaVOXJ+TXTveSFSyW
 P8Hf1cQxY6C1h7TtynYkA+w0dn6FrD/tgMf8vtoOfO5+BvWtyMeL2CoHp3Yeu+kjQECKelSWY8d
 yZxOUdcbtP1+mu9rIXPwjZWaC3nWMfh7k4Ii5O5oE/w1WnO28cGujvXeIlXeJLKcPzi7qITQw2c
 soNaLUHRvp3SaFAL07KaUVNCAA0JhMEX5FjIQl1vhnnPfpTB/+ArjtD2VFshszRD6hHdp1JwFu4
 G2C6xNIa36CSmi5/X/NoP3Qc/VukKzAgY72n8j5zVMObLNMTzIycurTMJrRYfO19nX+BqsACOwS
 1oo0V/AXN1u1E/toICMcY3rHP7TlI+0Aoevyzvmu+8M4vx+deTkoI3mf0qkZ0QxcGnzqh87r1wm
 ra65O75WRh2pOYBMfXDA2Xh2o4l5QDe4Sv3FBCJJdouaqlR5pCK0zXb/qmcICNAn3xuNhMhX1Dv
 s+e2faQgqAfoARaEIOt2S4tGcznL7cSNO1DxmDqRgB8CheNDk9ZFfODYLSa5ICM51IoNvhlcZKV
 xGuGv+BUlybTkog==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add Display clock controller for SM8750.

Dependency:
1. Taycan PLL and rest of clocks: "clks: qcom: Introduce clks for
   SM8750"
   https://lore.kernel.org/r/20241112002807.2804021-4-quic_molvera@quicinc.com

Best regards,
Krzysztof

---
Krzysztof Kozlowski (3):
      dt-bindings: clock: qcom,sm8550-dispcc: Add SM8750 DISPCC
      clk: qcom: clk-alpha-pll: Add Pongo PLL
      clk: qcom: dispcc-sm8750: Add SM8750 Display clock controller

 .../bindings/clock/qcom,sm8550-dispcc.yaml         |    4 +-
 drivers/clk/qcom/Kconfig                           |   10 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/clk-alpha-pll.c                   |  159 +-
 drivers/clk/qcom/clk-alpha-pll.h                   |    6 +
 drivers/clk/qcom/dispcc-sm8750.c                   | 1960 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-dispcc.h     |  112 ++
 7 files changed, 2249 insertions(+), 3 deletions(-)
---
base-commit: 7ef660da3b85122a66ede26d65ec33f65981d378
change-id: 20241125-sm8750-dispcc-f0fa7b64facd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


