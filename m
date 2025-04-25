Return-Path: <devicetree+bounces-170808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE5BA9C627
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 12:52:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A58A3B68A9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A031247DF9;
	Fri, 25 Apr 2025 10:46:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="sbHpT1Ik"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com [209.85.208.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD6CD22DFF3
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745577985; cv=none; b=UPyWa4sb0WFKicCMhmNS72wFI4N5imGPYhrhLW12ExBOzz+UptfC8FAzccDyNbxXXXpWicVU6cMNjE/TmY8yZ0l/pdS7y9cDEe/A2/xrnppTaOadfeNBcSWK7rOUIJ2v/DOFycU/DROii2j/yuYTizRRD9uEayLmMUCMBva8bYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745577985; c=relaxed/simple;
	bh=iR2QT+Zg01hyvLuC1uGIBDhap77AcvqLegcbTN6o5ao=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=avRv0aTYo6T8Ti7ykmvEdsIvQPu9N4ikbWHYYu0ROEfGHLuSZrjnBsmFfZ8rDwJpDCRM3zdvlag6OwzE0c/rbBBDcj9LGlCH7b8NAc2enb5O7peUKrzlSeiJAo9HtK42+K0/sIp+hZGWAHZNhl+Qzq9tevlBfV8bwoFfvw7ptE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=sbHpT1Ik; arc=none smtp.client-ip=209.85.208.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-5e5c7d6b96fso4016900a12.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 03:46:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745577980; x=1746182780; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=F5pdq7YWG26uzjKtEY1JA4Z5bXu9DJnS7vVzc1STMdQ=;
        b=sbHpT1IkOzmeeSzCxZ9PoimUQvV+x7lwe/9PY2GvZXCaX6Y7zKRh/OYkf2Y13eAS0S
         7JGSoNe6qdCp5d4I3Wnx8jBNN/AhVOEjnLG3Tl4KYJIfvQ0TTcWJYCEZBL/QWCEOsPn5
         ATZft6tJ/78xTiaU6G3ChAUQQuAL9MK/YV1wOC5B3dUr8kt/mgz0dIHM/nOlfeWPylQX
         aJQQt1BmbM1IlCcTIYuck0pdVxIi2POoy6uKwxHvBFKIkx84hkY3ePvIR+LBhI+ayKUZ
         Qft7RaC+76ewe4Fpx5Ezh4f6MPf9WNVf1sVS98uPThh5NNcCVHLxJodBYgp6zsIWD0X1
         hB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745577980; x=1746182780;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=F5pdq7YWG26uzjKtEY1JA4Z5bXu9DJnS7vVzc1STMdQ=;
        b=uK7D6Gu9/VtpD6FMfniZeefbZcQU2hLhrSuKEOLRedB4lZmfEapIf7vMJYC8gLEzzj
         yequxmhq/Bro7ca6SaRhm0SDV59fe5ej8QlhUNPmfPxdbUOFWAkxb/V7vDmYTXi63Xg2
         6gK1V07yQwrvfBIIlGp2rxR+mtqCBt6zVSxQBel/C23yXnQmNvcOf1sP17OPYl0QJd6j
         BzZ2YO3yJMzNZu96qx4p4GhpO6WmTTNATjbcSAhmyYQMf8Xx6wK/fApNrdVUFoGcJ+ya
         /7FeEMEE58OiGE7RMBablhg8housZYRA5AUyyozc7wmIPovYnjwcfPF5frKtErjvd9dT
         CANw==
X-Forwarded-Encrypted: i=1; AJvYcCVCobiFL/++pn/opTICpF/Ph1NyL3AgqlTYyCmOJW+JVZfJ954OgDhfdH90qZtS1yY/nJYJL9h2tcKA@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1pnJO8PztWNtjm1S6yuWFcCScwU6HN5zUqLmvwAPxMPZr412R
	+Eqq1XhdIBCd/PpgrbBZw07Cg6tQJWrJIP2FyaZMfMCwSK2gELz9LUeXyPHQT7E=
X-Gm-Gg: ASbGncsLp3QwAMPW3DDtuQXSE3EdO2FgFGCHVvyEZOlnx0naYOL4RgyK/9Q4dz6zK9K
	qzMuCItWtU7qr69D/UTFW3w8zTu7oDOpz/w1epyjCHwit31g9seXoeYsmQzEZFL+WXLdzgf0qVK
	9ppuriOUYaXWRKzEKOecQZaIMz/BS3cVhYupEOJc+QrwQoPoBAYEKYeeTwVXCe9ygVkm4E2fcHF
	xyaCh//1Q+vSpYecs73tmSAd9FODKwc7Tl0lrE49By+7C7Il6YNbD2dKDTveG0Ku50Kz6hMDde+
	wpTsa6QGx/SeaZIuO459IsB1DCF/qrFbjdQwA7R5QChPE2uRww6cqL2ioyOgiL7vETgMw6O+krJ
	XEuog7BGjzrDlvd1lKsrdSaIe2cPmMyaXExhdThArd42poEC7AlQTOZ/b
X-Google-Smtp-Source: AGHT+IHSxX/4jjLy6bJkSV6P+U4/wAbIHKbnuTnzx0/zGfV2LeBwe4KdUt0aEmPPO4N6P5r4/cis2A==
X-Received: by 2002:a17:907:9349:b0:aca:d6bc:c6d4 with SMTP id a640c23a62f3a-ace7133c372mr148895266b.37.1745577980079;
        Fri, 25 Apr 2025 03:46:20 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e7b98sm118765066b.66.2025.04.25.03.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 03:46:19 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/6] Enable USB audio offloading on Fairphone 4 smartphone
