Return-Path: <devicetree+bounces-129648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1439EC6C0
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 09:15:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 458A31889C4A
	for <lists+devicetree@lfdr.de>; Wed, 11 Dec 2024 08:15:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D9A31D61AF;
	Wed, 11 Dec 2024 08:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zMB+9+JA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5AD18EAD
	for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 08:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733904943; cv=none; b=DMNEQcYhCk/DH53q7vpkqwxdSA0eWsOwDZVf0IscjzmRxrdpF3m0UDALEDH7uwvafD91uDiFG5HWdcknPmHeErKM7C+LMVcxLjGJUeTL7Z9I8KomEIRU6FNe4CU0tRgnZ++BuqG9D5ubodrh3lFRe4sNbnFu7lOhFWx1LAGOdLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733904943; c=relaxed/simple;
	bh=7G9MHCJJhHRTHCJ8gpKJ9FPxTkA8e8UPWFpBiu7s+Ag=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bs2+o/cK3JbGv/9fsSYePOZxBtpuTPzyHX50N2BB23XVCzf20xT8H/veCn+PZARD+NITHxIwkK19lEP1WsmaxPr1r1AbirkehbKHYEnYZkt0OSh1HTfO6/JMKf7d42nqkZRa4mFUi8vgywv0CQ94Gj7W6YjJCWv38feJu3NpFPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zMB+9+JA; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4361f796586so1780275e9.3
        for <devicetree@vger.kernel.org>; Wed, 11 Dec 2024 00:15:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733904939; x=1734509739; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yxgK/TxJ7wHnjGiR8cbuZnsbzeChAfn4qWIe3hfzYQU=;
        b=zMB+9+JA1IYuqvch2QqIURyZmAXGkioXpniONvzjpTRu+TXGLFyGAxOodsm+SSwKWH
         qGjTStZ47O3Q9nLRjqwIscOBmU6jSDOHSaCn/mFqhly5lNi29HktxJC1PqLbp2XeM6cQ
         62fqMWHpGeJSjZUxsoa5QwzbCvWiJ3M/aGsNuun3+yN7vmNkIdBeW/DYmmRdffZFOWNY
         Q1My5DL4p9W4IvdA6mNnsWSQu0VUtyyjgn9GhW1zgxBWD8euMH9341zSY8oK2Guu8TL5
         FFdf4JA4CQu11aRpTKXwqt2evB+30adW3JVUPymQeFrtkjBQydRfvL8mYDyZ6DZxuVEG
         cj/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733904939; x=1734509739;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yxgK/TxJ7wHnjGiR8cbuZnsbzeChAfn4qWIe3hfzYQU=;
        b=In94YjY/7RyWHlt1rTIvmOlyoWuSTyyPnysWh4oB540nHGDHpXuRZq2AVVLrF/8BX5
         kvOhYoernrdbvc9cB4dra5OPpavJkvI2ooYo1rP7zhz0v0CHxGjsGv1biRQ1worTISNs
         GyztlniBOqFVatpx7K/R5hIfK2TscIeaEIyxXF9suXe5d43h4HzjO/eOn4iFGaB8XeYv
         WB/w68H9wBk3hnQtCAIFs2BPKOaa8lEQCwQy8uhbeGzjqYCJmR0tkxLvyAJ0qDCgMgXK
         CIUyKVBbJsBZTz9A3b5azNFqHGJBx4s+zdGLgl7HDXwHy4Vh30ozvHbpKRYcbAdhMvFX
         q5Yg==
X-Forwarded-Encrypted: i=1; AJvYcCWSUYqkAqDKSQfSp4Te025eTJGX1WBPAQGJmWzejFVeCHyPY2dxJ5tBa0sOFwsMecgSC5k/22CyFR9W@vger.kernel.org
X-Gm-Message-State: AOJu0Yzq4oAYb6NRMRAJwkBJF1XC/3uqA05zTqOPzT5quSjWWWZxkTcw
	maapSDAqu9Up/Zb3QM8pfkcRR9jBKNjX0uVZzOhOb0NvcDoiNPYocIuoydrbvRE=
