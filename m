Return-Path: <devicetree+bounces-154776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E6E1AA5487D
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 11:56:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 13B2D170CF6
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 10:56:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86575204F70;
	Thu,  6 Mar 2025 10:56:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D3nZXF5/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA6D202984
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 10:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741258586; cv=none; b=snzxX0TuHhvdSz4Ha0hTwJ1iTd+Mwxy5wVuEbtoZA1HFdtuiWSHQ8SlkNo31iyIeU//ajH0h0Im0Q3MyXrhgcMvp2Uuam7NRtR3yMbSXotp4dK2GYdUwJn2FbArgc4/XMEFEY6pJuth78/Utc+RUGrDLItpaESaSBmNESLU5bFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741258586; c=relaxed/simple;
	bh=wdLF9WAxR22XqcYA7gK8+yGhNvwlObpcwbXvFtZiEFs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FYOzePoROvuU9bZ4csYJFyHA+gCqrqacjhHdxdd4ttrKis0mYhUG6HccaGugqRg6L7FFlLsftOGCy74f+ozVc0QHbOE8XddTo3QpFO+OUzAsYmiXtlEJCuFj7+zestexgIFCBOLCp/3wslkThz83qEZw5wzlirfKSS2iAOlgJlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D3nZXF5/; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-43bcbdf79cdso2963265e9.2
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 02:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741258583; x=1741863383; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ntfm4QuEvNugJ4xYbOkC0QKXHv8rdJmW1XkWNgsvim8=;
        b=D3nZXF5/EgmrpyRYvBHvXgqQwreMtdW7zYzSUkjRcUyZhSQDGq0a6hTe6RCQ7Vix7j
         P2LDfsYrOR2prJdlpe7zZMpjr88e2KIBGZMcjg8PYRksQlNYeRw61n4ns410TZP09T/N
         X3a6Mv0yB6/0Ia5JmZeUopkD/Qi9yUucM3iWluMBdgV9q6drpTQMSyqIivK9X0qBN9GI
         wvySesvU115luFCgGGSQbJU+w2OX9U1pE694urQrIHmSdHvGNOAdMoQzg5XzASBU+CnU
         YSq4jvSMfuhp4xOUjdBqRKLZAc1ESr90iRfUj7WJq9yxRx+s32+CQo/vz44R2X+kaIhf
         vdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741258583; x=1741863383;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ntfm4QuEvNugJ4xYbOkC0QKXHv8rdJmW1XkWNgsvim8=;
        b=IRjC1eKqMsuWacWWxvp1mS1k/yQ4MlPO7Bb/+ZqczGNzGbSGpQBVwhopCAq76hYQdY
         9BFDDTFPZ8KcWje2XuoOguHT7kVflt/Y4sBsKxIvDBJWscTPAuJMSDuh0PQS3f53nypc
         f1jg8CjpgkJQ0M5gkinLUq5UTj+PZa2z4EMjanRVvtiUhPADkmMFyrU5SbpRz7F0hUo6
         Upt4VhzGvF2Q0N54afqX34h6sDhqu4fV4POhtTJmEjyq3ARI+OC44JhVAY0LhJuylrFW
         A2GRlENOjv1yitcQCj7UJlh+zKz0qXWBVaBXMWI5McMpIbIZ2HrSAdRKOEA/e3G8HS9D
         pKFw==
X-Forwarded-Encrypted: i=1; AJvYcCW4oWhryhe3OETN2GCEx7uf1heeJIf4FCGeidHO/Vi7401ln4CSN8NaF0iJAjkORBMRxvKS7DkJCypX@vger.kernel.org
X-Gm-Message-State: AOJu0YxHCqk9xRCb8u//PqoXgi/oAVJ45UGS0PibpzKmPTBdtuuB5R2W
	Kl0JtdXWiif44WPpFj3PRsxypLb1SQvvdDum8s1ZXAj8248AvdT85EfnqZNN7qc=
X-Gm-Gg: ASbGnctuqJGVzwuxKVlqpUQ4iAKH3FFDO8JvqET1cHrz3JxQDRIEcJsIXfPbZPXQpkZ
	jZDp+8fdRQZF3HdALgqfrqnvi0HXgRqzargQF3FVLzai5LIP6n/oUevVIO4lI5gV8irY+KiSnHG
	yfCjHCESnzClQt0eaki2nSmz5rL+TL+Yl9MnDaGnxZWaCCM3IaU3JRevTWQHuAqcyxcRpXSmsjZ
	nez7/96MEocLySzxgxZSTfJmiNMKPCkpXHYkc3lUQxBnhtdxo7bZ6qSvKq80Rulk9lyQlRk3fBy
	Hk7MMq/0FrtvSwY9plYs2cAcqN2lbtly4WLZGwJaMyxizAWQd34UGsimmEIHuximNA==
