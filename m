Return-Path: <devicetree+bounces-14551-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E8657E563E
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 13:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA2F82811F5
	for <lists+devicetree@lfdr.de>; Wed,  8 Nov 2023 12:30:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D22F017988;
	Wed,  8 Nov 2023 12:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Yi5/c6yU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD9C017747;
	Wed,  8 Nov 2023 12:30:00 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF74019B3;
	Wed,  8 Nov 2023 04:29:59 -0800 (PST)
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-53e08b60febso11608006a12.1;
        Wed, 08 Nov 2023 04:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699446598; x=1700051398; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cS/lc/ddj7Q4XbTV3i1orn67XEDRQtw3MjTVMcObW7s=;
        b=Yi5/c6yUob5LZfKaqW/JvoYUSpbRDGKY0CZ5MgbOqT3tEvKWtfcGHwhuAjplyNnt2D
         AGI3+LiQ2zReC9gZw+G9gqG65fW4daiolnf7uMTPhoWlRcTxaNEwAX0j9YV02wmRhVpl
         VXaVn/wbbvaTluypmZ8SOXfIbL3BvZlFbRyyV9rjtqv+laSuOXDkWL4FZOIWQmCRwNMY
         4IHjkHGCYjtyOTPiE5jB/pOv9T/7lG2KP8nZQNWIV78KHu36MHywB+8vVLHBYm5GNBoQ
         IZq7Xwni53ukBZ/fo5hBg4XHfL+7pxGOh1awwd9p8BPsdK3IK8VXErPFw0FbpVJKpPSO
         25lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699446598; x=1700051398;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cS/lc/ddj7Q4XbTV3i1orn67XEDRQtw3MjTVMcObW7s=;
        b=L89HVam5tvEdbxlHJ9A7rilkBduent4pEWptTWUpS8VwiFKVAbxsEkppJhiu87rvGf
         pKsfbPcOuWdA04NAfqqbr2m7pRUe4Mb3HYsQZuEyQZKx3y+KqatcsXzq4cxneuKuBWMu
         /d+MxpHseqZuaPmSpRpX01b54IDY0oRGovdPWR8vxvwR7G0/HksRRsPGkIjgQNkePxS/
         bs+NAFGxMppR2upAb9DQIGMi4GquOuri5fDDFDSi9odAykB6Oyr6CF6aNa/2Ps1DbTQF
         2z6BHRRH9+Av2JH2lCQCyHdXIIliY0rxOqhYCAZ6QA27ZxctlMZAFhMSY+KbcQHll2l8
         L90w==
X-Gm-Message-State: AOJu0YwfkD/ZMKcYNU0bq/36d3S5CQI4lzY4wytGyhp3dtiXtZpH+uXn
	6z9U+eJLtDutnEgbxbDTPDM=
X-Google-Smtp-Source: AGHT+IGq2kgZVAXlzTWOpsx5GB0LvyOh8oanSmb+EvlPbKoP2pxhCGHctr0sbCwGNWnI8m/ULXN5Ow==
X-Received: by 2002:a17:907:2cc5:b0:9df:eebe:dd90 with SMTP id hg5-20020a1709072cc500b009dfeebedd90mr1525312ejc.75.1699446598201;
        Wed, 08 Nov 2023 04:29:58 -0800 (PST)
Received: from [127.0.1.1] (2a02-8389-41cf-e200-8f74-d45a-3701-05b6.cable.dynamic.v6.surfer.at. [2a02:8389:41cf:e200:8f74:d45a:3701:5b6])
        by smtp.gmail.com with ESMTPSA id n22-20020a170906841600b009b27d4153c0sm971065ejx.178.2023.11.08.04.29.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Nov 2023 04:29:57 -0800 (PST)
