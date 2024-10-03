Return-Path: <devicetree+bounces-107598-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A35FA98F2C5
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 17:41:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 250CE1F223C3
	for <lists+devicetree@lfdr.de>; Thu,  3 Oct 2024 15:41:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D2021A4F23;
	Thu,  3 Oct 2024 15:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z821fF6W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EBA419B59F
	for <devicetree@vger.kernel.org>; Thu,  3 Oct 2024 15:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727970092; cv=none; b=tFJLg430rsYty70Za9CnOGHzU2q08lIlNpbldUTy8lFX2nHYy9U6IVLkcG1vuZ2vpU4OUq97dCMtQnUQ1P9NZ9E1kPDegICRpDrbKk+Nfru7NY4zsLHLizhcQUiwgqU2COvO92HyInbXRTIrulAFSghgPHpvoqTuwfZkbKRQA1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727970092; c=relaxed/simple;
	bh=pcjyTEmLvTLN7mCVpCsjGf04ORjVzGFNtci6FstvOro=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=fTrmZbz3jLafoWZjHydZ5/7Uund4t1m7YynGGMBs+LUkOD23I7CT+vk3JXVnSfZy2lsGDlXX+HNRB0vPKw+WSybO1UVYv6tfK3iroUFdpA1I0aOKXWCyQBBPSgUn0/WFiTqs2A/7rVOrW+D+8+/YaTazFWcL6EdvJ8adv+9Atjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z821fF6W; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7a843bef98so151817766b.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 08:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727970087; x=1728574887; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HYGpz43nPbByYXovI0HrcPnvOdOH3ZAX7U7tj2PnV9Y=;
        b=Z821fF6WBbCA/pikwCZTmM/say9+VyRKv2QujE7db8wQJbKBjLhYIwDNbfQ3fn79F3
         xIHbKf5BO7Y5Z1bS1ra68hKwFjELqrSH6ZvtjlEESMVLqSfGjj11CB4SHRmq9yO8Neya
         vmPvWiwP0zNTXsnMF3U8cHdn3AyjWdTh3Fj8YvdEOH9zu7i18WUwVN6RqjM0d5QR3GxS
         FYV4Cx19sbmfySvG8w8JxmxspPZVIJdfYmjJR5XAQHEC+AXomDc8p+Yjvk0t1LPhvX+o
         DzAPu9Yrl3C1l9MJv7WCEZs8PFY0SrcV3TAy8LpJsiKzBhYl+tiVTmSi++vVZ8CiCeVG
         +qOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727970087; x=1728574887;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HYGpz43nPbByYXovI0HrcPnvOdOH3ZAX7U7tj2PnV9Y=;
        b=FDfVdyfDPwaWAeu6RgCSSFvkasvIKZ0kuEXuWy3ATIh9SzOp3EMF99kN3Qkrwo1QAl
         /DLUcf720BE6SbU2l/xCHdiHno9X6hrVQqmWj09GSMAF2o0frmnb0cTQl/7Cx5nSGAkZ
         aogi3CgeywnfCyyTNlFOQcNzvKnCbkBQ2NW7JDnKsS+cyUeSVIKP70A/qCGTIIHcMeY/
         KhkuBtsSGVZVbvzNTCBSmPUHkJVCwMhFvvi4nk6JMlbCAhq5o3zyJqyofeGtFfpBdT7C
         7i3FwgCo4PSfv81lA8gIhuBGhEPkZPhtdZBE/d/Zy9mtbNwHV2qA8l26RCDIeoGSxy5K
         C4Tw==
X-Forwarded-Encrypted: i=1; AJvYcCVYzor3eyZINu1TRDzdD4aRl4JhCLSpFtU+/DaMKkzFZeGo9wboigyUBaRDv53pssYoGWwx+eFihi9k@vger.kernel.org
X-Gm-Message-State: AOJu0YwuVMtJuMlSztTikdzrvU2JqNMJIee0lsxYPzk61KUdBzSCAnP5
	WG5TwOe0Q/QVmY7LLjNV6jkW9d1K0cpW1VbuhXIs5r7OPOMUnC3ugEaX51Zbf10=
X-Google-Smtp-Source: AGHT+IG+LU6Y4ngetxRy+mZULOUURuqVF1BgSNl0H63IzML5pQS1xBtYN+8pvhLeWEbdKorJTVAhAQ==
X-Received: by 2002:a17:906:f582:b0:a89:f1b9:d391 with SMTP id a640c23a62f3a-a98f824e3a2mr705785966b.14.1727970087536;
        Thu, 03 Oct 2024 08:41:27 -0700 (PDT)
