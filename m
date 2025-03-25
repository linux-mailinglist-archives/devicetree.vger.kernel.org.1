Return-Path: <devicetree+bounces-160598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BD37A7043C
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 15:50:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F8373A7C75
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 14:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2164025A359;
	Tue, 25 Mar 2025 14:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xNLQ4yuT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFE725B68C
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 14:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742914175; cv=none; b=PN9yD+iwSM8VioIJi5tqxMTi0s1jitx7Zw8UikqbfxFcSc2mwTe6+0iFhY/bpBGNHMOXmBD9JdJQlj1hWNb8vCmQXTYxli/eFDh3utwpYv1WVHNyxNkmlAyIpwykm8J72E1Dpieajj2JNlsB9L2nZLZbiiked6sbX3PVBuVQNT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742914175; c=relaxed/simple;
	bh=M2JUNSlGZNKszg+sXxKav9A7TU+mFF4rXGQf57VMlcM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=UTHSe+9KyCf9/26U7y6qHLr7yRQS+fLU0bVE6g3oeelHTB/+ysJA1p54csZYKp37qB2jUp4HNOkZPNPQxgkJ3uZpncSfFVpi5pKNt8wq+TOk0BgxzLdi2fzEQChHiSAB2mG2cCYGyH8vAdUqCl+FAkG4Mg+31syx/l2CVcIMC58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xNLQ4yuT; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-390f5f48eafso3189561f8f.0
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 07:49:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742914171; x=1743518971; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=apY04UJmIzUwaHQeU0TYcXSziQP74VWklTBx+F3Tz7k=;
        b=xNLQ4yuTuxR8i/EFAdGC/M2OxuxsWImpbg5rcvKqST0SQI0gPnvxRahQt7ayNKnUM5
         ewsv6XQL82iHWUFtOpuIOJPTdl8ltWunIcBomBqN8v3CmUn9CGx3UFL1pydrSqUZmdK+
         FodkeWLRvNPtROb/ZIHHEx2jLyF/WN7ORfgylgW8rorsg2nz9NQFPNcwVdfNj3SM1SG5
         ywXuzqwrGDF8I+NhKuHg/D6nY2VVBMk9EwKd+RobCWQMlnsexV2Ay6ExYvtjKzjEn/x2
         ccaCIzN91AQSGAP741eqd9a43Hr54IkfMh878RSJ1/5zT4KEZSqB1NuoGJu4kR+7zkrr
         6zFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742914171; x=1743518971;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=apY04UJmIzUwaHQeU0TYcXSziQP74VWklTBx+F3Tz7k=;
        b=f1QfgOvhsfcIhaZysp+SUO/1uAUJHBpphB4i1LC73Psct+tXbyIWEosYLYkC9kBzwV
         B4tIV88vyRAYBaKpesXgyQSHGxRSiZzZoCWFt6auM6tMPJrgilBGv+iddbPcFz7KyTMb
         60DWHOeF+OQRWEIJsI540zA5aeCbnQ8E/+HshP+d5xUjdDXY2uzh8EuKPv9Lk1yF+JCM
         943zKtNsrQY0b8UUDuP3pX3kw19zG8+kcoIZyVpiKnye/8+h4HGMU46Ig8Fb2x5giUCk
         R53Shz0KU2ImEnT3WWWH/cEgqjdvuwHDqrskk31UzCh1O8pUx4wHiMRoZ9wRnHSRk/Vz
         7ZTw==
X-Forwarded-Encrypted: i=1; AJvYcCUUCJPGLv3uZFUlxw0qqaJyr2W/5XOWduL2DIA0RxM9HWWTC581sdLm2PZxk4J8FNPWeh8+4djwqdO2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzw5YGoluf/z3mxmtPFEmKIh1xH8F3cdnI67GkRWdaby1V/GeOk
	wPw70dqp+vi9qv5Ti8Z/94z4eeR14CXfVUybln5DpMiN1keB8HD30t3hRVIOh+8=
X-Gm-Gg: ASbGncsDEO6zZ9rRpVTBSNC024w8656wxTWFKrsZ/Jsy5fyEhgkO84AOlmOY3zptIFV
	IjKMRLcvhINFwTS9WdHLJ5b+oW/nA4nTV6o6neyZWM3ClnsOggY6xUvfiJ6YU78IGx0/ZXTq38f
	DC6aX34xIujt2sP+c/JYLP0Cmbbr4Jo6Ok1xmVymDCYNKyFgZuSaTfd1Np95ZFgcPrKoedI1BIq
	1iExjHCWA2/uwctO6mnOY4Jn7bEOjdvFKO0WJ1z+MqlkvexgpQCwc8CdJk82dswM0SMC1bX9Ipf
	SDnrQow+K+ezXFZkHauxrYQ9tC/Rb1wwbXmGbLtF/IEk32UXPvG/oA0gvzrgAUtFkXa8B/fImOo
	/HcmGcLmsEJuLHnmAEs5E
