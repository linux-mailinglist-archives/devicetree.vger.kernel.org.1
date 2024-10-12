Return-Path: <devicetree+bounces-110651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3627999B58E
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 16:40:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 598E51C215E5
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:40:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 93190195FF1;
	Sat, 12 Oct 2024 14:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JE5bdMQq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7A418593E
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 14:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728744022; cv=none; b=e7LGxIN2ZYN5J9kl/r58nwpqCnuBcEHkyt+XiPnnmaLbuoY51xl0CFqAxM2UdmKWNmlB8wDsixpmN18EwLsHb4cU71/I7vAIzz+r5vjDP2ClWmaNEdcWv/qDDL/UPvBD24z1SuaLLMqtzYsNRypdKOD5/ICr1hW2X2lJMKvYifY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728744022; c=relaxed/simple;
	bh=bjgCZuf1CNhYvHGqjKu0T/tJiROBvAfj6oaejumOuP4=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Pmu9TSYXCXeg5DWjMCywKAKCWE/SOUz3r1rIzAGsANoD1OlwnBbP/sRUqwM/cU7TQ7Upy8oQzKIDBb5XQGEUbXbVqgdOMGcbziTqKl2enq1q2nyjiBa44Cw5TC7g3ltg2IluON4MqB2k+w8ctFeh6E/l4AkXvogHmEZN+8+AGpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JE5bdMQq; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a99f3a5a44cso39288666b.3
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 07:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1728744017; x=1729348817; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=G++4SxI8pPH/3++RsoX5MQAQ4htvuGVigMekLgUY1uM=;
        b=JE5bdMQqdXrhednW/zX4EUXBmjEDTsXzQ0sbqLcBY3Ngx04w2zLlqdlJGuH4/S/oHI
         ez5UgUbyJtPefgY0+KdzYSIAizaw+qJnLUSSsvIjzelwMx3859jxMMxpjXl/+ahB6MdA
         XddaXADwolmVWWpxkRRnSybtoQmSXxhtcxEQ4hsK7MW0XpMInYOP0nBpjUnfaJfy7rEL
         cmQCzJfY4AVoEeetK0rh5x9Aqw4PnF5aZHoF8ddmFCcBWdbmivFz4tf2k0EsnOf7yo9L
         YcJjcVWnyVV0RkFIxpSWjWomLpg4EoaoQQATWH2FxhJ2Gxp6GN67bomlYywAKDKEYINS
         pfbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728744017; x=1729348817;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G++4SxI8pPH/3++RsoX5MQAQ4htvuGVigMekLgUY1uM=;
        b=L62MnBUFY5dmptPwji6E5gq9nkzi9o6ynRw/u3e8KrDsMD95djBCKRdNxc4NOsPxIj
         RWFKFzlsgOIbOWZFEwKXtFdntZHQ8RFzWRfHpfwQ6+OYgeRyj6Pqfh0riItEJlXyueUj
         tks0nVW0zN9dAOOjiIaP1AKXnqgy1bROyJ6i8Wr9nRm0xLxgMAM4heboxFi3mutQdurZ
         9b4ANpa1SBzPuwe9bsF/vIVNzeesRJXNwcCbM1DkhgbDaiVuUFWMktA89ISk8pKa+o97
         hpwhOCmGj/FYne8CqLixI/lCstyV9b+2vBaCJAjLlSlrF/pQfH4QACaEETS5lNcetaWw
         YxbA==
X-Forwarded-Encrypted: i=1; AJvYcCXNkwNrIKCRnPaKM2bIpo4RwV7to0rThUYbcI9gn9JvGmWfh8ueLvusT8aLyJjQ1xpyDlr6I5hKcL30@vger.kernel.org
X-Gm-Message-State: AOJu0YwfT+X8Ku3Kj8WUTxbo3VvsOROz33JFcZt+94fs9yRpWRGz5MA4
	zqKqa4CDU2COvnplolMJvwc0qOSwxB8FZyWStWYOeEdreFPUkMYJwaO7TyXY0plmBArorAL6hTw
	B
X-Google-Smtp-Source: AGHT+IH2LW+Gj2kiFbu87MfJYgwtL2O7iKxIrCaTXzgpgrDvImTPTYWEV+9R1WlAsR49U3CkQ3ooDw==
X-Received: by 2002:a17:907:e652:b0:a99:384e:ade1 with SMTP id a640c23a62f3a-a99b93daac4mr481589466b.36.1728744017259;
        Sat, 12 Oct 2024 07:40:17 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99f2536984sm57097666b.10.2024.10.12.07.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 07:40:16 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Subject: [PATCH v3 0/6] firmware: ti_sci: Partial-IO support
