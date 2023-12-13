Return-Path: <devicetree+bounces-24893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BA77881195E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 17:29:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74A7E1C21222
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:29:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E91D35EEC;
	Wed, 13 Dec 2023 16:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="pxwaXIwX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79957F3
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:03 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-50bf69afa99so9194711e87.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 08:29:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702484941; x=1703089741; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vMU6rrGmxgyuL5TMMGyP9RyaaPrkiegeHhKObIZg/xs=;
        b=pxwaXIwX4eK62b6KK02Qic7oVBJUz3Sc/ud+9RUe9/2GgTv/TK9i0qiqD7vjlZ5S5r
         H9/0dis6EPbn8T4z/wvppxISmfPhPDT195WAv3MsDCJ7vRxf5ggHx3pbRw5k1Ou4Mflx
         E58hRkKsBdGDGF7i5zUXpo/KWmqZYcIyNQRSMF+XMQJtdMXPz6DVScdE3PyteE43eoxn
         UpN1OpG04VnOLObepRO+4tJU4m3Oct04pKU3SbrgMWqqU/Q/MIPlSTdwOCxhC6sjRjj0
         5tDPJuLBAFJAXtJcVRhtVCXilK/CCUC2LDop6zaNcEIGczBeCiF5BeDLfOR088B4NnmC
         iyOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702484941; x=1703089741;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vMU6rrGmxgyuL5TMMGyP9RyaaPrkiegeHhKObIZg/xs=;
        b=Ml8p5+gRiW141gI6/ZFYWu4ynUElCFhrYtJKFTGsYtqNLIObxTbM0km54PbnNJXWye
         NIz9YNfq3ggBiflG5vvgpdN1c5u25REbv1m6XtW2qDRJa+iFDPGa0L45Ye/wBzRD1Hwd
         vIMxdBM5wHU+FBM6gTy7+RB5Sn4xptXbounK0kPtkyewRKbJLpqsN3FnBX7QhAJg2PJ+
         V3GvLQCJsEIFD2yQWauwey634o0TykwotGTTzyy+Z9f5KVAcaRjFGadwNQ0sBdXFUq1x
         U7/OWT9zDoZ1e5elrTAOeuoZMptJ9S9qDjtiIkuQRkANJeWpbLfIwmDC48IBO1PS77SB
         egAA==
X-Gm-Message-State: AOJu0YxOF9SxoNxxA1FdnUfY+XP7a0stdwUQCFC8gjFj/Kccd8d4XSAM
	iKQPy2SJkReZ60NmytK25VUsqg==
X-Google-Smtp-Source: AGHT+IFJu6vsF/X1yu3ijUE5ikBJmKtuP5O78EYgVqbIzMF1rD5Pj8yPIiXoKlW7GBWTwlov6p8k3A==
X-Received: by 2002:a05:6512:969:b0:50b:fcd4:832d with SMTP id v9-20020a056512096900b0050bfcd4832dmr3753987lft.113.1702484941699;
        Wed, 13 Dec 2023 08:29:01 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id br7-20020a056512400700b0050bfe37d28asm1641026lfb.34.2023.12.13.08.28.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Dec 2023 08:29:01 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 0/4] arm64: dts: qcom: few improvements
Date: Wed, 13 Dec 2023 17:28:52 +0100
Message-Id: <20231213162856.188566-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Changes in v2:
1. Previous submission included stale patch.  Resend without it. No
actual changes, but marking it v2 for convenience.

Best regards,
Krzysztof


Krzysztof Kozlowski (4):
  arm64: dts: qcom: sm8450: move Soundwire pinctrl to its nodes
  arm64: dts: qcom: sm8450: drop unneeded assigned-clocks from codec
    macros
  arm64: dts: qcom: sm8550: move Soundwire pinctrl to its nodes
  arm64: dts: qcom: sm8550: drop unneeded assigned-clocks from codec
    macros

 arch/arm64/boot/dts/qcom/sm8450.dtsi | 36 ++++++++++------------------
 arch/arm64/boot/dts/qcom/sm8550.dtsi | 34 ++++++++++----------------
 2 files changed, 24 insertions(+), 46 deletions(-)

-- 
2.34.1


