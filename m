Return-Path: <devicetree+bounces-170696-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B38EA9C061
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 10:07:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A9D24A67AF
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 08:07:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A870233701;
	Fri, 25 Apr 2025 08:07:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="cI1iGtz1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223A6232395
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 08:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745568454; cv=none; b=GadPZjczN7vXAptfwBBZekI12eAvEoKuxJklgjNiDq1ShSSXZr1/7NEuNZfFrIxwvO1jBz8gp7b/3JzU8CSwfol50Q0GkYGW/DmsJ4WV7DHY+Qe3UEiRqjrIFCLU/ekR90w/1bY3qQqY3qslirM2Py8gzd6f/hyuonE7pun2Yx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745568454; c=relaxed/simple;
	bh=IG5EYBIkkvxAjFWHA58vQMRAHNLYBMvaI/+axls57V4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jPn4u8g7BqfyHdwrA1AaBp6Eks1esJ5PR6bv65UCMSPeX+I3KYpZQK7b5hvmubdBgGjcRlBHM9acsTwFMo2Dqo2TTnbgfw90SNksSAvuNdinV8R6IqepIgHVQuHzhIw6jI5e5i24yuTAEqRiVVlAJ7JvKgFk20bla//avK+bdvM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=cI1iGtz1; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-39c266c2dd5so2076151f8f.3
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 01:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1745568451; x=1746173251; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hwsfA2vx1w0Hd+MxkBOwMy08bPVFTSGUVL5IKHTSRSw=;
        b=cI1iGtz1IjGdprJaScSGS8CPYpwm/AHEfdJoZRU/q8qIvHOWz8lM0au8s075QFAYlX
         6S3HbVEhZCemaDOfDPwgiov/kQqRf0/z07U7CPIILT+KA+3I1kkuUicIRZeB1J8Hqrbj
         23mIgwjCHJD60Dxa+KtgOjDhgWxYScFyoRYGN3IruGS+uH39KfS2h4dw12r2WV6qCYym
         rjkRYYTnCezc/c/dRYV+922AbdDYszgRDHrW43jbnY8vlxwrVdJ6hL2lPA7BaUpt4v5+
         zrr0yLzpn7pPOvCvaV6yXqdBp21dUysARbg8fYoAB6xntpLwn3tuDfeCDiH6C/oQLl4e
         UkFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745568451; x=1746173251;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hwsfA2vx1w0Hd+MxkBOwMy08bPVFTSGUVL5IKHTSRSw=;
        b=FncDYyfsYPFNqAr9tLYAXPjK7ZtHol0bumyXu2IwpCYZ/G+pSl0of+O+WEbs9yQQLi
         qySFmo2hH3/wlE1Srt0zxSJfH5bqifQjCL2+gho9bdqHRubh4J3CGSSoYGlzhn4tVUdD
         6f4JzAkhfxzdlXYizBRFQTPICjq/C+BLhBWois9oJeu1KDWcWevChnU12kd3zuPINRgt
         llvgrZKXGi9VkYKfBPKBYRpBonqse/60uYPxdWpdsMd6ocLzyhWzyz4CO/VzRSQRAu2Q
         CjPHp2N062tae01WqXQczLVx9D4aG8txXqUN9Ig9npTx1MXjP6OKjUM7mzQ8Y3dDS/Ry
         OwZw==
X-Forwarded-Encrypted: i=1; AJvYcCXBeeWBHzKz0WcJFKuS5n5TDId3cMAn/e2wurZeZ9xW4Qh8TRwNpLqfLkNG/jOPXoFZwKn525GVpGa7@vger.kernel.org
X-Gm-Message-State: AOJu0Ywskisrdd9t9H6UI92gDYYX1KZwgGgXSmRt8HZwPorqp9BFVsUR
	BTvBE7NE0F7R8Fmfr7ee3xFtYXgRULtQ0p7low5r2gOh2xrkEmMaMONQcGl926I=
