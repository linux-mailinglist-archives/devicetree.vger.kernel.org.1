Return-Path: <devicetree+bounces-21577-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F9D804639
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 04:26:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 85378B20C6A
	for <lists+devicetree@lfdr.de>; Tue,  5 Dec 2023 03:26:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044A7A59;
	Tue,  5 Dec 2023 03:26:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NB57acth"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EA3CD7
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 19:25:56 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2c9f166581dso33241691fa.2
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 19:25:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701746754; x=1702351554; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KdjcVuiE2v7Di9Ywm4Vigqp/DmtAOvu7ZTQVV0XyIEY=;
        b=NB57acth5r2fwjx4eF7MJIUQJk/ESdqF3+sVD0nyl674M6UlQ+i6JsSe/iK6lS+rdA
         7x0HNEiiwTxnGOUHQ4uOcGgzqXhpBegOVDGrDXI1MHnDQier1XXmqzV+Gz05NglpBZQq
         3u2jZgcrS/5xh6tfYaEt7w6UZUSw+euhw1QTNQhBfLEL7tFOkGwU0f9fSYibqU4vySaZ
         njqHD2vDqpzi0FqBG1mGzNIyr9UR8WPPefyyXb/qYObCwvEEgLswt9+LE+T3ZVl0iWOZ
         XnLCgIbRFMpY/N4Nl3OZYePTcYy+fQLaMNPj3As6Kf4f96d5oV7UtkXNaeken1b4yMZf
         xd0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701746754; x=1702351554;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KdjcVuiE2v7Di9Ywm4Vigqp/DmtAOvu7ZTQVV0XyIEY=;
        b=PPDo+4IhiUjnZ4lJtVGiB6zoiTsSysUaVU4WpnOi1GTGqWea8TjHWycmn79iwTdEFT
         80LJ5K4HEyS6a+/D5cREXgCe046B54EOtoP0cTILvjV0T/AUWPQ7Cuapl5aFBFX2uGas
         ByloR7QHy8m/kajxwGwoTCqlfJeQoP7iVTUZxsNKm2guPOvdRgbSb3yP75XFNzn7vBII
         wW4YbmrS3fA5O3BfSkjhwyGdw3fcgszNx2o34ZcgbxkE8N3jc+Phmhw4rfhbJVcMWKGI
         ZEBOn1xfNCqIA004qvdOEkVO/dr0UL3dZHfb3I1TB1SvGzcgtt/pXWyHHJsnFF2ntf16
         d+/Q==
X-Gm-Message-State: AOJu0YyQ6+x7r5mGFKEjZyfzgZfs8FMYoIbcJaMobKqzhw2WgUctb3+s
	kp8y1Iw0AJNIknlSDpdIG7JQLw==
X-Google-Smtp-Source: AGHT+IGVZU3j1HgS8Jz9ZtUfw7VOpS/M9820Vs002RL8gYvcfwZUcvI0l9aGhWBz8Py93oMqmJhY0w==
X-Received: by 2002:a2e:6a01:0:b0:2ca:187:1c7e with SMTP id f1-20020a2e6a01000000b002ca01871c7emr1214631ljc.29.1701746754498;
        Mon, 04 Dec 2023 19:25:54 -0800 (PST)
Received: from umbar.unikie.fi ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id e16-20020a05651c04d000b002ca12be2b63sm127277lji.18.2023.12.04.19.25.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 04 Dec 2023 19:25:53 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH v3 0/9] arm64: dts: qcom: switch UFS QMP PHY to new style of bindings 
Date: Tue,  5 Dec 2023 06:25:43 +0300
Message-Id: <20231205032552.1583336-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This is an unmerged excerpt of the previous series that converted UFS
QMP PHY to newer style of bindings (single registers region instead of
listing each resource separately and having child node for the PHYs).

Changes since v2:
 - Rebased on linux-next
 - Dropped merged patches

Changes since v1:
 - Split large patchset into smaller parts
 - Rebased on phy/next

Dmitry Baryshkov (9):
  arm64: dts: qcom: msm8996: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: msm8998: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sdm845: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6115: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm6350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8150: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8250: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8350: switch UFS QMP PHY to new style of bindings
  arm64: dts: qcom: sm8450: switch UFS QMP PHY to new style of bindings

 arch/arm64/boot/dts/qcom/msm8996.dtsi | 25 +++++++++---------------
 arch/arm64/boot/dts/qcom/msm8998.dtsi | 18 ++++-------------
 arch/arm64/boot/dts/qcom/sdm845.dtsi  | 19 +++++-------------
 arch/arm64/boot/dts/qcom/sm6115.dtsi  | 17 +++++-----------
 arch/arm64/boot/dts/qcom/sm6350.dtsi  | 18 ++++-------------
 arch/arm64/boot/dts/qcom/sm8150.dtsi  | 20 ++++++-------------
 arch/arm64/boot/dts/qcom/sm8250.dtsi  | 20 ++++++-------------
 arch/arm64/boot/dts/qcom/sm8350.dtsi  | 28 ++++++++++-----------------
 arch/arm64/boot/dts/qcom/sm8450.dtsi  | 28 ++++++++++-----------------
 9 files changed, 59 insertions(+), 134 deletions(-)

-- 
2.39.2


