Return-Path: <devicetree+bounces-168552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF65A937A8
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 15:14:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECAF8173821
	for <lists+devicetree@lfdr.de>; Fri, 18 Apr 2025 13:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 874A3277012;
	Fri, 18 Apr 2025 13:14:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="XShPdjQx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E5D9275115
	for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 13:13:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744982041; cv=none; b=beD3RxtJS8xG2/QiT5ha1Ok+ZDCuo0jeczCq/FY03u9zAk09kQG7pBRSpGSVc0Y2BbWnHX0O454HVCR/Kx0zyKDgXLlvenAn+Cx8okkohDiCPM3e1Yco2YHPkNwWCYpN0AO86WykoXd9otKrWnt/aPOXoOdMQ/kGZywu8Xi0zeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744982041; c=relaxed/simple;
	bh=oG6I7vuTiOh+DBUVeavHMpkt72p29hj0RNzTc/V8MdM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=KJFLxxybvs6QcqctNfjd2kAh/vrn/EKbJCb3d3X8K6oN8Or3VxXo9255eWjiKIPT4Ng/Xgh6XgMHV23/812aXZ6fkp+YtI4vQNjjSyqGz6eeHKehrlXs8OP7oTb72Gk+6pD2jDo5LidYn6QOTSXLmqAJUPjRUxc5lF/Zrfru0/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=XShPdjQx; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-5f620c5f7b9so1607695a12.2
        for <devicetree@vger.kernel.org>; Fri, 18 Apr 2025 06:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1744982038; x=1745586838; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3X/gbMZWU54cMJwy26Gb2B5XgxbyYs+jksPX2/CEuik=;
        b=XShPdjQxT9cBlynxEapVFLmhKDcZQtSYGgPmREbLBVPOMYs/XiDqlySHqoM66C6bYy
         Oqrm35jkGrEWZr/qKteoUsrmWfI2VhUrGKrYjPglbpVojnvauFMhqHU2Kq8T+ULYg5bS
         2WGmRdLjx+sussZB1w7cugBZvpfvLSom/pv78QfUgktp0Yc4q+hg0xyy6+IdJXuM1z5O
         IjJe1lbyy74uEdapMxirOJ3f0ksTMwsdT2LJb/liGFwMlfh0DCXPsffmpdHxDnMj+0UX
         JFxu//gupFjdVxuwj7Pv+r+tlX8J92G/6NU6UW320w9jIKE5p8dD403Xs72V25vpeJnt
         YP1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744982038; x=1745586838;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3X/gbMZWU54cMJwy26Gb2B5XgxbyYs+jksPX2/CEuik=;
        b=j/VQ18cHh75Nwy88q/wpA8X0sJG+j2SYgkr3CYzSub6xufkjmiQJeq1lZn5je1qnAv
         sxtYqZOBcEoveJzflx5Ur0SLI94npbaILgHmBVc/It2TIqflEMRKaRQhStwAXf4kpWz6
         Lh6WqzFHdgEycjMC52y7RnS1nnC8Ow1J1tZ7dXnoEigYg22M5Z/jinzijj2JZpuLNFgq
         yXB66hw42m0wAlECH962T+BerT51eIjTxY2eiRPuyJfRKgacfQhncGW96iyzwNiPK4Xw
         l+NvmlHQNSIqJzdMB7RWnWHA0g2PW7Bezm7d5R11zwlWejKsai2JWmqwcAunXc7/fWqA
         8oWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVywoOnQrxmTn6Tf79hfrJ96Zxv2G8F7PVu1ghEbAHlnPqrblCgig43Y51BplMYEkK3OcS/CcL//hlp@vger.kernel.org
X-Gm-Message-State: AOJu0YytBikbJbY031GYpTg/0h6wSMBezOaTltx42/yl1QWXj6PqLG0N
	ndSTGSyv62mFq8VmlhYglOlntOm5jF4JAZXNQc6/dfjVIxMNsussd0YM8pL2kuU=
X-Gm-Gg: ASbGncsQ3wPmuM8dNp85XYkWVh6lrtqJrn9qmOGK+QRWoHS0vV7KBYERoZ8jL4da2Xl
	xjF2H03eSwcUIkq94m2pLpIVthxIqt2wumZtI1ZSqqm0aXrYRWORCHoLqfeLyU83VdVB7shXNMO
	+xWIVUBzVbiDKiWQjHUyqi2SDuh3LcIfBZ4ANXHDvQJhYhpdJwVytHyLe7QYEI4J/m7KIxz7Wjl
	bikBZyefRQKs/upjJS8EIFhAXHfljBexmQWwm7s9XAQTrK/of8e6W030dyFcwJANkz6Nmfg7Q20
	2ArbHSRwTpgNtHS8kIHICwYmthzv+cB8d6QcGo2GcEjMd666S+y2Km25x+Q7wBt5udWgU6C/vIZ
	ze0cJqbeIr7hmxg==
X-Google-Smtp-Source: AGHT+IHwVVtosWsJoxBbmBCH8nalV1MQnRR/fXT4Se9eLne1pthBsyWXKcYt1cN17cYK/1WeVttuPw==
X-Received: by 2002:a17:907:c807:b0:ac7:eece:17d6 with SMTP id a640c23a62f3a-acb74b2c9a7mr267090566b.17.1744982037837;
        Fri, 18 Apr 2025 06:13:57 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ef41605sm115901966b.124.2025.04.18.06.13.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Apr 2025 06:13:57 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/5] Add DisplayPort sound support for Fairphone 5
 smartphone
Date: Fri, 18 Apr 2025 15:13:41 +0200
Message-Id: <20250418-fp5-dp-sound-v2-0-05d65f084b05@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAVQAmgC/3XMSw7CIBSF4a00d+w1QGtfI/dhOigvuQOBgBJN0
 72LnTv8T3K+DbJJZDLMzQbJFMoUfA1xakC51d8Nkq4NgomOjWxCGy+oI+bw8hplO/SjbRmfpIZ
 6iclYeh/cbantKD9D+hx64b/1D1Q4MtSDXIUSne3ldLUrpeiCN2cVHrDs+/4FIRKNx6wAAAA=
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
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
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
 sound/soc/qcom/sm8250.c                            | 28 +++++++++++--------
 3 files changed, 49 insertions(+), 11 deletions(-)
---
base-commit: 7f1dd4e6634d085f3c9652d4e0f1903659fb96f9
change-id: 20240809-fp5-dp-sound-b3768f3019bd

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


