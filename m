Return-Path: <devicetree+bounces-194567-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C0D7BAFE812
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 13:46:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1F4D4E0EDF
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:46:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8682D8DAE;
	Wed,  9 Jul 2025 11:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Cq8SsObN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 838EC277C82
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 11:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752061608; cv=none; b=Z78fOQJFXTy1xJ96LlRSfteiFFLvIwqQ7LBiIm47pHqj7FBUMfxd/+EHnIwTqX6qBFL6HlgzfkysHkSaa2Up98e0rNLztvscL5a2MUENQ8xzaZSZAW9ymoqpv3JLRhDgKi2iV3N1uo614AqSJdYwPjCTcbGRpRoCqt4Ar7FffOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752061608; c=relaxed/simple;
	bh=QyvA1Nzk0SjLU+31bm2SPti95aMonnwGc0oDKOHnSlM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=E62OYphqejPjNyszujBjpCXcip7oJIwYTGcytXLKGijK4V8ngGMqCDIoycTGu7gJY5SXn28Der01TSNwBP4hHRzXdytqITZfNp9h0QtzOdSiH05Z45j+emV9RRHC/Qu8jMzNe5SnQNCy2usz+iWJLWMbpycCb3J25e+coMwfPC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Cq8SsObN; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-606b58241c9so8783518a12.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 04:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752061605; x=1752666405; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=D9byk3wugrhJNxEcWXLExtPl6Yl//CkYLrNeWbYR494=;
        b=Cq8SsObN6jBPDbSirTwLQ6P73n0RFav8rTtglQi/+X1YITPNipx7nAVKwqpuQKQK49
         2TjN8xpmwTyBSjmGLx2SUdj6PNvCkSiyYJsAnk95/7pEGDprQTF5COFyeSyQ/UQOYCB+
         Gqd56S7s+80L+o2RRhMzq2jh1dP9XAnSmw6WYb6G0X47tySGWnCkSsuOWqrVHoUGifJW
         Nfn0LPMi38EB2sBg4BIMx4FPNNlfgqOpwoC4HL8hicncQLNVw+p32H1WKwUgFVYFe5Rw
         k4c+MApylsw8XeTjWX2aOkUy9tvsBnjv5ZFMeVJsF7JnGDd7Y/r9pNfaPcvwVuFOufA9
         cKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752061605; x=1752666405;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=D9byk3wugrhJNxEcWXLExtPl6Yl//CkYLrNeWbYR494=;
        b=cuiZ9SjOvWjA93nPgziZNFCn+sygQCzO1QywQlBq5bS/5umASG6z1dIYBxJMp6GI2j
         hHpbGTMM1qBnoKMXqxb65HUSz5JBsZm/3PQrdxKrYWQnFPK77LRob3aVN3OLzTrMlukN
         Cig1kIABeXbF+uWgdeVIHvPuT0GCqiYFTNBD0SSKXlL4AhDTE3E7KUpJPVajD8UCpvX7
         wimrk73jNTMxLwC3zuFp6jb5QlckwmDFY81SznHMgG7SZEQ8f6brt9pjHC43KQn9sugy
         1FcPf0fkrAExGLOiasTYYtn5/gzm6HdxrA+DlPY5ZmEMXOyrUX81y33DfmHoK4PUIo7C
         8sjQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPIDRBqSikn0ABNUFDQelpEKxRNiF8V9OKyPVWYjUy/YzJy1FsmdgICJ0PzmEosnbbM0RtoeXKmF3o@vger.kernel.org
X-Gm-Message-State: AOJu0YwCG7Phc9ZDfA8XJB76XaKlaF7V38jnja5dP7Qt47h/q70gHSbb
	BGdeJOkAL9WcxSN9KlQQR/PfRMdwMkXmSN2bcykO0ZWmL7gX2aZF0rXfC9W59T61CN4=
