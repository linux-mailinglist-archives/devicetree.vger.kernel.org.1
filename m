Return-Path: <devicetree+bounces-133795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFAE9FBC1B
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 11:22:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 70DD81885B2A
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 10:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 468DD1B532F;
	Tue, 24 Dec 2024 10:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qa5RSMid"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290851A8F63
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 10:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735035435; cv=none; b=ac+JiYQWNJkhFP4NJxlRamsjxE5j1NIOlKCpoCJKHanEMZU3OSF/Cq/GETxgUVSdG1kdsr13Txq3lXBkq8+qojZDmMWfSQHCJtPp2yRN6FrlE4bdTJtzTGw4G4qWoj37k069SAe3XTW3zFLRtHiUjRgkbcQWmR04B0SCfi5nopw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735035435; c=relaxed/simple;
	bh=bHUMlVVUIqYUKxAhgUPFopVezLFM2pjiI0w0VKzBVtk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=QOIA5+smlHLbmdKfuy8ZEiJST9rv/tnbsCqZAe5M5bXoLpqsW+vOXFVAkA5ecVavLZBjHarhPbAwMzen/oxzOOBNZiQRWxg064DRVAUhdEUE6MPu2Gf3rLDAvZg4lmpFwI+usmsNG+6cHiWcfzdfRpRDjhNEM4+UyIwNg7omdts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qa5RSMid; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-5401bd6cdb7so5584702e87.2
        for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 02:17:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735035430; x=1735640230; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYjmRBq/4XH/cL1I6wGmugZF6A/m6XrFItxvu/qlOtM=;
        b=qa5RSMidTqym3zo7Woq9GqNHy3QPtJjXPlE1dtjgcQzV5bur/3GGoc9ss4iWxMRNOP
         lzOaoX+cZXk466g1VqbNquBlf7vQ3DCGLhW8PDfP5Cxz8YBCMDR03azb4XsucVD6Ty6C
         XDtbp/lBPd/bIpEf+ymafIl79kHz0J3ZqyWeAlm0suf6BUOTJ8U1Y3oimGmkcxNoy0k9
         F74DQBabSH+YGvMnQI3qEG/DtZQ/+vLS6X+bGFeJoiy/tJXpgcx6ZUbODX5i90A6PtLY
         BGWcSbVwqS+aKZdzIHBzTbtfhGoqYve0YcrYTXf1HirnUsn8PQN2P9TR2a0m1SHTK5RW
         g5kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735035430; x=1735640230;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZYjmRBq/4XH/cL1I6wGmugZF6A/m6XrFItxvu/qlOtM=;
        b=iAxqor4xSrhi8Pl4IZJ5hYeAbH0F7hilLPa/6Mr8aZGs/F/Hv8FlDADJYf0VFKyfK3
         dVlqNJtifcHFK/5+bq0ohiaCun2jVKEkJ389sFX6yuYLlVQVscPuZ6M6qwVMVnV9bPdJ
         H5i5ffNgdHwMAQhTnZClDAG2TAV3StADAaueODQmHMPeQTWimfRXmS56xd5SQSIP2QFp
         /FdIvT1v3EfC9fd9DutS6Q1Mf9UISVjS3RoT0+k1wRYGeLtNo6eOUCmZsNK53p79AJHG
         Q7CM79j3/F6AmltLcnIN/JMXmeCaqzPxyLG3ox+kvgyZ1VzPf05iG2N4v7X/X2xzOONZ
         zGLA==
X-Forwarded-Encrypted: i=1; AJvYcCU9t16gp9zyedlZmHJ9pJHpgN3ICXccr9/2UYM/J1515J7E4Oxdk+VQhcDAx622wsr2H96q9MfVoCxf@vger.kernel.org
X-Gm-Message-State: AOJu0YyqiCC56HPPIp/oO477timuTMAj7mu1z9wqV8hc0t8rNU9I9HfG
	mBOVUk2slQNu2/SpD+6G4kNZCidGsILMcY/5DVENAwoi+lgeMUqS6YprRJl1gUM=
