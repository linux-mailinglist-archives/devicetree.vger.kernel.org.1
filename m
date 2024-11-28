Return-Path: <devicetree+bounces-125339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D739DBA47
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 16:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7094628137A
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 15:16:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 019A31B21BF;
	Thu, 28 Nov 2024 15:16:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YKa1+GqP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F48519CD13
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 15:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732807009; cv=none; b=gVCw8duHjMvsIdT2oi+GU5JCibaoXWWtfrZT5yQaQmTKGVoiUydD6vSVfkrOnbAX4VEsPMIF5SzaQ8V4pLour53KzZKs18MSsf8a5XZJHD0P/TOMjlr22DacwP+ADGyyXKD0JYYniZxY6C6feGYgXnGthx6QC9PLjAD2Ep6xcYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732807009; c=relaxed/simple;
	bh=ui0mP4QaXAwRTet5XtxQbZ2onaCzZnY94A0/knFdcEk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nKjxlRgasA2kFs0O48ireKvPDEF8KI4H7qbjyqtWwiSS3ZJxqsNWwJQnk+97yuq954XYPTD4U+WL+LYMK8s6Ek+CRCdHqpeAx+Zl0ec2eMlWXBeCPmsu5fhC0QnslkdbSzT7PapMI2yP4WrTbp1zJp62FnkqIC5POiRu2C9EQIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YKa1+GqP; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-434a766b475so8424295e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 07:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732807006; x=1733411806; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=C6Oue8dESN+KLG/ePe+fukJv5gryZ66pj0oCW9kKawk=;
        b=YKa1+GqPKmq3z7iXh6+8DpJkJn2GnZmiu6o4NhBRPSMAQ2VkKHODsPm61FW/6Bt6Mw
         g2P6oqaPWqRk309qmo9cZCwHY/bb5BUz+fZIXq7x4xk3zbuLQ0eDBG4bq5JXOmmzhF+/
         lrpnsqi+YXgmf5iPrvyORHDYHanG8v/ZtYLleuBTLoxM2/mHtQJnP6cYXW0LmLsOScyU
         TON0zCS93cyO6InkmD0OOvmHMnJLpJHF0QUgm4KGh7Yq4GegGFH7SjkFEPIWN/Goxuh2
         OkSF+i0SYx7x88GoF6btteN9WB1we1V1vAFjDR3eGhnsvF1fncczixUP0JyxTb1/s87O
         5Ycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732807006; x=1733411806;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C6Oue8dESN+KLG/ePe+fukJv5gryZ66pj0oCW9kKawk=;
        b=vlxaevZXWaYUHpor4yJ+vwnm0Hb3NTMCedEOt4UrqbUH2Cg5sktMIBmygCK5VMIMkG
         VgI7qTCG1bbvlnEM0f24Q4rIeu2kSysl/WebucO2WhFPyfHghmqIfaZrOgV/RdRuLkju
         QC2NdZ6ja8AnQ0Orphz+oLTCRsmoMFfCqwVCrisOZDDyHjcCiTbZi5RlzAf7wMi3slQz
         fs8yrzhq+mHztfTz4zAJuucp82zhgWVe69xsLUaj7sYBqutWzpmv9droWrnLwhOT58Li
         fMu3zxYIhCArnt0HdRarLU/oDqLr7AQoxOMN4HxYI1QlF1oFeTdizjk0Pn21kDybNnbV
         isDg==
X-Forwarded-Encrypted: i=1; AJvYcCXboAdFYR4h11vkn/p9LuTPPpbMY/lbInNZVyRqpzkCSvjOYqpEHXDSz2sH8hKagsdQjK9xhYcjg7HN@vger.kernel.org
X-Gm-Message-State: AOJu0YwjSSIxlQFoVJguTLM88k+kr34uzIFUBM9arT9ymzPPhRryKF0p
	CottkgngUVD+647zRVK2SG8ISB+3SaXV9gryDGkCxTjr+dfJabJL0y589cCtyU4KxrOlj2RXS5K
	m+Kc=
X-Gm-Gg: ASbGncvLN8j6zQtgbCplSucp4lGfK15cMkTBBq0UkIIrHsJMO4PyRUyovzke5fT6fvF
	TaaLCYHEZHAVjPqjU26I/HTcciwROxv86SCfGT4b9Jabej+fEaJuqic1IgN8u3MzKpGa5ppjK9u
	XuhwnhQpNxwRs7Cr4TH6iBGQ8+PzRGRQQzeSshCljWkvWwgZMsB4cLaW1KNupUGYSJYRVVycyv+
	dbFnBaRa4y3rJsd8pksJ0ZJDkJ5LlTwqktIaTbst8s00i7MFwVEUesLDAaRV4f6wyPfQ94=
X-Google-Smtp-Source: AGHT+IF/jKAgBSZytzXTCZWUxx4CJtAyPk1QsefLDdoBfKIXDPOc4pRQw/LQWLRG52QPYf41Dn28yQ==
X-Received: by 2002:a05:600c:4586:b0:434:a10f:9b with SMTP id 5b1f17b1804b1-434a9dc5069mr73836335e9.14.1732807006507;
        Thu, 28 Nov 2024 07:16:46 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4fe1sm55867025e9.38.2024.11.28.07.16.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Nov 2024 07:16:46 -0800 (PST)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v4 0/5] dt-bindings: mmc: document mmc-slot and convert
 amlogic,meson-mx-sdio.txt to dtschema