Date: Sat, 12 Oct 2024 16:39:26 +0200
Message-Id: <20241012-topic-am62-partialio-v6-12-b4-v3-0-f7c6c2739681@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAB6KCmcC/22OS07EMBAFrxJ5TSN/EudzFTQLx+lACxJ73HYAj
 ebuWEwWLFhWS131boIxEbKYmptIeBBT2CuYp0b4N7e/ItBSWWipWyXlADlE8uA2qyG6lMl9UID
 DgtIwt+B1b9bZ+bZte1EdMeFKX7/+l8uDE15LzeTHUcyOEXzYNspTc9jn6kleib/9qTnrFjKxJ
 +Bv5sIR9yUhlw0BbdfJXkvXyXVS5v/v8dy+ebfDp3vHEoFDSR7P/YNXix1Ho+ZlmIy43O8/mT7
 asR8BAAA=
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=5332; i=msp@baylibre.com;
 h=from:subject:message-id; bh=bjgCZuf1CNhYvHGqjKu0T/tJiROBvAfj6oaejumOuP4=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNK5unRk/ncnzr/x+uf3xM0KU5IZmDjdlF9932swO2Z2+
 bGv9UudOkpZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJGNQy/E8/dFDJSunzhd87
 OgwDo32bz10LOiAdeS7eZmnJH0WOf2aMDJ0V1rku509/7JYr0vq+f/K9a35TO/X7JOReRhenbT6
 8lhEA
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
are determined by the power supply name of devices as there is one
always-on power-line that powers all canuart devices that are powered
through Partial-IO as well. The wakeup sources can be individually
enabled/disabled by the user in the running system.

The series is based on v6.12-rc1.

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
   https://lore.kernel.org/lkml/20241011-topic-mcan-wakeup-source-v6-12-v3-0-9752c714ad12@baylibre.com
   https://gitlab.baylibre.com/msp8/linux/-/tree/topic/mcan-wakeup-source/v6.12?ref_type=heads

Testing
-------
A test branch is available here that includes all patches required to
test Partial-IO:

https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62/v6.12?ref_type=heads

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
Markus Schneider-Pargmann (6):
      firmware: ti_sci: Support transfers without response
      firmware: ti_sci: Partial-IO support
      arm64: dts: ti: k3-pinctrl: Add WKUP_EN flag
      arm64: dts: ti: am62-lp-sk: Add vcc_3v3_sys regulator
      arm64: dts: ti: am62-lp-sk: Add vddshv_canuart regulator
      arm64: dts: ti: am62-lp-sk: Add wakeup mcu_mcan0/1 pinctrl

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts |  79 +++++++++++++++++-
 arch/arm64/boot/dts/ti/k3-pinctrl.h      |   3 +
 drivers/firmware/ti_sci.c                | 137 ++++++++++++++++++++++++++++++-
 drivers/firmware/ti_sci.h                |   5 ++
 4 files changed, 221 insertions(+), 3 deletions(-)
---
base-commit: 03dc72319cee7d0dfefee9ae7041b67732f6b8cd
change-id: 20241008-topic-am62-partialio-v6-12-b4-c273fbac4447
prerequisite-change-id: 20241006-tisci-syssuspendresume-e6550720a50f:13
prerequisite-patch-id: 945b15416a011cb40007c5d95561786c1776bb98
prerequisite-patch-id: 69a741b9c81d7990937483fc481aafa70e67669d
prerequisite-patch-id: 15e97947da8cb7055745151990c756d81fded804
prerequisite-patch-id: a0efbf22e69d23dba8bb96db4032ca644935709b
prerequisite-patch-id: 2999da190c1ba63aabecc55fae501d442e4e0d7b
prerequisite-change-id: 20241009-topic-mcan-wakeup-source-v6-12-8c1d69931bd8:3
prerequisite-patch-id: a7c60adc118d6b8bf783686a62d03c88b14b853c
prerequisite-patch-id: 90f03012d910402b043334ad5a5a8580e33e3d97
prerequisite-patch-id: 74aa28d4203323744419694568d2f5bbf471e233
prerequisite-patch-id: 56fd0aae20e82eb2dfb48f1b7088d62311a11f05
prerequisite-patch-id: f4febebdfba5f2fbfd1f276b8ee8b72be047dfc8
prerequisite-patch-id: c7f9373ac4b8a623f9cb68788c7d0cb6567e3ed9
prerequisite-patch-id: 33d27d8c3f8d1913ed1ec2abb9f64f4d7cd9f1fb
prerequisite-patch-id: 38ba1a5ffe086d1bc186db125d8610b0cdb191f9
prerequisite-patch-id: 46803aa31b9b00725e58fa27c883be94729941c2

Best regards,
-- 
Markus Schneider-Pargmann <msp@baylibre.com>


