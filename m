Return-Path: <devicetree+bounces-163029-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BC97A7B228
	for <lists+devicetree@lfdr.de>; Fri,  4 Apr 2025 00:55:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4167189B895
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 22:55:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 704311CBA02;
	Thu,  3 Apr 2025 22:55:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D5P5sTOE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D77281C6FE2
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 22:55:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743720911; cv=none; b=OdC05pHmIEqWQP2UDlwZrQMD7axxM0fBo7UYi7/TDji7eSEF392mkOAe77l2yHQwJ4LaP4vpoLgjhsODhEzeUFj/f83JusdieIg9iMlVVGgm20gfbfmt0dLWkz7mH3aaHzg6ubThkSEGBs0DfJF9ZWGDZSWlBb2XOC1cQ4q62Rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743720911; c=relaxed/simple;
	bh=rxdjGPNQPV4ImLSYqhaOLvWGgAyBbizNO3i5O71WAvs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=I62ZZbC2TOjKIRZBcbiDR71c0sfNB/Lfx3c2qTXWbCykaEnBiv3fRHeQ2fXnF97lDtFX9jz61h7Qa31hSbth7HJmRlfwvc7e06IQB2OjY7d/4u5hrruX2pHt7LpqtUEe2sIUOHdOuG9NnS0W52irlFBTprLAnkYMHemmZzszSHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D5P5sTOE; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43d2d952eb1so9743535e9.1
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 15:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743720907; x=1744325707; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KGa+8ZMdS7gpoRneytTxWRsbp2Z865W9JZsv0w8PVU4=;
        b=D5P5sTOEx6e/7fci4N9reH9Ganp4La+ZQ75ppsXnwFy/a2vOqrBTiLwLiAXuUvkkWW
         y6LowZb4i4SJ30V8L2eQb7G6sb2wr0HxX0d6C+2mF1mIGSRP8BZSyYJJOGi+i/L3iagB
         FpT/O9GMrBAy2klNtQLI25VY78EBBYkyFdOB/tipG8O4fzrZVaMZno0KGhJrA15toDU5
         JbokaSSgQ28tYui3lSgWQDUQxNYi28mTflxY96a4lADIZKfhournz2W8vUXR3UUxamDZ
         kYZlbtPijZ+EIOo1udKq4rShUk9HV+/M766gXFNrGut+aQTeWjOdlSqF6fSeweV68927
         yfVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743720907; x=1744325707;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KGa+8ZMdS7gpoRneytTxWRsbp2Z865W9JZsv0w8PVU4=;
        b=m6DEGTpVo6osJuXL5bwfg49JrVXdMXPvqhQ/T9C65aqCu1BjiNNAhqPj8sndfK37P4
         CyMO8+fOPPr2e8QsIa8ZFr5pXTfZaO4FLNnWe+pjOTrMUKmbL/+8dC9sK1qjm6E91jrR
         jLHqG/IRklcRccQO16varDIbLOhyzJE0UDQWoong+WH926Y00xQlX9xDJXCcEVaLoFeS
         NgNqUdDVzIkpZ5qctqodOoqlJHfJeBNxidqMBGWHvaBGYLsXISQRLXIq19crn9LRa14V
         4djGnVTqyC3FUezL8eR84aUizt4RNs+3FzvnIVNAmfvZ/4dQbIfouipsYd9T8ySIe8S9
         890A==
X-Forwarded-Encrypted: i=1; AJvYcCVArGSLJWQJf1BfYvKprRsRd4gPmT58eV2hJw4jzt4tvTaQsSMEwTOFHF0YEHzzuhSkjGFaA++PfY09@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4032XJ/bCyvrs+jSRneIBGHxNiPThV3LXoPETCnjJdVBEY6pv
	slM3Va/sm1MnEyA4G2Ndl7eN7BzffpfyPzCjJI/diVN1EihXhejrq9wT8IwM/Q4=
