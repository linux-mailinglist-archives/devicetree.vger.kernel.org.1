Return-Path: <devicetree+bounces-234371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E01E9C2BC1E
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 13:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E5CC91896678
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 12:43:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 574443126D2;
	Mon,  3 Nov 2025 12:40:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="3fCg/HLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB64F3126A8
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 12:40:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762173616; cv=none; b=J9GcZtqGR9psUq6VPt+Uufzo0EXIXuW2WIU4o3uZJKCqarnnjXCmwtcPnOSz+Udjdbss8rtNWfFePvbvq9bb3ceTQl6LSEdbgd8bmnoIf7/MPMzz3SBo595SKXM8ziFtgfuLqVVO5G4PdlRNWKMY5yZtu6beu4DnlxVgYP45BO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762173616; c=relaxed/simple;
	bh=yh1eX/W5XH5j1wEtGCbFayViCUcpxe1uVu+jHw3omxI=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=jsQmWimdkJV8E75uXe0Il4P0trNIUIbEWia9sxVlF4QYByoRIeJARqVrIn7V3jfzpSiro9eTHFA6lO/bK9cKGgU0ganCfrneuiv75RYSixqTCJ7+M1Gl/Ry523kk76CRSEomt7piTy5eDahiAtTPX9gfsRsSEQqKWzXMcTafBS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=3fCg/HLL; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-6406f3dcc66so7361283a12.3
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 04:40:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1762173611; x=1762778411; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=SFwPuzbH1s93pLflRrR41MiQVaCaS99/J+bBqrl60ng=;
        b=3fCg/HLLNgI9PTNVMVHyTLQ2XTh9i1iqPOW8aTtBGUbUnMdhllbR+mUee9WU7t3vTo
         YDijUUsjCcz8TfKvClsOoXXfGr60pA5KcCI757L2pBS5tnzme1gz42aPK1jRmIcIXKTw
         YJP4gzda/Kns7Ah4Sjp43UBp8Xo9gE4f2wIY/V3nDBhMr5dXYFl+vSJ0M4OM8LatFCi3
         jVuEzEdBOam7xDuTuGFAUIUTbK8X7Pz+/0GBStOAkvX4uGXK7ypGTqQG2UT7mCKeANfu
         k1CBG/LM+Qc4oUA3YMrWxa/1dWHus725yZX9XIFjnmLcR9eABP3nJJx54SntnJpuB829
         It6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762173611; x=1762778411;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SFwPuzbH1s93pLflRrR41MiQVaCaS99/J+bBqrl60ng=;
        b=b703j74/dYjTrUHtbxOYYwuQMJQR7p20falJ6BZ+0uYoQsiyvujn5PNu17XdVxbGxp
         SKBQ9u6YlfIsCqzAqaauZa+PjT/3GUbo3vNgqkaf3JfbaEdfJNqLS8fwXLn05iSoHFFl
         vlu17zJs+bJT1+n8kyCSaDeq7zaZsh63nwQi+gelsPuGt8UPqQEZoSUDos9RdD5SMWVp
         4erDhZJ9FP4yYiYuCI9rvIOcall84r1Z86RHnfeTLAZVybuXLC9bZa9C2F3UPB7KnSMq
         q7MVg3AAvRJ5I6vtT1IPxjfEo0yDFWPIXkpZTWoYHibaIk/cDd+ciM89MHLldbXBYtqq
         hK7A==
X-Forwarded-Encrypted: i=1; AJvYcCXLpWppnx8qYXQB5UnTUvqhPpx7iizIJwCBtVM4Pup8wrhc5S6cYuYJhc1nQnnIUUtsbzD3DPTINTVL@vger.kernel.org
X-Gm-Message-State: AOJu0YzQD741B90SwVJOnOCnTxwld+WMry7QibdCh7LsObQVdoGPkfuQ
	5KYHf87sqYp8NQ0YkPVXXshdnY7XJBo4pNx8hgHeO8QqYC43otPHXYpQDQRvJlsXIJs=
