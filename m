Return-Path: <devicetree+bounces-207149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 67790B2EBC2
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 05:15:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 205AFA23A4D
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 03:15:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D89335975;
	Thu, 21 Aug 2025 03:15:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b="zDe4jXS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF8EF1662E7
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 03:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755746125; cv=none; b=qQ4timCkVJXo7GGCLUjNOL0edr1EkKlK2Una9TtRbrREWDu2J3su5J4wr19qT/QIOSwU3qokFBHXNL10hMXFgQgVVeWy5Nic0psP9U2IgzzTucex8GAUFSFy6BR582C+1+2DhdQdiK+AsICFnr+q+VqotZdqo7XhU4VKkN2b5i4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755746125; c=relaxed/simple;
	bh=vg1GOk0MUyhUYTWNWXxSXx/yMJDlP+wEjm+cU6WTJ9U=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=nS/6X6o+wUbtmKpmJ7hC/gIqNZLrYyfcoXvVcnyJ4R/gbWwHLyZwo0CVuVRc61GaBSNCrsjmRkKPhipEDlZJ8wUJxB2UBjU5x3bMHT0paDCEgKLhQnSzFZf6R/crF3zxEoK4qqIjlab/Wy2PMDRIskCS/ThO+M0w44ZI0ws1esc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com; dkim=pass (2048-bit key) header.d=huaqin-corp-partner-google-com.20230601.gappssmtp.com header.i=@huaqin-corp-partner-google-com.20230601.gappssmtp.com header.b=zDe4jXS2; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=huaqin.corp-partner.google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=huaqin.corp-partner.google.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-24456ce0b96so6195895ad.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 20:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20230601.gappssmtp.com; s=20230601; t=1755746123; x=1756350923; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fM9jqXVt0YyM2f04tCncYCm9RoZvYA/H+kQtbuzkBRw=;
        b=zDe4jXS2XvJmeVoGsN/phc9oRmMc8GHSNxCn0hj0CWorGwEJdRMXuzPp+Kw2Z3ZvFv
         vny/WiAP1g0qRllP4/mo6uBnt8jzwYmcl93JkqKazKybZoCvyJnBsIfOzmx2dPQSm3NP
         rkMYIYXvYgMtCf7ppIbQomRhalc4gTf7ipx+0tKpDd7Tyj3hWTRBreqe+MLz/y7Y3l7j
         mDSu4c2Ercm31uS7qyfplAClbiWSkmbDhARp2O2C81E3L2tUanD8zv+P2+o8Si56xQC4
         Zjf9Mz5XmPZbLPAokeNKYMGdLVahVbPqHiPb74yMO9UEcVTE3iM7nG66A9Y0I+XSdGDw
         ntpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755746123; x=1756350923;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fM9jqXVt0YyM2f04tCncYCm9RoZvYA/H+kQtbuzkBRw=;
        b=RLjFi3LG9k/cFuB3SUseSali7de1id7rRdtH/7HIGd9QAUDbUBqtktsVopTJytjBjQ
         mR5xTWC7QneCMrQT9EfSXuNDXBNOk827cbrmTVNP+iPuymajLyG57c0YQPEkYRqsxO9i
         uyhl940zZ8oIrXm+Aplb8VxQm4SOtYOElEWlnB1kG2wcBtHAu7zaHTFgzrmSLgfWAjj8
         eprkhzUbXuE10pRSAcWSU88kszPJ7xSyu0rsZsymUZzsc1F6DVadOIiyi72rPe+Dgr0W
         xLg9ldPvLUfA+ju3UxN2XRgH89idD+M0Wv68tZk9PIJS8/9cAAnyBNoiHV+BO2SUHjxI
         oKxg==
X-Forwarded-Encrypted: i=1; AJvYcCUMN1GodxlHtbLsjjXAuHg05Sxl4mSVvBh4YyxXDLW6VEhGJeoYsE4ssPOobmY9DmKBnGRHIkKoG4TB@vger.kernel.org
X-Gm-Message-State: AOJu0YwRSGOXW+X65ycJ8FD5KBnpfdraNph8r49+Ai7E356u8zqIxYpz
	G12e6CECDIbBOMAXxnpV4Bq9EpjCTBGnANHG+a8p6IAM0ShdSXqD+BReNrK35/aBZus=
