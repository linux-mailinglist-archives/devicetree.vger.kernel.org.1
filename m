Return-Path: <devicetree+bounces-185055-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D49DAD64F1
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 03:15:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 35BFD7AD375
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 01:14:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D1D37082F;
	Thu, 12 Jun 2025 01:15:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jVClF1FM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5805820328
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 01:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749690939; cv=none; b=jkLPMEUEX9gc5C0JV3AxpYnKfIb0WUZYkzoul/eZBs/c/5gsaSmN/eA8i1X9qj2qpuW3TTFklWGWxK3GPoNq+47xxJ37adoV2aa0F1mq+nvDpMiBf7ANOwN7xbjKGednSRA0AJayRN6CeFutkSzk/tWEt8+EcWvQ9NUJqpXvNgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749690939; c=relaxed/simple;
	bh=NrHcjw5GTWnoeinPRgimJrSsgufoZHal6SjEx7R9EjY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=b1HxGrCbt/tlrUcLm+Hf6BIpJYgaOb+wswNyHRN722pj7k234yMuUwll4Dms73OpjwYGhsejOp2ecI0OGJ25sDYUc7zyfrWhEXEdbI1HTflybA+BGgZxmX+VAnA7MylEyCI5vRnKy55ewxmVXTiru6wS5xUic0gZt8VyLDKUrHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jVClF1FM; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5532bb8687dso18100e87.2
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 18:15:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749690935; x=1750295735; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JuJw8srctE10vLbubVGrfJppsXUNvTA93VWrV6noDig=;
        b=jVClF1FM4C2NvMLmDdkQ2W2CN1lXNj3utTPZ5bcF0lSytmZAM67SUoarbHP/Hv5qO6
         DSdrsLETxLxDNq9+C1BLiEdw17DiQ6Gy491c2q5QQwunlE6HMydJGBvqLod/f4eXrF9s
         V4J8/Bu0J8pWBpPjWf7BTBmn9wWK0BcZteM52Xr1QskBfSjgltdgAR/HfJcphzSBjB6J
         GuJLGNTfvsMvx1DUnRl6BkpFc/Jk1raiMeLjAglC/8W8SYSXGm421OFeqco/jU2QKtZb
         XOGPiKxMi1n5UfEI+J6ibCOUcJLNxDimVmOwb6oUzFrs1qBFB1h4gtsn1YvkTAvUagiS
         qPJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749690935; x=1750295735;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JuJw8srctE10vLbubVGrfJppsXUNvTA93VWrV6noDig=;
        b=YsAvoYV3d/qqMVj5P5j/77poxo5rrBqxSblU7m6Wh4UnQT7i7U3KqttceJrtqLjDNb
         EMn9dmRk3l1Wdej838cc/cmrPm7rGqJQM4bR+S24W+zguWe9/eAUjWpiT2JHqh9CckeI
         zzahmS2nbVnT8/FoY22YEjMurawUOWgnf7i1jBfRu1KJ8stO5gqD8z0TdExeG2k0AFRC
         XzmY1HRpa6tMZQoE8zj2mzwJcID4K/7RAQVXgZFwhnQ0SvUYhk6P5QFGMoAWwOXWw8hQ
         YqyGARZlEsL8TwitXs/YJB/uVRrb6tKM3sRCu+0tAaVdX3qKh7CoiibJ8BcIiS0D+6Ow
         9k+A==
X-Forwarded-Encrypted: i=1; AJvYcCXvp+X9yZ7NFEsIUdMVyhIwCMOKoki3AY4riff37zF7h0INGf1ucOPMsmQG5x/CIoXQz1zLQcJ+kdNR@vger.kernel.org
X-Gm-Message-State: AOJu0YwldpiNk9bzlHgXLegHQE+mE9VHrGETNS+M0aHjCZOqGc+TMW6Y
	DumqRum7tOTvmI2Ntp6rbckKDwpOQ6PivMo580H5CUMl1xpGlXYJjHk0sE79EXeHKFc=
