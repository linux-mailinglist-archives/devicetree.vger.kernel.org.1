Return-Path: <devicetree+bounces-19994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AC5F7FD7E2
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 14:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD1801C20FF7
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 13:22:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D59DF2030F;
	Wed, 29 Nov 2023 13:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WuYri+A4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9508610D3
	for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:22:52 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-50bba815f30so2543517e87.2
        for <devicetree@vger.kernel.org>; Wed, 29 Nov 2023 05:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701264171; x=1701868971; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5IOvkkJMIsRd1YnRawuk60UJlAJd1F2TXb9DiAiWHk0=;
        b=WuYri+A4bmz7uEXdcvZzhqaV0v/18u/AiHE2J26RD0lht42nsdtLz71cv4hpj1HtEC
         UumufLBynbt4j4Z5GjmRLRMbauAUutLkOHRvpEQweD3rudtcV/lGQ48mH4qMFHdelhcc
         X9TFnNzSMMBWGOTP/7FQCXq1rj/j6CzdhFd1UJEAjifVCl8uvizLHaa1vEbdKu9yxUQC
         dFJtDkf0dOMaeFtQ4wzx9dj12/rGrpaa0L7DlQymW/N9d67f8gXYlzgXjVO0GJ6AIcW8
         FV+i+mWUxWGv7oaoPlgcgx59V7q1OW8FbLRcksWQ4qKDX0iyMChaftDgXlJS0Ee7jezo
         amPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701264171; x=1701868971;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5IOvkkJMIsRd1YnRawuk60UJlAJd1F2TXb9DiAiWHk0=;
        b=Y4hPZDgW8x0m0vh8FMZwKRs6OYYsdTfhMW/V7IvnlQapcrOOKxfLMeqWQd3jY9/8Ra
         qHdVTCy7VbK804nvclO3jLLsql4C7n0+aZkga6YDDdbqJCdskZMHfu81edmtsR+C9U3A
         3RQzqOu3vMggEj7+jKJaynGhIfNpGCG784dLKMM0PW4sGuSSTm5mnbuhoodotA3R738Q
         +NeoLx2dA5vCGGMxRiRSKR49/HxF26RqD8Hyrf2w9uUvfe3VX9axGfSfRN3EI3U3Y6jg
         wVzulpDzSKn3fT/bsOvL92i30ilfr4rJRkl+wK7Oa6twcOLdaR6KorZiNvrCTnTxwViS
         N1Bg==
X-Gm-Message-State: AOJu0YwkLEey4LWUf9rR+ZrC6aPnofSBfyenJ8FBjXL0EHiq81spXACk
	tFcyZqptKmNm4fBZYqF+Cll0fFbMM7Ek815Uxvc=
X-Google-Smtp-Source: AGHT+IEAvJW1jTIhtMigwpP5a30LlihRuQxnoO9mK4Y8tBnvnxT7g9sM5dZUcDS9OuilUlyjBIHyXg==
X-Received: by 2002:a05:6512:615:b0:50b:b8a9:e735 with SMTP id b21-20020a056512061500b0050bb8a9e735mr3576863lfe.8.1701264170802;
        Wed, 29 Nov 2023 05:22:50 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.109])
        by smtp.gmail.com with ESMTPSA id lb16-20020a170907785000b009fda665860csm7844842ejc.22.2023.11.29.05.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 05:22:50 -0800 (PST)
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
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/5] arm64: dts: qcom: sm8650: audio support
Date: Wed, 29 Nov 2023 14:22:42 +0100
Message-Id: <20231129132247.63721-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Still not complete, but most of audio support. Sending early to get the bits
accepted so we can focus later on more difficult parts (like WCD codec).

Dependecy
=========
Depends on:
https://lore.kernel.org/linux-devicetree/20231124-topic-sm8650-upstream-dt-v4-0-e402e73cc5f0@linaro.org/

Bindings used in this patch were documented here:
https://lore.kernel.org/linux-devicetree/20231129113014.38837-1-krzysztof.kozlowski@linaro.org/

Cc: Neil Armstrong <neil.armstrong@linaro.org>

Best regards,
Krzysztof

Krzysztof Kozlowski (5):
  arm64: dts: qcom: sm8650: add ADSP GPR
  arm64: dts: qcom: sm8650: add LPASS LPI pin controller
  arm64: dts: qcom: sm8650: add ADSP audio codec macros
  arm64: dts: qcom: sm8650: add Soundwire controllers
  arm64: dts: qcom: sm8650-mtp: add WSA8845 speakers

 arch/arm64/boot/dts/qcom/sm8650-mtp.dts |  48 ++++
 arch/arm64/boot/dts/qcom/sm8650.dtsi    | 363 ++++++++++++++++++++++++
 2 files changed, 411 insertions(+)

-- 
2.34.1