From: Javier Carrasco <javier.carrasco.cruz@gmail.com>
Subject: [PATCH 0/4] hwmon: Add support for Amphenol ChipCap 2
Date: Wed, 08 Nov 2023 13:29:55 +0100
Message-Id: <20231020-topic-chipcap2-v1-0-087e21d4b1ed@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAEN/S2UC/x2NQQrCQAwAv1JyNrBNFapfEQ9pGt0c3C5JEaH07
 249DsMwG4S6acCt28D1Y2FLadCfOpDM5aVoc2OgREOfKOG6VBOUbFW4EirN43W8nIckBC2aOBQ
 n5yL5yN4cq/ohquvTvv/T/bHvP9kkVTJ5AAAA
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jean Delvare <jdelvare@suse.com>, 
 Guenter Roeck <linux@roeck-us.net>, Jonathan Corbet <corbet@lwn.net>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org, 
 linux-doc@vger.kernel.org, Javier Carrasco <javier.carrasco.cruz@gmail.com>
X-Mailer: b4 0.12.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699446596; l=2421;
 i=javier.carrasco.cruz@gmail.com; s=20230509; h=from:subject:message-id;
 bh=bHcWIgWizl8kFkDnXWBOVoctfrSa53gV1a1Z4H6xOvo=;
 b=iH6VtKJQyUQVrrCSWbgB0oFgpcdde942GAKHzklQ2ykwi8L0GLslbQDuIBmYhj5/3MEp3TXYr
 11PLPYX3N1DA9OEgfLcasTy5FluEi7/wYRLIXUA8ToqWURysBUg1JlG
X-Developer-Key: i=javier.carrasco.cruz@gmail.com; a=ed25519;
 pk=tIGJV7M+tCizagNijF0eGMBGcOsPD+0cWGfKjl4h6K8=

This series adds support and documentation for the Amphenol ChipCap 2
humidity and temperature sensor in its digital version.

This I2C device provides 14-bit humidity and temperature measurements as
well as low (minimum) and high (maximum) humidity alarms. A ready signal
is also available to reduce delays while fetching data.

The proposed driver implements the logic to perform measurements with
and without the ready signal, EEPROM configuration and alarm signaling.

The features this driver does not support (I2C address and command
window length modification) have been documented in the "Known Issues"
section.

The complete supported functionality has been tested with a CC2D33S
sensor (a 'sleep' device) connected to a Raspberry Pi Zero 2 w.
Different device tree node definitions (with and without regulator,
ready and/or alarm signals) have been positively tested.

The non-sleep measurement mechanism has been inferred from the first
measurement, which is carried out automatically and it is common for all
part numbers. Any testing or improvements with a non-sleep device is
more than welcome.

The tests have also covered the properties added to the hwmon core to
account for minimum and maximum humidity alarms.

Signed-off-by: Javier Carrasco <javier.carrasco.cruz@gmail.com>
---
Javier Carrasco (4):
      dt-bindings: vendor-prefixes: add Amphenol
      hwmon: (core) Add support for humidity min/max alarm
      hwmon: Add support for Amphenol ChipCap 2
      dt-bindings: hwmon: Add Amphenol ChipCap 2

 .../bindings/hwmon/amphenol,chipcap2.yaml          |   72 ++
 .../devicetree/bindings/vendor-prefixes.yaml       |    2 +
 Documentation/hwmon/chipcap2.rst                   |   73 ++
 Documentation/hwmon/index.rst                      |    1 +
 MAINTAINERS                                        |    8 +
 drivers/hwmon/Kconfig                              |   10 +
 drivers/hwmon/Makefile                             |    1 +
 drivers/hwmon/chipcap2.c                           | 1009 ++++++++++++++++++++
 drivers/hwmon/hwmon.c                              |    2 +
 include/linux/hwmon.h                              |    4 +
 10 files changed, 1182 insertions(+)
---
base-commit: ffc253263a1375a65fa6c9f62a893e9767fbebfa
change-id: 20231020-topic-chipcap2-e2d8985430c2

Best regards,
-- 
Javier Carrasco <javier.carrasco.cruz@gmail.com>