X-Gm-Gg: ASbGncuf2vutFVYNn4wSI0TTaZRK3znBS03nGBxE2RegxZ2TqFA3Y6kri8neQzpoM/B
	HCpR57nBtHWnZvwsBsG7gGTa23IDlIqNnrVFiLhNW02o8obTr1f9sXrAYSiTJC887ekLU2xd/eL
	ml1yE9Cqqktj1KcxVh7JVtNJx0j0S4G//S51pORBXfSk7W2S7npQq5GBrmEBQbOZGBVJGdQipzd
	nju7ySzRoRFUeQI9ZtiBnUhOpMlg+gVh8c+HKOfaCKLjN2u+RPNkkbceum8XzIk
X-Google-Smtp-Source: AGHT+IFnaK4NWBMz3aMj5Du0Sz6qM1+ETmAMtqo/zne22jpNYdVabdxlAiO8L+hsOgqupDtPm33yJw==
X-Received: by 2002:a05:6512:a8e:b0:540:1d37:e6c with SMTP id 2adb3069b0e04-5422953c42bmr4773614e87.30.1735035430226;
        Tue, 24 Dec 2024 02:17:10 -0800 (PST)
Received: from umbar.lan ([192.130.178.90])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54223600596sm1576865e87.92.2024.12.24.02.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Dec 2024 02:17:08 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH v3 00/21] arm64: dts: qcom: correct sleep clocks
Date: Tue, 24 Dec 2024 12:16:59 +0200
Message-Id: <20241224-fix-board-clocks-v3-0-e9b08fbeadd3@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIABuKamcC/33NwQ6CMAyA4VchPVuzdQzQk+9hPIxRYNEws5lFQ
 3h3BydNjMe/ab/OEDk4jnAsZgicXHR+yqF2BdjRTAOj63IDCSqllBp798TWm9ChvXl7jcjK9Kx
 JVFRbyGf3wHlnI8+X3KOLDx9e24ck1+kfLEkU2NhWCFP2urZ0urnJBL/3YYBVS/QhKPFDoCy0B
 6N0o5tK1/wlLMvyBpfJxfLzAAAA
X-Change-ID: 20241115-fix-board-clocks-e3afe520627c
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Leo Yan <leo.yan@linux.dev>, Georgi Djakov <djakov@kernel.org>, 
 Shawn Guo <shawn.guo@linaro.org>, Stephan Gerhold <stephan@gerhold.net>, 
 Zac Crosby <zac@squareup.com>, 
 =?utf-8?q?Bastian_K=C3=B6cher?= <git@kchr.de>, 
 Jeremy McNicoll <jeremymc@redhat.com>, 
 Rohit Agarwal <quic_rohiagar@quicinc.com>, 
 Melody Olvera <quic_molvera@quicinc.com>, 
 cros-qcom-dts-watchers@chromium.org, Stephen Boyd <swboyd@chromium.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Martin Botka <martin.botka@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, Vinod Koul <vkoul@kernel.org>, 
 Tengfei Fan <quic_tengfan@quicinc.com>, 
 Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Abel Vesa <abel.vesa@linaro.org>, 
 Alexandru Marc Serdeliuc <serdeliuk@yahoo.com>, 
 Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>, 
 Sibi Sankar <quic_sibis@quicinc.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, Jun Nie <jun.nie@linaro.org>, 
 Max Chen <mchen@squareup.com>, Vincent Knecht <vincent.knecht@mailoo.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4726;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=bHUMlVVUIqYUKxAhgUPFopVezLFM2pjiI0w0VKzBVtk=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnaoogQjUIfCjjEUcauxTACeVoFZF9/P8RbUJoG
 Baz5yrOWwKJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ2qKIAAKCRCLPIo+Aiko
 1b1hB/9761DrLKZ8R+DrmbOpBAmO11qH5+pkLuN5ALUhkce0uvB7D00L1Dk//G/z2VszwRd/uDb
 BoUUGnqLlV9yA5Ux+t9NvHAA3ylKbX1n80q2rdW2lgwWMtzwj8YMYS8WlMTnabaGPJ8DVaPmq5f
 es+zGwzv94r3TUfZ5/Df5WSvN4ttLyOuh1wm+FO/pMFKrr7oVRHxI6+rEOhQW+Uq9O+NsEbUU2y
 k00BIOt04qDAdeVOtokPv2wHkuwEx7jv/Gw1SzRAk8cpYWz2kzjTdm72Eq1YUtJWpC5O+I2OMJb
 RObYWZfqpXw1xwEXwLN3MUSEbbGj1RFpkNTrgwOi8oEUsgRM
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Correct sleep clock frequencies. For several platforms I wasn't able to
find corresponding document and as such I didn't change defined clocks.
These platforms are: IPQ5018, IPQ5332, IPQ5424, IPQ6018, IPQ8074,
IPQ9574, MSM8953.

