Return-Path: <devicetree+bounces-186537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B0D8ADC4AC
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 10:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AEAE81618AB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 08:26:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EA121E8322;
	Tue, 17 Jun 2025 08:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hwB8MCAl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8071C289824
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 08:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750148813; cv=none; b=RT+wvHmPJ3sjDbcx7bDB3S55u5sFxF0GNUr/xx5N1Tw5s52Ofz5vk65ykJmfqtdfWj6bBaaGchGOq4SGgO+JYhzvXVqWOgkLMOkAafv1wqxT+rRYWy2ACfgjuoFdOKP6oAdvs1feKJ4kbPRfR7SlWUBSIXsgC0R0616cE8QRYRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750148813; c=relaxed/simple;
	bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=CSBgJMhRHJy+h05WFQ60V9hwJOsLH7bQjBe5ymESRJS2got07UjHKPS8PD+ahTiQUStm0TdA6I09Cs14tH6cP7J/yukBzIfnq0vWbQWLd/0Sr2B68JxuM0QX1JSOKsuw74FcWYzht+1BlrbO4ojEjeI6B7QPFspJnjoZqUTM8kg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hwB8MCAl; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-adb5cb6d8f1so1000515566b.3
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 01:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750148810; x=1750753610; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=hwB8MCAlQPWyirbl2PJIuLMLLwk2+BWAKVQHUna5ugou356P4gpZVZVAoxQyZfzOHV
         383nDkRku9cU8xoaR2njit1B/1EZ8247fS+Iu6zp2JMCTxkBJjXsaZ/C4uCRNqbe9GRj
         11dDmoqy9en3zudEzofc8TAtxipwqtp4A1cE7f7JiPaFUecb2+SpNWRXactUzVoBhIEy
         SaCMsSkR2buYHg2y4F8sw9RwkRIH6xB05IQoSEY+DXalTb52iEVG9yI6YmiwSLehAcVP
         tWZEnmDvL8NyrMLme9JSOIuMLWBKS9iOknu5puKe00FWKAelzIfFEDjt61zgqkHfjX4D
         2Ubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750148810; x=1750753610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YviJvB3mEmC6/KWy4TJGLCulrpnF3rGNjKlkw3ObS4E=;
        b=Qo6R7JMFIUyOHXweXeS8RPA+hWN8Ef3T5KL28gPQ0jNf+aFIJYck5MjG/JonfHOMqK
         MAndy3FAqZbFGD1yvPLheRkMXnUQNblfCXP8obfGDtMypQPelZS+HaloU3fPcSAxUxDA
         E1pTKqhZ5xrwdo/Ag5reO4XbF/89eKkDy0pXLuUk6QXyS+rPovfVWAYSvDV31cqhndLl
         1yUW+29JKkwhzQelr6nV1HrmEqEBg0KYELdf9zhYF57iJrqreEnuYEXIVpPgHPX9QoPu
         j/8m4VjbSoFWn6/n0sKxCkSSrfY3/CUFGdwmUNY5H1HBCJWhIMqDQmYWo+PAbtqXBHIt
         HYdw==
X-Forwarded-Encrypted: i=1; AJvYcCWP+Q+ibMzNNGWayirvEfKtG/MSP4wZXHxCzXOMA24rKBc0fExHwoMU4uc0P4qbtfQpo+bm/Ry/jKSk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7d7w2fsOWBAqqC8kC1lWh0sKvK5j34UJGq2eFDwa8goYroz3s
	Gw+Y8cSu9hsHLwclCDltDcPi06nGiKxwh7As2pNqPa906NoZqWJrCXYx2FH+ioPxj1Q=
X-Gm-Gg: ASbGncuu/rAD94IHksJ6WD8vNcAXd62BFHkxMgUoe9VO7jyv72JS6+zOTCLqevJuSAW
	/onp7BfHFI6W9P2coxru3OR38uZ4ApDVxKN7mp4owSsTPLRn2CJnIn0xBu5HH3cbHSCL1So27gJ
	3SBnegjDdms685yJjfm5Badr4zYuE/6z0u0YXtxa3FquewZMKP/Gs2HkCE4XbiGIYdOBaoi20x9
	LLcqtFM3YzX+NTvaTCEVJJyLKrJCgkY8Aj3unfz7KMrkCdUyXX+OHxCcQZ7u2cDMBr96RjF6MXA
	JQZLekiVL8EmBku4VZIwxDrNerI6elP5tnOgUAMGRPxkVTfIjWGzUIPdItj8yZe+ai+j+6H3PGm
	8yI6kM0rUqHu19PrehPHENsniC7rVu57/
X-Google-Smtp-Source: AGHT+IGBvTpgEQKuySRgZVEiRHZ2+eHm/TawSN1WIXCTKv0QJZ0mFrD/xYMqMzEBC005W5SZjLK1TA==
X-Received: by 2002:a17:907:db15:b0:ad2:28be:9a16 with SMTP id a640c23a62f3a-adfad4829eamr1145395366b.51.1750148809831;
        Tue, 17 Jun 2025 01:26:49 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec88fd993sm840343166b.94.2025.06.17.01.26.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 01:26:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 17 Jun 2025 10:26:35 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: qcom,snps-eusb2-repeater: Remove
 default tuning values
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250617-eusb2-repeater-tuning-v2-1-ed6c484f18ee@fairphone.com>
References: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
In-Reply-To: <20250617-eusb2-repeater-tuning-v2-0-ed6c484f18ee@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750148807; l=1248;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=OuFHBPiSDnHElYnOnjmGAqSP02DaggUPcI3IBLQcgxo=;
 b=UCQ80CGhJn/9FqQFeZwlp30F3hVlXhrqM3yVHy6N6PzQRXNd5o3I3x9xZBw7MwlAHFwnNd4d6
 GwTHiLUsOF9Bq/0tBC90+tbE7BOOReriWMhCM7iRdLHn+l8kQzBkcpo
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The reset default tuning value depends on the PMIC, so remove them from
the doc since they're not accurate for all PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index d16a543a784887eabc69faae2233057c4554be31..27f064a71c9fb8cb60e8333fb285f0510a4af94f 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -39,21 +39,18 @@ properties:
     description: High-Speed disconnect threshold
     minimum: 0
     maximum: 7
-    default: 0
 
   qcom,tune-usb2-amplitude:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed transmit amplitude
     minimum: 0
     maximum: 15
-    default: 8
 
   qcom,tune-usb2-preem:
     $ref: /schemas/types.yaml#/definitions/uint8
     description: High-Speed TX pre-emphasis tuning
     minimum: 0
     maximum: 7
-    default: 5
 
 required:
   - compatible

-- 
2.49.0


