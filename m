Return-Path: <devicetree+bounces-104082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8D9E97D2D3
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 10:38:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9C4A02835A6
	for <lists+devicetree@lfdr.de>; Fri, 20 Sep 2024 08:38:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65FA480604;
	Fri, 20 Sep 2024 08:38:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UENH9aTN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 927294C62B
	for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 08:38:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726821491; cv=none; b=nLqreb6fBYlaZhbqEPZW3Me0zEh9G7fO6MTMeJX/pC1U0vlkS2ZZhqs03Y1lIcVL3Dgkor/teqQDnwQ1IFVOMN8l7rOXm15ZeakqCKJLD9Mp/1SGqXE4f40uReqivq8R1M17uFnPIiUfuQL7VR1VlXXC7P5W3f2dOzrN0ox51zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726821491; c=relaxed/simple;
	bh=O0gR+EEyIIZGwIA+qtqCfN2wuQii0s/XxaptJOUZn6o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=sXm82nN2+CH5MhNStyHaxYA7owZKF59WniFCCxAI/8W7HuY6s5bEyLc7IhesfmVCMA/4QJBu2gOdcPteURiMKo8bFhYUvSBIXHxhZf51LALMU1wzxflm3SpjMQJR5fhvnmUwGlxwkCpdLGXmQh+SL4NNVQbsNr6m5KH7i8a5A+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UENH9aTN; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-375e5c12042so971550f8f.3
        for <devicetree@vger.kernel.org>; Fri, 20 Sep 2024 01:38:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726821488; x=1727426288; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=CtR9rrwh7DNDhn87WGlIXFPqSFnA1qNP99faPKnPFcA=;
        b=UENH9aTNYLmwSqSGfA4To8Z90im524IEikE4w1fg74poRGgHwfgyQhIT/h8mfwNxp8
         c9mME3Ro/7bdgUPZ5zoFnD+dbwsX3SbbEUCzgpdj+TUlUyXpXs62bHp7bj2GT2CuaIWI
         nKd06LzzHCLMiwXAPU+IU/youxFru8b0iMcowEhErELTL+OLstM65u8cHTP4f8ardi74
         fp6HRMZaZsbsN5YfG7ntKS3fNhiVXRKFBRqmweI0buQoA5fWmrCYJViQOdOg6vVSZZo9
         pNx1DjFC9R7d/43VKdHFy0/CVS0iOGgYbkPzLMXfig/csXxosXVO7US/3QQ4Zd28dnbR
         BC9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726821488; x=1727426288;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CtR9rrwh7DNDhn87WGlIXFPqSFnA1qNP99faPKnPFcA=;
        b=SnfI4DXP1z1wq8m0hNtsY1NM9sY6LuTk0Un4/YlZjtFkW+/+BuizvIMM3JbVBmDWbt
         9kl0OE+bQd2yI6s4OQCYRo3mLISWoTYmdy0yXvr91a5kOgTLBZAthS0jZ0agw2hvHlUE
         +1sG6/g9TV6fRfsHZTJpjksVy7BKnJ3lrXqKZ75Xm+YI4aoyvXFni06JsJ/FCgz5zQMP
         bHwyPlrzKOqFrlYQUwv2k+bF773dL9ewOH49+I5jtSxdAatKPu1NTvcpfdnGPcOt9qgG
         5pIhCYmR0IrOuQ2JEltVfOGZvi1dHwaxmtayAY4M+/5v8zDdEu4E4laU+Jgo0w0dUcjd
         EpzA==
X-Forwarded-Encrypted: i=1; AJvYcCWY59ZVaakdDCeJacKvnZg5scXE4HLk+RXSgXzyagsZduTqSjV9E849jgWZ8uB1S4uHkg6W/L6inEM+@vger.kernel.org
X-Gm-Message-State: AOJu0YzmhWT7aOzvMEcWkd+lMV+Rw0ddv+h2yXlG2iAHPsZtve2pLqg9
	RT7PuKwJ26JQksUF74XxGoj8mcqGW3KK1aGq5DVd/4NM2xKsaECsPCEC0WYqfb8=
X-Google-Smtp-Source: AGHT+IHC6NMRGd8XrHhnl2luCm5xPyNVEx8J3g73EFnggKlMIkGbyXMoJxZmTUE53GTxvFNbBZuAFg==
X-Received: by 2002:adf:c788:0:b0:36d:2984:ef6b with SMTP id ffacd0b85a97d-37a4225216amr1084085f8f.11.1726821487809;
        Fri, 20 Sep 2024 01:38:07 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42e7540e2c1sm43099165e9.2.2024.09.20.01.38.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2024 01:38:07 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v2 0/3] dt-bindings: mmc: document mmc-slot and convert
 amlogic,meson-mx-sdio.txt to dtschema
