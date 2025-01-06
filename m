Return-Path: <devicetree+bounces-135830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28327A026F4
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 14:45:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7DED11649FF
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 13:44:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11001DE3CE;
	Mon,  6 Jan 2025 13:44:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nLEsiTv0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C304E1DDC20
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 13:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736171084; cv=none; b=kltRgYhu5Bq18GCJ3KazvfHor7E9YdCxwFVWGuenulMZZH1q0jwIjJvJw0ptWdZSCL+Ft4E7XjxWfLUMN/hPQxpiErE17M1UOtQ2EPXC20j0Fi/mlNKUPY4u9+1EF4VtDaUWEy/4X+vTMS67PZx3IdQGBQPdz0ceJJ25LjStO2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736171084; c=relaxed/simple;
	bh=IzLjyqiZQYj0HolvNDwEGq9bzWMpH1csfdZOubbN4CY=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SYwByEyD/fpY8yWzAtxvW1pAFRYjHURwN/knAWjcJmMmdEq8DmV7TSD3vc+GEgRkcqkPARL4zMR38IqomrQQomaWz5BAHzOild7iF9yR/gCY9zaWihiCKKYkq3VVdfwNtRjN+473/XUytM7Lkwb94Vk/LVS97oV2UDtbciSnryY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nLEsiTv0; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361aa6e517so22435415e9.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 05:44:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736171081; x=1736775881; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=EMnwIoklKmOQ9k3BBN3w1reDAPPc+Np1bkPck8HODv8=;
        b=nLEsiTv0iLxLdXZwuRW/PRC2sIJ0D8DCgYgsAMD+C8bRVf94qhP9Z8iMduflxdGO5r
         fP+jJYSmkhNgexV5pR4yQcYsYPdNmTcv9O8HIuRCmOzyp5LtBFunUR3ii+7Stusgzbi0
         YMfluSbz1wYKtOh+GW/jbw/O11ZJwD4/oxtkya9jIQe+83YCkTCJNxdnifzoIXQAZVLd
         S2XiDAvD0o7R+GbosTbNhNx3CG6TLQ9txIfI5AgYr0O7fQmwP9dVWa2/3ulmaE2oMGrq
         GAwhk25nQjnfpThPV+8I8IhplYALs+G1hC3qrg46uam0f7y4C4CVJOVhtViHtXjRsSTC
         gIzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736171081; x=1736775881;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=EMnwIoklKmOQ9k3BBN3w1reDAPPc+Np1bkPck8HODv8=;
        b=StJtLqBS8mnNO2VfJg3AchbVR4rtltZyvWqrviXGHSj46shRAwP+jM/rbeNBpVnJMf
         Xs4Y+IcA17Jg7WITdE66H8tF5spHTW9C5bPd0//5oyy4Am+KQN/BHuLkUS9clB9sh/aq
         1waH8tBSL5P24drDyrWxjjBnkAkW6fCf2oi/3d4G8++Bi3o4nIOU20QZprzgoFnA3ibQ
         IrnstCJd53as65dIcpCK+r/s5JrKD+f+V2pDr9W9yBowReyo4uwH5XXEBunfzhBcrms5
         KXcFR4pycYV0oHxzX6mlEa5tLJjmOwwa+9YyR6z2u0BvWM2IMOTMJsDebgHd8vgoY0Vk
         zZbA==
X-Forwarded-Encrypted: i=1; AJvYcCUOSmL57slGq+t2GA9o8csaQeRfbnBHz0LBv0btKUqJefKg/EiOrLEGkj/Ac3oAhE3NIO6DYqvIHr5k@vger.kernel.org
X-Gm-Message-State: AOJu0YwHRQvaS8pJf1WCX7pIBSne54aXe3YaoOX6NvqIEGYvJGNbckeA
	WnPlGTTZ6My08SbX5uRnvNXAyGtuLL1QFoK2W0o3Q6o+enhBvdumcL8JXjVXpB0=
X-Gm-Gg: ASbGncv1N7Cg/h/gXWY0Uta/fPQaT1gANHjQREkgr9yP5VvM493/hAuzIXA6sTHsyY5
	RUpp+KdMFlyJyq/bJYdGWOgMuhpzMGwJPW7CDZBV+1LF5KIhmDnPHRYYDPu8wL3PZ8nAk1MwBOu
	PycQpVyfMevMvhsG0JMNIx6G7ijPOppDslyOYMnUKO2tPF0y2Ile6mcyquxEJa7UEd0t1ryJQeA
	1Tbz/+rs5PlemlUFhx1Tx5YiyD9vQtnUZiC3NiZK6STmdd0rmXsa85NE/03N+sXPMXQfIcd