X-Gm-Gg: ASbGncvBfQWpV78gP05e/whTfwyEwtg43Mw5GzKw6IHYXiv/KJxDxelZDuRSl8BHVfe
	zQXWn8Z1YAnSBRjyCfd31kqgPFgMJ4fK10ZEg0DhiC5wkf5jp3dEzuBbuYqkIl8BK3ztvDRWKCZ
	Ff3oaHjVMz6wlbr0byr4k3P3lhODuuuC7UuHh90prTeet0wAXlz9D6MFMXuzxdm8AQBo+2U8h51
	J9ZX3iorLxO9L1wq4nDhV4/jObJJ8xTKjJtmNqGBQ9Ie+i5f0+ii2qyl13gAt/EqY0e7kiGjRw6
	ihRaZqd1GNtZt3BX1iynp6tyEorHeOmioSgZ/8yhgQ+N7vgDQ2jjYyj99P5C0Un83uzSQk7H3F3
	uF0SfcoeVQQ0U8UO1/HCmKItlGikDwOrS2Ux7WCMebSSO8XEUmdL4uPAo8+0fd06A3gY=
X-Google-Smtp-Source: AGHT+IED++efpf5n1mpdrpKSqo0nctSBfmgC5H7SE7rg0sC07MwBn9G01Iz8pW4KpUWARaD7Nc47rg==
X-Received: by 2002:a05:6000:4203:b0:39c:2669:d7f4 with SMTP id ffacd0b85a97d-3a074f39913mr987084f8f.43.1745568451325;
        Fri, 25 Apr 2025 01:07:31 -0700 (PDT)
Received: from [100.64.0.4] (2a02-8388-6584-6400-d322-7350-96d2-429d.cable.dynamic.v6.surfer.at. [2a02:8388:6584:6400:d322:7350:96d2:429d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a073e461casm1593513f8f.74.2025.04.25.01.07.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 01:07:31 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 0/5] Add DisplayPort sound support for Fairphone 5
 smartphone
Date: Fri, 25 Apr 2025 10:07:24 +0200
Message-Id: <20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALxCC2gC/3XMsQ7CIBSF4VcxzF5zodBSJ9/DOJQClkEgoETT9
 N2lTVyaOP4nOd9MsknOZHI+zCSZ4rILvkZzPJBxGvzdgNO1CUPGUWIPNgrQEXJ4eQ2q6VppG6S
 90qReYjLWvTfueqs9ufwM6bPpha7rH6hQQNCdGtjIuG1Vf7GDS3EK3pzG8CArVtgPEMip3AGsA
 ih0KyxKrlDsgWVZvmKzgnbtAAAA
X-Change-ID: 20240809-fp5-dp-sound-b3768f3019bd
To: Srinivas Kandagatla <srini@kernel.org>, 
 Banajit Goswami <bgoswami@quicinc.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2

Add the necessary sound card bits and some dts additions to enable sound
over DisplayPort-over-USB-C, e.g. to a connected TV or monitor.

The UCM files can be found here:
https://gitlab.postmarketos.org/postmarketOS/pmaports/-/tree/master/device/testing/device-fairphone-fp5/ucm

This series - in spirit - depends on the series enabling DisplayPort in
the first place, but can land pretty independently, especially the ASoC
bits:
https://lore.kernel.org/linux-arm-msm/20250312-fp5-pmic-glink-dp-v2-0-a55927749d77@fairphone.com/

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Simplify return qcom_snd_wcd_jack_setup in machine driver
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com

Changes in v2:
- Revamp series based on comments on v1, doesn't have much too much in
  common anymore
- Use sm8250 instead of sc8280xp sndcard file, so port other required
  changes from sc8280xp.c to sm8250.c
- This also changes the sound card compatible to from
  qcom,qcm6490-sndcard to fairphone,fp5-sndcard
- Link to v1: https://lore.kernel.org/r/20240809-fp5-dp-sound-v1-0-d7ba2c24f6b9@fairphone.com

---
Luca Weiss (5):
      ASoC: dt-bindings: qcom,sm8250: Add Fairphone 5 sound card
      ASoC: qcom: sm8250: set card driver name from match data
      ASoC: qcom: sm8250: add DisplayPort Jack support
      ASoC: qcom: sm8250: Add Fairphone 5 soundcard compatible
      arm64: dts: qcom: qcm6490-fairphone-fp5: Add DisplayPort sound support

 .../devicetree/bindings/sound/qcom,sm8250.yaml     |  1 +
 arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dts | 31 ++++++++++++++++++++++
 sound/soc/qcom/sm8250.c                            | 27 ++++++++++---------
 3 files changed, 47 insertions(+), 12 deletions(-)
---
base-commit: 7f1dd4e6634d085f3c9652d4e0f1903659fb96f9
change-id: 20240809-fp5-dp-sound-b3768f3019bd

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


