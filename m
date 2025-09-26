Return-Path: <devicetree+bounces-221980-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A27BA4C06
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 19:13:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 278D07B1858
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 17:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D9EF30C349;
	Fri, 26 Sep 2025 17:13:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="b6dIlMVE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A890307ACC
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 17:13:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758906816; cv=none; b=cq13Fnk0CHYlRuyrdkAyaAa9Jqy4nKCXTyrx7Prwq0bsuIzyaXqJBevXAmbTSJ7IvixxkXxA8XGmglUHYi/Tm1UeQ+bMuGMJtdQzUsCXz8xE8nsuw5yGent6/kUw24OGEKhaofFTkqgMLvsLSLH5aD8xhUFJqGkauA54Nbqyfyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758906816; c=relaxed/simple;
	bh=s+pl4gujoseXPVxVni27bETFa6Iqk8tJW0Y/s7k9tQ4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=CkhdA4GbDnjkC9KuWTwYNdoqB21FKacinBxDt5Twr1LGiP5CgPYm/Xgpr9mWiBQCd/C4ChIdNO9oGAwAWK0mHUrwIrN6RXr03zmFnpBrCh3KLXmXlg+eBqPNLEaDdIWzcZWkhAH1iedgYN+siWwrbCUdlYR4P21gwduajqiANmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=b6dIlMVE; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-61a8c134533so4425339a12.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 10:13:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758906812; x=1759511612; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JBI+/i7/BnHi1KkFk8BeDLw8hv22LKPJDjrzHKemcsc=;
        b=b6dIlMVE3knked3++Bq7Ctm58/G6hUgycRk8XIWRz+o4VhQ7Hd9iIausbzWFwCZDRR
         Uhy3MDFA63MH4ajU1lJXK/q6vFj6cCiEJT7T4xeCzBZ2kDQZF4mAo/EhsBoyz8JMwe9H
         hnl0kCFn/Kk//vM8o8fCz6YwQHPAwGhvWzA+EG/gA9kf+WjTNrsCt8RD7gkF2WRRbNiu
         kyl9EB74NszRdzP8iB+JoLGd/Tn09XLW7/p1GOioZob6XaKSUL5scJAlzra9IJ3SSA97
         ccgr/BomeO1Wez1fwYBnXVGfC4o5r5HNEqNaEynvaizX2znvqYFyzZDP3eSdm6gaQ3LS
         ohKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758906812; x=1759511612;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JBI+/i7/BnHi1KkFk8BeDLw8hv22LKPJDjrzHKemcsc=;
        b=Sitge+wJ78YuxRlrgZj27Al4otGw/IdgW+Pd1SYrOwOzRmCmMHzMZqNtHArRZVclqh
         1b+kRWNoMubfNa4RMxmomc20sJYlmlm32Qq44Eys1gLCYWSdyPd+pyb1U2035VyEgiSH
         mNnqY4jDO2a/jiOxgXwjW6+4bGzQGFtHir9P7HNr1c0i+vcDOvw9ST+H2YfEsmb+ZxLc
         OVfM8hTs6/rAP/yHgbJKgvEqqtaPQZhfxk+nsooxDNbaGJS20+ywB26OFrFdhG6UY1NE
         jbflX2N+VjWIiyXQBPoTlX93wWWVDQXS6kMmxPO1ECWYmEC7vVXCiIeapAXqkG9rDs5O
         AZjg==
X-Forwarded-Encrypted: i=1; AJvYcCW0pRYgiq643Bb2PqNz298JrlcKOpU9Gni1xOr42/PUyy9OSRWsR1QYgv+xjoOYPgkUXAAtzr80M9cd@vger.kernel.org
X-Gm-Message-State: AOJu0YyltUhu9VcWJiI+L4CWpDn1AQrlqiSUaKfpQY9tInoXoF6FJXpm
	p4wHnPKMlPW9er8BPAops2W5TCB2ih/d7FOqh9MeFqxZw+8VORnL50/x
X-Gm-Gg: ASbGncsaNWkDHogyvQv2SWHc3DbWZfIr/zdMDRUleNj/GexsP7NpDwARzWJCHEpJMLM
	4xA5kXhh8AyziKB7g632RQpdpaphlud7stkNYbmX6vCAdBTygZBiicGaEqf6TBMDncBHRfVTHML
	cx+7ubZ91vSiqzFYcxcxTc7HAxO09Opt+iEzHEkt1IYOS8mQTykgn7dg+oby7iQcB3M36nlpNdz
	uHSGFQncNhmpoUYDrqZl4Wjqdkedg5A52MNrN0jKC/zwJsZ6jdvIYJsKETEJKlSkDfr3zldjpC9
	mkM74ndfSLqMiXqLiQ+RAC+fpb7xINmWY4rtohMpJYcEUe6T3OoPGSxyfEDE6OsmI/Lnf4i9yVd
	HHdBg3cIGhXGcthyrxKmt