X-Google-Smtp-Source: AGHT+IEXQzyXvJh87C4qYu7Ax5vz3+jmqOb6lMmmEshKHmHAav4FLPK3omE//aDu+k4UsNcOasv61g==
X-Received: by 2002:adf:9b83:0:b0:38a:4184:1239 with SMTP id ffacd0b85a97d-38a418412d5mr11223749f8f.10.1736171081048;
        Mon, 06 Jan 2025 05:44:41 -0800 (PST)
Received: from [127.0.1.1] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38a1c8acc02sm47383151f8f.104.2025.01.06.05.44.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 05:44:40 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/3] clk: qcom: sm8750: Add sm8750-dispcc clock
 controller
Date: Mon, 06 Jan 2025 14:44:28 +0100
Message-Id: <20250106-sm8750-dispcc-v2-0-6f42beda6317@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIADzee2cC/13MzQoCIRSG4VsZzjrjKJpDq+4jZmH+zBwoHTSkG
 Lz3bKBNy/eD79mg+Ey+wHnYIPtKhVLsIQ4D2MXE2TNyvUGgkJwLxcpj1AqZo7JaywIGo28nGYx
 10D9r9oFeu3edei9Unim/d77y7/qTxj+pcoaMC9SojESu7OVO0eR0THmGqbX2ARN568KrAAAA
X-Change-ID: 20241125-sm8750-dispcc-f0fa7b64facd
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1462;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=IzLjyqiZQYj0HolvNDwEGq9bzWMpH1csfdZOubbN4CY=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBne95BbwhkZoUPTZwRDH6P8tjnEWzo4z7vS6O7r
 +AIEX/2BTiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZ3veQQAKCRDBN2bmhouD
 1xd8D/98vuMER27s5/cr0rdd39XTxPqh2YSlg9Ybvb8cXrFN+jeQV/TvgF4ve0t52SKauCaT5Sc
 51gjdcMyNtcT5XPnfY9krIgClBvPl3BAXJuHwM2txKngbPe6L3Kz0A7s3ETUNwUIGvPlMbXUDnQ
 jnyYwRuxEUz6GAQ+aubhgWmJRotodmPzoGdGd9PPyc65CyPWdYpDkBv4e8RAMbM82rdiz0YfIR5
 tuudFNp//IgliJUaNSdm1e1CJEbXSyeVHH9rfRdnyK7p3sK+QPSAU/k1v7aMmypZqOlMhDjM6Es
 FdEh0p98uLW5GUZmNxITGloM6DAbY4GnIUrTM0Nj5rGhx2cGdJwUvJkDjkWEuAme83Qd+q0fV+q
 yZPXvDjMJ/cDvkALAF13UJRxWtGUB5qKYGPHyzCnQGXxt8jEj2eQ16L4w0VYwcEFN7HXaKAtDwa
 QHn2K6i2SORte35KSBhTfctNd8kU7jYgQqBh3LN1xOC/+Kch6UUFVoxA2Cm1pQJZzfT2QPknKnI
 HHcqSi4QQWopKNdJQetO+iySKhSBoD48FIXqz0RPQtAZdn8Bb9zqHTog8+jpt37twzXtgjwC673
 r3VSrA8McuCy9DkM3bBVc5NxBaTQx3DEF6cHlI+WnyAy3J1hIs+HU2VW/MSyOm5I8Kjmu9e3Zpy
 sMDhtoLYFZjo/fQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Add Display clock controller for SM8750.

Changes in v2:
- Implement feedback from Stephen - see individual patches changelog.
- Few cleanups found during testing/review - see individual patches changelog.
- Use clk_rcg2_shared_ops, where applicable.
- Link to v1: https://lore.kernel.org/r/20241128-sm8750-dispcc-v1-0-120705a4015c@linaro.org

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
 drivers/clk/qcom/Kconfig                           |   11 +
 drivers/clk/qcom/Makefile                          |    1 +
 drivers/clk/qcom/clk-alpha-pll.c                   |  165 +-
 drivers/clk/qcom/clk-alpha-pll.h                   |    6 +
 drivers/clk/qcom/dispcc-sm8750.c                   | 1963 ++++++++++++++++++++
 include/dt-bindings/clock/qcom,sm8750-dispcc.h     |  112 ++
 7 files changed, 2260 insertions(+), 2 deletions(-)
---
base-commit: 3dc591aad724ed3578548c211cc3c368f6dc5947
change-id: 20241125-sm8750-dispcc-f0fa7b64facd

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


