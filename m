Return-Path: <devicetree+bounces-194476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE9C8AFE54E
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 12:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E4C1B1C44B95
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 10:11:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CE7028B4F3;
	Wed,  9 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kgUJHCHO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C85D280308
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 10:09:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752055793; cv=none; b=ub4uWX2zsKadM9db3WC410+7gysyv7N9Hs3zW52C89Fxhl1XfRl2vABFuhdlfuQGwf+mkBtrreK8S/sP9J04XkY/r8yickUpF95FvlMWdpl207sJV6NxILR2Al+yTEwzVp1ZZXdXV4PC24I/jpNz7hybedx3qZUYKWiaOWZchcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752055793; c=relaxed/simple;
	bh=2xRrbDBqjLbzQMzAMm4L8u9VN2Mq2YBHHgTCE5yPM+M=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=s36WvpFG7O6BSfI6dIoLtl2vLHxNGmerIXYs4ZdfhfAs3+E3/xE3/gTpxSOSnWto9eWYubD3DytH/TIqyW6A6LhoDdUEoOzWNXk3RBTE3ay+TyqtDYDgad7TJn7xtJTFVoXL6hLKUGBcS/LC1z6MNKyu6QQj9/3pVDCgDfqApZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kgUJHCHO; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3a57c8e247cso4106533f8f.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 03:09:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752055789; x=1752660589; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=LhGPvC5ZmRo6MvYpiQ+hA4rJtB+6fwTj9VtUCIpUF0U=;
        b=kgUJHCHOZMU1tKLCB7CE1oinHT4J9BvOfm/OIl2GEkYbuPtvvBXxDvQRg6xEBQKtnF
         YrFm9uEBlA8R6VeLBJmhyvvfsP4GT1ynrt3ut0iWbqBDLBt1R0YOEKzrPNADqO7Awex5
         a7Dp/gGy9SFFZPwmir8kYShzEt0R+3HOkaEDuTU6P38U22EfRnnGPkoYX5mrsU24UGYp
         OrR6N3/e8P6SHORU/FtJ0zCrZYu1U7eaHa3B/BB5gF5KGDGXOVOFXZBrqiOZO6NHN93b
         b0DqP5uVgbIQR9pMPl9OEt948dSOclg6bTL3JArtdMxqVb9PmGqoEjMatsWUfstd+bI+
         6rEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752055789; x=1752660589;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LhGPvC5ZmRo6MvYpiQ+hA4rJtB+6fwTj9VtUCIpUF0U=;
        b=QkZiZfCIUdPzix5xMD/0myg+YIXhCXqaE5b4BL8sSyDa7C2VX+iNntYfEIUyAH/luG
         bNi+pugAQ18rK4YpbZiChN2BijHBsd8dKGAtBFWSW/PBSBrJ4al9VgjG4TiY8PJgkiio
         unVzlMDNDzWeb6DRftth49Y+yWrhUhpMJH/GEQBh0YJG9Xz2AkmZ3p18rCWew5b32KWg
         QQ71lhpWPLzXxeWoWCNwtR9YU0KgfXn7sB7kjiHtOtxr3InfKK/BY1IP3Q6dGQSYpYRu
         1cB/2oVWjIq7EysbzmgOrzdN4ygdACyHC82oTM7cWs6Kb3zcJ6Err2WwAbLGGRujIP65
         znww==
X-Forwarded-Encrypted: i=1; AJvYcCVfc1TCxfdv95rCpQ30GV93rXb1swh5JTi9jZAnIvSrmHMPoHVPoRUSkWZ+m3QianPxIfZnTX4eUEHi@vger.kernel.org
X-Gm-Message-State: AOJu0YwOx+qb4PelLa4t64YF/5gC6svF8Y4sArp5xe+7dSzLaqS/MzuC
	WyPJuDMxD1LXj7Zby3Swk+osj4WJy0Ylx3YYfAgpHV316dVdZq6eVAfLGCCPq8hnM4U=
