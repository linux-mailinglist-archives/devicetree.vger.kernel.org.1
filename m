Return-Path: <devicetree+bounces-24274-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD3580E900
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 11:24:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AC67E1C20AA5
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 10:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8E765B5A4;
	Tue, 12 Dec 2023 10:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="GFtDk35M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E08DDA6
	for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 02:24:26 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-a1915034144so724849266b.0
        for <devicetree@vger.kernel.org>; Tue, 12 Dec 2023 02:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702376665; x=1702981465; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XTguM6PQ9T5zh1V2+n3dMiBXy0OpcHUacKeTSRi6+rE=;
        b=GFtDk35MTBHTaJKECIw/cTF7zj5YpXmVpVrDMX+RPFle9bufkxjmVPH2/NeErsIUBW
         DaHK2W1G9onMRngfKO0UYdk88YmnmmRF6PbKVbHOkPxSTwkiNKqp5tiwBENI0jAmu0t/
         FX6pywNXg9qOen+ZC3hDb2wQEspyIMCAVx0b7tYVuyjscTosZgqdukcdVLITyC3I7okv
         AgT5WVg6UkascVaBzPuR9tFu1R4Q7ShWLySgyKZp8AF1Rhs9KeMFgk4nSWQQxSdkwo68
         CwD8qubukvYT7e11UjykgEv3S6vqnVdx0Q1P7Uuuu6BreYnstgueeaqoa7borKqVWKIW
         y3eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702376665; x=1702981465;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XTguM6PQ9T5zh1V2+n3dMiBXy0OpcHUacKeTSRi6+rE=;
        b=eBE+WjH96Q7caYKy/3/IHoWLPSl0IzFAC9Fuj6FntmGQlZevis/SH2ZpHb8qZnvz7n
         tHSMldR3826TTAtRshLbqE3J3ZwFiOdrjWjhKJ2sASIr0pkM9rZQThnAwr0v6UxbU3k6
         GkNYEe50sUY85+c9k1/woEe5pWQzRXhthZrTgWTnx28ga+VxxjfFGO2E3zBDKNiyymrQ
         nO91uF8IT2YX/MfY9Z3cY7UnglIFbOeXN7rb1d9cvR3AGAV9Cahdum30tWqLFpYFM+RG
         mouOXcazkp5yo+Q/6/dIQOqB+uMSc5gDjHe8aFXTtUjoCbEYvEf+koAjPuHxrTM20v1g
         mwhg==
X-Gm-Message-State: AOJu0YwwiOQS+9nwmTzKqkCiorJMN8Q9CWhqtOR+5cEtbt3u6YWVL1ER
	nFt3gcQppzeUbbegsgsFCT3sZg==
X-Google-Smtp-Source: AGHT+IHx/LSmsYF58LhEO7TDQMI7uHt13h7X3MrU1QacUVufQHIgFVxLdKGC2BBXQBrKGoil9RkZsA==
X-Received: by 2002:a17:907:76d5:b0:a1c:f745:e0b6 with SMTP id kf21-20020a17090776d500b00a1cf745e0b6mr3496139ejc.61.1702376665375;
        Tue, 12 Dec 2023 02:24:25 -0800 (PST)
Received: from [127.0.1.1] ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id ga16-20020a1709070c1000b00a1c7f8fe581sm6052801ejc.221.2023.12.12.02.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Dec 2023 02:24:25 -0800 (PST)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH 0/2] arm64: dts: qcom: Add missing nodes to X1E80100 base
 dtsi and CRD dts
Date: Tue, 12 Dec 2023 12:24:09 +0200
Message-Id: <20231212-x1e80100-dts-missing-nodes-v1-0-1472efec2b08@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMk0eGUC/z2OwQrCMBBEf6Xk7OJu9GD9FfGQNttmoSaSDaVQ+
 u8mCs7tMbxhdqOchdXcu91kXkUlxQp06swYXJwZxFc2Fu2FLBJsxDckRPBF4SWqEmeIybOCw34
 i9n2LqQODU4YhuziGNjFcz3/5V6VUoCTQwMvShHfmSbbvm8fzOD67Re6PnQAAAA==
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>, 
 Rajendra Nayak <quic_rjendra@quicinc.com>, 
 Sibi Sankar <quic_sibis@quicinc.com>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=875; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=Nny2t8OlCViPk3BxX9ZWPLYgvvv2FpLQtO2ib/R0FhM=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBleDTQJU5Kc4im338f6d5NP54Ug8Eh0qaNqDo1a
 BgVupvAUACJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZXg00AAKCRAbX0TJAJUV
 Vo6NEAC5lHLTOTe/RLAcyhpltJTtZqJA1q6sslx5LDxGjywfLiwov4veC1HQ8MQAEzq91Hvpbz4
 F69Lg3akmmDMtDuvF9f3G2YCf6n6GzRsfByysAtoMK1XzbOHvcnEWGrSbDBEdV5tgZAOIAnLFKW
 3Jkofm+GvXTVdBH+tQB4O9HQeulmySlAWuuN9AF1ThvT7A5LZ/mlORht4HAzEXCzFRXgeiOImqN
 TVIjPIHUnXHtg7hLgisoKc4C38COP8jntxv6wQJX+zEE2Fr8ULb5UtFNYOlAQBOCs4RcDAAXKe1
 d0xacWvx4QCOTBnCxaVKruS0mZw6qWK8+vYt0imK4riT8H4Ayl151fZgetYUfLQlXFoN8D4//QB
 pm2LdnxJCFjDYytW0A7mjRm77tEfB4TxAfpuRChJfrBYX93IqbXbabUiWW2OtkdaL1Dayp3tcZ+
 +W9/r6fKXQ98WD+LKvOVTb9XmTAXJP9UUEOnrLy+2SQyIwn0Fa+cA2Xv/SXWlhge+AXkou2rpvp
 L1Wpg45D9EZE2ENgP1zyPsKrkKazbkbdCCLs0oPIkMNVM4zsHTnSRe3hQosVLpVwmdi1CG/GwD4
 GgtWqetSTH6UZDVVNul/CpIpEYCaAJEaJtLyVb8ca2/w+QuEb7YOD/ZJWmNAbTkjtDeIQb/08NH
 6jjEmu4IXA3i9Mg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

This patchset adds all missing nodes in order to describe the entire
platform. Most of these have dependencies on multimedia clock
controllers and so the entire patchset depends on the clock controllers
patchset:
https://lore.kernel.org/all/20231212-x1e80100-clock-controllers-v1-0-0de1af44dcb3@linaro.org/

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Abel Vesa (2):
      arm64: dts: qcom: x1e80100: Add all missing nodes
      arm64: dts: qcom: x1e80100: Add missing nodes for CRD

 arch/arm64/boot/dts/qcom/x1e80100-crd.dts |  303 +++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 1282 ++++++++++++++++++++++++++++-
 2 files changed, 1580 insertions(+), 5 deletions(-)
---
base-commit: 10ef05bf74d045c6636bcbaf2cc60aabbda8a54c
change-id: 20231201-x1e80100-dts-missing-nodes-a09f1ed99999

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


