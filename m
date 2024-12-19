Return-Path: <devicetree+bounces-132858-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 30A5C9F8562
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:08:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 035157A113E
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E4B841DC995;
	Thu, 19 Dec 2024 20:03:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="G4qKluv3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D20A1D88BE
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:03:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638628; cv=none; b=iSEWyTjRSTfEUUBt1rWSEJjvNCCF+zRF8rhsj8fYJeISlA8c0EkW72bw78KlRnPsZfqv1N6TClXD5eCF54fa0/0ijSWF+9a3CjBcq8NKLVUVWMcsmKUS4ITkaSmrioXguvpkq0r1fRD9y8qH2xLWzChdKmGJ3MSoLgc5XwEf3+Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638628; c=relaxed/simple;
	bh=hs73sMLvLoilyKT1Gf8Ph0pXYZa/0ATd3gxDe4Fc9Ro=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Cona//5FZpQHfSh2A8uKVTeKEGoh0Q4uHxuaYsx4OjYpxqn/9jIlWrrxNn+9wpFSXFXLWjhFejFZLAZjlJWNFVcpaP731r3ac9Hn9e2+wOXIHCcn81iVVgJnSn+nOj+mOfTswZaKqclv8u8mgvHrZF0/9rPT0U71iAtIBhNxvjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=G4qKluv3; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-5d34030ebb2so1853120a12.1
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638624; x=1735243424; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G1sjRJK5Ayx/85behtxrr4o80clOLqkokZkxXbtN8qY=;
        b=G4qKluv3ikRNkV1rmL+YOs/dCxr9OQAC7LJoyAPHhVjptWTfE81/c0oXrH4Emu7cU6
         MJVpKPtgWwLAFlcoLy9rvDk0EvqPNb86RbBIsvHMGLNWaTuHeRa+D03uwxYwSEv+Y5cX
         uAgLiN21hocpOmOM2LmFJvnx+7Awq3L9loaLBEuioqLQ1NtYmsuU+8i/2yC1pezKMgA6
         yUbidj7YLtHbqGMXOqQcSZ47zto2LtoSZPrgcLl15IJ58Kdufx4NOH27MPTkhh3cKmaH
         sDcwaKivsf9Wx7cma6N1pd3BKslZqqmQgQKtx7vSQyxU3YJQbsXBfn9zNkqSTTspSGdm
         pfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638624; x=1735243424;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G1sjRJK5Ayx/85behtxrr4o80clOLqkokZkxXbtN8qY=;
        b=iDvMSih0+YvZTvP/pAIqQT/rD0IAJzUAJWafDBYm/XTXDbah83mUVledYJdLhKqjwX
         vL1g9IGRbZppY2mTxBgAT2zamYmc/TxiJHA91WB+b/zQJXzudGZiebri4r5nQicMWNbC
         FcHzhaGeGilIlTAaHMNKTHHAP3UQZSlyGYq/vkVOEpHpjKCc22KE6LsoeWmVZb/Jb5yQ
         mBeLB2nUMjn8hC06xewMpaDukNh++u8bT3lT6jOLOYVLdxHMLm9yiTZyGarZYpiLaPen
         MJHl7oFK9jSoVfTs6ZOV+WQ/mWH/pkQjJgy7Ciq/qwi9LyBj7Yv+rVAyETdZ90IYikC5
         k7HQ==
X-Forwarded-Encrypted: i=1; AJvYcCVMpsojXX7hY7UXoawM3diJGJXyUMx5CYOh+fQzodL4MiJ/H/KFyW3j7/rd66vPHywabnmD1TAVyaSU@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyw1JoN2bOzXDRbgoZ6wOTqMGXVVDAVNWZX4pNN00eI6r3zAI2
	OS1EuWpZSCkOWZY2eYm4IGC/SuzDfUAanzrVfRYtt6asEmzxCRAoE7aiY3szpMo=