X-Gm-Gg: ASbGnctm+cblV7fQRVnfaA9MEn9/Kcz/HbPfS7OfFGqeJzxLrdHq72/CyPfhTUnF7tD
	KKltO9VkAsweXPHh2kJ4fYRH12rPWbTgWby42fcDQK57ZWEJNcngE15NPwETIyr8FLQy/MmZ6Tr
	122cCrft533ehAUUdwlSPbdFaRXM1ydcnh1R10xy0MTgTc1zSVpEu8p9cKzlVHgIhF6YnSrdNn1
	ZNfEkOO+WNnL6sJ7Q7K1HnQpTlD3H8dLz4/yiR7vSkVEyk2h2cuV66Z+qzC9FyAu03apcZUNwg=
X-Google-Smtp-Source: AGHT+IHy9dA/nbxdrn6PzRTLWuAKp+Tc2bYh4Sh+eRKZe9n04mj/c3DsdVUotTROQXnsxkH+oU1JoA==
X-Received: by 2002:a05:600c:3b94:b0:431:542d:2599 with SMTP id 5b1f17b1804b1-4361c430af2mr10615575e9.22.1733904939023;
        Wed, 11 Dec 2024 00:15:39 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4361f6d878asm6231805e9.2.2024.12.11.00.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 00:15:38 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/2] input: convert dlg,da7280.txt to dt-schema & update
 MAINTAINERS
Date: Wed, 11 Dec 2024 09:15:35 +0100
Message-Id: <20241211-topic-misc-da7280-convert-v3-0-4df87ac08881@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACdKWWcC/43NTQ7CIBCG4as0rB0D9A9ceQ/jAunQTqKlgYZom
 t5d2pVujMv3S+aZhUUMhJGdioUFTBTJjznKQ8HsYMYegbrcTHJZCckrmP1EFh4ULXSmlYqD9WP
 CMIPk6IzpaqWsYfl+CujouduXa+6B4uzDa3+VxLb+oyYBArhTWrfihtbo851GE/zRh55tbJKfV
 POLkpkStqxL7dq64dUXta7rG2r/I8kOAQAA
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1251;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=7G9MHCJJhHRTHCJ8gpKJ9FPxTkA8e8UPWFpBiu7s+Ag=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnWUoo5aK+/+aEFFXXu2IKP4chsZqIiJHBvOzpFD3I
 Swv98IeJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ1lKKAAKCRB33NvayMhJ0SacEA
 CsHDb/rEgACpUHHcsN0KNWQfVGDO0AqHtcb4+Zy8kHA87FkugwWcIaJ5jj8QkkhDJ7eBeKDP+YP+JB
 MZTdnqRj3zd3hkFxPFOfTA2h+3YjC1TIbIt9WhaK5PCSxCqwPi8pJeb1Pij2Y0g+VI32bL1lkPru9i
 ZUAoOWUo3tPif/w3JWTYDvze284H81H+9ND1gZeBKmEdN1xgGwC8wOO6lw5cqqqtcuhxVBVFv8JMLv
 C+at+sbrp3B9ISbrbEasRQqyDs2Wg7tksREh5Sr2Gxc9AWy+YWulJ+W0HcpBnuFAfSCeuAUFOqJ1Vf
 qrUZzLi/knfmWjMHv9EJt/a5hz1OCrpDue1jPzy34gwQ9uWfFfk3naCgyBgBZWUEE34yziiwp/BpfF
 MY+rREgavCYj6xxm6XrQFWheItaL3UVL0XvijBdAzsp/qHQ8HMnF1h0UouBsH3cW6Fx2FGtwY8KvzK
 0n7TWWt4saQwLAvdpASnY+2h/np9z0bb949c8EhFlQBgxz+2eFJ/0iQ02EVQferkuwrkk2tAuAwQB6
 nVp1cW7PRxZYsuS243LztmK8UXre324rC2V646Fnw5h02DodvomAPdcFk6xsy59TZY8zyMO29JmJNv
 HumqFPcqGSA583OFhSSD1Pg/53Ixi45kJebJMoBmaGjbe3rB2a1p4hvNMOyA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the Dialog Semiconductor DA7280 Low Power High-Definition
Haptic Driver bindings to dt-schema. and update the corresponding
MAINTAINERS entry.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
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
base-commit: c245a7a79602ccbee780c004c1e4abcda66aec32
change-id: 20241204-topic-misc-da7280-convert-20efaad588ca

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