X-Gm-Gg: ASbGncvVBW5rzpDBClyhIZlr3Gn4YdfA6WJUoGtQgHQA1CBYHe8mxPP+DBOqLdk/geu
	4RG+o6saryfUHft2q/d6tDR2TjTYHLdGJDwPa3bhtSSYMO+3Cxr2B/LGip8kmcJWh7rcu4EFb+o
	Mxlok8JqaAoi73DEsm8q5P7HTRsajbX1YuArG+w5g/dNFFVuB7vbuW6kf+V2SVHw1mGBHbSj35g
	LKpIJKXBv0nucxV3U34Wh0WBVsbgTEzH3f45gyyRD6hheNTB4zvjXaZTm62OP3OGWn7uCn2yRJV
	j5xLehwMkwuqaiF2Wvg7Ks6Ti13P23MVqH9iFkxZO8TLQpMc08B2XBgxLLJv14iF/TJm2zNBOTl
	DerpquHBDlhuzfopy1d9GBJ2CAhy3ZJ97SlPGw3rVpTLHIIqIZKEylJ2sBE9DBJHHhHF7T6c=
X-Google-Smtp-Source: AGHT+IGYfHhpn3clxE/PmkQiB0h63Xks1aNEnVKSS2/kPtdzO/izb0gVnG8+wVkOiRhQtBvVp2xvGA==
X-Received: by 2002:a17:907:9451:b0:b6d:76a9:e7de with SMTP id a640c23a62f3a-b70700d36fdmr1287002866b.8.1762173610962;
        Mon, 03 Nov 2025 04:40:10 -0800 (PST)
Received: from localhost ([2001:4090:a247:830a:fe22:a8:f29a:a5c3])
        by smtp.gmail.com with UTF8SMTPSA id a640c23a62f3a-b7077d065fesm1030502666b.72.2025.11.03.04.40.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Nov 2025 04:40:10 -0800 (PST)
From: "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
Subject: [PATCH v5 0/6] arm64: dts: ti: k3-am62: Add wakeup-sources for low
 power modes
Date: Mon, 03 Nov 2025 13:39:27 +0100
Message-Id: <20251103-topic-am62-dt-partialio-v6-15-v5-0-b8d9ff5f2742@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAH+iCGkC/4XPTWrDMBAF4KsYrasyGll2klXvUboYS6NGEP9EV
 k1C8N0r29CWEvDyScw3bx5i5Bh4FKfiISJPYQx9l4N5KYQ9U/fJMricBQIaKJWRqR+CldRWKF2
 SA8UU6BJ6OVUy/2qsnVPeq9qRyMYQ2Yfb6r9/bDny9SuvSdujaGhkafu2DelUdHxLclmlAI9iG
 TiHMfXxvvab1DqxVUG1U2VSEmRl2Wkg8s41bw3dL6GJ/JrXrfiEv+BB4R6IGUSjDeqqJCD7BNQ
 /oALYbagzWMPReMZKs+UnYPkH1LAHlsvJjUFwng7mqP6B8zx/Axoy7ubxAQAA
X-Change-ID: 20250415-topic-am62-dt-partialio-v6-15-327dd1ff17da
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Vishal Mahaveer <vishalm@ti.com>, 
 Kevin Hilman <khilman@baylibre.com>, Dhruva Gole <d-gole@ti.com>, 
 Sebin Francis <sebin.francis@ti.com>, Kendall Willis <k-willis@ti.com>, 
 Akashdeep Kaur <a-kaur@ti.com>, 
 "Markus Schneider-Pargmann (TI.com)" <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=4843; i=msp@baylibre.com;
 h=from:subject:message-id; bh=yh1eX/W5XH5j1wEtGCbFayViCUcpxe1uVu+jHw3omxI=;
 b=owGbwMvMwCXWejAsc4KoVzDjabUkhkyORY1BT298qOYRrrY9sH/7ptkazfdKbdY+klzM+Hmb5
 zlz/86QjlIWBjEuBlkxRZbOxNC0//I7jyUvWrYZZg4rE8gQBi5OAZhIRxgjQ5vu3+rNDLyyC+Id
 MlhcWN4G2i28Ez0j4ki/c9oezrSlsxkZLrsbBVl4ajM2x/IfO/tplVHipIdatSVb6tjC3hkuOja
 PGwA=
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

Hi,

This series adds devicetree changes needed for Partial-IO support on TI
am62, am62a, and am62p SoCs. It defines system states for various low
power modes and configures the wakeup-sources for devices in the CANUART
group. Depending on the SoC and board details, some low power modes may
not be available, so the wakeup-sources are described in the board
files. The series also adds the necessary pinctrl settings required for
proper wakeup functionality.

Partial-IO Overview
------------------
Partial-IO is a low power system state in which nearly everything is
turned off except the pins of the CANUART group (mcu_mcan0, mcu_mcan1,
wkup_uart0 and mcu_uart0). These devices can trigger a wakeup of the
system on pin activity. Note that this does not resume the system as the
DDR is off as well. So this state can be considered a power-off state
with wakeup capabilities.

