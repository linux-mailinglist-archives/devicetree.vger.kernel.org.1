Return-Path: <devicetree+bounces-189422-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A2AE7C8E
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:25:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E61BA16B4F7
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:25:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FA52299951;
	Wed, 25 Jun 2025 09:18:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="bdI0cXv4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7639E29898A
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750843099; cv=none; b=KQhDR3UFhn94cWnnlQIiTxrUkE2Sht7c0W85s34M/puoE/aUGStM+FXzO987EvBlVu3YtImlHsQJC2LpY8brlPZgyLAzPUe+I9Cmx/ZZ9mpH9TzPDqLUbT927YNkCMg1ZIFaxLiopZEKb4JibgUTQHqE/pdtWfZZMmE4DwpJFOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750843099; c=relaxed/simple;
	bh=++8tpkdPFuMzMYNmzWCbpHolnN0VwNt0g40Ud+3vh9g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=OFLJdXB7a7ZnRRsVJeZW8Cb5H4zDxU5F7Ypw7BOMC/UGY/mAk3hIxbb+BKxRNPK0eUXZmAJbO7uBJgK1v3T2+2fxI6QMv7ztbFHxYSXMV5E9EsYMDQqLFvKMAUWntxt+ejy/tVtQ6AIXGLlYkYWvW8dAWdoYF9ElomL54AuhSfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=bdI0cXv4; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-adb2e9fd208so238017866b.3
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:18:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750843096; x=1751447896; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cfeGnw+d+Kzu3IEv8ekNTJRu6MZvUT/JsOK2K76oOBc=;
        b=bdI0cXv4WTlA9lEiXxIFdMl5rNk6qoZVltetUn5rzEu1ZrzQzZo5o2ITEskBW81rgk
         qxo7dyBKOWMO7IGQA3GTis43FuhZXf8vXgxULUC3s4zBzotsTyo4Vtb3Cuef5Aos/4xm
         Elc0Eplxxw2i3tR9t9LPY2nKRBi4VqJylCBkcQAz8ochMdal9JD4qHYIOu6m6CZysdgJ
         9MjIoNbvxhSJnh62cuQkRC+8ql2k9i1gGAt4dJufRYTW7wjf/sH50dqzQvhMPgA7kqjH
         SdK1yKfkf5k1usnL/RmWiV1ev1dSU81S69IpzmDq6IciT9JwCd5Iima3QVlk4H7HqFcc
         n7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750843096; x=1751447896;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cfeGnw+d+Kzu3IEv8ekNTJRu6MZvUT/JsOK2K76oOBc=;
        b=SeSyNJixItIi6DpAER12cWAAjQOkwWIj6Kv3uQjH1KCd5+oYzI8rxdHIztqaKPguCo
         9RB8O2r9oBiGSHtoX1gl/+mQUfTo2yriXKj7UtjHOz3ioMpZcchy9EVMxcLKmrwAtZav
         XzQrYxoFeTQesNvZTGY1I6f+7nG1mXtnT70TyKU/2kpCagHOvv4ZRvaoFevM3gkm1gZr
         gWiRQ/4tkV2NJ0ZZue8gPNCO5+YxylfKR8RTXblEWe3jAWKjmkdbE7QR9nQv9xgAjWoo
         UFS+/zu4xCEzSpw29AdwCADNIklG/i7By5mMWBfq3/v28i9DjqvipiYXhEaqPpIY/NJF
         NWpw==
X-Forwarded-Encrypted: i=1; AJvYcCW5SiFNKBNj1k32ckgovCwUao/b0qnyvkgaJKLGLOGuyIEDwYw16YF6zZr6wH6f35KIFwElaP+dUGYn@vger.kernel.org
X-Gm-Message-State: AOJu0YzuM3NZZnFnAZjQFKa4WZklY07krHJKEPoiWCSXFbS71/iftB6y
	z8HeMhAa1rH1e40b1JkByYEHbNmpAGYtfx4NWxoBh2DELnuE7aA0SYUo3RrXyLY4cE0=
