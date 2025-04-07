Return-Path: <devicetree+bounces-163616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id ACDA1A7D921
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 11:13:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4559D3AAB64
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 09:13:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C4422F388;
	Mon,  7 Apr 2025 09:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lUvL0iM+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABBD222B8B0
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 09:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744017193; cv=none; b=Nl+hcB0Z3b1X0oHkey0Lbdnh+b3tzAU/UP2cCoSGDcJ/PZLRtE03Rh0JunDPOLof3BSUPtohw8zJYlFjuxwUxDQ+BPCtRSq5We7edagO1QIbmooxPtW9rIlBNn89UNxAfEtcCPb760ZT9dH/mAeZjunTAmTW1S764rWt/tbK760=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744017193; c=relaxed/simple;
	bh=6uWV+g7N5su9OFmdeI+lP8L8Ldpf4kulO+15GfFQz/o=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=DRkxcjqhdfWUvM2bVJ+zV5feq+kjniUhtbTNZNXs2tfWdv1Ti5A2PqCnD7iPJo92jX5qe6wGytmi6Fqev6vomuDYdaDXDNgGLnguAuc4P8QK4qfp2BTc/DyR8Udth7ZaAMLMsmuYIH5GmKlUl9N7cc3eFgZxY5Zayy/h3Sfs8W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lUvL0iM+; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4394a823036so37319605e9.0
        for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 02:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744017190; x=1744621990; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SVbDA/2mS9MORuf/xQExeEtd3aJn8U1HPFMZTbDcqto=;
        b=lUvL0iM+apEM7/gCVBfOq5UCsLd41h7Eg27jMUA4mTMrPQuLTNxF8rmUKOIoPRaJXX
         a4NTOLBIuVb/kq4m/h2vIqGQ86+BKPQl0FxSRil0vCqMp1Jx51f4ekJntW7lbKya6QSO
         oGHApeKkg3tW1SKdC8rWSJ0rYGB7gMJ+puPJz18SUq1xuwozxQ3yjXmGQ5CjL+/4m/Sz
         vauihjBoJpBzKNztYydrH6UWjY95Ib6eCG5aFqsX4Jp0NGadAeZpR+mQ6W0JjWxU+U23
         vHEBKxFGZLjB2DtMpEnge8Yb5vzFQtO+AAtffjbHEUNjI5qczMsxEyGESvqWhYlvJPzJ
         HOOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744017190; x=1744621990;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SVbDA/2mS9MORuf/xQExeEtd3aJn8U1HPFMZTbDcqto=;
        b=unKcXa0dpkkF3l+Ujql0rrl3ecvCacIhCyNlyx3oDL4aIzq9vOEQ0WPWC57/SjIePx
         E1vf9VtUV0sK+RS7oO7cMS0AEuzMUZlkOpMLOyngoYrb17VE0hZ3rvacemIT5TcYKu+i
         Iv3KYzm2pByPd0ZCMZFVroxLETWJ5OtPJ/Fj03Q7I/XUe7pWbR+bhiPnzn9+lXGy3AP0
         eWtyja/Y4Jlb6NTEOa3DXBWXhLn0uhcqfgC7OjU+yhFPqaZ8BlAWH8UWfACAV8OUF7B4
         62P35OXNRG5n4fZ2jqsyNLIP4hWJjRqkqGdk9qMjSlYgg4zRvuykjmtChcwWMHnKHKLA
         uWgg==
X-Forwarded-Encrypted: i=1; AJvYcCXlEQXeoDrvvZe/4GJsM5uFrhoDV920fKLXsw5RBTtRBn3+rh3s8i6947ZjHeO2VUfELbAI1rBHlnqm@vger.kernel.org
X-Gm-Message-State: AOJu0YwTYkp+rb+h99kOVSe2RtwQQqaSbgJrTEc6u7QaJIqsA42kylyr
	tMqXOrq3TlkuFPDl4I266byzKcrguv5a/5tc1fBF0k5KVDneCgtIIfuWAIYgaKI=
X-Gm-Gg: ASbGncuK+JGxRDeGYIussDlT1JnAJjpuISkRtOEZdDZbUCzgcQS8WpdNQ0MuP+qOgUW
	vMCLt+VWCXN2kWlVnNkRBrrvfM9rRVnzP0cg0MMREsI+rNiOk9uhzPa09oReJql7BcVSasIeEh2
	nbnqanJ+lMMpc+RBYzDFtlrTDZpRm5+WOdH8TGsIRYqNzkSuTwn0isSqqPJWiVqCYc/kh4rn0Hw
	KygcYzNPSujDT0XZ1lb20hC+86EfQXGWIPhqV6PUAmFBVdkwy2EaulKcUew0NjwmTEQVQeAAFJ+
	vSNAiT2yKQQ1O4FN60Jelz/8ST6maUi0jgtQuyhIlyKk0lubPfg+HczcaaD1NErqYaxrP7feLsE
	OK2q1Y1gJLyOnVVd+YI6g
X-Google-Smtp-Source: AGHT+IG7htZPOEG/i9EQjeBgOIcKlUSu0J2NP0fWj0LgVCpdiugldJ0d4EalifYLMaVt+msVg5hx2w==
X-Received: by 2002:a05:6000:1447:b0:39c:30c9:815 with SMTP id ffacd0b85a97d-39d6fc49b7bmr5240754f8f.21.1744017189903;
        Mon, 07 Apr 2025 02:13:09 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c301a9bcfsm11673977f8f.33.2025.04.07.02.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Apr 2025 02:13:09 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v4 0/2] Import IPU6 ov02e10 sensor driver and enable OF
 usage of it
Date: Mon, 07 Apr 2025 10:13:06 +0100
Message-Id: <20250407-b4-media-comitters-next-25-03-13-ov02e10-v4-0-211e3e6fae90@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIACKX82cC/53OQW7CMBAF0KsgrzvI9jjGZsU9KhaJPYGRSozsy
 KJCuTsOmxZ1g7r8I/335y4KZaYi9pu7yFS5cJpaMB8bEc79dCLg2LLQUncS1Q4GAxeK3ENIF55
 nygUmus2gO5AICiFVqUlJ0EjWodzFznnRuGumkW/Pqc9jy2cuc8rfz+Wq1us/RqoCCUP02lg0g
 3P+8MVTn9M25ZNYV6r+Jbf6+7JusokesQ8ujKP9I+OPbFr3fRnXn1HGznq0zoUXeVmWB/utncG
 VAQAA
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

v4:
- Fixes checkpatch splat missed by my b4 prep --check
- Link to v3: https://lore.kernel.org/r/20250403-b4-media-comitters-next-25-03-13-ov02e10-v3-0-b30d5693688c@linaro.org

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
 drivers/media/i2c/ov02e10.c                        | 969 +++++++++++++++++++++
 5 files changed, 1102 insertions(+)
---
base-commit: f2151613e040973c868d28c8b00885dfab69eb75
change-id: 20250317-b4-media-comitters-next-25-03-13-ov02e10-23e68307d589

Best regards,
-- 
Bryan O'Donoghue <bryan.odonoghue@linaro.org>


