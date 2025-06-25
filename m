Return-Path: <devicetree+bounces-189381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E05F6AE7BBC
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:13:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7E1563B212C
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:12:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83B912951BA;
	Wed, 25 Jun 2025 09:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="jRV6u6PH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6F0C28750B
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842734; cv=none; b=IFrZ70X4nTR8ivh04rQwfTpjx0AT+KbWn1fv0eyk3fwZ0Sv6ZxmTp8a1uSpmCil3BL6qqcvy7i/gkbKwAsnsyF8STG/6zDdbZN0Ept0Zo8uFt2IKcwoUckzox5rjP/AIsVQZVF9EgWl5A5P4iuoubBJRgkD7aQm3PNF19OraPaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842734; c=relaxed/simple;
	bh=3rLRX3HD+/2dBnPJ5VcY6hbzIV3hWOdMQ6LQve48/v0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nPOTUAP+Yh99Jbo7CnsonW+4we3wjxkV9BdDq0gkrhnF91WuPntsRQ3TrLA37wTjjzqeq1kaI4eYiiElgyQn1GmOdMOLloGSebr3VqLjrWmWUS56xvIdEVFWZ6i4R2RSpUELjQSuIDSiXAxi6XfXBiOAGhOzJuHn+7XEQTp0MqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=jRV6u6PH; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ad1b94382b8so267777366b.0
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:12:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842731; x=1751447531; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OU6dPNRfW5ncO3ZE9HOdNSZ+keWWv+mGS1rjrgmjGXI=;
        b=jRV6u6PHugZ3CpY/ErUm7pXEI5u44R3MxNoWSRiKsEdwVles5tnoSPaqUG7U9i3tvW
         1fBSxuBpVLknNHnOTK0PbQYD6udBbHpHGXdr5mTJ2bXhQ8RIXB85z+9dz6BhoO35OfFy
         RyndGUETJZkeqLIW5aFXvOwE98E7ADar2BVOkM4js/UrjgLVyApDKzLl8JwTCcvulzz3
         6pONGOgOypkFA2fIv+iLJTMcqxzkpBF7zhtLic0OdQbmXfWDI9Ee/sbKmDC28VIAuR4l
         UbtQvsIz8vylYXGwrxzDESs05nOw1G4P+Ap+KeZzcS3iO8R0zJY9OO6+rbCV3vziliKR
         4+tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842731; x=1751447531;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OU6dPNRfW5ncO3ZE9HOdNSZ+keWWv+mGS1rjrgmjGXI=;
        b=ODMNy/mMaS0aovbB/HrPBYPwx++RsNuWanxzHRbD1l6sZ35evoOObDrHHT8DtS0xyV
         kt0zLa4/KcvQL5aSD7d4YWJ0tzxORQmL26/jiS86MBO/yHgssrZjmwc9Bnlbc/6mLDBT
         uECRpgsw03nOA8opfM/WJwZeffIeJKMVWG9KJLw+BGHQeeuTo4J9iWxQ6sSYUpYy6UU8
         cg05eWp83+XhiHzolJb+AqHpztZ//ZGmfyNHbeSE/gye5zaVZ4L+ls9eFz7dMCnJ/zPi
         gRQh7ddmnhiZmFUtEek5J6vS0Gq+JHsQVG2ToMfw12mRNCqmjQjBNQTFiOEUiimtoevm
         dEmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVI0hyzry0HmU79Vi3tpMcr+2tG/T67FaB8XBrfgd2L82OL3gDZbJpAgZBH2SkUMwJsWoP0wcS4by+1@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2bj15IAzyeKLWugk+70BUzLW3Gc0Q8yiYLbXDZxZtkhEQwfJo
	fw7/+T3yINPVWs/dw+qZ5hsrB/Ghvd0hOs2P1q5ONrfZ+STJyMRRfXuzRVLurck88Y8=
X-Gm-Gg: ASbGncsYaR+ACO908nkxJV0CGQ6/iKDZpZ6eSdNE7qb/WF/8pIQDa/nPxyiqJJAvgGR
	P5cv1QEHE50aVvNATSmPQHrhsqq1PJfgGRcL626bKU9QrXKiXtt8lLH4gLH5YlTygnMpy0/S5Mh
	5v+LqG7PMJSNhIupcmhzYXIOlpNHDBoTq7oP7JFqO1Pz6JxMjGQMJDW0sp0freFE2BTxooA24MC
	8USjTzpW9cTm4nyNv9v1h6ydgYhaET0hjclUa4wSF2sLhoahS5QheW4+GttmJztsqYdeLt35yRb
	SxgHw5BT5W+kkfeamb5p4A+dvghI3+ed0N9B+RYLRayzZMH75743fW7YNLO0dcSQuuWr0nnyl+W
	7MwXKf31R50v4jcDRP069g+1zGTjtqC92
X-Google-Smtp-Source: AGHT+IFEzb5lbk3K1+lIUPljZOLxKwp2Mr0rANsWiHgyk6VUfW/suAoRrgQe45mR9hXiAYd1pDszpg==
X-Received: by 2002:a17:906:7950:b0:ad5:2d77:7ca7 with SMTP id a640c23a62f3a-ae0be9fbf22mr232942066b.43.1750842730958;
        Wed, 25 Jun 2025 02:12:10 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae0cab0ed04sm11076666b.135.2025.06.25.02.12.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:12:10 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH 0/2] Add pinctrl driver for SM7635
Date: Wed, 25 Jun 2025 11:12:00 +0200
Message-Id: <20250625-sm7635-pinctrl-v1-0-ebfa9e886594@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGC9W2gC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDMyMD3eJcczNjU92CzLzkkqIcXcu0VOMUCzNLYxOzJCWgpoKi1LTMCrC
 B0bG1tQA6kYpdYAAAAA==
X-Change-ID: 20250620-sm7635-pinctrl-9fe3d869346b
To: Bjorn Andersson <andersson@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842730; l=737;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=3rLRX3HD+/2dBnPJ5VcY6hbzIV3hWOdMQ6LQve48/v0=;
 b=KzTL/Z/wD17NRYxyIrHXpQRPy8zNXoOYDCUaeDvp5VN57JpWxhNksgX6aQZmwOrPoKPeY2t3l
 LqJm7ikR6sRAWuBNm0KJLJUi0Bz0UxmeH6pF6k24fbzK17kWZufq8Pe
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document and add the pinctrl driver for the SM7635 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Luca Weiss (2):
      dt-bindings: pinctrl: document the SM7635 Top Level Mode Multiplexer
      pinctrl: qcom: Add SM7635 pinctrl driver

 .../bindings/pinctrl/qcom,sm7635-tlmm.yaml         |  133 ++
 drivers/pinctrl/qcom/Kconfig.msm                   |    8 +
 drivers/pinctrl/qcom/Makefile                      |    1 +
 drivers/pinctrl/qcom/pinctrl-sm7635.c              | 1340 ++++++++++++++++++++
 4 files changed, 1482 insertions(+)
---
base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
change-id: 20250620-sm7635-pinctrl-9fe3d869346b

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