X-Gm-Gg: ASbGncurvc1QgpJgDxTz7P8fr/xm9G8RgWlIc1NgS/VWNF7C9oz72bnbJOkCw52nVe1
	WRKRP/gFhL96hoWiLIqGdk9USTa3cRlM6r/VycZ4/1vEcgK20mo7wmZQynvg6hCDg4nvJDtfciU
	26nxYcOE+Aqbc2o5IEF3nWngTQeqMxE9Tahg2Fzrrt2+dVBPyqbFZazKvevtwzJE6bIFJudYq6C
	CSvgoLVtONfBGTSdkK0+1+iAjMRmACDHPL/z/1H/WposBt2AyhSRmoIXUh5XpDjhxzAUPwv2jfc
	Mn7pmZnw2x+e0d13UXpVwFxGOeeN1NMLDCo1Cg4hRv7XRnnhFujkMBjD5mgU6DBpUmsclxQ1DuJ
	bwuZpRcd1O6O1qUk3hpddXIb5f7QWWnyN19hjsKUISV5pQcnHa5CPFjPHLSRO9yM15zr35g==
X-Google-Smtp-Source: AGHT+IGE4HVZWfohQCAFtw4L9SUGaGz24S3ewHYjLJieNJ9qHAVoWPYrUsOmf5tjq0RXHgkSWcVwOA==
X-Received: by 2002:a17:902:cece:b0:244:9912:8353 with SMTP id d9443c01a7336-24606158c4emr9353775ad.6.1755746122965;
        Wed, 20 Aug 2025 20:15:22 -0700 (PDT)
Received: from dgp100339560-01.huaqin.com ([116.66.212.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed51b3d3sm40285415ad.147.2025.08.20.20.15.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 20:15:22 -0700 (PDT)
From: Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
To: dmitry.torokhov@gmail.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jikos@kernel.org,
	bentiss@kernel.org
Cc: dianders@chromium.org,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Langyan Ye <yelangyan@huaqin.corp-partner.google.com>
Subject: [PATCH v2 0/2] Add tc3408 bindings and timing
Date: Thu, 21 Aug 2025 11:15:12 +0800
Message-Id: <20250821031514.49497-1-yelangyan@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The tc3408 touch screen chip same as Elan eKTH6915 controller
has a reset gpio. The difference is that they have different
post_power_delay_ms.

According to the Parade TC3408 datasheet, the reset pin requires a
pull-down duration longer than 10 ms, therefore post_power_delay_ms
is set to 10. In addition, the chipset requires an initialization
time greater than 300 ms after reset, so post_gpio_reset_on_delay_ms
is configured as 300.

Changes in v3:
- PATCH 2/2: Corrected post_gpio_reset_on_delay_ms: 100 -> 300
- PATCH 2/2: Dropped Reviewed-by tag from Douglas Anderson since code changed
- Link to v2: https://lore.kernel.org/all/20250820122520.3356738-1-yelangyan@huaqin.corp-partner.google.com/

Changes in v2:
- PATCH 1/2: Drop redundant "bindings for" from subject
- PATCH 1/2: Improve description (describe hardware instead of bindings)
- PATCH 1/2: Drop "panel: true" property
- PATCH 1/2: Drop redundant description for reset-gpios
- PATCH 1/2: Use unevaluatedProperties: false instead of additionalProperties
- Link to v1: https://lore.kernel.org/all/20250819034852.1230264-1-yelangyan@huaqin.corp-partner.google.com/

Langyan Ye (2):
  dt-bindings: input: Add Parade TC3408 touchscreen controller
  HID: i2c-hid: elan: Add parade-tc3408 timing

 .../bindings/input/parade,tc3408.yaml         | 68 +++++++++++++++++++
 drivers/hid/i2c-hid/i2c-hid-of-elan.c         |  8 +++
 2 files changed, 76 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/input/parade,tc3408.yaml

-- 
2.34.1


