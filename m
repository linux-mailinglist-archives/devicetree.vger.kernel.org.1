Return-Path: <devicetree+bounces-10978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FE77D3AFD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:38:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C5F2B2813BD
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 15:38:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3FD261BDE8;
	Mon, 23 Oct 2023 15:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lZn7xze6"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFF0A1640B
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 15:38:28 +0000 (UTC)
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACD1ADF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:38:26 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-408425c7c10so28860445e9.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 08:38:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698075505; x=1698680305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1N//AnYmHXkSl9KLuAZmJ5UEbGwSxaTciSmclXgwpFw=;
        b=lZn7xze6i5sJtxmEE7vElFR9RoDhpiKu6QzApjydBSoxrSeKmAtwStwgPjkbbAwgeP
         JqovTiQxodXK5+8cO2wAWb9dGkQUE6kYXCqXM+eQo7ZyldrX9e0KwvyXyL1I3oVaXP0G
         BimFLIGceGJasDlLrephb2R2EYVT+utG6lzjuT7OP5b0bbAbL5cR81k1MDfNHR0lIBFR
         c2mLZFgeWhwRibKf2MGI54ug2tqeYIwztH1ZK/S3V7MXwGgh05c6QmiYYdql2jUw4CpB
         RnQlAP13ET4p/TuF0faI0lhmKR7wJD58/Vxv7JYfIAtmgeDMlenEZo5lMCPhWv1zpZBB
         S99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698075505; x=1698680305;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1N//AnYmHXkSl9KLuAZmJ5UEbGwSxaTciSmclXgwpFw=;
        b=K+0MDdLjmRpSxpywl79Zly6bBF2Yb3H432cOVAFNvenR1Pp09y+y2VbbEhlPAN8nyr
         okBtZtBDPQ7weqo2dG2ujiL2tKh/8PHUzFWBUWSK95PgzYyXnmejFLg1Ba1737i4em/q
         vljYhEufDyPnxY0q6p9LnU+2NA0DGpJK8uwMfqbtuFhT5h9+wo9DqPOVS7Ep4He5DuCs
         wJDjjWYTgU6k/wcWs5ABFyoihfzngnUAnPEad+ac+bTGsIERuGTvZBUwGTUPGNlspX+W
         sdPZGOxso5W+jilP9gwU+xHLpSfwW+qgQzbTeju0TYW4bOc9Uon7Q09xseg8VIJLArg/
         X3KA==
X-Gm-Message-State: AOJu0YyQBrKyHD6q6q2cF/9Madrk9nBxPmRlc7AgSAOXV2akoXX+I2wM
	ZzYyQKkMKVG+2w3ov2iEzMOidg==
X-Google-Smtp-Source: AGHT+IGqtadhtCg8N+P5t3OwpPbwmHmbDPrJjZ66M1shJc2FWzZoaTgvgET3E215JeVdsaYY1PPRUQ==
X-Received: by 2002:a05:600c:310f:b0:408:febf:831f with SMTP id g15-20020a05600c310f00b00408febf831fmr2870502wmo.28.1698075505064;
        Mon, 23 Oct 2023 08:38:25 -0700 (PDT)
Received: from x13s-linux.nxsw.local ([37.228.218.3])
        by smtp.gmail.com with ESMTPSA id f4-20020a5d50c4000000b0032da319a27asm8096929wrt.9.2023.10.23.08.38.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 08:38:24 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: andersson@kernel.org,
	agross@kernel.org,
	konrad.dybcio@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	dmitry.baryshkov@linaro.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	jonathan@marek.ca,
	quic_tdas@quicinc.com,
	vladimir.zapolskiy@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	bryan.odonoghue@linaro.org
Subject: [PATCH v3.1 0/4] Add sc8280xp CAMCC bindings and driver
Date: Mon, 23 Oct 2023 16:38:17 +0100
Message-Id: <20231023153821.189331-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