A documentation can also be found in section 6.2.4 in the TRM:
  https://www.ti.com/lit/pdf/spruiv7

Implementation Details
----------------------
The complete Partial-IO feature requires three coordinated series, each
handling a different aspect of the implementation:

1. [MERGED] m_can driver series: Implements device-specific wakeup
   functionality for m_can devices, allowing them to be set as wakeup
   sources. This is available in linux-next now.
    https://lore.kernel.org/r/20251001-topic-mcan-wakeup-source-v6-12-v10-0-4ab508ac5d1e@baylibre.com

2. This series (devicetree): Defines system states and wakeup sources in
   the devicetree for am62, am62a and am62p.

3. TI-SCI firmware series: Implements the firmware interface to enter
   Partial-IO mode when appropriate wakeup sources are enabled.
    https://gitlab.baylibre.com/msp8/linux/-/tree/topic/tisci-partialio/v6.18?ref_type=heads

Testing
-------
A test branch is available here that includes all patches required to
test Partial-IO:

https://gitlab.baylibre.com/msp8/linux/-/tree/integration/am62-partialio/v6.18?ref_type=heads

After enabling Wake-on-LAN the system can be powered off and will enter
the Partial-IO state in which it can be woken up by activity on the
specific pins:
    ethtool -s can0 wol p
    ethtool -s can1 wol p
    poweroff

I tested these patches on am62-lp-sk.

Best,
Markus

Previous versions
-----------------
 - Link to v4: https://lore.kernel.org/r/20251030-topic-am62-dt-partialio-v6-15-v4-0-6b520dfa8591@baylibre.com
 - Link to v3: https://lore.kernel.org/r/20251001-topic-am62-dt-partialio-v6-15-v3-0-7095fe263ece@baylibre.com
 - Link to v2: https://lore.kernel.org/r/20250812-topic-am62-dt-partialio-v6-15-v2-0-25352364a0ac@baylibre.com
 - Link to v1: https://lore.kernel.org/r/20250421-topic-am62-dt-partialio-v6-15-v1-0-6ced30aafddb@baylibre.com
 - As part of the series "firmware: ti_sci: Partial-IO support"
   https://lore.kernel.org/r/20250306-topic-am62-partialio-v6-12-b4-v5-0-f9323d3744a2@baylibre.com

Changes in v5:
 - Disable mcu_mcan* on am62a-sk and am62p-sk by default.

Changes in v4:
 - Rebase to next-20251029

Changes in v3:
 - Drop patch to add WKUP_EN and rebase to linux-next to base on the
   patch that accepted which adds PIN_WKUP_EN instead
   https://lore.kernel.org/all/20250909044108.2541534-1-a-kaur@ti.com/
 - Fix small typos in the commit messages
 - Use AM62AX_MCU_IOPAD for am62a and AM62PX_MCU_IOPAD for am62p

Changes in v2:
 - Combine k3-am62a7-sk.dts devicetree nodes with existing ones
 - Combine k3-am62p5-sk.dts devicetree nodes with existing ones
 - Update the idle-state-name properties to the new names from the
   dt-schema
 - Rebase to 6.17-rc1

Signed-off-by: Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>
---
Markus Schneider-Pargmann (TI.com) (6):
      arm64: dts: ti: k3-am62: Define possible system states
      arm64: dts: ti: k3-am62a: Define possible system states
      arm64: dts: ti: k3-am62p: Define possible system states
      arm64: dts: ti: k3-am62-lp-sk: Set wakeup-source system-states
      arm64: dts: ti: k3-am62a7-sk: Set wakeup-source system-states
      arm64: dts: ti: k3-am62p5-sk: Set wakeup-source system-states

 arch/arm64/boot/dts/ti/k3-am62-lp-sk.dts | 60 +++++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62.dtsi      | 22 ++++++++++
 arch/arm64/boot/dts/ti/k3-am62a.dtsi     | 27 +++++++++++++
 arch/arm64/boot/dts/ti/k3-am62a7-sk.dts  | 69 ++++++++++++++++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p.dtsi     | 27 +++++++++++++
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts  | 69 ++++++++++++++++++++++++++++++++
 6 files changed, 274 insertions(+)
---
base-commit: c9a389ffad27e7847c69f4d2b67ba56b77190209
change-id: 20250415-topic-am62-dt-partialio-v6-15-327dd1ff17da

Best regards,
-- 
Markus Schneider-Pargmann (TI.com) <msp@baylibre.com>


