Return-Path: <devicetree+bounces-201466-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC55B19192
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 04:58:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BD8EE7A21D5
	for <lists+devicetree@lfdr.de>; Sun,  3 Aug 2025 02:56:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 929BF17A2EB;
	Sun,  3 Aug 2025 02:58:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="qT2nMM2K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com [209.85.166.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB36E136349
	for <devicetree@vger.kernel.org>; Sun,  3 Aug 2025 02:58:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754189899; cv=none; b=FcqXPXigRX9ptwsHKeKzzwEwtncVrkAOtrycIqVVqG91M8X2ZB51xK0O0O0Hz9eWYKwShVNDhpVrwSweom+NnTHZ7bm8yeQYOCS1AmDIDCfY2l56ihAvZWPb2Ttbvuo24grdq5OEQh+EG6+grLKWgkREvzrILzIM8MkDQngHGGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754189899; c=relaxed/simple;
	bh=xS0fwRHul3rDPIx1/b4zCW5Tgi8i7mAJOBcb7BgmG2U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=VeOSLExOaYSpHuFfduWI3OxIn8iLVLtiMfTL6/E30pEVKQGdFZI1WedpmjcYyShw6PjIhm/OmBmeRlS/G+6oKv0hE0IcNoYYd5CN+AULIVhbaa6RX+0i1nYGlF2uk1Xt9XIUhNwmnwPmMOxLPs0nxJaAD9XZwGWRur00JC35qRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=qT2nMM2K; arc=none smtp.client-ip=209.85.166.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f45.google.com with SMTP id ca18e2360f4ac-87c3e35b3cbso186098439f.2
        for <devicetree@vger.kernel.org>; Sat, 02 Aug 2025 19:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1754189897; x=1754794697; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oY3Z8dtNrrf7QjfOHcFhMrLBNHKYAu0syOln9u3nSKA=;
        b=qT2nMM2KJgD7hyPvFjZSzlpuDWlvzgj2w0lJ1AyvAPfMrs9QtkNAPUCuyji0WBnO7D
         FnLOUgIvvu45/ErwVU3NMoNT94mJMgM7Vde23iVk1BtJ6D8zRV8W8NjKysqTRuttjWfK
         hWupBRfPQs1ACbvoBaXRpPO6bDznbcLtLgMI+0g8nfxU9UpTRNwM8vmkg+3XpdWo5ypm
         pZbv/05XoTqepnyjDHEmsRrdaJogWZzC9gnbkFDD12SJQkbTguzz/cw154DuoR1iACLQ
         rOXPCYFJyn7QAJoOe5KDNL2L2bjSJm6EuIrm6T7/NSgHqaeEFUzs5Yo6Is1GZWYOqtXy
         zB3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754189897; x=1754794697;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oY3Z8dtNrrf7QjfOHcFhMrLBNHKYAu0syOln9u3nSKA=;
        b=GPsEoxTb9riiPLOkT8wV2FkSNXRHRel1a0/EA40ncfv/VdYdkbp/KQfbWDZBy5gZuy
         TVfr6uJCH6wNub5o3phhBV1xIuQC9qgyt4XJYdrZaJz+rxR+r5ClJv8AQtGNdRiJernU
         8wEv4WxpPtSLIPJ+gVSGGIxb4d5ewlHQa3UWapo968TIIj40R0gKI5CyR8sII9xiKBaZ
         xdG7GM5tNHSx/WKEBtWkbBvPpl7mmmB3KwrtzelKvYchbhzr0NkktWY7Srf76PDMk1ge
         pMtIH0EnxSUnnIkIF8s9ammf7J+sO+VhUiSqI3fSjgXE8owSeGh4dT8UBcE022iDgAdI
         Wt0w==
X-Forwarded-Encrypted: i=1; AJvYcCUs9lslb2vi9SdBhAw15HaXgRwijpNQSLj3I8KxrWErR/pUfsy1xhgN+RBFiktaBazZO58xww4AeLhK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9afwTUp10zxrexScFg8Co7ubzyuBVuJOOte+pQqdkmwbwvvTW
	RNeXtBo02N7CNp4JleYKr+T4gz/m7TCW+tgzWoACGxbPZOwr/EH4jDIi8Mv5FaHBPfs=
X-Gm-Gg: ASbGncuunMhebeNR6NxwU2UDylsIDSe8pV6J3g/Ucs/8gUgN/Aaolfm8JXtMLP0E5Ws
	6yGtSBqEatFWv1XYbDAMyDTREUAT4olNVZKjMUWRQTovvElrFniZr7j4j2pr58HvEq20bS83EZd
	S0Wn4fsTPiTL47t84FqB8cS79GEyWXtIDXGOgA2+LOFUttgBv0WJRtNJK/hlCtHqwXsFUcrKQkw
	6pnhQQXxQEfMve1cH4YnC0eizc7L92Y0EVRcfnyc7tJCwM5fQtPDZbh3BBMe84t6uAu16mn08f5
	PVd1usKHaYZT9ECSzpTlGq2Qw3OO/t4BXMUZ3LyXpEGTjrTk2lpqaK89jmQ8HOecT/bVhp+MXfa
	KheLWDw0lG/U4BthbMCRBGCRIQowilpamoovVOYEq/+7GJEWHfg2PpRW7O1y1lt+/TA==
