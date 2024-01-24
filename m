Return-Path: <devicetree+bounces-34568-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C681983A360
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 08:45:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1F4DEB27051
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 07:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CAA317542;
	Wed, 24 Jan 2024 07:45:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ru1lYier"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A37168CE
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 07:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706082338; cv=none; b=QPfTQ4QstgMDZyRgffk3/byZ/MAG/W2oOLW9+jO2onvwVOQYrr9RapXNvzRx0ypEX/7Pj0z0/lqFvQZaLi3jx9kKHysb9hIWJQ2+GFiY1I0lNjCR0wFnLzH7drblO+pZJDk2c+lGDxA8J52EFoUx7s18zBfu6F+MR0q+cyihnBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706082338; c=relaxed/simple;
	bh=9hHJ9Tjddl6oKs6KNgqfOrL1Oaun8IcxvjOpSCphLJc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=jwhxRbGDZfV8ixUUq7U58Lx1icFVY/SZQ7avwmfPDr8RDubmWHu8DXNRY8Ra9EWKr6l5afgbRBS4e95B9Id6g+F/ZVY95BetAgT+bnBjaTrOLijnlgNmNWcC9m06otsQ6BWGNg51lOxY3PtH2O5YHfDJuj01v7HCAgndb+yA++g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ru1lYier; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-55a179f5fa1so6054704a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 23:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706082333; x=1706687133; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zuzjJVznUnYUy9Ft4llIwCzyvNEHaayAnpgUoY5ttDs=;
        b=ru1lYier+DUm+7d2RYDjWfdN8BcfuS7I4g7vmlc6obR3mjKRNb/nb/dWQwHvcgF6qO
         QRjuFZD34JVOuHinBcGm345/9VsiuPZ9tdzEaFAo85l8vhJ/Kjz93XktGmURsJRrK3m/
         Hq1ElY49zM41mTW5JC9dlRNtUso4nPlrwoHGsGbXKghp7puH6OAAVKh/iQ3BH7+TJOxF
         UovuOdcz3J5cXAPg4J4lS6AXYQVakGF3paKN1csGrjOYEEV3Ly1HUa27BavVouxypw+m
         rs3pGP0U+VGwgMPCarOpxFf+rnJwN9/GZEr/AfJbGHN6L3A1rZ3gFBtGKKAlRJ9BD6hj
         tsqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706082333; x=1706687133;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zuzjJVznUnYUy9Ft4llIwCzyvNEHaayAnpgUoY5ttDs=;
        b=sBhFLnWa5Nwn+bPBkUiuZWjg4WB0+1tTkwM0MrQr4oCkSZ9y4fp8OF4tWgsUqmnurX
         kUId20RhyuvK1ESj+Ul+xdigl2eYZ7j4cczvAlS+07QXgL/o0bpONt7GNXxJ7zI24BBU
         GyFyAfKSq6/j7EF9pTJSCDyfQWVoD9y/wonLVHqpnAMVAa/2xBrUKGBXtcfOlAuw3gUJ
         4VgRCUKKyqWZzZLGPD35pJvCWzHnlfYeswjFqv54LKlzQebcH/AFvJEGEMavjZCrSmPV
         QD0ytZw86UYPVqD6imPv/65tkwCF+tFmSG4+BFPl/kyL8yVxban6d5o/Qu3czyB60py6
         d8NA==
X-Gm-Message-State: AOJu0YzrcpADygy9FORExp/x8yCFo4lqPbIGBGiN7B7n5RnWBTe6r2wS
	xMrIZSksegUF2CSQrAmXLmp91JifYHT/glu/FiMiKt0w8YxN6Nz5pqDK48cYHI4=
X-Google-Smtp-Source: AGHT+IFLuSjjLbuh0i+hnBGGxlAwuvl8/06WsnVEUJ0ZLGsatmeroNdVNt3Eh2FihPcATDTK3Dimng==
X-Received: by 2002:a05:6402:2706:b0:55c:a632:7f85 with SMTP id y6-20020a056402270600b0055ca6327f85mr619745edd.45.1706082332869;
        Tue, 23 Jan 2024 23:45:32 -0800 (PST)
Received: from krzk-bin.. ([178.197.215.66])
        by smtp.gmail.com with ESMTPSA id c4-20020a056402100400b0055c8a30152bsm1306951edu.83.2024.01.23.23.45.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 23:45:32 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Banajit Goswami <bgoswami@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Viresh Kumar <viresh.kumar@linaro.org>,
	Frank Rowand <frowand.list@gmail.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org,
	linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Chris Packham <chris.packham@alliedtelesis.co.nz>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Sean Anderson <sean.anderson@seco.com>
Subject: [PATCH v5 0/6] reset: gpio: ASoC: shared GPIO resets
Date: Wed, 24 Jan 2024 08:45:21 +0100
Message-Id: <20240124074527.48869-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Hi,