X-Google-Smtp-Source: AGHT+IFAZ/A3BE0kKx1YMn7O0AfTdUFIzjo+czI917qiTSqL4ORdmY2WqAZcOJvufTKtrAzDtYiCgA==
X-Received: by 2002:a17:907:d26:b0:b29:9eac:bbe7 with SMTP id a640c23a62f3a-b34bd440125mr873962166b.39.1758906812242;
        Fri, 26 Sep 2025 10:13:32 -0700 (PDT)
Received: from [127.0.1.1] ([46.53.240.27])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-b353fa65be9sm397211166b.48.2025.09.26.10.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 10:13:31 -0700 (PDT)
From: Dzmitry Sankouski <dsankouski@gmail.com>
Subject: [PATCH v5 0/3] starqltechn: fix max77705 device irqs
Date: Fri, 26 Sep 2025 20:13:25 +0300
Message-Id: <20250926-starqltechn-correct_max77705_nodes-v5-0-c6ab35165534@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALXJ1mgC/43OTW7CMBCG4asgr+vKvzHuqveoEDKeMbFE4mKbi
 Arl7jVUFRGrLL9ZPO/cSMEcsZCPzY1knGKJaWxDv22I7914RBqhbSKY0GwrGS3V5fOpou9H6lP
 O6Ot+cFdjDNP7MQEWynknwAuwAQ1p0HfGEK+PyNfub2c8X1qrPo99LDXln8cjE79f/5t8TXPil
 FEdhAsWuAQHn8fBxdO7TwO585N4kpbZVaRoJCpuFEijmFGvpFyQXKwiZSOVRxs6q9CDfSXVghR
 6FakaaeXBsO4A4PR2Sc7z/AsS9qYe4gEAAA==
To: Chanwoo Choi <cw00.choi@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dzmitry Sankouski <dsankouski@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758906810; l=1722;
 i=dsankouski@gmail.com; s=20240619; h=from:subject:message-id;
 bh=s+pl4gujoseXPVxVni27bETFa6Iqk8tJW0Y/s7k9tQ4=;
 b=XrUGkYRXfgVc0gMWtCZgXEezMnGkck+88qI7eucP74i9fuPTJU5F3321iV5yqHAGOYM4CWVff
 NWAiHKDLPybDLUREPNN4H4GvNrlTflaopKO+Uguy0guR4CMjjw57SMN
X-Developer-Key: i=dsankouski@gmail.com; a=ed25519;
 pk=YJcXFcN1EWrzBYuiE2yi5Mn6WLn6L1H71J+f7X8fMag=

For max77705 charger and fuelgauge subdevice, use max77705 interrupt
controller.

Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
---
Changes in v5:
- group interrupt properties together, including #interrupt-cells
- update trailers
- Link to v4: https://lore.kernel.org/r/20250925-starqltechn-correct_max77705_nodes-v4-0-93b706bdda58@gmail.com

Changes in v4:
- update trailers
- fix commit message
- reorder patches - Fixes should go first
- rebase on latest linux-next
- Link to v3: https://lore.kernel.org/r/20250912-starqltechn-correct_max77705_nodes-v3-0-4ce9f694ecd9@gmail.com

Changes in v3:
- fix commit messages to be more clear
- Link to v2: https://lore.kernel.org/r/20250909-starqltechn-correct_max77705_nodes-v2-0-e4174d374074@gmail.com

Changes in v2:
- run dt_binding_check, dtbs_check
- make interrupt-cells 1
- add patch to delete unused address-cells and size-cells
- add binding patch for interrupt-cells
- Link to v1: https://lore.kernel.org/r/20250831-starqltechn-correct_max77705_nodes-v1-0-5f2af9d13dad@gmail.com

---
Dzmitry Sankouski (3):
      arm64: dts: qcom: sdm845-starqltechn: remove (address|size)-cells
      arch: arm64: dts: qcom: sdm845-starqltechn: fix max77705 interrupts
      dt-bindings: max77705: add interrupt-controller property

 Documentation/devicetree/bindings/mfd/maxim,max77705.yaml | 14 ++++++++++++++
 arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts   | 14 +++++++-------
 2 files changed, 21 insertions(+), 7 deletions(-)
---
base-commit: 8e2755d7779a95dd61d8997ebce33ff8b1efd3fb
change-id: 20250830-starqltechn-correct_max77705_nodes-1162dc2d9fe7

Best regards,
-- 
Dzmitry Sankouski <dsankouski@gmail.com>