X-Gm-Gg: ASbGncvKzeSUWLtW1Tp+maVqzhNwFoVdDzSWk97u6aBS+GhFM+11YgDP6+QREJGC1fd
	eUGSoZD190eVkdrdyPIvEzuPmWhsS6xs3PFKQJoKDMDZ5aIv9l8QdyMMupDsvO2o+LWQTgeJOj+
	IssWmSM2HTJ08KV6XCmfL7MrS+4PM5oHUu4FsUW0i/6WqXZwv3/iIbN3BQwcS0hGWKEHsCHPVkM
	QyB9DEIvJ+W003GZkF2oSFMEPuW5oMgQhl6l7XuQpR7Kb+/hsJyvHDp6hBRU25R9b/rukFZzZEV
	9xS5Hb2JCsCZ1KMi+gwhTWeJ1lFQbHJ3RG868syoxm2+le9NnJtz0rb4QT3CDOIsu5GELM+zGR0
	JC2PZ9/OR3uAMtsUJPAv5iGUsu7I1KFWE
X-Google-Smtp-Source: AGHT+IGN6O/Pb4prPG2JZZSnB8sceSoAzDmx52f7W/LnMi89wzQjcfcFFch1scJfwQxaqsIw8dWK/w==
X-Received: by 2002:a17:907:fd01:b0:ad8:a04e:dbd9 with SMTP id a640c23a62f3a-ae0bf154a67mr213304566b.31.1750843095781;
        Wed, 25 Jun 2025 02:18:15 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054209c85sm1009952366b.160.2025.06.25.02.18.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:18:15 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/4] Add support for PMIV0104 PMIC
Date: Wed, 25 Jun 2025 11:18:01 +0200
Message-Id: <20250625-sm7635-pmiv0104-v1-0-68d287c4b630@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMm+W2gC/13MQQ7CIBRF0a0Qxn4DtICwFdMBLb/KgFqhJSZN9
 y7agYnD+5J3NpoxBczUko0mLCGHx1SDnwgd7m66IQRfmwomJFOCQY5aNRLmGArjrIWmdUob02h
 vPK2vOeEYXl/x2h2d8LlWeDnGn2vJv4pr7iHhjG7BBMzryyilFoaNtvCP3ruMMDxiDIslRZ25g
 jRw2u37G4U81h3KAAAA
X-Change-ID: 20250620-sm7635-pmiv0104-34a679937d9d
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750843094; l=1415;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=++8tpkdPFuMzMYNmzWCbpHolnN0VwNt0g40Ud+3vh9g=;
 b=abfm9BCmpgE8TIw7teCAFpzQAAI/NGSQHPbCljUXMjiOSXMhEBfh6tckQOJk0WSlYyyzTvcwP
 vNQLVOaaPuhBFN8AFOk8gvHK7dsq3xm986EQLPdo32+04ZwQ5EB1jV8
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

The PMIV0104 PMIC is used in conjuction with SM7635. Add binding docs,
GPIO support and the devicetree description for it.

Depends on the eUSB2 repeater patchset, as specified by the b4 deps.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (4):
      dt-bindings: mfd: qcom,spmi-pmic: Document PMIV0104
      dt-bindings: pinctrl: qcom,pmic-gpio: Add PMIV0104 support
      pinctrl: qcom: spmi: Add PMIV0104
      arm64: dts: qcom: Add PMIV0104 PMIC

 .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |  1 +
 .../bindings/pinctrl/qcom,pmic-gpio.yaml           |  2 +
 arch/arm64/boot/dts/qcom/pmiv0104.dtsi             | 63 ++++++++++++++++++++++
 drivers/pinctrl/qcom/pinctrl-spmi-gpio.c           |  1 +
 4 files changed, 67 insertions(+)
---
base-commit: d9946fe286439c2aeaa7953b8c316efe5b83d515
change-id: 20250620-sm7635-pmiv0104-34a679937d9d
prerequisite-change-id: 20250620-sm7635-eusb-repeater-0d78f557290f:v1
prerequisite-patch-id: 5c504d171a4d1acd9ec376e01e0dd0fddbad92b8
prerequisite-patch-id: 0c97dcf5472fbed8ef4cffbd482f3169fe1e972d
prerequisite-patch-id: a618abb349c3de5b49f79b4b0f86d9ab502ad500
prerequisite-patch-id: 09f91ff3a25c16a0375bdfec80604a64eab0b4fb
prerequisite-patch-id: 8fca8b09d70409c5c78f9f1b77d0a4c75bce38cf
prerequisite-patch-id: f5c2c24d2baefcd7ff91718529ab2f2c264ab99f

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


