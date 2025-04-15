Return-Path: <devicetree+bounces-167348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D80A8A023
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 15:54:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2FE983BE4E9
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 13:53:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77D131A4F2F;
	Tue, 15 Apr 2025 13:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E1RGe7Hl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EA413C8EA
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 13:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744725201; cv=none; b=iYWPF7MUfiE2XJilMSVHZ+/ZSnZknHddIgg9nrn019imYFJ5Xm6cDndFIT7eKvlz8qgACU8HYCHRWrVSNzxJ2YNT+8QQHYnNujd4IftlQlcI943e+nETZmsR5F9b2JXmrkJZH6POtFvBLc39I0sSFCUhsFvA78yKOB54ToQWxfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744725201; c=relaxed/simple;
	bh=bgzW8YxINyu6W61KznQTMmt2So/8oOuKzrFONOEyMzA=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DLEEl4MX394IOPVkKRdu+ugsIdT6lOM6THr3bOXpfR7oFZYUnIMI0rnj0OPomyzYzzgoaWmRkEOmv2FjFoe6mr5cFwhB4OLuG6Z51JHne3huG8D47RXASne3tsRkgmnrWZWd/cbSUAjakD+zj/WuBxB9MgpqTaf/AcyYm+DArV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E1RGe7Hl; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5e6f4b3ebe5so9766898a12.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 06:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744725198; x=1745329998; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AllNkRrbyjcjvSu2WZVuohdOWdJ1dJ6T/kkM49XqA4g=;
        b=E1RGe7Hlz1mwl75Uj/uWezX1dfBasXulgXnJjWxPIfaV3sKkq/2zg2Nkq9k+RJoct+
         8o+HJJw5B5PPMlwHf3o67Geo2NbrPbKdEpbnuxJLC9Ab9/IZ9YgMALAHX0jE/o8lctNF
         g8X47zold4lP70zcE646lC9m8KFFrN8YHjrboXe68aNmNxcRi20GDZjamXoCsMLR1bV4
         seP45/eQlhfblZnWRIsHNGzWVGfyuZPoXTLkCclO6p1aS4oIOxszGt11gcEciWLY8W0d
         0eT85PYDz8Bv1yJhgdRrbgmFhDQvMGl7gyru3M5L5Fzhw3ErmQ8AcxLeldeGIGPpXqV7
         ZtOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744725198; x=1745329998;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AllNkRrbyjcjvSu2WZVuohdOWdJ1dJ6T/kkM49XqA4g=;
        b=R9Yauokyw9f4TTNX1xSsxNt4umvGjEyYQqlrdH6CCNcvH+u1KBK9C8MBS9qQTVAJto
         TXSBS5KIuSM4vKYKe4bfBZaechIS1TGIolXCcMvE17EvgEOowNM9MIxfc1OXbjjr+tdP
         quaNk1HTjZHcNe0ZwYVjEdUUKJaKH4OG3BmkAFqXUDOzwSV/pL/Dcwn/nPRzCErQ8CIe
         yoyqi7WuYvd1lhduiiCfoFW4ce6KrI5BqjacmbIVGOku8oza1CFk/m4f8dKwaFsboA8a
         4I+yz9mGPA3R9vlZTwFqgrhx1xut5CFrtr30FqWKu7SkN2X25ZWo6QkaF+doYLNFBjqq
         rr9w==
X-Forwarded-Encrypted: i=1; AJvYcCVxZRx1GuTgrVMUXg1RLib0mwgy69aA66RReSx9liuerKSP+kb4FRrZSWCHDPN2nJnL14TpAcFo6aaV@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn3HMeq/x5UDWUbfDZrDyGq9u/tsgnwQg6CExfbLwRoDXlzZeS
	6TqX3rDPmOPm/jmKnxpXEvrYuuZvglYMpMCFR9bXmaNDvxDzNyyueRfcVFvp5Q0=
X-Gm-Gg: ASbGncunECSiMRRcyBBZSVsC4+v+ytlbsA0kpEiGWmLc+B/7sxoRy8V+yWaZnZE9Kor
	QtfBq2lA/rrSlu7SlfJunQnT/+VY2wDu2PIldmH1s7lWCffe3YakMrQMTcwUwjs6hngkImxhtrR
	t3B9XZUf8/KXPS0ranTFtVNPGyzrmE8C/ZIHWCekna14Y9SqADiqYsp/nVLfgcD9IkeQY3Jgrq6
	lQhWF3mRtymVTmVLNXGr/0x3AF9+Let9A9ueFBvb36jPyPT2X7z3FHLekiFI2HWyP0YwwIDWKJW
	f3SEWEODCaL4+oNI3O770KbDTboiL4NTgO8lKI2WUvED+VL3Bp+3g14=
X-Google-Smtp-Source: AGHT+IGRcEt9oK3lxyGiEnhvV+ZQfkcTyZLJgYiuW7WPrPlF2pqkkrZjNilPDswBvYfDwLxbNzmKXA==
X-Received: by 2002:a17:907:a48:b0:ac7:1ec1:d8bd with SMTP id a640c23a62f3a-acad351bf05mr1481526966b.29.1744725197572;
        Tue, 15 Apr 2025 06:53:17 -0700 (PDT)
Received: from [127.0.0.2] ([2a02:2454:ff21:ef41:7b18:2529:5ce1:343d])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acadcc21a44sm681379166b.177.2025.04.15.06.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Apr 2025 06:53:17 -0700 (PDT)
From: Stephan Gerhold <stephan.gerhold@linaro.org>
Subject: [PATCH 0/8] arm64: dts: qcom: msm8916/39: Cleanup/fix UART console
 pinctrl