V3.1
- Drops dependency from below, since that patch needs a rebase
  on clk-next now anyway.
- Adds Krzysztof's RB as indicated to patches 1,2,4

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/qcom-linux-clk-for-6.7-camcc-sc8280xp-v3.1 

V3:

This patch depends-on:
https://lore.kernel.org/linux-arm-msm/20230923112105.18102-4-quic_luoj@quicinc.com

- Resolves CLK_CRITICAL camcc_gdsc_clk by making camcc_gdsc_clk
  always-on and dropping the CLK_CRITICAL flag.
  We want camcc_gdsc_clk for retention, however CLK_CRITICAL is not
  compatible with pm_runtime suspend and power collapse. - Konrad, Bod

- Uses gcc.yaml instead of camcc-common.yaml - Krzysztof

- Drops fix for 8550, TBH I didn't know use for socname-ip.yaml
  with compat strings for different drivers was OK, so long as the
  content of the yaml was compliant for both. - Krzysztof

- Drops clock-names, adds RB as indicated - Konrad

- Reworks "really_probe" to account for patch from Lou Jie which
  is RB from Stephen Boyd but not in any -next tree I can point to right
  now. - Konrad, Bod

- :g/CAM_CC/s//CAMCC/g - Bod

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/commits/clk-for-6.7-camcc-sc8280xp-v3
 
V2:

I've expanded the scope of this series to include some fixups for the
camcc.yaml in general.

- Adds qcom,camcc-common.yaml
  There are a number of repeated patterns in the various camcc yaml
  files which we can contain in a common camcc .yaml instead.
  I used gcc.yaml as a base per Krzysztof's suggestion.

- Adding the common values file I noticed that sm8450 and sm8550 were
  both listed as compatible strings in qcom,sm8450-camcc.yaml.

  This appears to be in error though since sm8450 and sm8550 are
  not compat strings of the same driver but different drivers entirely.

- Switches to indexing, instead of fw_name for clocks - Konrad

- Adds the GCC AHB to the clock index - Bod/Konrad

- Changes reference "cam_cc" to "camcc" throughout camcc-sc8280xp.c

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-26-10-23-sc8280xp-camcc-v2

V1:
This is a bog-standard series to add in the CAMCC for 8280xp.
As a precursor to adding in sc8280xp I thought a bit of tidy up on the
existing yaml for the camcc controllers in general would be worthwhile.

As a result there's a precursor patch which aggregates the various camcc
yaml files into one location.

The sc8280xp looks like sdm845 with more blocks. Similar to sc8280xp we
park GDSC to CXO. Thanks to Dmitry for the suggestion the GDSC parking.

Link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/linux-next-23-09-23-sc8280xp-camcc

Bryan O'Donoghue (4):
  dt-bindings: clock: Use gcc.yaml for common clock properties
  dt-bindings: clock: Add SC8280XP CAMCC
  clk: qcom: camcc-sc8280xp: Add sc8280xp CAMCC
  arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp

 .../bindings/clock/qcom,camcc-sm8250.yaml     |   18 +-
 .../bindings/clock/qcom,sc7180-camcc.yaml     |   18 +-
 .../bindings/clock/qcom,sc7280-camcc.yaml     |   18 +-
 .../bindings/clock/qcom,sdm845-camcc.yaml     |   18 +-
 .../bindings/clock/qcom,sm8450-camcc.yaml     |   20 +-
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        |   15 +
 drivers/clk/qcom/Kconfig                      |    9 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/camcc-sc8280xp.c             | 3048 +++++++++++++++++
 .../dt-bindings/clock/qcom,sc8280xp-camcc.h   |  179 +
 10 files changed, 3274 insertions(+), 70 deletions(-)
 create mode 100644 drivers/clk/qcom/camcc-sc8280xp.c
 create mode 100644 include/dt-bindings/clock/qcom,sc8280xp-camcc.h

-- 
2.40.1