X-Google-Smtp-Source: AGHT+IGfTbr6JhO0xYsYYnKUYMZiygPSfbhn9Cgj55ShmF4I2gr2O9JfOHtuext0rfjHkqMFS1qAtw==
X-Received: by 2002:a05:600c:2d16:b0:43b:cc3c:60bc with SMTP id 5b1f17b1804b1-43bd2989f68mr54496775e9.15.1741258582923;
        Thu, 06 Mar 2025 02:56:22 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43bdd831719sm17406675e9.0.2025.03.06.02.56.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Mar 2025 02:56:22 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/2] input: convert dlg,da7280.txt to dt-schema & update
 MAINTAINERS
Date: Thu, 06 Mar 2025 11:56:18 +0100
Message-Id: <20250306-topic-misc-da7280-convert-v4-0-2972c4e81cb5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFJ/yWcC/43NQQrCMBCF4atI1o5k0rRNXXkPcRHTRAe0KUkJS
 undTbuqCMXl/2C+GVm0gWxkx93Igk0UyXc55H7HzF13NwvU5maCC4mCSxh8TwaeFA20uhaKg/F
 dsmEAwa3Tui2VMprl+z5YR6/FPl9y3ykOPryXVwnn9R81ISBwp5qmxqs1ujk9qNPBH3y4sZlNY
 k1VW5TIFJqiLBpXlxWXP1SxohC3qAI4yNapWhuulMIvapqmD9zoqKRZAQAA
X-Change-ID: 20241204-topic-misc-da7280-convert-20efaad588ca
To: Support Opensource <support.opensource@diasemi.com>, 
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Roy Im <roy.im.opensource@diasemi.com>
Cc: linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 kernel test robot <lkp@intel.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1401;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=wdLF9WAxR22XqcYA7gK8+yGhNvwlObpcwbXvFtZiEFs=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnyX9UgiMec+Jkuqwmb/vnRfNsJpglm2TjPIvifTXq
 caV2I/CJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ8l/VAAKCRB33NvayMhJ0ZyGD/
 9JLMH75fDc+JZn3kyPSoLWA6NUk1y5pD4d24VcPcnhtBhsGJmuETnH5218iWGyXllL2t3satA1jrR1
 2ZMjU8d8ErEUvLCpO1gEz3t0MebOQcyZ4IsWqzl3kTXDashCCJ5ateMN54HRgJoS2yPK6uq5zRV2sH
 vJyhPHsL9z2R4JaYxJPGRVChone4axmtRW3Xhm2C1HOljtKBOlwdpnZp2675EAIA6Omcinz2lmVi7e
 x1XMGoS3WKLFVTmpGGa90UAUfQeGxvULMT4znYhASyxQAy1LuSuxBuAuSTOg1UGWnDJ7/iSzTMXV4E
 zukKRCQjnq1BIzLGzpL1USpd+jRTFV2xLRpfshZK53opT2+u8ROuqAMf1AUiMTeoplHMY5eemjwDsc
 durFUsp0f7K4l0wLEzRpkMAIfKPuzaXSZ2/AFfbIm9+JcVs0BS0NyJ9ZpWL7OYXBvFrDiDvY2Sorae
 wEKUZspv//O0Q4mZ/4Gt2PD3IE+/2IU+1SI4fw6ImPECBCbsuzPFKLHn4XBIxVw5R/5q/d7laE9Brs
 /TNOAxHDy237B5K08kBoya8ptoPqKv0GBpLoDgpvnlGsDigAEFKgRRtXtVVc74EvapkWZ3pM6EWouW
 y7+tgtDUGz/iNpYVIqsKDrECVP1hE96H/VUaM6JPfrLFWiDBIqx65mLBOuqw==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the Dialog Semiconductor DA7280 Low Power High-Definition
Haptic Driver bindings to dt-schema. and update the corresponding
MAINTAINERS entry.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
- Rebase on next-20250306
- Link to v3: https://lore.kernel.org/r/20241211-topic-misc-da7280-convert-v3-0-4df87ac08881@linaro.org

Changes in v3:
- Add conor's review
- Also fix the MAINTAINERS entry
- Link to v2: https://lore.kernel.org/r/20241206-topic-misc-da7280-convert-v2-1-1c3539f75604@linaro.org

Changes in v2:
- Switched to flag instead of boolean
- Switched the array to unit32_t, because this is how it was defined in the txt, DT and driver
- Link to v1: https://lore.kernel.org/r/20241204-topic-misc-da7280-convert-v1-1-0f89971beca9@linaro.org

---
Neil Armstrong (2):
      dt-bindings: input: convert dlg,da7280.txt to dt-schema
      MAINTAINERS: update dlg,da72??.txt to yaml

 .../devicetree/bindings/input/dlg,da7280.txt       | 108 ---------
 .../devicetree/bindings/input/dlg,da7280.yaml      | 248 +++++++++++++++++++++
 MAINTAINERS                                        |   2 +-
 3 files changed, 249 insertions(+), 109 deletions(-)
---
base-commit: 565351ae7e0cee80e9b5ed84452a5b13644ffc4d
change-id: 20241204-topic-misc-da7280-convert-20efaad588ca

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


