Return-Path: <devicetree+bounces-174570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 347B4AAD9AF
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 10:09:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F37EB4A0ECE
	for <lists+devicetree@lfdr.de>; Wed,  7 May 2025 08:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9B97225413;
	Wed,  7 May 2025 08:02:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="N/GBQnER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86A51220F2D
	for <devicetree@vger.kernel.org>; Wed,  7 May 2025 08:02:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746604928; cv=none; b=FGxcQ4DoekBBs2QtEJVEsixvGI8mVl46cc7a6n/hnOlTHf90Vtm/wDEji8s5RCmA35OrG5OHr/kAUqxZhnSZ/UJi6UcrlQYZpIXvzODDvq+0FMgLy/HxFqh6GgsY0DGxMDkTL3QrRJgut01529WS78rNmDlUMi1b1SzNgydb1+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746604928; c=relaxed/simple;
	bh=UQYPuQ4V0eo5jv/qafQ0OHy9kWYPLY7nSfMkxHI957U=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=r+xDh0uMbYPGoRuGHfJTxPAUO4kBGP/hdJOIdqewz9rcSpZ+lDrYFoC3TvFzgdrR4Lp1br+CXjICLoUk+I5V7M3C5W2JOdtn29xHxZwZt2Eql8oAWuCNW7ve55b1Sp+HQftGZdDdwbUcVVixuqKrzvEwIhNtTBxoKHGkAUmlCHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=N/GBQnER; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-acae7e7587dso1046023966b.2
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 01:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1746604925; x=1747209725; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=U+u3bu7oYvpS4FSzs62hW1Jixx7IoWbryK85jVovTQg=;
        b=N/GBQnER7vPZZPl9WgMXAaCr8UIsJEjDiTtSYhcF9SIQeM+WQmcYRUb8pSSnlY2DCA
         NmnaFXtZBHxHAxXqCaoW6u5oNI76/19MWeBJw78+5UzSDkn3vbaGmSi7Emlzex9WNvD1
         f3hR9l2lemzkPPJImVhPV0/sZE5AF0DG2wv21/jkAUCE1aswL4jEhSE8rIUYk8eAbJlu
         /38JHd3BZ1L7OhQPR3byxIaV+xgwI8kx96N3ZnPLZyTesmL9X3bR74SL5k0kO8ZexywW
         u77OK6XsQxTxO269EUbWyk9JbE12jXbX+GsfcnBlGeaSH7DOwPWVb0GYL87rn4uyRBeL
         wHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746604925; x=1747209725;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=U+u3bu7oYvpS4FSzs62hW1Jixx7IoWbryK85jVovTQg=;
        b=dSMp/GWzPhUE2C2ScknQYGloG14LyOyh7BVa3yln6/SRQGnbe6ciUYn78lq8ZlIue6
         HJTCi1+IJyQgPGAz2UViMvfLzCqNQhGT834EL7X4Bc0cfvnIEZTxm9No8CIXPMz89RCd
         L+5oMkUNPb3MI33/p2BbaoMJ3bfiT1s+goQWjkZNvXSU0jM2Bjw6d3HRHKlOHuveoCDz
         LU18Yr5Oige3UxAs4kNksviHn9kwpMVqyfw/v1cqEltnZXxIgDUgCtbKXn04IczOK99B
         Kj0ij1CmKqhRBQOl4tH28n+reEQSA22+azqfEXZl21+rb+XDVzEpc0AL04f9BmIqD0Tt
         ibyw==
X-Forwarded-Encrypted: i=1; AJvYcCVjmf4H9lRkkRx+LbRNVVgszrKuUjCaA/soiGQKgcl6kqjNJO3eyZ8hmZztj6FSmivtqRIEqhxhaLPP@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw8DOX2KLYQJjLtiqRJ2K9yc4EvCDB7l2eaAJ8Iznf3hzc9OIy
	lxe+5HC1tEqRqxY8rhF5Bik134XE0hmHVkOY1OqTyYVT03Kshmaf5hDIfKW4OaM=
X-Gm-Gg: ASbGncu3fDn6ZwwFpSD++O89ipXb6jKhk2dgXjF60nSHzXN6AEYqRmqqZCn3B2JdwdI
	flHYoqksi0JSPU8MEhvgH/kz8wcR2hhPOxWw0JkmT0cqHYnJbVXcfqCEbpid3+Br+iDgrpat9vF
	bJeB6Q4CsTr2zEwSxtli0lXSISZ1z5yudMWQLsQvxUpuBLJhGGWRFTZr+vdKMRz6kCyeD8CaMvZ
	qdqdkYsJJH7nyuZQktcN3e3GxCK2n1Byv3+bHnvakJVmItlmPh2nsR1xEjCYAbTd5Rs1g5V8lVO
	b25SzJeYHcq2AAE/iByfDvj9363mM6Lxr0E5srZh34m/Vr+YSuJr9fJr+llC5OsA2DFzK8E/bJB
	lxDlLSbO2kOvt1g==
X-Google-Smtp-Source: AGHT+IHF5b+vKZO4u0eoZyRIBjD7kg25Q5WOddOsFOZKz33BDxBpiXozlemQ76d2/Vw293ayXjtVIg==
X-Received: by 2002:a17:907:944e:b0:ace:6d53:3da3 with SMTP id a640c23a62f3a-ad1e8ce48dcmr237718466b.23.1746604924787;
        Wed, 07 May 2025 01:02:04 -0700 (PDT)
Received: from [100.64.0.4] (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c0310sm855236066b.88.2025.05.07.01.02.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 01:02:04 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v4 0/5] Add DisplayPort sound support for Fairphone 5
 smartphone
Date: Wed, 07 May 2025 10:01:36 +0200
Message-Id: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGATG2gC/3XMSwrCMBSF4a1IxkZuXm3iyH2Ig+ZlMzApiRald
 O+mBUGKDv8D55tQcTm4go67CWU3hhJSrMH3O2T6Ll4dDrY2okA5SFDYDwLbAZf0iBZr1jbSMyB
 KW1QvQ3Y+PFfufKndh3JP+bXqI1nWP9BIMGDb6o4ayn2j1cl3IQ99iu5g0g0t2Eg/gABO5AagF
 QBhG+FBcg3iF8C+ACo2AKtAazQXRAIoorfAPM9vUJe6hy4BAAA=
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

The ASoC bits depend on the patches for USB audio offloading merged
through Greg's tree so this cannot easily be applied for v6.16 through
the sound tree. Either it waits for v6.17 or also goes through Greg's
tree.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v4:
- Use "sm4250" for qcom,qrb4210-rb2-sndcard (Srinivas)
- Expand cover letter to mention dependencies for ASoC patches
- Pick up tags
- Link to v3: https://lore.kernel.org/r/20250425-fp5-dp-sound-v3-0-7cb45180091b@fairphone.com

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
base-commit: f819a667fa466d3b96b542b147053b6873f18ea1
change-id: 20240809-fp5-dp-sound-b3768f3019bd

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


