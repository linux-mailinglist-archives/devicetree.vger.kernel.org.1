Return-Path: <devicetree+bounces-12389-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 40AD37D93DC
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 11:37:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CC5CDB210E8
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 09:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC43516417;
	Fri, 27 Oct 2023 09:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CaYEmVjI"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7480E16406
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 09:37:28 +0000 (UTC)
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DA14E5
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:37:24 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5079f9675c6so2863521e87.2
        for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 02:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698399442; x=1699004242; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=bxAhGTRk8WbWkwB+dTuwh9bEQbrCU7H1RI+9l+q0K90=;
        b=CaYEmVjIgu/fK1yY7wGa2klX283fs7FTn5YX4C5x57qDRx2YjZqfNL9pznt4iwdzSm
         E6EsfY0Mhf8tG5188WbUeFXtB/VLMIdh1WoFeZrs85LD4v5gGz2aMEBoGrhiOB+g7RLP
         rdKPr9owAgCMjXufL0hJ7PawKfgW1BydwFkbbKDnWVUldw09rcCLgQvH+UreKmTlyrVw
         LcQX2NjEoTxhMpzrgl40DreWsvVIggSP8xVDN1yZapbqBNVSwfP/If+/vxm5NwKvloYr
         /CSNfM8zNFLwI44hmZQoU80TCbOELgW0f/jEunSBuGelZChZON2jQQ/mzENUU2xBthHQ
         nLHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698399442; x=1699004242;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bxAhGTRk8WbWkwB+dTuwh9bEQbrCU7H1RI+9l+q0K90=;
        b=EZSZw05dn3kY+3zMynY0PmmtF6X/WWTL0gKpyn7uB+QQSXuzYo3e/ZBAhcb7fhB9gx
         UG8iHfp7pTZDArvWDPfCFlBdfesvV//m6QDGO8leeVFFp2P7OEBdJdQ4bzDQXPsiLEFu
         xPOksSJ7gt2dJUUP8aAdfBeeUeD3RMiG8gVA0PfxnXSW5pllW/st4e/AilnQJP5z299F
         0NHKEvw8/ZswjuaBfi8l4rgkzvUNvoez6t9igOIfrq8j9NHyZGQ4i/My+K8x1QJ5Y0Y0
         0S+H2CUcr49Ct6i0f6ig8vhkX/bNR6DaDO3jpB11lGwQ0SEe99OxtPRjfVIcMtFywTHL
         zzPA==
X-Gm-Message-State: AOJu0YxFcKRfBN19cZBtl6yO8p/XDVjn5IE1V3LmKp3zFNhArFIJh6mX
	qYG+R7xVIx+7vc31qehqTVJc7g==
X-Google-Smtp-Source: AGHT+IFQw7hIScOFSzvtLz9DA9eBVKE2Jz65xnKksveBucyHsbC6nhpEUWiEVVT/vo9qDs+HweEaXw==
X-Received: by 2002:a05:651c:42:b0:2bf:f32a:1f64 with SMTP id d2-20020a05651c004200b002bff32a1f64mr1718197ljd.18.1698399442460;
        Fri, 27 Oct 2023 02:37:22 -0700 (PDT)
Received: from krzk-bin.. ([78.10.206.168])
        by smtp.gmail.com with ESMTPSA id s26-20020a2e151a000000b002c12c2094e4sm223341ljd.74.2023.10.27.02.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Oct 2023 02:37:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/2] pinctrl: qcom: add sm8650 lpass-lpi
Date: Fri, 27 Oct 2023 11:36:13 +0200
Message-Id: <20231027093615.140656-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Dependency
==========
This patchset depends on v2 of:
https://lore.kernel.org/all/CACRpkdYzhEJhN9BFdbZkJ7LurtT+dFMg97SLY-q91SNCZ8bikw@mail.gmail.com/

Due to conflicts with current fixes, the v2 above was postponed for v6.8, thus
this should wait as well.  Review can happen anyway now.

Best regards,
Krzysztof

Krzysztof Kozlowski (2):
  dt-bindings: pinctrl: qcom,sm8650-lpass-lpi-pinctrl: add SM8650 LPASS
  pinctrl: qcom: sm8650-lpass-lpi: add SM8650 LPASS

 .../qcom,sm8650-lpass-lpi-pinctrl.yaml        | 148 ++++++++++
 drivers/pinctrl/qcom/Kconfig                  |  10 +
 drivers/pinctrl/qcom/Makefile                 |   1 +
 .../pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c   | 255 ++++++++++++++++++
 4 files changed, 414 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,sm8650-lpass-lpi-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-sm8650-lpass-lpi.c

-- 
2.34.1