X-Gm-Gg: ASbGncvPGOL5rQ6ubQxPkl1oTds8O9oc3Dv+pghbS6HyeWsb1+BZvwmOPOa0ZDmumTL
	UIqPijAQmI3Y9UeDfM9xtbU6Gj56V5S9xAT2mbJ9/eSTaimv5+LIXbw5/SyV4SRbt37Zw8rZDa+
	iu7sSjR3wCYPHI9wOKSD+LmWheb3Q8/EeYpXBmJXkFz+B8pgPpa9LTJJmGcnVh59CMbNDg25FD9
	OAx2gRNS4hPU8V0J58q+RPsL72EgJFZZWVhEPz3HUIwnto7YQ==
X-Google-Smtp-Source: AGHT+IGAvsK3XVcMr9kgAG1Mj7JSOsgRJhOBlTEpjnBuXG1glmCBkvGYiUfZlpLkR+ktWVwR3nSskQ==
X-Received: by 2002:a05:6402:214f:b0:5d0:cfb9:4132 with SMTP id 4fb4d7f45d1cf-5d81dd9953amr159640a12.18.1734638623778;
        Thu, 19 Dec 2024 12:03:43 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d80678c8cfsm946417a12.39.2024.12.19.12.03.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 12:03:42 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v4 0/4] firmware: ti_sci: Partial-IO support
Date: Thu, 19 Dec 2024 21:02:11 +0100
Message-Id: <20241219-topic-am62-partialio-v6-12-b4-v4-0-1cb8eabd407e@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMN7ZGcC/32Py26DMBBFfwXNuhPhh8xjlf+osrCNaUYNmNqGJ
 Ir49zrAoqsu72h0zr0viC6Qi9AWLwhuoUh+zEF+FGCvevxySF3OwEsuWVnWmPxEFvWgOE46JNI
 38rgoZByNRMsr0RttpZQVZMYUXE+Pjf952XNwP3PWpP0IRkeH1g8DpbZY1IkJDJbBX39bHPbms
 A9Wj3jX326eMPo5WHc0qC3rVNMIZrq6VfA2XikmH57bwEVsyp2W3//fsggssa+seo9qVM3ORj9
 vZII75b5wWdf1F2xzaAA/AQAA
X-Change-ID: 20241008-topic-am62-partialio-v6-12-b4-c273fbac4447
To: Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>, 
 Santosh Shilimkar <ssantosh@kernel.org>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Anand Gadiyar <gadiyar@ti.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4882; i=msp@baylibre.com;
 h=from:subject:message-id; bh=hs73sMLvLoilyKT1Gf8Ph0pXYZa/0ATd3gxDe4Fc9Ro=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTathNztueFNv0++oVS/V5lqxHEhh4Tix0e6ew/vvNq
 kkJKk4nOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJTGlhZDhQ6B+fJc5ov2Tz
 ygtK5h/2+KwNjTqYdL3g2bX/rR2pcUGMDO9Yzwe/LdrqJCPtrpF5IPZdXtgSWUEPxkcZ3Q5dS80
 5+AE=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

Series
------
Partial-IO is a poweroff SoC state with a few pingroups active for
wakeup. This state can be entered by sending a TI_SCI PREPARE_SLEEP
message.

The message is sent on poweroff if one of the potential wakeup sources
for this power state are wakeup enabled. The potential wakeup sources
are found by looking for devices that list "poweroff" in the
wakeup-source property in the devicetree. The wakeup sources can be
individually enabled/disabled by the user in the running system.

The series is based on v6.13-rc1.

Partial-IO
----------
This series is part of a bigger topic to support Partial-IO on am62,
am62a and am62p. Partial-IO is a poweroff state in which some pins are
able to wakeup the SoC. In detail MCU m_can and two serial port pins can
trigger the wakeup.
A documentation can also be found in section 6.2.4 in the TRM:
  https://www.ti.com/lit/pdf/spruiv7

This other series is relevant for the support of Partial-IO:

 - can: m_can: Add am62 wakeup support
   https://lore.kernel.org/r/20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com
   https://gitlab.baylibre.com/msp8/linux/-/tree/topic/mcan-wakeup-source/v6.13?ref_type=heads

