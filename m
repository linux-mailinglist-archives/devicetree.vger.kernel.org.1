Return-Path: <devicetree+bounces-11584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 102D07D631F
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 09:34:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 854EBB21118
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 07:34:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3264218632;
	Wed, 25 Oct 2023 07:34:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IcKqe3ZM"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C204A18623
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 07:34:02 +0000 (UTC)
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C33E1BF6
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:56 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-32dd70c5401so3564904f8f.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 00:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698219235; x=1698824035; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GrfbcuwNlTwyLcYogLMFiWCSoSNX4VqPPgIIWBUGDNI=;
        b=IcKqe3ZMbxVBk4b+UPwlUqdQyqj4XFYieG2HRPou96OVXqlSpZg8CkBtX1QZm6E3NP
         zxF2KXJqdvONVX/6ewdb+cVImCc5TKAAH2bdDetAEamPUz8fif7zoGkcTRATWSm/1/fQ
         1NunF6+1XRDvYWwIQxN+uDf3WJpNvg58a9bm1kSz6w+uMNFDS5iKJdDVsU3OYRYJeH3v
         zCCyvk38g/97aCPXiOxcuuqjTobS/4QE/39MGv/33hszUQbd5S0/uveB/nEAFaDJqEvE
         8ZCMnbFxhbZlTpGzdI2kkREIUwp//ylzWgbdUw3RTm0Ht/AVzj1G6oHaVB2CFLhadawa
         DArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698219235; x=1698824035;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GrfbcuwNlTwyLcYogLMFiWCSoSNX4VqPPgIIWBUGDNI=;
        b=lK9VDfWVbDZAts/ZozgkZeAhr5zjtlsK4C0Kr7L2kPgwpkgoY/K4GXOcvLDvtIJ1tM
         /OeC2bVld45LgGs5r/t3OI3BsWZMoZAm4LdKtJ1ObpSJOAMA24YBmaQVEa3BuOl58ELb
         8frjZSq4udW6izi08P9ydz+DDe3FBxvpSr0193x3/ycEzJz9ZN9/pKYYMTBoj1ezMIQm
         uSQFk4VmW7gJ+zq6KX0kz0V2a1yd6fgJKUFb4b5aTeCL2nX8DXBDdng5fXnYRBB7n19L
         KlND3S/suAl120NENWnimXjSxMaixha/ih56HXDNtx5HZTNuZ3bPqwnsHFYA+BNR5grn
         Ep7A==
X-Gm-Message-State: AOJu0YzgprLo43hCfAc5b07FGZ9PHe6fzXDHpCDpDRTdM89gGBcu/5RX
	25HRHZDHs5vhWyMP4P2Ai3ZJFA==
X-Google-Smtp-Source: AGHT+IHQMIavMxtXbbVlgJhx7eeBOBeGAhAjpReKFHjbMtG45n+Gy3xr2uIxR5/wFUFF9zNN48jXng==
X-Received: by 2002:a05:6000:50:b0:321:6f5f:789f with SMTP id k16-20020a056000005000b003216f5f789fmr10133469wrx.39.1698219234705;
        Wed, 25 Oct 2023 00:33:54 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id k17-20020a5d66d1000000b00327cd5e5ac1sm11546605wrw.1.2023.10.25.00.33.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Oct 2023 00:33:54 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/3] pinctrl: qcom: Introduce Pinctrl/GPIO for SM8650
Date: Wed, 25 Oct 2023 09:33:50 +0200
Message-Id: <20231025-topic-sm8650-upstream-tlmm-v1-0-4e3d84a3a46b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN7EOGUC/x3MQQqDMBAF0KvIrB1IjIrtVaQLSb/tgNGQiUUQ7
 27o8m3eSYokUHpWJyX8RGVbC2xdkf9O6wcs72JqTOOssT3nLYpnDUPfGd6j5oQpcF5C4BYerms
 xO/ugEsSEWY5/Pr6u6wZZtdWGbAAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1637;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=m6+6Lw3b6NzvC5o8Z3ERp2+18RGFKp8bBRONhG0avNo=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlOMTgAlruNS1Xcec/bkmeC0l8C8zHe5uu+bo/fkMr
 OfLTmzSJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZTjE4AAKCRB33NvayMhJ0WvED/
 4k4lo3g57mR+I5gMlRF8hq+LgocRZt+Qi8q+BZhwdi01zYN7N12x4ooMr1p7L2Z+Gl7drFBC9x7+Y7
 l6CC3lpS3HFuzVHDCm8KhEU1ddbTiZtDXkMgTEA+27fFYDGagCRW9ojuxaJmvNcOWgzJBAZI+9ChKA
 Zfg/NNXVf/iMEuMQ5Qafy6vpfH4e8cKrfwxgbC6LDpP2e1A0TwDIxBtu275c5QGAZEDHvRnP3Q5vih
 Z0XtdQfzN4axUvLw5VU8SzkW61eAbWTxwNsN5sQYLPheU21uQKHeaeUCJXIjSk7JIpvngQVk8kaNBz
 JhE8KCFBDnHbRJiDN7I7rD/YB3N/2ItoJWBnlxLyrMvabPLs4gGJtwTrmDhHsXjY/Iz1jQORNhC1ft
 MWsvA7h8EnZ15ZziQyO7Vf9xpO/OcfKFTRZ3M9VqBPeMBHvD3YmIpvBvuiONoEv/WTPRyf6zVrMSym
 5uHbSQj7ob8i4+amZuKX7VBrOfUdeq28hTmD9ZgCqeTFYkupsjqY1Px/pRGYqvSPfHRcZ9s716mosQ
 AlQfRdwnZgPPzE1RW47lVaaTY+Q4G/+K729ysryMxivgK7UdKo7AaIvKP6egiXCIE14JHkd2PRd8om
 h/NPl4Pe3l7EJw7Y4K524o5Ge+2Nuyt+3KGMReOQ8EGRCufgAOk66Xvuai4g==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

The SM8650 Top Level Mode Multiplexer supports 211 GPIOs,
and the usual UFS Reset, SDC Clk/Cmd/Data special pins.

An handful of pins can have their IRQ generated by the PDC
module, and for this support for the new wakeup_present &
wakeup_enable_bit is required to allow the "wakeup" event
to be passed to PDC and generate an interrupt or a wakeup
system event.

As SM8550, it also supports the i2c_pull_bit bit to enable the
on-SoC load resistor for I2C busses.

Dependencies: None

For convenience, a regularly refreshed linux-next based git tree containing
all the SM8650 related work is available at:
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm85650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (3):
      dt-bindings: pinctrl: document the SM8650 Top Level Mode Multiplexer
      pinctrl: qcom: handle intr_target_reg wakeup_present/enable bits
      pinctrl: qcom: Introduce the SM8650 Top Level Mode Multiplexer driver

 .../bindings/pinctrl/qcom,sm8650-tlmm.yaml         |  157 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-msm.c                 |   32 +
 drivers/pinctrl/qcom/pinctrl-msm.h                 |    5 +
 drivers/pinctrl/qcom/pinctrl-sm8650.c              | 1762 ++++++++++++++++++++
 6 files changed, 1965 insertions(+)
---
base-commit: fe1998aa935b44ef873193c0772c43bce74f17dc
change-id: 20231016-topic-sm8650-upstream-tlmm-4ece354ef319

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


