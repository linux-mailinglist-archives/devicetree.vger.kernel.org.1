Return-Path: <devicetree+bounces-38546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AF66F8496F8
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 10:51:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 39BAD1F23192
	for <lists+devicetree@lfdr.de>; Mon,  5 Feb 2024 09:51:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05BA712E45;
	Mon,  5 Feb 2024 09:51:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="Tl7VOTlo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5033B12E46
	for <devicetree@vger.kernel.org>; Mon,  5 Feb 2024 09:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707126705; cv=none; b=HvrDC1IwOJ8IRwCR8JdWYfU8Mu8COxqNsNUkNW5ZD2ik2ZWU0aPwMyR7r0OomeXZ5sRwahpLzctsIv4nHGkIXLxD6ST5Se1QKF2guRQ66bDzSpIKVY6eWu7qctu3Ac5ApEP3niyt6g9Y/jUHzdDtIqzJSZqQNSXn7o007vny1sA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707126705; c=relaxed/simple;
	bh=lhqnaM4mv85+e6ISI7d0OhPBJrI3dKxaikVHcrxkSBk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=MJmCz3ghQGlhuI05LkwDz5p/TGesKRdqN+rYuAdyfkaw0pREU9hrqJQtD+DFI+xArW7ag0mq4BZRNj89Ep9inm6NsxkOOdXnvVvSp3Dcy/+2v5Nr5i2hWkDyUA4ZuuE29iTHDSFbOS7Iq+WbruHWHRLWytNFq2YBDrsD6BLPo4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=Tl7VOTlo; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-40fb94d42e4so33636295e9.2
        for <devicetree@vger.kernel.org>; Mon, 05 Feb 2024 01:51:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1707126701; x=1707731501; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7MqLMnIRBYQd7R/nZwH9ZxqSodjOOLBq1/JAXOO+J5Y=;
        b=Tl7VOTloh3JhtrFEBJETDI6W07KyA0WwbgNDjKbmKrSs8S3L2sILx07tCjDqHlhdHn
         e0685Sw6Aeh5YyIbAQsXeolQfgz61ubyAiTMXTi2KzE7ttdjJy4fNmORSBJA9RHgGUDC
         LzCChhOJxba/+zBIDHcZYOZdfXfCXrIAM2qaB43XzkUoYPqEtYP+tDek5cegUSqSWPPL
         n0Veq7TPhDTmXxWHoAf5hkb8Knr9LIYlPhwqZAqbkK01CkyIGZcYlh0I2RMHvSAV31fW
         dTHX+3nvxgOPVcXvOvjBAMeQmaV8bvSKBqgtZZ4g8kCBq9vHF4TEv2KqmH6mdmCjn2uN
         Hrcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707126701; x=1707731501;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MqLMnIRBYQd7R/nZwH9ZxqSodjOOLBq1/JAXOO+J5Y=;
        b=YgehQh7JISUYEVNZBMHCon/nN/b49+jbcToSixeEpw3VAW/uv526fmsZDE5s93JGDn
         QDTNE+mqhwVFQk2gpsOS55gfDzHoX5G0iWAGHcXvPuxSEgIgWQ2oeYt5PsXtrNI6uZtB
         X0q766JMXC1wqj8HI63xswRqyrMdWCOmuzk81YPwI0Otku29o3bv88AtS5ki0l+/q1Uh
         Tw1m670bVu14abQUPDIblE2bw0sH3xiorGOZpAP5bmkWEeMiKweebTh9A35q+T7w6mMt
         9YMv+NLBo8uUcacrUyPAZce6tIAVe9fe+SOdGEoPJfopKGMl5ChUpV+LYt6meMbPRX28
         jiLw==
X-Gm-Message-State: AOJu0YzXMnA+m9TX3ko1O7GVXr+0MjhGrIemBAYIX4H3qdjg6FAEROBL
	+CeoA2zLHSPiqZfuKDwQRHpZ5J8J4I3Wgt9ToNjcGRe00PaFlmGU5U6GpiSUBZI=
X-Google-Smtp-Source: AGHT+IHVD0GAMkuebfAaiFcSXDgdm9NOHodL49BEWfhNzmxnZGq4r1vny0RMFxJaL2ikqWklU2NBzQ==
X-Received: by 2002:a05:600c:468c:b0:40f:dc4e:69e8 with SMTP id p12-20020a05600c468c00b0040fdc4e69e8mr1108853wmo.27.1707126701483;
        Mon, 05 Feb 2024 01:51:41 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCVFzdq9qdEjY7bS1DpVfFS5j4lS08duBC0ToDwYGWb0m8l6H1OAxmT3bU8o+GH2FJl/IHjcdiRzQf9Kw+PEB4N0+MVs6gDZ1tlDICAf36vkDoZb7taKNRAxmYb1Hr272GwwQLxTEpR/rKCpx0qKDRhRkHVbOOCpnBPFq5k6nZf39gPp4EVWWpWmjlvC0qj3tq69U3wjcG2Camsmhg+juSOOpfbIByfgJRHXypHOpo4qCd/QiXnIReAaEqfxXsPII+lSS0vx0ZQwhxastha4n6c0Alj0lQKK8rg60hnZh+rQgmb7MCdPlYTRAYmuo4/8DQJQ3Ptms2PY6OuszDcH8YUlcnAx2MyVjyQp9Vi9xGiTPlNwuEuQTZhP6LQyLdRIi8V+hgQEzBJl0ZJde52DCGxXtreU+IpnFG6Enk17cQfNdWG1oRTAFcJJ4BbGzMDAVmoGzzFIylHEP/8YQT5/uPcohXztejIdZ2TW8drvuSuvabWbuy7bh4hP1PoZbVAfZTLU3Z8wwD5kIj5jWSBZFHqmrgAH
Received: from otso.luca.vpn.lucaweiss.eu ([2a02:a03f:6aef:6800:2f37:ce90:b91c:e85a])
        by smtp.gmail.com with ESMTPSA id n12-20020a5d400c000000b0033b3c2e73e2sm2278283wrp.113.2024.02.05.01.51.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Feb 2024 01:51:41 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/3] Add PPG support for PMI632 LPG dtsi
Date: Mon, 05 Feb 2024 10:51:37 +0100
Message-Id: <20240205-pmi632-ppg-v1-0-e236c95a2099@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAKmvwGUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDQ0Nz3YLcTDNjI92CgnTdNMPUtCQTY0MLcyMjJaCGgqLUtMwKsGHRsbW
 1AB+PYgNcAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.4

Hook up the PBS & SDAM to the PMI632 LPG so that we can use the
hw_pattern for the LEDs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (3):
      dt-bindings: mfd: qcom,spmi-pmic: Add pbs to SPMI device types
      arm64: dts: qcom: pmi632: Add PBS client and use in LPG node
      arm64: defconfig: Enable QCOM PBS

 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 arch/arm64/boot/dts/qcom/pmi632.dtsi                      | 9 +++++++++
 arch/arm64/configs/defconfig                              | 1 +
 3 files changed, 14 insertions(+)
---
base-commit: 1f790ac9c84028d89ef4dbb28ecc5771fc352e25
change-id: 20240117-pmi632-ppg-f1efb4318722

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


