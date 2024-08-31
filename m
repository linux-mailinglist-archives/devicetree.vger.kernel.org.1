Return-Path: <devicetree+bounces-98694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 865AC9670D7
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 12:28:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C7153B2229F
	for <lists+devicetree@lfdr.de>; Sat, 31 Aug 2024 10:28:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC1A17BB34;
	Sat, 31 Aug 2024 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sA9MFtR3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BC3170A10
	for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 10:28:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725100113; cv=none; b=JP77y+cEpOIWsQT6K5ZxWepjufGyND8BCV39iNpiQF3RYbMjr/eOtWutWMgmc960fUwfH0arGLmisjVTNTJOkMozn2D6/bXM8zVMrzR8qu1U6PzQZYCzqIyUGIcpOR0maMr2eqfzFyPwiWGw4wenmMnznKcSUp5rvXYaRb3Z4ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725100113; c=relaxed/simple;
	bh=fMi/F2bWFx1Om7N2GGtWy8mpA2P8Y4HhuLM31ItDwwc=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=S7QtHwOEncGknuCPKCf9YHsF2570Hl+ewcwaeHyRaNY/h7CzHFWprDdDLoXzRMGFssGOD3hz5FKl/NUf04W4zKvU8CgjDUw1CuUrP57XEKisufXP6RcL7doDzYa6LOjq1nWFJFnnk1mmGK48j4UfCnsZ6UFvHOZoA9pFSNNdJR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sA9MFtR3; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-42bbea92505so1692995e9.0
        for <devicetree@vger.kernel.org>; Sat, 31 Aug 2024 03:28:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725100110; x=1725704910; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iOBAoeM78CK6pZ7Wc41orjui+qXbEjwvrk7Kb2A5zBo=;
        b=sA9MFtR3BmEmPsPeIVA7H9vyNIV+zPMH0erAF79zon18SrVRt/7EzylMI84qTA8MVF
         aBs5YFA4Ms65eLI1pH/ltcT9DkWlYgV9MeuHomLoyZaTuoFCpGHbnJRd8oZ0aJlFnyZn
         Oh9yXd+XY6UYc0r7oKZqH7Q7fgo9wr2ezC3tNunmH0fxIXcV5n/g+wO6tKN8XNJS+Kq7
         eqEuAOVBOljjDQmPN3zEp0MI+4Z6SHgAUWwEYlnaTph9ec77visPf4B4D2rBsSgwspSG
         Utz9BCydf+kqgEKl12TYceUOgJKlcQN8Kl4/IEMyX65v1IQADsvzZUorbjr3IWUnwfjP
         eTOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725100110; x=1725704910;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iOBAoeM78CK6pZ7Wc41orjui+qXbEjwvrk7Kb2A5zBo=;
        b=Qipj5mIFf/dtBTiMt4P+yIEl6zVSt8vMBeSVqWq8i4MnBNqv31yol9bDMHyPbZ9Q7L
         +mnZ6p+MBqEFA6y8V0/L+N9MFCASZoUgSvm4FA0OLl5Xly/JSDmxe3/sMpV9N8umLUbn
         Bg+EubiUZNhFajFBIkuP6BJl0lqKJ9FxCsv7d7WiSedh+XM+lMAWvMSGjikhlG2OHsIs
         5RfkQ5VUZJhvpuSLgUZ4WDjVvuZIRX7tLLW6+9XzaoWeUBOKgAW8ZgcEEluFuNTyOWwG
         SFJ34WScEchP6fMurcKwoYsfJoM9HVxKIvfnZV0GJuaeohKRZltgR2c8umf7ctEuRHUI
         SFVw==
X-Gm-Message-State: AOJu0YzMcK3mK0PUU+zZh0NKpzNOBmdjWyhL6tW0zr7tmfQgAggrzyc9
	GQxeWKLD51YCUCzJU463wUUl4D/Q+J8EnuWIFZ1f76w5sxGd9ox7sxEovb7RXhU=
X-Google-Smtp-Source: AGHT+IF6f8j8De9d5fNwf9SYsUVlrLpIHXrtLpYGE+gSm07uV2ZLwuiJxGi1p7/8DDGiwBhSX0oC2A==
X-Received: by 2002:a05:600c:511c:b0:42b:af59:4209 with SMTP id 5b1f17b1804b1-42bbb483c50mr19175505e9.6.1725100109277;
        Sat, 31 Aug 2024 03:28:29 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42ba63aba23sm104502155e9.21.2024.08.31.03.28.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Aug 2024 03:28:28 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 0/4] ARM: dts: nxp: imx: mnor pinctrl node improvements
Date: Sat, 31 Aug 2024 12:28:17 +0200
Message-Id: <20240831-dts-nxp-imx6-pinctrl-v1-0-f5811032bd40@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEHw0mYC/x3MQQqAIBBA0avErBswC7GuEi0spxooE5UQorsnL
 d/i/wciBaYIQ/VAoJsjX66gqStYduM2QrbFIIXshJY92hTRZY98ZoWe3ZLCgVqQsmpurDYtlNQ
 HWjn/23F63w8h7ht7ZgAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>
