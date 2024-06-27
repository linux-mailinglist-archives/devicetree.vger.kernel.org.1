Return-Path: <devicetree+bounces-80758-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD3B91A5C6
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 13:56:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B20341C21815
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 11:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37F0C14F138;
	Thu, 27 Jun 2024 11:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CyMoeFw5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59EB514F100
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 11:56:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489363; cv=none; b=DFOj/4Yh3GXqZWCPS98cmNBFcQb2l9rmFbM3xz6+Vgdm+i0+vuijiAfXmVwqkC7pCbw84OCSvW0Ar6RK52ictRnR8a7z/ZKn1AIsDfcxDjLI664jzzLBT4/4RRjoKr0ahNWxJHyGbE4xqEa4E851dTwdK1yMVJ3qvhW6/7fphh8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489363; c=relaxed/simple;
	bh=Y6a+CFWgHPXv6qT5Hp7vM6uhEG/AZf1fZ0Ct7WBiP/4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DbHUhF1/L92KhEytJotzqy/HS+8F7RSDSbw4MK2NIRhJRJSSrEu/8qyl3lOU8m0AGUCcF6v6aaAlxKvh0LVIm/+bWNh6EKvb3DUnqo5CH86RdTF5NClfGBYbflfJc+GNYzisFeTGH5/AZwQTb2O9kMP0/ppsEglRd7RArH/tHP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CyMoeFw5; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-364ff42999eso6105844f8f.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 04:56:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1719489359; x=1720094159; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9YnmAO3MDDhvSz55Ee35ZPJLjBLn/4qKkbnLt4Qs0cQ=;
        b=CyMoeFw5y3JjPWidmTQzu27i2lq1V0p4cVkRxy7TRnh3WdoxxJ08Gr5YSwloJgReMS
         79lYjJZsXdMCuum2R3or0pQ5bXP9nwOOopKNWCOz8v+t4JNS+SNqsdKsusKNhvN/QOu/
         VpvRcOliMLSm+YzN4AcvOwb3RU0hwOdumMDIL4GWaufLjk3Iy/ZyvHJUC4z+rKc0yqQw
         P4++n2UfIojk0WAWhaZZxvNB7hf4yLpbWHTJNFVU8J5b3p9ewoRYItTxmzdj/E/L+gs2
         t761/kX3mG47kGtNUgJFKUQT3v7jS29KHjgfloLGnmo4kr1wlyrmvcbfzVnXpK0FI57Q
         Tg3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719489359; x=1720094159;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9YnmAO3MDDhvSz55Ee35ZPJLjBLn/4qKkbnLt4Qs0cQ=;
        b=ojR0XwXVLBC8f832Zv8TaxfeOZ603I8qhXyaELdlcOCXMn1dooi+2B2tvnH8FIQy0G
         fVeOCDi0gXyw+pjzyVab9uc3H6qQaGYjcJQbHx0e5KMvPMzwVRvo7fNvRooj8bqhvzvz
         y09pPLsrul5VnTfpcHKGqPPgTMwGIsXBkTgTWdoOdtklDmTVHB2iEBoQTND9UsZo8tcZ
         lQce7r2Otx4khGeslrmmMjd/owOLw0NnLUWfdmCR2QcB94xPKK8Du7cCdPF/rp1ZoJKi
         qzUHDkW/L2rsmy+SpLrz7ZfFMk4QvgyuU6sK9Iz3Wn3VHHAtl0PJEDv/M1Z+h08Jx+pU
         t68w==
X-Forwarded-Encrypted: i=1; AJvYcCVMV17jbLp46VGI5QTFmO5OAlBnZSSawGnS44Exs2+OxEvLoe3a26XqvRC3V5RJh9uxw4FaE3K4HX4PRxp7OpzlGd6bgKNQccWSyw==
X-Gm-Message-State: AOJu0YxOI6r8erCX0PyuemLQQu9MJjVVoMz0EeKjoBQ167VI1kB0BNrp
	NOO03LRpt4kYh16xZkoJOPcYrELgxdqj1FQWJktDNM7hyxP8mXVNVwGCYXQSPCk=