Date: Thu, 28 Nov 2024 16:16:40 +0100
Message-Id: <20241128-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v4-0-11d9f9200a59@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFiJSGcC/63OwWrDMAyA4VcpPk/DdtLE22nvMXaQYzkV1HawM
 9NR8u5zehgbu+YkfiH4dBeFMlMRr6e7yFS5cIot+qeTmC4YZwJ2rYWWupcvSsGaFp4AwzXN+8y
 h0/C5lDUTBrAcHce5gOcbFZhSrJRXCFRShHCD4jjB4HGU534ga41ozpLpcd6Y94/WFy5ryl+Pl
 6rat0fqVYECO1qPZMyglXq7csScnlOexc5X/YvU8ghSg4QzorHOk1To/5HdD6mkHI8gu0ai68l
 qPWk07g+5bds3Vzg4ifkBAAA=
X-Change-ID: 20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-6fa70546ebb8
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Maxime Ripard <mripard@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2010;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=ui0mP4QaXAwRTet5XtxQbZ2onaCzZnY94A0/knFdcEk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBnSIlbl1v/SzeCDnTLt0jn54/WnyuWpEmWI8EQLQM6
 mDe8wWqJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZ0iJWwAKCRB33NvayMhJ0eOHEA
 DKHXJGHdG7bZVbSN+tD5XHRT7cE/ob1hWy1g6Z1irfqd7+AYfA1CmQ8VSKUqBKZjzd1FGI2p+xxxBl
 1avXNVf1K1EwvBJsbNRYLEuZNnlPATZO8SHBnZt5NDWqNh+DVYDNlr2ADmadOoN8K4WRd1y0mSdNK0
 7ooADTOveygioQ7PZ/OvUi4Qbvkx/U3F/WSciPcPqPn8j6n4hsBGonkEL9/X6kYKX4d2yDLuY8s0k9
 5LXurZa0tqf9t0xqj9oj6RGbB8a/efkJ9yi9wok7+w+Lyon6Tr7H7P1ePqqwwInEPOGxIlnm/oyW9e
 Pg9J8EIN5u6UtF6c3R8YuMXuvuYJeFLZrGZI1iOpO7NB8/DUcVdguVvYRK+A4gGZ/2g/wQxeKfYAsL
 /A5UIGgpXHxVYeB5YtORC1iFK4EOJkLv5qPjS2lnSTs2LQ2R+N9D9p3I4B7Jnlspx37SibM7oYzDFO
 UkgwQj87b+HcFmDgDgk1tTGPm8IhPMrno3ws1E9ZUnf+9DmiLAosuzHPzvEFdcH+8i6++lHrwvpZYu
 i18100A9I7dw2RNt7g0dJ88ysmlVlnNjs/0rVGhZucAt9+TA+pFLxivbkT3vX9tolcO/X5MO2dqppu
 6gdgWGd7QfL1DORa+ru4OAHPoVJIDy0QRorhYau4ARkdVjZbL1x2kLR2g9fg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document mmc-slot because used by amlogic,meson-mx-sdio.txt and
cavium-mmc.txt, so make it common.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v4:
- Fixed address-cells description of mmc controller
- Cleanup '|' when not needed
- Added review tags
- Link to v3: https://lore.kernel.org/r/20241007-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v3-0-ad4eb22c2a8d@linaro.org

Changes in v3:
- Revert and insteads move common properties between slot and controller into mmc-controller-common.yaml
- Fix other comments on patch 2 & 3
- Link to v2: https://lore.kernel.org/r/20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org

Changes in v2:
- Fixed description, limited to 3 slots
- Moved out mmc-slot in a separate common schema
- Link to v1: https://lore.kernel.org/r/20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v1-1-b7bfae886211@linaro.org

---
Neil Armstrong (5):
      dt-bindings: mmc: controller: clarify the address-cells description
      dt-bindings: mmc: controller: move properties common with slot out to mmc-controller-common
      dt-bindings: mmc: controller: remove '|' when not needed
      dt-bindings: mmc: document mmc-slot
      dt-bindings: mmc: convert amlogic,meson-mx-sdio.txt to dtschema

 .../bindings/mmc/amlogic,meson-mx-sdio.txt         |  54 ----
 .../bindings/mmc/amlogic,meson-mx-sdio.yaml        |  94 ++++++
 .../bindings/mmc/mmc-controller-common.yaml        | 357 +++++++++++++++++++++
 .../devicetree/bindings/mmc/mmc-controller.yaml    | 346 +-------------------
 .../devicetree/bindings/mmc/mmc-slot.yaml          |  49 +++
 5 files changed, 504 insertions(+), 396 deletions(-)
---
base-commit: f486c8aa16b8172f63bddc70116a0c897a7f3f02
change-id: 20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-6fa70546ebb8

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