X-Google-Smtp-Source: AGHT+IH9rm5v4ZHEV5KW/bsEjstp3xgcmbEYr/WJQS57tNiYdX3wCME+4ueS35KPYkkr+hEgxeVEAA==
X-Received: by 2002:a05:6000:2c3:b0:391:bed:ec9e with SMTP id ffacd0b85a97d-3997f892a55mr13900198f8f.0.1742914171379;
        Tue, 25 Mar 2025 07:49:31 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3997f9a3b4bsm13796071f8f.25.2025.03.25.07.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 07:49:31 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v2 0/2] Import IPU6 ov02e10 sensor driver and enable OF
 usage of it
Date: Tue, 25 Mar 2025 14:49:27 +0000
Message-Id: <20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-0-4d933ac8cff6@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHfC4mcC/53NSw6CMBSF4a2Qjr2mDx7FkfswDCi9wk2kNW3TY
 Ah7t7IEh/8ZnG9nEQNhZLdqZwEzRfKuhLxUbFpGNyOQLc0klw1XogNTw4qWRpj8SilhiOBwSyA
 b4AqEAp+5RMFBKmy14p1tdM/K3Tvgk7aTegylF4rJh88pZ/Fb/0CyAA7G9rJuVW207u8vcmPwV
 x9mNhzH8QVVIhLd4QAAAA==
X-Change-ID: 20250317-b4-media-comitters-next-25-03-13-ov02e10-23e68307d589
To: Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bryan O'Donoghue <bod@kernel.org>, 
 Hans de Goede <hansg@kernel.org>
Cc: Jingjing Xiong <jingjing.xiong@intel.com>, Hao Yao <hao.yao@intel.com>, 
 Jim Lai <jim.lai@intel.com>, You-Sheng Yang <vicamo.yang@canonical.com>, 
 Alan Stern <stern@rowland.harvard.edu>, Hans de Goede <hdegoede@redhat.com>, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.14.2

v2:
- Squashes previous progressive series into one patch
- Adds yaml description - bod
- Sets GPIOD_OUT_HIGH on reset line - Hans
- Optionally sets the reset line on power_off only if gpio valid mirroring
  power-on - bod
- Adds Hans, Alan and myself as MODULE_AUTHOR - bod
- Adds a MAINTAINERS entry

This patch has been tested with the x1e8100 Dell Inspiron 14 plus 7441 and
I believe also by Alan Stern on an IPU6 system.

Link working Dell tree:  https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/x1e80100-6.14-rc6-dell-xps-inspirion14-lenovo-slim7x-t14s-camss-sound-wip?ref_type=heads
Link to v1: https://lore.kernel.org/r/20250317-b4-media-comitters-next-25-03-13-ov02e10-v1-0-bd924634b889@linaro.org

v1:

Similar to Hans' progressive series on ov02c10 I've picked up via Hans the
IPU6 driver with some additional fixes from Alan Stern.

https://lore.kernel.org/linux-media/20250313184314.91410-1-hdegoede@redhat.com

I've made a number of initial changes to this driver sufficient to get it
working on the Dell Inspiron 14 Plus 7441 with the Qualcomm X Elite
x1e80100 SoC and its CAMSS stack.

link: https://git.codelinaro.org/bryan.odonoghue/kernel/-/tree/x1e80100-6.14-rc6-inspirion14-slim7x-camss?ref_type=heads

This is a first pass which adds in the minimum to get the sensor going on
the Qualcomm platform. What would be nice would be someone on the IPU6 side
giving it a test.

A big TBD here is the YAML for this file but, I'd like to make sure nothing
has broken for IPU6/IPU7 with the modifications before diving into
Documentation.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (1):
      media: dt-bindings: Add OmniVision OV02E10

Jingjing Xiong (1):
      media: i2c: ov02e10: add OV02E10 image sensor driver

 .../bindings/media/i2c/ovti,ov02e10.yaml           | 113 +++
 MAINTAINERS                                        |   9 +
 drivers/media/i2c/Kconfig                          |  10 +
 drivers/media/i2c/Makefile                         |   1 +
 drivers/media/i2c/ov02e10.c                        | 982 +++++++++++++++++++++
 5 files changed, 1115 insertions(+)
---
base-commit: f2151613e040973c868d28c8b00885dfab69eb75
change-id: 20250317-b4-media-comitters-next-25-03-13-ov02e10-23e68307d589

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


