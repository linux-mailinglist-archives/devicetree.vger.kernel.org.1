Return-Path: <devicetree+bounces-70708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 572FD8D41FE
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2024 01:39:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B75E5B22C7E
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 23:38:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DB9A1CB31C;
	Wed, 29 May 2024 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hh0ZkaYH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f65.google.com (mail-lf1-f65.google.com [209.85.167.65])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD7617B4F2
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 23:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.65
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717025933; cv=none; b=D16UZMqWIkqtkQoDFnlgvDU4SmNyT0gijvEyI9ihwmcJimJC9/4Mehw3/CDpHnYXVMRcA5U46jVTnPSJdbm7wv2x59HWYGgjQlQhN2QAgOo7JpAOqi5QrUl9zweBlfXQabN1zCBKBWoeTMdZbZB425FjZuADuQWtpPGbloECqqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717025933; c=relaxed/simple;
	bh=8awMhfh+EooDyyG77D0x2IEYHXjNwY2rq0QQPZ/UDew=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=p2uY62rBKgjh6sZXd4vUM99D8L+f27yycdUAueKnhtDHmWni7VJMBKeyg4yH3mUnilMgFUYll4H8YyqCbLjRc/UQF9g3yhls4ADmSpGhQM7TAYvb5rRQzwlzcNkAJnsQRuBL0+vSQ51w/DCYCguVR8Ajuukh/tcv50lqgEZ+RSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hh0ZkaYH; arc=none smtp.client-ip=209.85.167.65
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f65.google.com with SMTP id 2adb3069b0e04-52b59f77670so352465e87.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 16:38:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717025930; x=1717630730; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5I0b3/ox7MmhZc36+ZmYiuYZWHtorfeiNRM4b5O0zwA=;
        b=hh0ZkaYHFArasu91APiZmh3WDkmRNRUBEyzEPuxHFG6CXuAt0/41d9LUGYUOP53bXN
         mneE3CP8FycdGPwdODUfdmqTufhJrlj19VtjnqkJAvgKXmM3DUY/CX1rU8wIhlJdj7Dz
         ATFN0Om9IqyVy6peqVbqyYftkiJlQif/eEq90ihKKSAnAZa6t4ZsH+p7XeZzItJkpnVB
         tDCjm6R53xuxC3KMFjPkA0wB0JMEUq8opgt5UEr8ADxqxOvdfm1qdn3MShVEEQISUAAL
         mEDgIWCLY1utliZ9lyZ3o8x7I3SGodCohmCNbw//QWMi/8Td4teW1JAzvLm5P8faq+Qa
         Pzfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717025930; x=1717630730;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5I0b3/ox7MmhZc36+ZmYiuYZWHtorfeiNRM4b5O0zwA=;
        b=atgMOGxMATeGmwsSsU/l5gKdgzAg+I91rFZzgb/uLOcTeAMutPwzR8YmrI5vPFSC2b
         R2vyIDUm32Ki5as9wCfmSPRfd4jU55pXuzPLAO+nVEM9yyHlxh7HVrC6iVE5/1RwvIXi
         BH35j8iPUehFfxxnzitH9T6VclhIhYflZgO4GUEgXRi4rOoLEdWb7HIORx75jGEdUNoh
         bv46KoWXJraIrbY2JxpmoO+iq4LUn5gt1xpnv72zB34HymxYvr8uS+IdqBwJ6zX2WbLg
         ztQlgW1b0Yq4o0lQqUphawCwjRTrWB+5WN/ECPAYau1QROrpzeA1gHPxGs/ElzwQvQCZ
         Uy2A==
X-Forwarded-Encrypted: i=1; AJvYcCWcVHoJZCnxCLlH7H+zdO5AL2z1sECZAoy/sUn3baAiVWjQ0B3YTCGwOk/EGOfnNfZ73nvLD/y3Puf88h9BDSn5Yhr/wroCn7633w==
X-Gm-Message-State: AOJu0YyqpX0Zd1a0HeiKnqPb6gtWmYFZrL417AXSP/UHtx6zg3gNJwOW
	W67jbp6lqgwWca1lw2cwfDpDKal6R6kbhd0t6bPkE4vDyVF4WFvMRTrZYJyQM/+rv/C3fmLS8UY
	zPf0bYR2X
X-Google-Smtp-Source: AGHT+IG/aGdeRrqwFu9J/BRmvb/AuvLWHGvrfxszJ8D5r4j/xoh7p2OfNm/14ILIBgfofmLFprw/mg==
X-Received: by 2002:a19:6a10:0:b0:523:919d:302e with SMTP id 2adb3069b0e04-52b7d418f97mr527341e87.7.1717025929824;
        Wed, 29 May 2024 16:38:49 -0700 (PDT)