X-Gm-Gg: ASbGncsG1felARwgev9NpTmCXJHrMC7o4leyXzNyvnkU0gI+QYra2IfxIpciDOZCbNz
	2nicHuxSuiULdqmdKsTTcct4TbJrUEf0dN4UEPxoh8YcE3kjGHYK2cEwthJbhdnRclVbJ5+rJBZ
	d2j+jk0wNpP2nPg99m4R2r/kYjqOy4EGrZrW5VEvLGDOPrEAJBUzMvYOGSiZsdhquoMepRzh18Z
	74bI+/SRl49AQTWr3aQ0mdL3I63xYXKzMT04n0bFPzC5EDDC2nM8pk+Qm+tLPlnC08EKCtXGajw
	fkT2J/uH3mIb6st4GolP4yF4Bff6EWNkWtDHsFh0R7xCUwJJZ63qbs6raTMCc36hrSeVNHq7cif
	GzJpO4lvpeA==
X-Google-Smtp-Source: AGHT+IFynmiOt/6lJD69mVRMbca518Iljdmmp1RJR24KFqvWoJOzmLG36nlygFLs5qyx1OzjN7Q7gg==
X-Received: by 2002:a05:600c:3595:b0:43c:ec4c:25b1 with SMTP id 5b1f17b1804b1-43ecf9c6639mr4969665e9.23.1743720907152;
        Thu, 03 Apr 2025 15:55:07 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301b8ae1sm2936829f8f.51.2025.04.03.15.55.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Apr 2025 15:55:06 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v3 0/2] Import IPU6 ov02e10 sensor driver and enable OF
 usage of it
Date: Thu, 03 Apr 2025 23:55:04 +0100
Message-Id: <20250403-b4-media-comitters-next-25-03-13-ov02e10-v3-0-b30d5693688c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMgR72cC/52NQQ6CMBBFr0K6dkzbASyuvIdxAXTASYSaljQYw
 t0trHRnXL6f/PcWEcgzBXHOFuEpcmA3JsBDJtp7PfYEbBMLLXUhUZ2gyWEgyzW0buBpIh9gpHk
 CXYBEUAguSk1KgkYqDcqTLUwlku7pqeN5T11vie8cJudfezmqbf0jEhVIaGyl8xLzxpjq8uCx9
 u7ofC+2StQf5nT/3ayTObcVYt2atuvKL/O6rm+nQVyDOwEAAA==
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
 devicetree@vger.kernel.org, Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2

v3:
- Various newline and indentation fixes - Saraki, Bryan
- to_pixel_rate() left as is:
  Discussed with Sakari and Hans and the current caluclation will do
  unless/until we add in binning.
- Kept cci_write(ov02e10->regmap, OV02E10_REG_COMMAND_UPDATE,
		 OV02E10_COMMAND_HOLD, NULL);
  Experimented by removing and gain broke - Sakari
- Check on v4l2_ctrl_handler_init dropped - Sakari
- Use v4l2_link_freq_to_bitmap - Sakari
- pm_runtime_setu_suspend - took code from ov02c10 - Sakari, Hans
- Fixed various release errors in probe taking fixes from ov02c10 again -
  Sakari, Hans
- Trap and return __v4l2_ctrl_modify_range() error - Sakari
- Trap and return __v4l2_ctrl_s_ctrl() - Sakari
- Switch to v4l2_subdevice with embedded lock pointer
  Dropped incoming mutex - took code from ov02c10 again - Sakari, Hans
- ov02e10_open replaced with ov02e10_init + callback hook - Sakari
- {enable,disable}_streams instead of set_stream
  Sakari suggest, took code from ov02c10 v10 - Sakari, Hans
- Compared ov0c10 v7 and v10 took various fixes from there
  which obviously should apply to ov02e10:
- Use of DEFINE_RUNTIME_DEV_PM_OPS + pm_sleep_ptr
- Reverse Christmas tree init_controls declaration list - Bryan
- Extends properties for orientation and rotation - Bryan

- Link to v2: https://lore.kernel.org/r/20250325-b4-media-comitters-next-25-03-13-ov02e10-v2-0-4d933ac8cff6@linaro.org

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
 drivers/media/i2c/ov02e10.c                        | 970 +++++++++++++++++++++
 5 files changed, 1103 insertions(+)
---
base-commit: f2151613e040973c868d28c8b00885dfab69eb75
change-id: 20250317-b4-media-comitters-next-25-03-13-ov02e10-23e68307d589

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


