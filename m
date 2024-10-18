Return-Path: <devicetree+bounces-112805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5FB9A38E3
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 10:42:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AED631F216A5
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 08:42:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FC218EFD4;
	Fri, 18 Oct 2024 08:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PYsZ8ojG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 458E918E75B
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 08:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729240967; cv=none; b=f/tg/rh8R6jHWcqSiGTkf3vjSKQlDpzM3RILrWKmXc/D+EYkx+6jTLn1vA9ygrx6G3MxP/sbcidE67NAo29NGgVGAwuHMf33iDnE3ZAs+TD3vKU0MN83NfBX3L+9CO6m69FItMQsUtSDQtz0AqI8tRGfSq7Z6nLjfkqf1DH3gfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729240967; c=relaxed/simple;
	bh=CuslMtJuOiYg4c5xbG3D/mL3KiZ0f9lI0b+tOiwhbis=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=SMc6GyUFqW3WgurlzzW1cBTBQZvs48hzhS1l5WxldRwe17oUQWWYJlY7nOWdzAKAL3ex7tJQY37PDrkSrfT23NfDhF+wrcQLe7blgCs5tEEg/8oYvrKkk1OgzROWJo0lAuaQ4cC1+qLeUKrStW5Qy8V3FSQ9ft4lAO5CrBbjEoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PYsZ8ojG; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539e8586b53so2458023e87.1
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 01:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729240962; x=1729845762; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A24vUYhL2/L93W4l5Bq2g4Oia25is22mM76b8eIc1f0=;
        b=PYsZ8ojGpUaNWTeDtIQNUAaKifGJUp/51apGApaTwZ355X6DL8UfdXTgnmMih3hBu+
         QZf3GGhUnxIyJcZjbmu1GplE/KVDmBe8VqGNhfIJeaC9a6WG/CzRvlVIGf+/wzX4E0s4
         98Gjsf4SBMWJ2UjALcgI86fPD2SNqGtBzHbcivUsntjX57P5/bmxTFzunzoynObt2e3i
         j3UkOmUMCemSpUufFn6kCSv6LZAfKKiEazgLTSpKtsNrN98XqKK/lB16W3F5oWi++6KS
         xxmmS6+uf5VtVf6Z3SZFaDfMQ4jr2nXQP2w7rCsXrvX7FPR/K6pZdCjzz1RF59uDrhVz
         OcKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729240962; x=1729845762;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A24vUYhL2/L93W4l5Bq2g4Oia25is22mM76b8eIc1f0=;
        b=XImFvS4klDnrZzYNWOVOgXHRhQ2mN+aBXuWpTkFiqa7NEGuOzM6HnYtL5H+exOl3mL
         RU8e4PWu7vhGHKoxrRPzoj+0KEbUNTmzBuIO5LOyWwCrPd2PBdS4pUWpbg4pB5BfMUx5
         PqunBFsOHL2UJV3EFHMkZJXeKuwYeDM+sMEIlr3SPnq99Vc17PpCZMpiJWDP43eoceRc
         1Ies2qpfrX5FK1yZFpOXuKiyp/WNq6dOKty7Uz2vCEH5Y9k3J8GQagiqfNfhyEIQC70I
         pvC+MpFg7CUFLF5SuK38bUIGHyPuiupjOOMozoYjFQtHEpbKBR1bxBepWM0QUm4Oqt0n
         +soQ==
X-Forwarded-Encrypted: i=1; AJvYcCUaxEJSsq6wVby7Dr1nhK8mJoYidKYZRnJyB7DzNUiXHxvv/HOTlLBT8FpuRVptvB9hOjgDh61vCA23@vger.kernel.org
X-Gm-Message-State: AOJu0YxrYpfyDXFiDnXe02UnyNV7OxGD+7DFZ6eRdGvfUt15qq5GWsbN
	Uf4/1rF+5xH7ey/19WJAsvidC+l2r5wwMUv/ksbzDSEKfTR95ZPYoBI9WW75oJE=
X-Google-Smtp-Source: AGHT+IFd4RGDSoCPoI3z8uIZCklukWCrVgYoBTq8B1/a+atEwGljf+js5cT41oJbuy9ABiNNfGJGJA==
X-Received: by 2002:a05:6512:e9b:b0:539:ebc7:97a2 with SMTP id 2adb3069b0e04-53a0c73434dmr1996013e87.19.1729240962375;
        Fri, 18 Oct 2024 01:42:42 -0700 (PDT)