Also several MSM8996 / MSM8994 devices define divisor clocks at
32.768 kHz. Most likely these clocks are also generated by dividing the
19.2 MHz clock and should have the frequency 32.764 kHz, but being not
100% sure I decided to leave those as is for now.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v3:
- Dropped the patches NAK-ed by Krzysztof
- Link to v2: https://lore.kernel.org/r/20241130-fix-board-clocks-v2-0-b9a35858657e@linaro.org

Changes in v2:
- Move clocks to SoC DTSI (offline discussion with Bjorn)
- Link to v1: https://lore.kernel.org/r/20241115-fix-board-clocks-v1-0-8cb00a4f57c2@linaro.org

---
Dmitry Baryshkov (21):
      arm64: dts: qcom: msm8916: correct sleep clock frequency
      arm64: dts: qcom: msm8939: correct sleep clock frequency
      arm64: dts: qcom: msm8994: correct sleep clock frequency
      arm64: dts: qcom: qcs404: correct sleep clock frequency
      arm64: dts: qcom: q[dr]u1000: correct sleep clock frequency
      arm64: dts: qcom: qrb4210-rb2: correct sleep clock frequency
      arm64: dts: qcom: sar2130p: correct sleep clock frequency
      arm64: dts: qcom: sc7280: correct sleep clock frequency
      arm64: dts: qcom: sdx75: correct sleep clock frequency
      arm64: dts: qcom: sm4450: correct sleep clock frequency
      arm64: dts: qcom: sm6125: correct sleep clock frequency
      arm64: dts: qcom: sm6375: correct sleep clock frequency
      arm64: dts: qcom: sm8250: correct sleep clock frequency
      arm64: dts: qcom: sm8350: correct sleep clock frequency
      arm64: dts: qcom: sm8450: correct sleep clock frequency
      arm64: dts: qcom: sm8550: correct sleep clock frequency
      arm64: dts: qcom: sm8650: correct sleep clock frequency
      arm64: dts: qcom: x1e80100: correct sleep clock frequency
      arm64: dts: qcom: sc8180x: drop extra XO clock frequencies
      arm64: dts: qcom: sdm670: move board clocks to sdm670.dtsi file
      arm64: dts: qcom: q[dr]u1000: move board clocks to qdu1000.dtsi file

 arch/arm64/boot/dts/qcom/msm8916.dtsi                      |  2 +-
 arch/arm64/boot/dts/qcom/msm8939.dtsi                      |  2 +-
 arch/arm64/boot/dts/qcom/msm8994.dtsi                      |  2 +-
 arch/arm64/boot/dts/qcom/qcs404.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/qcs8550-aim300.dtsi               |  2 +-
 arch/arm64/boot/dts/qcom/qdu1000-idp.dts                   | 14 --------------
 arch/arm64/boot/dts/qcom/qdu1000.dtsi                      | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts                   |  2 +-
 arch/arm64/boot/dts/qcom/qru1000-idp.dts                   | 14 --------------
 arch/arm64/boot/dts/qcom/sar2130p.dtsi                     |  2 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts        |  4 ----
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts                |  4 ----
 arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts           | 14 --------------
 arch/arm64/boot/dts/qcom/sdm670.dtsi                       | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sdx75.dtsi                        |  2 +-
 arch/arm64/boot/dts/qcom/sm4450.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm6125.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm6375.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm8350.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm8450.dtsi                       |  2 +-
 arch/arm64/boot/dts/qcom/sm8550-hdk.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/sm8550-samsung-q5q.dts            |  2 +-
 .../arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts |  2 +-
 arch/arm64/boot/dts/qcom/sm8650-hdk.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/sm8650-mtp.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/sm8650-qrd.dts                    |  2 +-
 arch/arm64/boot/dts/qcom/x1e80100.dtsi                     |  2 +-
 31 files changed, 52 insertions(+), 74 deletions(-)
---
base-commit: 8155b4ef3466f0e289e8fcc9e6e62f3f4dceeac2
change-id: 20241115-fix-board-clocks-e3afe520627c

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