Testing
-------

A test branch is available here that includes all patches required to
test Partial-IO:

https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-partialio/v6.13?ref_type=heads

After enabling Wake-on-LAN the system can be powered off and will enter
the Partial-IO state in which it can be woken up by activity on the
specific pins:
    ethtool -s can0 wol p
    ethtool -s can1 wol p
    poweroff

I tested these patches on am62-lp-sk.

Best,
Markus

Previous versions:
 v1: https://lore.kernel.org/lkml/20240523080225.1288617-1-msp@baylibre.com/
 v2: https://lore.kernel.org/lkml/20240729080101.3859701-1-msp@baylibre.com/
 v3: https://lore.kernel.org/r/20241012-topic-am62-partialio-v6-13-b4-v3-0-f7c6c2739681@baylibre.com

Changes in v4:
 - Rebased to v6.13-rc1
 - Removed all regulator related structures from patches and implemented
   the wakeup-source property use instead.

Changes in v3:
 - Remove other modes declared for PREPARE_SLEEP as they probably won't
   ever be used in upstream.
 - Replace the wait loop after sending PREPARE_SLEEP with msleep and do
   an emergency_restart if it exits
 - Remove uarts from DT wakeup sources
 - Split no response handling in ti_sci_do_xfer() into a separate patch
   and use goto instead of if ()
 - Remove DT binding parital-io-wakeup-sources. Instead I am modeling
   the devices that are in the relevant group that are powered during
   Partial-IO with the power supplies that are externally provided to
   the SoC. In this case they are provided through 'vddshv_canuart'. All
   devices using this regulator can be considered a potential wakeup
   source if they are wakeup capable and wakeup enabled.
 - Added devicetree patches adding vcc_3v3_sys regulator and
   vddshv_canuart for am62-lp-sk
 - Add pinctrl entries for am62-lp-sk to add WKUP_EN for mcu_mcan0 and
   mcu_mcan1

Changes in v2:
 - Rebase to v6.11-rc1
 - dt-binding:
    - Update commit message
    - Add more verbose description of the new binding for a better
      explanation.
 - ti_sci driver:
    - Combine ti_sci_do_send() into ti_sci_do_xfer and only wait on a
      response if a flag is set.
    - On failure to enter Partial-IO, do emergency_restart()
    - Add comments
    - Fix small things

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
Markus Schneider-Pargmann (4):
      firmware: ti_sci: Support transfers without response
      firmware: ti_sci: Partial-IO support
      arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
      arm64: dts: ti: am62-lp-sk: Add wakeup mcu_mcan0/1 pinctrl

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts |  52 +++++++++++++
 arch/arm64/boot/dts/ti/k3-pinctrl.h      |   3 +
 drivers/firmware/ti_sci.c                | 122 ++++++++++++++++++++++++++++++-
 drivers/firmware/ti_sci.h                |   5 ++
 4 files changed, 181 insertions(+), 1 deletion(-)
---
base-commit: cbc4912199deab59fdbd830b115d81941d0add46
change-id: 20241008-topic-am62-partialio-v6-12-b4-c273fbac4447
prerequisite-change-id: 20241009-topic-mcan-wakeup-source-v6-12-8c1d69931bd8:6
prerequisite-patch-id: eba4f2096c69d9c734a4a4491e062bd8b01d26fd
prerequisite-patch-id: 830b339ea452edd750b04f719da91e721be630cb
prerequisite-patch-id: 56fd0aae20e82eb2dfb48f1b7088d62311a11f05
prerequisite-patch-id: 41f55b96c0428240d74d488e3c788c09842a1753
prerequisite-patch-id: 4ab7269193dbcfd449349ccd41b23914bbbdaa6b
prerequisite-patch-id: 24a735db927cbe2b1e0c6c5f3985b6676ce5528c
prerequisite-patch-id: 52dbbf390d3f7e4a3859e60e4f660bfe39b92cd9

Best regards,
-- 
Markus Schneider-Pargmann <msp@baylibre.com>