Received: from [127.0.1.1] (2001-14ba-a0c3-3a00-70b-e6fc-b322-6a1b.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:70b:e6fc:b322:6a1b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a151b0098sm160702e87.22.2024.10.18.01.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 01:42:41 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v2 0/2] pinctrl: qcom: add support for TLMM on SAR2130P
Date: Fri, 18 Oct 2024 11:42:38 +0300
Message-Id: <20241018-sar2130p-tlmm-v2-0-11a1d09a6e5f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH4fEmcC/3XMQQ6CMBCF4auQWVvTabWgK+9hWFTawiRAyZQQD
 endrexd/i953w7JM/kE92oH9hslinMJdaqgG+zce0GuNCipLiixFsmyQi0XsY7TJMy10aZDXQe
 roXwW9oHeh/dsSw+U1sifg9/wt/6TNhRSNK4J8uVMwJt9jDRbjufIPbQ55y9Eca9BqwAAAA==
X-Change-ID: 20241017-sar2130p-tlmm-65836c137fa3
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Mayank Grover <groverm@codeaurora.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1049;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=CuslMtJuOiYg4c5xbG3D/mL3KiZ0f9lI0b+tOiwhbis=;
 b=owEBbQKS/ZANAwAKARTbcu2+gGW4AcsmYgBnEh+AaJjae2eMn6Rl2Mskc4540eRcxG5UNzly9
 TeoU4Zm/4SJAjMEAAEKAB0WIQRdB85SOKWMgfgVe+4U23LtvoBluAUCZxIfgAAKCRAU23LtvoBl
 uN6RD/4vxZ+SMjUK3LACZvPivlB++wTzdDpjiCByvbAL0gmpSwdhKMU7//2GPB1XAVvmBSguQf2
 3N18Ri9CvKDtGraY3DM0LKEBufD2smpRD9A6JhH0EOE3OnaMqUufuPsZ8KatSbYlvaTtUmsL8WW
 FiDCoUzHf8wgC+SDtT8nrNVXMobL3kOEzV5c1S3DOKMfu0zUrndaGiCg1BCZLA+JuLlVJrHFMSU
 ZJRDicx6BfWUHeLpfzAKVxn5T9Jcrer6ujZMWiP3Xpfa8QuRd3wDBHZvZG34z8tjk0Z06mJ7wDJ
 SYzecELmEXMi71jotfhqLvnd/f5kOziC9h9N2P0OTS+oQWMHRu8kMwGoNjgDkcltDhnoz1exdf/
 sDGy0bZJEpyvftC0A04qmc8ocOQppqDRjVslH7MkIESQawUP7t3KtDpy+3I4rJAyTO/7yd8WtWl
 z3LQ/S8bWG3PCwYIyp+0AwmySl3w8BOCMVLD59Q/L4nZtipiqf3OUKTAl1EnaOBH7cTF0DGei1l
 +iIlUBBzxyAVS1doc5oRiIc0akgEJCr5gIgNiXLbLXK6IKZTIZvNtC3rqjFB1rTkaz1ZgVi4Ewl
 8ahh0x/MRJeVIENiag4Rj339bU0mdciTU2jNcBu9XLRrxLgyXuuAie4LvKnOtlTaUC3OaA07rL8
 LKWl4KJxGutkVSg==
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add driver for the pin controlling device as present on the Qualcomm
SAR2130P platform.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed gpio-reserved-ranges and the patttern for the pins to match the
  number of GPIOs (Krzysztof)
- Switched from .remove_new to .remove (Uwe)
- Link to v1: https://lore.kernel.org/r/20241017-sar2130p-tlmm-v1-0-8d8f0bd6f19a@linaro.org

---
Dmitry Baryshkov (2):
      dt-bindings: pinctrl : qcom: document SAR2130P TLMM
      pinctrl: qcom: add support for TLMM on SAR2130P

 .../bindings/pinctrl/qcom,sar2130p-tlmm.yaml       |  138 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-sar2130p.c            | 1505 ++++++++++++++++++++
 4 files changed, 1652 insertions(+)
---
base-commit: 7df1e7189cecb6965ce672e820a5ec6cf499b65b
change-id: 20241017-sar2130p-tlmm-65836c137fa3

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