X-Google-Smtp-Source: AGHT+IFCcsrDv77XmQBH18HYnTVf9w5zIC4CEAbu4wPpEDmsx0NRwUNfy6dTe2MXhewFcCnLX56l3w==
X-Received: by 2002:a05:6000:4594:b0:362:c7b3:7649 with SMTP id ffacd0b85a97d-366e95eaeedmr10169584f8f.56.1719489358695;
        Thu, 27 Jun 2024 04:55:58 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3674369980asm1597552f8f.80.2024.06.27.04.55.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Jun 2024 04:55:58 -0700 (PDT)
From: srinivas.kandagatla@linaro.org
Subject: [PATCH 0/6] ASoC: codecs: wsa88xx: add support for static port
 mapping.
Date: Thu, 27 Jun 2024 12:55:16 +0100
Message-Id: <20240626-port-map-v1-0-bd8987d2b332@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACRTfWYC/x2NQQ6DMAwEv4J8xlIIKYd+peJgglN8IAkOQkiIv
 zf0ONpZzQWFVbjAu7lA+ZAiKVbo2gb8QvHLKHNlsMY6M9gBc9IdV8rI4WV83xs3O4KqT1QYJ6X
 ol+ew+bRiSIqRz/3Zs3KQ85/6jPf9A60tv1p6AAAA
To: Banajit Goswami <bgoswami@quicinc.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>, 
 Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, alsa-devel@alsa-project.org, 
 linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
 Manikantan R <quic_manrav@quicinc.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1696;
 i=srinivas.kandagatla@linaro.org; h=from:subject:message-id;
 bh=Y6a+CFWgHPXv6qT5Hp7vM6uhEG/AZf1fZ0Ct7WBiP/4=;
 b=owEBbQGS/pANAwAKAXqh/VnHNFU3AcsmYgBmfVNNbQVTHgiekg0lErk4gt5ZWmMGBmysToq7S
 t48/kIo622JATMEAAEKAB0WIQQi509axvzi9vce3Y16of1ZxzRVNwUCZn1TTQAKCRB6of1ZxzRV
 N6V/B/9AkRh3hlZAiigVdic/fNvxeVo66fZnqgO/Q8IAgdIpjMxo7qSFqoMZFmordGgniBjUHUS
 kfY3HrEHUV6I6pPpVzVn2AFmv/OXXzHO2qN7UEYWyF4CfTxpjwEVMjMHZTUOOF9l9E8ppfCzjoc
 jc9KYXFGb3TREZx/wLZ+7Q5kMHnhmYnrGZv3Ch7vLjN3dVaZ3OYWOQF71+08qwJrlg5oaflKgwL
 bk1YKD9vzdOO56TkEI5Gycsec2yaWwUmHDsSxW859bUdeUQTLPCxw4+vyRqOMGIuyEP9W615rKM
 UJSgbtUu4Jt296ZnPZS4OVbCgHyU444GWLGHdEbdx3igEKRT
X-Developer-Key: i=srinivas.kandagatla@linaro.org; a=openpgp;
 fpr=ED6472765AB36EC43B3EF97AD77E3FC0562560D6

Existing way of allocating soundwire master ports on Qualcommm platforms is
dynamic, and in linear order starting from 1 to MAX_PORTS.
This will work as long as soundwire device ports are 1:1 mapped
linearly. However on most Qcom SoCs like SM8550, SM8650, x1e80100, these
are NOT mapped in that order.

The result of this is that only one speaker among the pair of speakers
is always silent, With recent changes for WSA codec to support codec
versions and along with these patches we are able to get all speakers
working on these SoCs.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
Manikantan R (1):
      ASoC: dt-bindings: wsa883x: Document port mapping property

Srinivas Kandagatla (5):
      ASoC: codecs: wsa883x: parse port-mapping information
      ASoC: dt-bindings: wsa8840: Document port mapping property
      ASoC: codecs: wsa884x: parse port-mapping information
      arm64: dts: x1e80100-crd: fix wsa soundwire port mapping
      arm64: dts: x1e80100-qcp: fix wsa soundwire port mapping

 Documentation/devicetree/bindings/sound/qcom,wsa883x.yaml | 8 ++++++++
 Documentation/devicetree/bindings/sound/qcom,wsa8840.yaml | 8 ++++++++
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts                 | 4 ++++
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                 | 2 ++
 sound/soc/codecs/wsa883x.c                                | 8 ++++++++
 sound/soc/codecs/wsa884x.c                                | 8 ++++++++
 6 files changed, 38 insertions(+)
---
base-commit: 9935be184a55dd84fc3275094f2df095491f6ea1
change-id: 20240626-port-map-ef50c3304d4a

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