X-Gm-Gg: ASbGnctEEii6XtODVhJAXASfGJCUkm7DatHsz3HEgEiT3PZA5u1QlJ53goeJSFd5F3T
	uilvRMPywnfu5/gTBmjzFdGDgcjhe5rd41dxGgZ9tlGtqHKJzIPcpUI3lWwbaq3XyaumY2U+3Ju
	2mj3LEN2gnFpoT7ElTwzQABaWI2G06KrkPeWE6hNiO7vebSVUxxHuiJjszkn0n0OZD753gH8JA6
	LDBt4v0EcqV/ruCSNyAb9Zy1H3jGRn4Qln9QAR19x2hQ20XztRyf8/b4UyMORyq5FH3lAOXEnv+
	qz2A2Lvs+HhULlyz0MZoTvMH1elqE4E/1LEIuXnL1/PW09qtAZvJ97fs7FRtvxQ9Tnx6vkeGsR8
	s8w==
X-Google-Smtp-Source: AGHT+IH23Gs+RdsiqZF1i+ig4T8HqK1WkwzKsnAcCCYZOWWyRHXe5QspHefa+kIAw8XbM9oBGVkUIw==
X-Received: by 2002:a5d:6f1a:0:b0:3a6:d7e9:4309 with SMTP id ffacd0b85a97d-3b5e45380f3mr1416075f8f.29.1752055789438;
        Wed, 09 Jul 2025 03:09:49 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:d3be:a88a:dbb9:f905])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454d5032997sm18342105e9.7.2025.07.09.03.09.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 03:09:49 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH v2 0/6] clk: qcom: Add video clock controller and resets
 for X1E80100
Date: Wed, 09 Jul 2025 12:08:52 +0200
Message-Id: <20250709-x1e-videocc-v2-0-ad1acf5674b4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALQ/bmgC/23MywrCMBCF4VcpszaSizHqyveQLmoyaQekKRMJl
 ZJ3N3bt8j9wvg0yMmGGW7cBY6FMaW6hDx34aZhHFBRag5baSieVWBWKQgGT90LJqKLW1p3OBtp
 jYYy07tqjbz1Rfif+7HhRv/W/U5SQwl1sMFfzRCv1/UXzwOmYeIS+1voFWebgl6cAAAA=
X-Change-ID: 20250701-x1e-videocc-10f1f2257463
To: Bjorn Andersson <andersson@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Jagadeesh Kona <quic_jkona@quicinc.com>, 
 Konrad Dybcio <konradybcio@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Johan Hovold <johan@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stefan Schmidt <stefan.schmidt@linaro.org>, linux-arm-msm@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.2

In preparation of adding iris (video acceleration) for Qualcomm X1E80100,
enable support for the video clock controller and additional needed reset
controls. Since iris in X1E is largely identical to SM8550, reuse the
existing videocc-sm8550 driver with slightly adjusted PLL frequencies and
adapt the reset definitions from the SM8550 GCC driver.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Changes in v2:
- Fix commit message of PATCH 5/6 (reset definitions are just copied as-is
  from gcc-sm8550 actually) (Konrad)
- PATCH 6/6: Use GCC_VIDEO_AHB for videocc instead of
  GCC_QMIP_VIDEO_VCODEC_AHB_CLK (Konrad)
- Link to v1: https://lore.kernel.org/r/20250701-x1e-videocc-v1-0-785d393be502@linaro.org

---
Stephan Gerhold (6):
      dt-bindings: clock: qcom,sm8450-videocc: Document X1E80100 compatible
      clk: qcom: videocc-sm8550: Allow building without SM8550/SM8560 GCC
      clk: qcom: videocc-sm8550: Add separate frequency tables for X1E80100
      dt-bindings: clock: qcom,x1e80100-gcc: Add missing video resets
      clk: qcom: gcc-x1e80100: Add missing video resets
      arm64: dts: qcom: x1e80100: Add videocc

 .../bindings/clock/qcom,sm8450-videocc.yaml        |  1 +
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 15 +++++++++++
 drivers/clk/qcom/Kconfig                           |  3 +--
 drivers/clk/qcom/gcc-x1e80100.c                    |  2 ++
 drivers/clk/qcom/videocc-sm8550.c                  | 29 ++++++++++++++++++++++
 include/dt-bindings/clock/qcom,x1e80100-gcc.h      |  2 ++
 6 files changed, 50 insertions(+), 2 deletions(-)
---
base-commit: 0672fe83ed07387afb88653ab3b5dae4c84cf3ce
change-id: 20250701-x1e-videocc-10f1f2257463

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