X-Google-Smtp-Source: AGHT+IHt2PgWb9LhAIhITIOQeAiyN5sN4fCPbyKx7y0/fVbofgmpYs/9kxt/4dYcvv4SBxyTO04ktA==
X-Received: by 2002:a05:6602:3f87:b0:87c:3d8:17aa with SMTP id ca18e2360f4ac-88168253fc7mr836026839f.0.1754189896369;
        Sat, 02 Aug 2025 19:58:16 -0700 (PDT)
Received: from zippy.localdomain (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-50a55b1ac2esm2251906173.1.2025.08.02.19.58.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Aug 2025 19:58:15 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: lee@kernel.org,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: mat.jonczyk@o2.pl,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	linux.amoon@gmail.com,
	troymitchell988@gmail.com,
	guodong@riscstar.com,
	linux-rtc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [PATCH v11 0/7] spacemit: introduce P1 PMIC support
Date: Sat,  2 Aug 2025 21:58:04 -0500
Message-ID: <20250803025812.373029-1-elder@riscstar.com>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The SpacemiT P1 is an I2C-controlled PMIC that implements 6 buck
converters and 12 LDOs.  It contains a load switch, ADC channels,
GPIOs, a real-time clock, and a watchdog timer.

This series introduces a multifunction driver for the P1 PMIC as
well as drivers for its regulators and RTC.

After a sequence of attempts to add a new "max_register" value
to the simple_mfd_data structure in a way that would hopefully
be useful, we have reverted to the solution that was originally
proposed, which simply defines a regmap_config containing that
value along with reg_bits and val_bits (both 8).

This version removes the second patch, which contained the added
code to support the simple_mfd_data->max_register field.  It
also addresses a dependency issue in patch 4 (now 3) that was
pointed out by the Intel kernel test robot.

Note:  Yixun Lan suggested privately that I ensure the I2C_K1
config option gets enabled, but I'm going to do that as a
follow-on patch.

					-Alex

This series is available here:
  https://github.com/riscstar/linux/tree/outgoing/pmic-v11

Between version 9 and version 10:
  - Abandon trying to implement a simple_mfd_data->max_register field
  - Fix a missing dependency pointed out by the kernel test robot

Here is version 10 of this series:
  https://lore.kernel.org/lkml/20250726131003.3137282-1-elder@riscstar.com/

Between version 9 and version 10:
  - The #address-cells and #size-cells for the i2c8 DTS node
    were moved into its primary definition in "k1.dtsi".
  - The interrupts property for the i2c8 DTS node was moved
    below its clock-related properties.
  - The status property in the pmic@41 DTS node was dropped.
  - The function that provides the regmap_config structure
    to use was reworked a bit.
  - A new function was added to free the regmap_config
    structure after it's no longer needed.

Here is version 9 of this series:
  https://lore.kernel.org/lkml/20250724202511.499288-1-elder@riscstar.com/

Between version 8 and version 9:
  - The max_config value is always used if it is provided with the
    simple_mfd_data structure.
  - The regmap_config structure used is allocated dynamically if
    necessary; otherwise regmap_config_8r_8v is used.
  - A small duplicated comment is removed

Here is version 8 of this series:
  https://lore.kernel.org/lkml/20250710175107.1280221-1-elder@riscstar.com/

More complete history is available at that link.

Alex Elder (7):
  dt-bindings: mfd: add support the SpacemiT P1 PMIC
  mfd: simple-mfd-i2c: add SpacemiT P1 support
  regulator: spacemit: support SpacemiT P1 regulators
  rtc: spacemit: support the SpacemiT P1 RTC
  riscv: dts: spacemit: enable the i2c8 adapter
  riscv: dts: spacemit: define fixed regulators
  riscv: dts: spacemit: define regulator constraints

 .../devicetree/bindings/mfd/spacemit,p1.yaml  |  86 +++++++++
 .../boot/dts/spacemit/k1-bananapi-f3.dts      | 135 ++++++++++++++
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi  |   7 +
 arch/riscv/boot/dts/spacemit/k1.dtsi          |  13 ++
 drivers/mfd/Kconfig                           |  11 ++
 drivers/mfd/simple-mfd-i2c.c                  |  18 ++
 drivers/regulator/Kconfig                     |  13 ++
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/spacemit-p1.c               | 157 ++++++++++++++++
 drivers/rtc/Kconfig                           |  10 ++
 drivers/rtc/Makefile                          |   1 +
 drivers/rtc/rtc-spacemit-p1.c                 | 167 ++++++++++++++++++
 12 files changed, 619 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/mfd/spacemit,p1.yaml
 create mode 100644 drivers/regulator/spacemit-p1.c
 create mode 100644 drivers/rtc/rtc-spacemit-p1.c


base-commit: b9ddaa95fd283bce7041550ddbbe7e764c477110
-- 
2.48.1