Date: Tue, 15 Apr 2025 15:52:43 +0200
Message-Id: <20250415-msm8916-console-pinctrl-v1-0-a1d33ea994b9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKtk/mcC/x3MQQqAIBBA0avErBtQqaiuEi1MpxooDSciiO6et
 HyL/x8QSkwCffFAoouFY8jQZQFutWEhZJ8NRplaVVrjLnvb6QZdDBI3woODO9OGqulmb4ydyHv
 I9ZFo5vs/D+P7fqAypxVpAAAA
X-Change-ID: 20250411-msm8916-console-pinctrl-069fd22abedd
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Sam Day <me@samcday.com>, Casey Connolly <caleb.connolly@linaro.org>
X-Mailer: b4 0.14.2

At the moment, msm8916/39.dtsi have two inconsistent UART pinctrl templates
that are used by all the boards:

 - &blsp_uart1_default configures all 4 pins (TX, RX, CTS, RTS), some
   boards then limit this to just TX and RX
 - &blsp_uart2_default only configures 2 pins (TX, RX), even though UART2
   also supports CTS/RTS

It's difficult to define a generic pinctrl template for all UART use cases,
since they are quite different in practice. The main use case for most of
the boards is the UART debug console. Unfortunately, the current generic
pinctrl template doesn't work well for that either:

 - We need bias-pull-up for the RX pin to avoid potential garbage at
   runtime when the console UART is not connected, but this may be
   unneeded, unexpected or even unwanted for other UART use cases.

 - U-Boot needs to know which pinctrl to apply during early boot stages, so
   we should specify "bootph-all" for the console UART pinctrl. It doesn't
   make sense to apply this for other UART use cases.

The solution proposed in this series is to abandon the idea that one
generic pinctrl template can fit for all the UART use cases. Instead, add a
new pinctrl specific to the very common console use case, and move the few
other UART use cases directly to the board-specific DT files. This ensures
that people are forced to consider what exactly their UART use case needs
when porting new boards.

Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
---
Stephan Gerhold (8):
      arm64: dts: qcom: msm8916/39: Move UART pinctrl to board files
      arm64: dts: qcom: msm8916/39: Introduce new UART console pinctrl
      arm64: dts: qcom: msm8919/39: Use UART2 console pinctrl where appropriate
      arm64: dts: qcom: msm8916-motorola: Use UART1 console pinctrl
      arm64: dts: qcom: apq8016-sbc: Move non-console UART pinctrl to board
      arm64: dts: qcom: apq8016-schneider-hmibsc: Move UART pinctrl to board
      arm64: dts: qcom: apq8039-t2: Move customized pinctrl to board
      arm64: dts: qcom: msm8916/39: Drop generic UART pinctrl templates

 arch/arm64/boot/dts/qcom/apq8016-sbc.dts           | 21 +++++++++
 .../boot/dts/qcom/apq8016-schneider-hmibsc.dts     | 41 +++++++++++++++--
 arch/arm64/boot/dts/qcom/apq8039-t2.dts            | 28 ++++++++----
 arch/arm64/boot/dts/qcom/msm8916-acer-a1-724.dts   |  3 ++
 .../boot/dts/qcom/msm8916-alcatel-idol347.dts      |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-asus-z00l.dts     |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-huawei-g7.dts     |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-lg-c50.dts        |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-lg-m216.dts       |  3 ++
 .../boot/dts/qcom/msm8916-longcheer-l8150.dts      |  3 ++
 .../boot/dts/qcom/msm8916-longcheer-l8910.dts      |  3 ++
 .../boot/dts/qcom/msm8916-motorola-common.dtsi     | 11 ++---
 arch/arm64/boot/dts/qcom/msm8916-mtp.dts           |  3 ++
 .../dts/qcom/msm8916-samsung-a2015-common.dtsi     |  3 ++
 .../dts/qcom/msm8916-samsung-fortuna-common.dtsi   |  3 ++
 .../boot/dts/qcom/msm8916-samsung-gt5-common.dtsi  |  3 ++
 .../boot/dts/qcom/msm8916-samsung-j5-common.dtsi   |  3 ++
 .../boot/dts/qcom/msm8916-samsung-serranove.dts    |  3 ++
 arch/arm64/boot/dts/qcom/msm8916-ufi.dtsi          |  3 ++
 .../boot/dts/qcom/msm8916-wingtech-wt865x8.dtsi    |  3 ++
 .../boot/dts/qcom/msm8916-wingtech-wt88047.dts     |  3 ++
 arch/arm64/boot/dts/qcom/msm8916.dtsi              | 53 ++++++++++++++--------
 arch/arm64/boot/dts/qcom/msm8939-huawei-kiwi.dts   |  3 ++
 .../boot/dts/qcom/msm8939-longcheer-l9100.dts      |  3 ++
 arch/arm64/boot/dts/qcom/msm8939-samsung-a7.dts    |  3 ++
 .../boot/dts/qcom/msm8939-wingtech-wt82918.dtsi    |  3 ++
 arch/arm64/boot/dts/qcom/msm8939.dtsi              | 52 +++++++++++++--------
 28 files changed, 213 insertions(+), 59 deletions(-)
---
base-commit: 29f8b76c55e05821f41c3e975e6a48013d8a861f
change-id: 20250411-msm8916-console-pinctrl-069fd22abedd

Best regards,
-- 
Stephan Gerhold <stephan.gerhold@linaro.org>


