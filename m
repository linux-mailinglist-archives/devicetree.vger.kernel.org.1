Return-Path: <devicetree+bounces-12778-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D587DB6B1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:50:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1904CB20BCE
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:50:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B9C4DF55;
	Mon, 30 Oct 2023 09:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e6GrC9u2"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0821DF47
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:50:34 +0000 (UTC)
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 17D1C2D43
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:50:19 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2c509f2c46cso58758161fa.1
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:50:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698659417; x=1699264217; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1BIXjvXDntxem7mZ7Qq/m56h8knZQL7orEKUL9eU4jc=;
        b=e6GrC9u2n0GlUjx9CkfmjVnarEmr9GDrGU1c+nur6JsZaAKbmNblnsEO67eLCcTbMe
         vydxawSM5Ar+eBz5NJuCZaqPPkxl/DiY65un4dp4ApIR8pGFsYd7C4DK/ZpCu1VHfhkD
         yE1vWnEiPzSAjhYHJlnsB+4FxwrgDIB0+sfmagKhWMwx+pBMcXGp3CwFbeIDGVaHICq3
         zIYinLbLbbm1H9SK2TbO23CB8oJMYm3O3poL5JEadOQ8Ph6TeuF+liJZTdAKDW8Ac35/
         ELjoq10srYC1vt60HwWRli8gbGmJoq9h83BREXNMS6bd1AgKV8FzOq7UC7TnEB6YPiI9
         s0xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698659417; x=1699264217;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1BIXjvXDntxem7mZ7Qq/m56h8knZQL7orEKUL9eU4jc=;
        b=XXyIQg8+pL+Uydg0bf9bmL5FXr2mWnQGwal48c5qr7WB3VfG4lqRK9DCSHS+URKykT
         9eoZm6J3jGufn0JulB5exFtBuGQX1I2aGMnFhrd8VywldNOYqrj9i+HSbiN6j57Iqbne
         4bfDiyvi8dAmRw/4boW3tETAUDbw5iYZSgxj70IjLoda8IloqIKjGF1XVLGswedUp6Aq
         3tFPtIegSeSMVxt5LfZid69rL6upKoXZQHjvb7VejsAsfklY2Jz81qHw0kSpXf8KmPHa
         wgopXychDeLto4Lo9SNU+Pm4weSw9U5/xE90m1xNHLaX4Uz+ESP9O/8zcL1fNjqOMdUc
         y1YA==
X-Gm-Message-State: AOJu0YwaxreoDSOupM1Y4s3BjteidMvOmudERNfrCtpzRoetbGROXauc
	hW0K9QS/2eFt7bJSa4jh5VieLQ==
X-Google-Smtp-Source: AGHT+IH0k2pg+UfjZUCUXy6B3GSaQZKNSoPwEplAwxPZZ8su+HMEjHXGyHj/OtwhoTzIJ0m1HbC6SQ==
X-Received: by 2002:a2e:9a86:0:b0:2bd:180d:67b1 with SMTP id p6-20020a2e9a86000000b002bd180d67b1mr7224708lji.51.1698659417143;
        Mon, 30 Oct 2023 02:50:17 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id hj19-20020a05600c529300b0040841e79715sm8625242wmb.27.2023.10.30.02.50.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 02:50:16 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/4] pinctrl: qcom: Introduce Pinctrl/GPIO for SM8650
Date: Mon, 30 Oct 2023 10:50:12 +0100
Message-Id: <20231030-topic-sm8650-upstream-tlmm-v2-0-9d4d4386452d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFR8P2UC/33Nyw6CMBCF4Vchs7amNwi68j0MiwoDTEIpmVaiI
 by7lbh2+Z/FdzaIyIQRrsUGjCtFCnMOfSqgHd08oKAuN2ipjZKqEiks1Iro66qU4rnExOi8SJP
 3wmKLprTYG3WBDCyMPb0O/N7kHimmwO/ja1Xf9cfq8h+7KiGzbbraOuNs9bhNNDsO58ADNPu+f
 wBokGQKxQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1941;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=oRmTu7gK9K+qp4774LfBnE/qKXVBzCm9HZuGwjD1V2E=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBlP3xVKMP93L8Ik6k9FgnT2pKfBoyprYkBE8Q/YKiN
 1C72pdmJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZT98VQAKCRB33NvayMhJ0QVGEA
 Czph8LyxHExNGquxpwUXmAm4pbMBqELha45Rw1xjjF3SqyDUqRtI+lb172SOccKH1XIegPG/KcjOsX
 ntQf/l8vFjzEwX98/B7N1vZbci+SsaC8Att41MSQLUvs9YwpWokhL2Lk9+vn5VJzkiBmayaorgtwA7
 qCF24lSBqtJTBJ67qGZxjidq48pasnmSrXh5xJk+5tNscIMfT6znmo3bxaI5GkggY/rUMYII0ZbKR4
 n9ew618rMzjogMqKikNrXLkvbPIukI6FQ7o6F/qYMWAql1qsJScCesDMkrWYbMF1R7y97FnUFymjAD
 D9OEAtVB4i2INsB1mKDw7i5aXWSfVywyH9VO31bhSuPM++vC/WA8pFLl4U1ux6HAWemPPV6TPl/BlW
 Y8+VPoE4KxgQD44clmL68kSM7XrBgXA6EaUCztQ0qXkSGgKspxOfI0GgVyGJfg80YgKl8HFxapon2s
 FuDkFSb8LAtzQltjWMkg8Hhf7LEZd91QABRswctZqTe5yPg7SmMflrtZQcJNO18nCoJsHe0hP5ESK/
 WHdtWJFS3Yyb0uGFuJzJNIoDQRJk4vaSGZkEXJUXtKaEwl+kfkkFL2cKpqdf0E8N61ZyXCusORMQpf
 7hBEpg6vqDtqShC+9T++gBQvuKDR4ivC/wUBcYM0wIwCvK9Kp4Jph+ngX2Mg==
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
https://git.codelinaro.org/neil.armstrong/linux/-/tree/topic/sm8650/upstream/integ

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Collect reviewed-bys
- Fixed unevaluatedProperties handling, and dropped the true properties
- Link to v1: https://lore.kernel.org/r/20231025-topic-sm8650-upstream-tlmm-v1-0-4e3d84a3a46b@linaro.org

---
Neil Armstrong (4):
      dt-bindings: pinctrl: document the SM8650 Top Level Mode Multiplexer
      pinctrl: qcom: handle intr_target_reg wakeup_present/enable bits
      pinctrl: qcom: Introduce the SM8650 Top Level Mode Multiplexer driver
      fixup! pinctrl: qcom: handle intr_target_reg wakeup_present/enable bits

 .../bindings/pinctrl/qcom,sm8650-tlmm.yaml         |  147 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-msm.c                 |   42 +
 drivers/pinctrl/qcom/pinctrl-msm.h                 |    5 +
 drivers/pinctrl/qcom/pinctrl-sm8650.c              | 1762 ++++++++++++++++++++
 6 files changed, 1965 insertions(+)
---
base-commit: ed75ce58b3a55d2cd95b68a06fdb010e1e18d825
change-id: 20231016-topic-sm8650-upstream-tlmm-4ece354ef319

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