X-Gm-Gg: ASbGncuuOAJ5H+qJu7dncT9bnEQ1GNk04Ferf2PvdF0urhd+ldt5YbhljDB7yRgggAL
	GTGhJ8cA9KDPcMOc2h5Pxd3WHFrx2T4cbUj12xJ0HCt7nKHLZzFrBa4N6kg3C7prvZ/aqiznaFs
	9jVPzifZR84TfBn8em4HJCa/J8Yo4WLkMYtB3ra4iNMPIja3iL4MMgEhZvGaekg33dyRkzpcLpr
	is4A5eMoXwheFC2bVgZEq1EWv49YP7/CQ0GhyRor6UYoEWHNFN+9RDFQlKP7bSewImXsZaZkVhH
	P7KFetJqgPa34hzmXUuDdhszEuJt0qm62yof6FVaNQtsPptEM5N9bHIsfpN2e8B07XOGm15Ggk1
	8TNaFKIPrFcn7xGJKdAlM4eZEh5bYL1Ck1/NxRacBGPNxgVWoBwRWwDZRwsOLLw==
X-Google-Smtp-Source: AGHT+IGAj4GrPMl/y6JJZ54G0SzpNwCuWUcpFjDrcwdAY8lX8P6qEi6omy3qUHCH6tnHopcQ4w5HdA==
X-Received: by 2002:a05:6512:3f14:b0:553:29cc:c47a with SMTP id 2adb3069b0e04-5539c0c4f49mr658044e87.6.1749690935265;
        Wed, 11 Jun 2025 18:15:35 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553a7018069sm62808e87.157.2025.06.11.18.15.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 18:15:33 -0700 (PDT)
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Robert Foss <rfoss@kernel.org>,
	Todor Tomov <todor.too@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 00/10] media: qcom: camss: add support for csiphy devices
Date: Thu, 12 Jun 2025 04:15:21 +0300
Message-ID: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.49.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The changeset introduces an initial version of long awaited CSIPHY
devices, which is agreed to be used along with any new added CAMSS
platform support.

Any platform and board dts changes are not intended to be added into
the series, however the changeset includes sm8250.dtsi and RB5 vision
mezzanine dtso changes for reference and testing purposes.

The changeset is based on top of this one:
* https://lore.kernel.org/all/20250513142353.2572563-1-vladimir.zapolskiy@linaro.org/

The changeset includes a new generic CSIPHY dt bindings evolved from
an RFC one, which has been submitted under phy folder originally:
* https://lore.kernel.org/all/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org/

Known limitations:
* There is no regression with old dt bindings, however under the new
  scheme of CSIPHY to CSID link a TPG may not work expectedly,
* to preserve backwards compatibility all CSIPHY resources are taken
  from CAMSS device tree node, and it's a subject for a future change.

Vladimir Zapolskiy (10):
  media: qcom: camss: remove never used camss_vfe_get()/camss_vfe_put()
  media: qcom: camss: remove subdev resource argument from msm_csiphy_subdev_init()
  media: qcom: camss: csiphy: simplify arguments of lanes_enable and lanes_disable
  media: qcom: camss: populate CAMSS children subdevices of CSIPHY IPs
  media: qcom: camss: unwrap platform driver registration
  media: qcom: camss: export camss_parse_endpoint_node() to csiphy
  media: qcom: camss: csiphy: probe any present children CSIPHY subdevices
  dt-bindings: media: qcom: Add Qualcomm MIPI C-/D-PHY schema for CSIPHY IPs
  [RFT] arm64: dts: qcom: sm8250: extend CAMSS with new CSIPHY subdevices
  [RFT] arm64: dts: qcom: qrb5165-rb5-vision-mezzanine: switch to new CSIPHY scheme

 .../bindings/media/qcom,csiphy.yaml           |  96 +++++++
 .../qcom/qrb5165-rb5-vision-mezzanine.dtso    |  18 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi          |  14 +
 .../qcom/camss/camss-csiphy-2ph-1-0.c         |  10 +-
 .../qcom/camss/camss-csiphy-3ph-1-0.c         |  11 +-
 .../media/platform/qcom/camss/camss-csiphy.c  | 258 +++++++++++++++++-
 .../media/platform/qcom/camss/camss-csiphy.h  |  13 +-
 drivers/media/platform/qcom/camss/camss.c     |  98 ++++++-
 drivers/media/platform/qcom/camss/camss.h     |   6 +-
 9 files changed, 480 insertions(+), 44 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,csiphy.yaml

-- 
2.49.0