Cc: devicetree@vger.kernel.org, imx@lists.linux.dev, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=2999;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=fMi/F2bWFx1Om7N2GGtWy8mpA2P8Y4HhuLM31ItDwwc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBm0vBEMuX2Tus4Toct0KHgn72l/3lfg3LI4io8C
 5xgP2MtQSiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCZtLwRAAKCRDBN2bmhouD
 14KmEACE3FzEu4U2ntRq0wr+dhcT8ZXqSnSvq3sy5IgWYWvRMBUArzpIoj4JM1J5BCs6my3SXce
 LgV6fIqRJDg1Y470ONVoyZ9wDNgkZohmJPj3vDnpzgtaiBCg9A/6iHzPidHb/QhA1DejZu23ugo
 hkSABbr9/LJqoU8r9iwmf8EYOehWOrFfj6ZWkVqjzddR2kBE+amAEq2Myxu6gwIn7v7Y1jnWYym
 5Akq6IAweJAQNYB/B704A/PBaJLpcAbD3xqhZi2irtQIMiw7WedrONXNcRkxSYm53skM5xRLsRz
 1Nxed4lcJOgrGpjPnc4u76zxIqhG78u/hUhf/uVgAl5m8Y1LEcWWNrjQjNvCjaqxGSYpP3UN9IH
 AgmlhAMiVA+cyxUH3xGEFF1A94cNzDQtx6954aoOWXNfWDdoLb+81toQmTFwBx9noa1GmMOx2RE
 SQppar2ZNmZEHWpyCcUdEnN800dCYstGXRD9y8b3b7oCUvoH9zdJSvpAU2dt1/XFjuEsAjMsdjh
 yqpPtbbhQJ5+jO55QWg8noNT7x5+Dsw950W7e6iBYoPlB7xmx0/UYwFH3hLmvNN+JCDe1JcrRQN
 5wmmLY4oRSeZKRg3z/KBuimxJuz7sYE0wZeRrBa40X20lX6wpAUQFh9IAkNNL7+0ZvkOaRL6oZ2
 zzsef3WBAE44WTg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Align the pinctrl node names with the bindings.

Best regards,
Krzysztof

---
Krzysztof Kozlowski (4):
      ARM: dts: imx6ul-tx6ul: drop empty pinctrl placeholder
      ARM: dts: imx6ul: align pin config nodes with bindings
      ARM: dts: imx6sl: align pin config nodes with bindings
      ARM: dts: imx6qdl: align pin config nodes with bindings

 arch/arm/boot/dts/nxp/imx/imx6qdl-aristainetos2.dtsi   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw52xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw53xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw54xx.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw553x.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw560x.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5903.dtsi          | 10 +++++-----
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5904.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5910.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-gw5912.dtsi          |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-icore-rqs.dtsi       |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6qdl-sabreauto.dtsi       |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-tx6.dtsi             |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-dart.dtsi        |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6qdl-var-som.dtsi         |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6sl-evk.dts               | 12 ++++++------
 arch/arm/boot/dts/nxp/imx/imx6sl-warp.dts              |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6ul-14x14-evk.dtsi        |  4 ++--
 .../arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcexpress.dts |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsbcpro.dts    | 14 +++++++-------
 arch/arm/boot/dts/nxp/imx/imx6ul-ccimx6ulsom.dtsi      |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-geam.dts              |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-isiot.dtsi            |  4 ++--
 .../arm/boot/dts/nxp/imx/imx6ul-kontron-bl-common.dtsi |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-liteboard.dts         |  2 +-
 .../dts/nxp/imx/imx6ul-phytec-segin-peb-wlbt-05.dtsi   |  4 ++--
 arch/arm/boot/dts/nxp/imx/imx6ul-phytec-segin.dtsi     |  6 +++---
 arch/arm/boot/dts/nxp/imx/imx6ul-tqma6ul-common.dtsi   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul-mainboard.dts   |  2 +-
 arch/arm/boot/dts/nxp/imx/imx6ul-tx6ul.dtsi            | 18 ++++++------------
 arch/arm/boot/dts/nxp/imx/imx6ull-myir-mys-6ulx.dtsi   |  8 ++++----
 .../boot/dts/nxp/imx/imx6ull-seeed-npi-dev-board.dtsi  |  8 ++++----
 arch/arm/boot/dts/nxp/imx/imx6ull-seeed-npi.dtsi       |  6 +++---
 arch/arm/boot/dts/nxp/imx/imx6ulz-bsh-smm-m2.dts       |  2 +-
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi                 |  6 +++---
 35 files changed, 91 insertions(+), 97 deletions(-)
---
base-commit: d24ab964cf3b2fb7b24c3651b46f107037a358c4
change-id: 20240829-dts-nxp-imx6-pinctrl-80e6d6b1d8a3

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