Received: from [192.168.0.113] ([2a02:8109:aa0d:be00::8bb3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-579d5e3f995sm4389262a12.64.2024.05.29.16.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 16:38:49 -0700 (PDT)
From: Caleb Connolly <caleb.connolly@linaro.org>
Subject: [PATCH v3 0/2] qcom: initial support for the SHIFTphone 8
Date: Thu, 30 May 2024 01:38:46 +0200
Message-Id: <20240530-otter-bringup-v3-0-9847d3ddb2d9@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAIa8V2YC/13MSwrCMBSF4a2UjI3kYZvoyH2IgzRJ2wuSlJsal
 NK9mxYE7fAc+L+ZJI/gE7lUM0GfIUEMZchDRexgQu8puLKJYOLEaqZonCaPtEUI/XOkUmvbSWO
 UNTUpzYi+g9fm3e5lD5CmiO+Nz3x9v5LeSZlTRq1mykl3lrxrrg8IBuMxYk9WKoufXLB9LkruF
 FeOO9M2rf7Ll2X5AHOkgljqAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Alexander Martinz <amartinz@shiftphones.com>, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 ~postmarketos/upstreaming@lists.sr.ht, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Caleb Connolly <caleb@postmarketos.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=1621;
 i=caleb.connolly@linaro.org; h=from:subject:message-id;
 bh=8awMhfh+EooDyyG77D0x2IEYHXjNwY2rq0QQPZ/UDew=;
 b=owEBbQKS/ZANAwAIAQWDMSsZX2S2AcsmYgBmV7yIpYEad0Z2kxpBicJZt8Z1dZqvqyL/0oqZo
 4QM5MEY6umJAjMEAAEIAB0WIQS2UaFGPGq+0GkMVc0FgzErGV9ktgUCZle8iAAKCRAFgzErGV9k
 tvhhD/90F0f4KDuMIycJOwj3Jadn5jhFHDm0p8w7LmwFSfS8vH1oShWWXvlTD0ZP9Evrus/mxj+
 9Abt6QdbFEbfIiCOQZ0RxSMr4gt7Q3lm5FJ8kG9pElp7kvZINTTCgcj4HYoidSTq5XmMxaCQE+b
 uqV+pA2MJG9KXsffYnwojSngkKFFneeRk/KQ3ZiSKkgxmdKLlwnyfGmn+gEUnZbGNci900rreRw
 pKnOP6iTLsYzTO3y7AwlbvGWTJS8oAtwRiNajGE/0DQltztiqxubAYAROttdndk7JACgM07bIJU
 3AJR7GmogwJgHMTYioc3OEJImBIYEV0l0O9IONMh9T2eVP+L3wJ0OXsb2O5nNyFWPJFaJ5Bi+0p
 KQSP5x6Hwpid8BYhpxe+agny4semnHQ0Zwjdns1BSbjiWWtrobslGsC01zWXSxGDVJLpePrXN+Q
 XoKoiH2Og/lS7tIYHAz6VHvzn9ODmCD1qPSu8hQh6VoCnH8yIEGrImfwbQwjWfdgl9RuFtnGh53
 8i1+SlL+clbhnpkdbYkBIVB4Ll/PtZvxDAfjpzxAMfMRJmA1R1oYh1jjO1G3A8x193V4zycrn1L
 jCBamVloTMn1IR1PABvbqoYeCQNCpuPNZu1CxSewwCmi9kxDZ3P2DMPvfjCyRuJkQAqF2cQQS6U
 wcTuYdtk7eY6YXg==
X-Developer-Key: i=caleb.connolly@linaro.org; a=openpgp;
 fpr=83B24DA7FE145076BC38BB250CD904EB673A7C47

The SHIFTphone 8 is an upcoming QCM6490 smartphone, it has the following
features:

* 12GB of RAM, 512GB UFS storage
* 1080p display.
* Hardware kill switches for cameras and microphones
* UART access via type-c SBU pins (enabled by an internal switch)

Initial support includes:

* Framebuffer display
* UFS and sdcard storage
* Battery monitoring and USB role switching via pmic glink
* Bluetooth
* Thermals

Wifi works but requires some commits to be reverted to prevent a
firmware crash.

The serial port on the device can be accessed via the usb-cereal
adapter, it must first be enabled by flipping the switch under the
display. Additional info can be found on the postmarketOS wiki page.

https://wiki.postmarketos.org/wiki/SHIFT_SHIFTphone_8_(shift-otter)

---
Changes in v3:
- Enable wifi
- Fix protected-clocks indentation in gcc
- Link to v2: https://lore.kernel.org/r/20240520-otter-bringup-v2-0-d717d1dab6b8@linaro.org

Changes in v2:
- Fix authorship
- Address Luca's feedback
- Link to v1: https://lore.kernel.org/r/20240508-otter-bringup-v1-0-c807d3d931f6@linaro.org

---
Caleb Connolly (2):
      dt-bindings: arm: qcom: Add QCM6490 SHIFTphone 8
      arm64: dts: qcom: add QCM6490 SHIFTphone 8

 Documentation/devicetree/bindings/arm/qcom.yaml  |   1 +
 arch/arm64/boot/dts/qcom/Makefile                |   1 +
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 926 +++++++++++++++++++++++
 3 files changed, 928 insertions(+)
---
change-id: 20240507-otter-bringup-388cf3aa7ca5
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0

// Caleb (they/them)


