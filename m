Return-Path: <devicetree+bounces-4498-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1097B2D64
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:01:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 0D77F282CA0
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:01:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0D88C2FE;
	Fri, 29 Sep 2023 08:01:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33895C2D3
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:01:12 +0000 (UTC)
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A8001AB
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:01:09 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-52bd9ddb741so17470212a12.0
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695974467; x=1696579267; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3LpdYfllnzk+eL7xy8/BzP6mgFCymyy/bqU+HI0uTEs=;
        b=DYibaKNTuzhI3DaWppNe87iHmzawQbHMDzwPSB8yMWo/HJyzuizLS5/u9txgC2X0qf
         d2YDLd/mGKeCjpo9j8A4bhw6T0eYu8XjvSQMNHuY5+heLiFRxtiuiKafO/UoaQdixNnB
         ++IIwTCFL5K5L0cJ+zN8wDLfko91B8qlwGctymyqM+4HaqVv0xDb1TE7kEM/3miQYPrw
         HmRNtLEHaIrgrq7Ag+BPvJwgL6J7Kux4gLPYoH5RvE9Srt3JjjKNVx4CHbQK2TPQ0m1P
         uzCGZ1V5S1Dk3YSRLkD5WSu5l5ZXhe+vpQpOQqdOtdnYtAQg2LmeQfk2EhV1kvQIHBcY
         hemw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695974467; x=1696579267;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3LpdYfllnzk+eL7xy8/BzP6mgFCymyy/bqU+HI0uTEs=;
        b=p2Ml/SFGVjF7wRpK0YIeeKHdOrRnp5b/8mUvi3Y7eqNAjTWQpjSNqcYXFoCRErgRJA
         OQitAlTp51eCxq/e0ftM5/ajK2zR4Cw1VjoOaiu+9wQ0Ge6wqt3k7eailNu/iGxPwUgZ
         /EhZ5qlWIYQmYkjO6wDGqRvKspzdXpgDr9K9+g3weucctYYCpva1arPB3cInDm6z7AEs
         Df9++kagZWf/9Ubn4DAvFO1Z15iuqPMIi26P2rpYcfZCeFIE0HMdriZz4NBK9w8Fg5Qa
         vY002SwHEhZKMkNNSEWpweue6ueiktUamHi3nVAqHfARHUujtKwcjH0QVIIx1vKI7N8y
         lxww==
X-Gm-Message-State: AOJu0YzIeO0OgKBFEOiuIEzNXMSHOSth8WPhGsj+9Ughfbf7oBoxqBdu
	3SoslouYtqdu9GcAQCR540bLJA==
X-Google-Smtp-Source: AGHT+IGFZ/5xxIudkRrtkvptEGoNA89AtAFlEqkjdKJowNCAVNzpC6iHSsAYaP3o5stnPODfbs2fPA==
X-Received: by 2002:aa7:d58d:0:b0:522:2d1b:5a38 with SMTP id r13-20020aa7d58d000000b005222d1b5a38mr3304809edq.10.1695974467458;
        Fri, 29 Sep 2023 01:01:07 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id j6-20020aa7ca46000000b0052889d090bfsm10825040edt.79.2023.09.29.01.01.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:01:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add CCI support for SC7280
Date: Fri, 29 Sep 2023 10:01:04 +0200
Message-Id: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAECEFmUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDSyNL3eJkcyMLA93k5ExdEzNLg9Q0i5REQwNzJaCGgqLUtMwKsGHRsbW
 1AEZyCoNcAAAA
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add the dts nodes for the camera control interface found on the SC7280
SoC. And then enable the CCI nodes in the Fairphone 5 dts.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      dt-bindings: i2c: qcom-cci: Document SC7280 compatible
      arm64: dts: qcom: sc7280: Add Camera Control Interface busses
      arm64: dts: qcom: qcm6490-fairphone-fp5: Enable CCI busses

 .../devicetree/bindings/i2c/qcom,i2c-cci.yaml      |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts |  20 +++
 arch/arm64/boot/dts/qcom/sc7280.dtsi               | 136 +++++++++++++++++++++
 3 files changed, 157 insertions(+)
---
base-commit: c858197a69efe69e1607f4854af42ec338e54e96
change-id: 20230929-sc7280-cci-4690ef8da107

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