Date: Fri, 20 Sep 2024 10:38:02 +0200
Message-Id: <20240920-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v2-0-5aa8bdfe01af@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGo07WYC/62OQQ6CMBBFr0K6dgytiujKexgXLQw4Ce2QGSQaw
 90tnMHVz/v5yftfoyiEaq7F1wjOpMQpg9sVpnn61CNQm9m40h3Li7Uw8UgN+Dhwv6bEg4PXqJO
 gjxAotZR6hY7eqNBwmlEmiKicIL5BW2KoOn8uT8cKQ6hN9oyC2zxr7o/MT9KJ5bNdmu3a/tM+W
 7AQzqHzWNeVs/Y2UPLCe5bePJZl+QFqNQZmEwEAAA==
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>, 
 Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.14.1
X-Developer-Signature: v=1; a=openpgp-sha256; l=1196;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=O0gR+EEyIIZGwIA+qtqCfN2wuQii0s/XxaptJOUZn6o=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBm7TRtbOtlTlRm40YRznfQ/pndGMNieGeHGev29+pX
 b3EWRBCJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZu00bQAKCRB33NvayMhJ0aEhD/
 9NFslcvRji8i+vGYoP/zVBiOQLVQ+1bF3mEoBRIY/9l9X1Z96h104J6HbFpP5YloCWA+torFEbFCdd
 7GbqjY+gr9oTIwyX6gZFAET6YQHK9nC4smEFUPluIgBLLbvPeh2ywK79NAuAQI65oXE3nsmpTmiGVe
 HOcKq6e6eODBOwq7tTllFpo/KOLlu9SGR9Vct3xKOykgUYwrcndnYzLlpiN4NGbvbZgehY65zY89EM
 D8LgChW+tC8+KpI1AIbuusJuoVzBuRDEpzb7Qf4Qi4e0kuGI3ZSlwFq1TtwaUaolYOaraBh6VfXwy+
 BMQPYA3I5GyYrC3J+bcc4Gtc8tms6RhBFgqPNTpXB8whWCjhcFH4yi0tAdR1LFz/URt1HyIIdxkoQK
 /x+tyCF1waIcIWzxRJoXa/kZPp4+sH6tIno952A/X2Bp3IHivQX7jVUJ0X0UHYeYo5+E+IpJTiFAoF
 29sWOlAr+xW5P7WYWZu23J37K4Rg1xB72oBGbZWUhkHppg8ZnxIPq91QGmKGZh2xN+NZyAqJY8prkn
 dYGhubRZpskGLKMgyAXxNVxZ78GqQeZeMv8/Nijnn8CbKAkLsbQLcZ/3gIx7D3BhDEP7qp5+zqsWqi
 zY/J6h8Sukf1Cl0C8ePVaYtX5PW15mqgRDNJBiMHbyuawinmIAxi9aO6WVig==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Document mmc-slot because used by amlogic,meson-mx-sdio.txt and
cavium-mmc.txt, so make it common.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Changes in v2:
- Fixed description, limited to 3 slots
- Moved out mmc-slot in a separate common schema
- Link to v1: https://lore.kernel.org/r/20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-v1-1-b7bfae886211@linaro.org

---
Neil Armstrong (3):
      dt-bindings: mmc: controller: allow node name to be named slot@*
      dt-bindings: mmc: document mmc-slot
      dt-bindings: mmc: convert amlogic,meson-mx-sdio.txt to dtschema

 .../bindings/mmc/amlogic,meson-mx-sdio.txt         | 54 ------------
 .../bindings/mmc/amlogic,meson-mx-sdio.yaml        | 96 ++++++++++++++++++++++
 .../devicetree/bindings/mmc/mmc-controller.yaml    |  4 +-
 .../devicetree/bindings/mmc/mmc-slot.yaml          | 40 +++++++++
 4 files changed, 139 insertions(+), 55 deletions(-)
---
base-commit: 47ac09b91befbb6a235ab620c32af719f8208399
change-id: 20240911-topic-amlogic-arm32-upstream-bindings-fixes-convert-meson-mx-sdio-6fa70546ebb8

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