Date: Fri, 25 Apr 2025 12:44:50 +0200
Message-Id: <20250425-fp4-usb-audio-offload-v1-0-f90f571636e4@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKJnC2gC/02Oy2rDMBBFf8Vo3QFJo4kfv1KykDSjVlBbrhWbQ
 si/VziLZHkO3MO9qypblqqm7q42OXLNZWlgPjoVv/3yJZC5sbLaknaWIK0O9hrA75wLlJR+imc
 Q4j4FIrYDqrZdN0n57+x+Xp+8ye/e8renfNWn7myjNVDnC5IGv25gKKH04oSinw6j3v+cC6cHP
 bY3BLxCLfvCELC/DAm1GQNPx/kj+CoQyzzn29ThiKwjuegFDZqexftRO0TbbOLRkWsqRHV9PP4
 B8hLCHBkBAAA=
X-Change-ID: 20250425-fp4-usb-audio-offload-e5d7fb55d283
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Felipe Balbi <balbi@kernel.org>, 
 Srinivas Kandagatla <srini@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Wesley Cheng <quic_wcheng@quicinc.com>, 
 Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 linux-arm-msm@vger.kernel.org, linux-sound@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Since the series for the USB sound offloading driver was finally merged,
we can add the sm6350 dts and enable it on Fairphone 4.

A few devicetree binding bits have also been missing in that series, so
there's some extra patches for the basics in this series.

Depends on:
- For qcom,sm8250.yaml & sm8250.c:
  https://lore.kernel.org/linux-arm-msm/20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com/T/
- For dts:
  https://lore.kernel.org/linux-arm-msm/20250321-sm6350-apr-v1-1-7805ce7b4dcf@fairphone.com/

Devicetree patches go through qcom

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (6):
      dt-bindings: usb: dwc3: Document usb-soc-be property
      ASoC: dt-bindings: qcom,q6afe: Document q6usb subnode
      ASoC: dt-bindings: qcom,sm8250: Add Fairphone 4 sound card
      ASoC: qcom: sm8250: Add Fairphone 4 soundcard compatible
      arm64: dts: qcom: sm6350: Add q6usbdai node
      arm64: dts: qcom: sm7225-fairphone-fp4: Enable USB audio offload support

 .../devicetree/bindings/sound/qcom,q6afe.yaml      | 13 ++++++++
 .../devicetree/bindings/sound/qcom,sm8250.yaml     |  1 +
 .../devicetree/bindings/usb/snps,dwc3-common.yaml  |  4 +++
 arch/arm64/boot/dts/qcom/sm6350.dtsi               | 11 +++++++
 arch/arm64/boot/dts/qcom/sm7225-fairphone-fp4.dts  | 37 ++++++++++++++++++++++
 sound/soc/qcom/sm8250.c                            |  1 +
 6 files changed, 67 insertions(+)
---
base-commit: 393d0c54cae31317deaa9043320c5fd9454deabc
change-id: 20250425-fp4-usb-audio-offload-e5d7fb55d283
prerequisite-change-id: 20250321-sm6350-apr-15f3e7e4e5ca:v1
prerequisite-patch-id: 69859554c94de52068406dab0d2869ca26072c78
prerequisite-change-id: 20240809-fp5-dp-sound-b3768f3019bd:v3
prerequisite-patch-id: 2d8997a2be02cfddf3a054c79e7eb308a6d06710
prerequisite-patch-id: 1b7c8f00ab50ae71c0221868578b9c1dfe939e4d
prerequisite-patch-id: 4fd0673c4d35c1fefce63ec5785ff5ea67cc3d3a
prerequisite-patch-id: f5ec3a893de19900f62dc691d83986f1104914b0
prerequisite-patch-id: fce7573c39e768f7a09c002064b6159b8e91161a

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