X-Gm-Gg: ASbGnctDd5zNKxPD/clANqQ9p+aF2ohN433Xp5Hi9/iEhZ74vaAob4479gXUdvrJPbq
	ed3Q93sq1uqN6ehJp3tI4HWBN8G74Oo1NoHZqxlLmGgybhOB2F4h9zE63Zl1Or01bK1QdyL1MAY
	Tc3GYQIaLGkvWplD0ae4C2vUZ9znbMatAL5GiIQK1wOX8HD8JhglwfNyxKJb0v2g+gDwS0ZmDNn
	YxW6NOxenxnhgKKVh2w9RhUoN6PSTVfsYDxXduz3Sb7M589AaiUHSdaBYogkGEdzXiUTOleCPWF
	TtGuAHEJP07+ZnIwhL/MgvFXggEreBFdf4bji3rcNb7oGa/ujZ46iAHl692k0aeXrVeG3xDJZa9
	3EjmwWy5CHcfOiCpma/qbbXQ1lkjhuz+DeWJcWqigAqE=
X-Google-Smtp-Source: AGHT+IHBY4d9/GJbkWPqXT8J9DnV+IVC2JC5zKF0B4Pu1i/DLBMpRHhTFOQ7JRtodytv/0C23aztEA==
X-Received: by 2002:a17:907:d09:b0:ae0:cadc:e745 with SMTP id a640c23a62f3a-ae6cf7898c1mr227993066b.40.1752061604773;
        Wed, 09 Jul 2025 04:46:44 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f692e4ecsm1102995266b.55.2025.07.09.04.46.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 04:46:44 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v2 0/5] Add support for PM7550 PMIC
Date: Wed, 09 Jul 2025 13:46:31 +0200
Message-Id: <20250709-sm7635-pmxr2230-v2-0-09777dab0a95@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJdWbmgC/2WNQQ6CMBBFr0JmbU2ZOhVZeQ/DouJUZgFtWkMwh
 LtbSVy5fC/576+QOQlnaKsVEs+SJUwF8FBBP7jpyUoehQE1kraoVR7P1pCK45IQjVbMRK6xrun
 xDmUVE3tZ9uKtKzxIfoX03g/m+mt/LfprzbXSCsm5y8lo8qa+eicpDmHiYx9G6LZt+wAJU/DXs
 gAAAA==
X-Change-ID: 20250620-sm7635-pmxr2230-ee55a86a8c2b
To: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Fenglin Wu <quic_fenglinw@quicinc.com>, 
 Stephen Boyd <sboyd@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-gpio@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752061604; l=1221;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=QyvA1Nzk0SjLU+31bm2SPti95aMonnwGc0oDKOHnSlM=;
 b=jI/LuA8Et9Jz6IIYCbCbiaDVHZiqDKZl8RRZgpLS3RuN+Ax4/YMmJKN878+dc6PtGL37LqaEB
 8y7Tzyw54BiCUEH/z2jsIb9abrcrERJIg7UyIA8WsR/u8lKqzjp6CUQ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The PM7550 PMIC is used in conjuction with the Milos SoC. Add binding
docs and the devicetree description for it.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- PMXR2230 -> PM7550 (Dmitry)
- Replace some SM7635 references with Milos
- Update critical temperature trip
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com

---
Luca Weiss (5):
      dt-bindings: leds: qcom,spmi-flash-led: Add PM7550
      dt-bindings: mfd: qcom-spmi-pmic: Document PM7550 PMIC
      dt-bindings: pinctrl: qcom,pmic-gpio: Add PM7550 support
      pinctrl: qcom: spmi: Add PM7550
      arm64: dts: qcom: Add PM7550 PMIC

 .../bindings/leds/qcom,spmi-flash-led.yaml         |  1 +
 .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |  1 +
 .../bindings/pinctrl/qcom,pmic-gpio.yaml           |  2 +
 arch/arm64/boot/dts/qcom/pm7550.dtsi               | 67 ++++++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c           |  1 +
 5 files changed, 72 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-pmxr2230-ee55a86a8c2b

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