Received: from [127.0.0.1] ([176.61.106.227])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99104c4f3fsm98492866b.200.2024.10.03.08.41.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Oct 2024 08:41:27 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v4 0/4] ov08x40: Enable use of ov08x40 on Qualcomm X1E80100
 CRD
Date: Thu, 03 Oct 2024 16:41:24 +0100
Message-Id: <20241003-b4-master-24-11-25-ov08x40-v4-0-7ee2c45fdc8c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACW7/mYC/43NQQ7CIBCF4asY1o6B6ZSiK+9hXAClSqLFQENqm
 t5d7MJoTIzL/y2+N7HkoneJ7VYTiy775ENfgtYrZs+6PznwbWmGHIlvUYIhuOo0uAhIIARgDSF
 zNRIHKztqGq211MQKcIuu8+OCH46lzz4NId6Xryye619sFsDBUVt3pq1MrfT+4nsdwybEE3u6G
 V+W4Fz8tHCxGrVtpEFuxZdVvVv406qKRaoytrWdUkp+WPM8PwBx2LkVXQEAAA==
X-Change-ID: 20240926-b4-master-24-11-25-ov08x40-c6f477aaa6a4
To: Sakari Ailus <sakari.ailus@linux.intel.com>, 
 Jason Chen <jason.z.chen@intel.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sergey Senozhatsky <senozhatsky@chromium.org>, 
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 stable@vger.kernel.org
X-Mailer: b4 0.15-dev-dedf8

Changes in v4:
- Drops link-frequencies from properties: as discussed here:
  https://lore.kernel.org/r/Zv6STSKeNNlT83ux@kekkonen.localdomain
- Link to v3: https://lore.kernel.org/r/20241002-b4-master-24-11-25-ov08x40-v3-0-483bcdcf8886@linaro.org

Changes in v3:
- Drops assigned-clock-* from description retains in example - Sakari,
  Krzysztof
- Updates example fake clock names to ov08x40_* instead of copy/paste
  ov9282_clk -> ov08x40_clk, ov9282_clk_parent -> ov08x40_clk_parent - bod
- Link to v2: https://lore.kernel.org/r/20241001-b4-master-24-11-25-ov08x40-v2-0-e478976b20c1@linaro.org

Changes in v2:
- Drops "-" in ovti,ov08x40.yaml after description: - Rob
- Adds ":" after first line of description text - Rob
- dts -> DT in commit log - Rob
- Removes dependency on 'xvclk' as a name in yaml
  and driver - Sakari
- Uses assigned-clock, assigned-clock-parents and assigned-clock-rates -
  Sakari
- Drops clock-frequency - Sakarai, Krzysztof
- Drops dovdd-supply, avdd-supply, dvdd-supply and reset-gpios
  as required, its perfectly possible not to have the reset GPIO or the
  power rails under control of the SoC. - bod

- Link to v1: https://lore.kernel.org/r/20240926-b4-master-24-11-25-ov08x40-v1-0-e4d5fbd3b58a@linaro.org

V1:
This series brings fixes and updates to ov08x40 which allows for use of
this sensor on the Qualcomm x1e80100 CRD but also on any other dts based
system.

Firstly there's a fix for the pseudo burst mode code that was added in
8f667d202384 ("media: ov08x40: Reduce start streaming time"). Not every I2C
controller can handle an arbitrary sized write, this is the case on
Qualcomm CAMSS/CCI I2C sensor interfaces which limit the transaction size
and communicate this limit via I2C quirks. A simple fix to optionally break
up the large submitted burst into chunks not exceeding adapter->quirk size
fixes.

Secondly then is addition of a yaml description for the ov08x40 and
extension of the driver to support OF probe and powering on of the power
rails from the driver instead of from ACPI.

Once done the sensor works without further modification on the Qualcomm
x1e80100 CRD.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
Bryan O'Donoghue (4):
      media: ov08x40: Fix burst write sequence
      media: dt-bindings: Add OmniVision OV08X40
      media: ov08x40: Rename ext_clk to xvclk
      media: ov08x40: Add OF probe support

 .../bindings/media/i2c/ovti,ov08x40.yaml           | 114 +++++++++++++
 drivers/media/i2c/ov08x40.c                        | 179 ++++++++++++++++++---
 2 files changed, 270 insertions(+), 23 deletions(-)
---
base-commit: 2b7275670032a98cba266bd1b8905f755b3e650f
change-id: 20240926-b4-master-24-11-25-ov08x40-c6f477aaa6a4

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