Patch #2 (cpufreq: do not open-code of_phandle_args_equal()) and patch #4
(reset: Instantiate reset GPIO controller for shared reset-gpios) depend on OF
change (patch #1).

Changes in v5
=============
1. Minor comments from Philipp: missing cleanup.h, correct indentation of
   pr_err(), shorten gpio_device_find_by_fwnode() line.
2. Acks/Rbs.

Changes in v4
=============
1. New patches:
   of: add of_phandle_args_equal() helper
   cpufreq: do not open-code of_phandle_args_equal()

2. reset-gpio.c:
   - Drop unneeded comment (Bartosz), add Rb tag.
   - Do not assign of_node.

3. reset/core.c:
   - Implement most of Bartosz feedback (I responded to one which I did not
     implement) and comments from Philipp.
   - Expect either rcdev->of_args or rcdev->of_node.
   - Drop __reset_gpios_args_match() and use common helper (Philipp).
   - Move declarations of automatic-cleanup variables in
     __reset_add_reset_gpio_lookup() to place of use (Bartosz).
   - Separate gpio_device_get_label() and kstrdup() (Philipp).
   - Correct doc for __reset_add_reset_gpio_device(), rewrite few comments.
   - Drop unneeded "r" variable in __reset_find_rcdev() (Philipp).
   - Drop of_phandle_args initialization in __of_reset_control_get (Philipp).
   - Check if CONFIG_RESET_GPIO is enabled before trying to look up reset-gpios.

4. Drop Chris' patch: "i2c: muxes: pca954x: Allow sharing reset GPIO", because
   discussion is on going.

Changes in v3
=============
1. reset-gpio.c:
  - Add reset_gpio_of_xlate (Philipp).
  - reset_gpio_of_args_put->reset_gpio_of_node_put (Philipp).
  - Expect via platdata of_phandle_args.
  - Do not call device_set_node() to attach itself to reset consumer
    (the final device).  This was questionable idea in the first place.
    Bartosz suggested to use GPIO_LOOKUP to solve this.

2. reset/core.c, implement Philipp's feedback. That was a lot:
  - Commit msg fixes.
  - Add new platform_device earlier, when reset core found "reset-gpios" but
    not "resets".
  - Do not overwrite of_phandle_args.
  - Expect matching .of_reset_n_cells.
  - Pass of_phandle_args as platdata to reset-gpio.
  - Rename reset_gpio_device->reset_gpio_lookup and others. Fix few comments
    and code cleanup pointed on review.
  - From Bartosz:
    Use GPIO_LOOKUP and a lot of cleanup.h in __reset_add_reset_gpio_lookup().

3. Include here Chris' patch: "i2c: muxes: pca954x: Allow sharing reset GPIO".

Changes in v2
=============
1. wsa884x.c: add missing return in wsa884x_get_reset(), correct comment.
2. qcom,wsa8840.yaml: fix oneOf syntax.
3. reset-gpio.c:
   - Fix smatch warning on platdata evaluation.
   - Parse GPIO args and store them in rc.of_args.
4. reset/core.c:
   - Revise approach based on Bartosz comments: parse the reset-gpios phandle
     with arguments, do not use deprecated API and do not rely on gpio_desc
     pointer.
   - Create a list of instantiated platform devices to avoid any duplicates.
   - After creating reset-gpio platform device, try to get new reset controller
     or return EPROBE_DEFER.
   - Drop the "cookie" member and add new "of_args" to "struct
     reset_controller_dev".

Description
===========

We have at least few cases where hardware engineers decided to use one
powerdown/shutdown/reset GPIO line for multiple devices:

1. WSA884x (this and previous patch):
https://lore.kernel.org/all/b7aeda24-d638-45b7-8e30-80d287f498f8@sirena.org.uk/
2. https://lore.kernel.org/all/20231027033104.1348921-1-chris.packham@alliedtelesis.co.nz/
3. https://lore.kernel.org/lkml/20191030120440.3699-1-peter.ujfalusi@ti.com/
4. https://lore.kernel.org/all/20211018234923.1769028-1-sean.anderson@seco.com/
5. https://social.treehouse.systems/@marcan/111268780311634160

I try to solve my case, hopefuly Chris' (2), partially Sean's (4) and maybe
Hectors (5), using Rob's suggestion:

https://lore.kernel.org/all/YXi5CUCEi7YmNxXM@robh.at.kernel.org/

Best regards,
Krzysztof

Cc: Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Sean Anderson <sean.anderson@seco.com>

Krzysztof Kozlowski (6):
  of: Add of_phandle_args_equal() helper
  cpufreq: do not open-code of_phandle_args_equal()
  reset: gpio: Add GPIO-based reset controller
  reset: Instantiate reset GPIO controller for shared reset-gpios
  ASoC: dt-bindings: qcom,wsa8840: Add reset-gpios for shared line
  ASoC: codecs: wsa884x: Allow sharing reset GPIO

 .../bindings/sound/qcom,wsa8840.yaml          |  11 +-
 MAINTAINERS                                   |   5 +
 drivers/reset/Kconfig                         |   9 +
 drivers/reset/Makefile                        |   1 +
 drivers/reset/core.c                          | 215 ++++++++++++++++--
 drivers/reset/reset-gpio.c                    | 119 ++++++++++
 include/linux/cpufreq.h                       |   3 +-
 include/linux/of.h                            |  16 ++
 include/linux/reset-controller.h              |   4 +
 sound/soc/codecs/wsa884x.c                    |  53 ++++-
 10 files changed, 410 insertions(+), 26 deletions(-)
 create mode 100644 drivers/reset/reset-gpio.c

-- 
2.34.1


