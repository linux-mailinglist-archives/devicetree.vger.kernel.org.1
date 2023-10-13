Return-Path: <devicetree+bounces-8395-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2C47C7F9D
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 10:10:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9042B1C2097A
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 08:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4A37107A7;
	Fri, 13 Oct 2023 08:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="kJ9Ekaoo"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE4510797
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 08:10:19 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88F65D9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ba081173a3so298934266b.1
        for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 01:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1697184614; x=1697789414; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tpzwZ+RNeBqt/RBUQJuOWXGZTsvoBXF446IDuijvCXI=;
        b=kJ9EkaoogYB8jyX6l1iFyAJ3s7hSB02WpYBbOOVQodugp1bR8SG1UF51YbKsnJvX7b
         DxcGX0qjJBxYr1s5M2tB50SFxwAso4qUntOoQ4/27Qs8Gjqq6346K/VhrPTR9SB3jzsB
         qFASt53uqQZJPw4GUjVDwYUU5U0OIkUeMHZz3OSj/C02vDesb/TDcJ7Z7wJaaCinTOAe
         DfX8tf2ff/GTDiTMrAdO2eBazQ0D1ovW2LBZds9d+fTV0Z9zm7AQc6CuRFJDQbmtwxFv
         IBtYDfNCzZfEsICROYZ2YW9Mg+8psjR5hn7I8UUgZShJImyA1OS4wehql9Te77ttTBGL
         kAAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697184614; x=1697789414;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tpzwZ+RNeBqt/RBUQJuOWXGZTsvoBXF446IDuijvCXI=;
        b=InLd9q7FSn6cYCUQPzZfsZFwpMxUQgLE3H6RJ2xJeTGtJtwoKIrSuzWML5sXpS06Jn
         S+UjCAig18ExCrS1WpT2fuxSSwNbl3evoLp7wxIO4GoSx51IEzqgzM3sXgJDZOSjOYee
         gRiCI5w8QxivY5K594E1rMFTjpYCcYIAJahP+A35uHRzTlqBgU+X6gOSD4sb6GVEFFIX
         ECrZwNkFH2Vpu1quKZguX8rDyeoA5vdRpFHVEIFXPqoqkWs5PiKaxVMAb8qYoF8Qm19R
         UjENPHCIcZ1dXyKYVtBWmQVdWiyw0z0tsPhODde+uVBvCYcCCIkxjFui4EwczTpTuzKM
         45Ig==
X-Gm-Message-State: AOJu0YwHVT0kaBtORDRFEyHCuYFoO6jLahl4v6zaGCxSOV0mTAdTgu+W
	lJoesAzm80PZX2TMmHm1yTnJ3w==
X-Google-Smtp-Source: AGHT+IElyBa/M08l1OcsNaeLT3o4FcMgzP19oxx4R3SJSqBBmUcsZEoHvdxs+bocsEUyU4kW0WXBxA==
X-Received: by 2002:a17:906:311b:b0:9b0:169b:eedf with SMTP id 27-20020a170906311b00b009b0169beedfmr24945565ejx.7.1697184613862;
        Fri, 13 Oct 2023 01:10:13 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id q14-20020a170906360e00b009a5f1d1564dsm11910761ejb.126.2023.10.13.01.10.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Oct 2023 01:10:13 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add Fairphone 5 thermals (PMK7325, PM7250B, PM7325)
Date: Fri, 13 Oct 2023 10:09:52 +0200
Message-Id: <20231013-fp5-thermals-v1-0-f14df01922e6@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFD7KGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDA0Nj3bQCU92SjNSi3MScYl2jJGNDi2QLU8uUFBMloJaCotS0zAqwcdG
 xtbUA2B40Pl4AAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Configure the necessary components to register some thermal zones in
Linux for the different thermistors found on the Fairphone 5.

The names for the thermal zones and ADCs were taken from the downstream
kernel but double checked against hardware schematics.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      iio: adc: Add PM7325 PMIC7 ADC bindings
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add PM7250B thermals
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add PMK7325 thermals
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add PM7325 thermals

 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 221 +++++++++++++++++++++
 include/dt-bindings/iio/qcom,spmi-adc7-pm7325.h    |  69 +++++++
 2 files changed, 290 insertions(+)
---
base-commit: 7c0d0c1272e82888aa01017818d00245d452b895
change-id: 20231013-fp5-thermals-2b318c859dd4

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


