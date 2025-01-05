Return-Path: <devicetree+bounces-135701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A079CA01C1F
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 23:26:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3B071622A1
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 22:26:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF3971CDFCC;
	Sun,  5 Jan 2025 22:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OsKTylFv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E11F36B
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 22:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736116010; cv=none; b=FAQdjPCF5AAewFKpHJIpbrLqKcIgyAdnZawozxdhmQL3NCg+GZ8tO8RT/+5fN9FC8u939nxmikKFsI28tyzm6gAajkf0jzXCXKpVjQREW43NDJQxGclaDEQOUZZUgOxhqtY0cyfdTBxq8UbqbBGqZJNEP9z3ZbeVsow14O8reFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736116010; c=relaxed/simple;
	bh=Pl5pwXA7S1lKBUBmgTGj4If8U6xlVrJjgXDf+ElTAEY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ZqiyDxPA81i2P7HaTZenwohBUSlNunmzqsuMnESzAKvSQnp3S/cNwmPsV/FhAeQqgYLTwnPfZxvKTT/jGFKKvxpmRU/VTtRjSMCkgofwLdGClYDrOGKJUA+aLZu1UL02QjmFw1MsFv+JEawledhm4wOOBJIkYKXJcTwcRkqRPRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OsKTylFv; arc=none smtp.client-ip=209.85.167.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3ebbe804913so4081876b6e.0
        for <devicetree@vger.kernel.org>; Sun, 05 Jan 2025 14:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736116008; x=1736720808; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yVwTqtMBmufKy+4+Qd4AnDnVsi8YGYtimBuBuOfsG0Q=;
        b=OsKTylFvrLq5OEvLCZoP+8e58nijQmKjT05c/A8Emgh/vUsQHD/dl64OVj44kIb04A
         T8rmlARafxQXHniumQovCYzhHGuYmraXOC1l2YI/dEOjMCaMSR9QMHt1uZRB/jH06TIi
         L2IfWlmX8Z1l8gyzcbezunxlv6Ka2XQ4KB2xWnNsd1sLGS3UzQRTTwD1/HzJjzHdBEln
         u4RF9lEJPi4phxYM7atS01qvmecpGfs7AnbtwhsTQPbGdYlBnfutFLbzebnssjr8troQ
         14RnZSZ32MKBsFrZ3KEHzh0VE1KIlbzMEYvgGf9shnoIMphQscsFofP6nsJfB4lYgyfS
         iQOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736116008; x=1736720808;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yVwTqtMBmufKy+4+Qd4AnDnVsi8YGYtimBuBuOfsG0Q=;
        b=L3LVI+Qbj2LZfiHImYbq2TMPEpQFoeHw09TeNMCi73d9t4ZKzvdCMm7eQ3KWFVPat1
         bt/2Sw+FtUcyBMl3PhLyOyE/LFDYn0aFAc/LoboewdBHTagM8wk5s1r+83nZUiex+pET
         qzQwjmf2RSNCkpYNvTiIzKI65PHEejeQ8zabz08NDOiurvJTN2kLwY/JEBQiod1QXfyS
         XahMlgm0TYGQWQeGIMuU8jolQS0h5vwGw8r1WAfQJvzWeC4g8MExGK+3FX+2xx1iM0On
         9mhNaT+60wuGPBCg9VmtIeTQ3+7eIgB6ZRuZSdEjFKU6yXvRzVR3+tvxOWLujVjMLslT
         45pg==
X-Forwarded-Encrypted: i=1; AJvYcCVPe4hJX1sMTWQyVg2yPGkqyBZKjA0cXeHNtMlCL3vxMiV7rJC5JWNY6uA61Ge+5OHLjaBzB88+D9gF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw3QxsxRUyLe+F8LL6VyVLJOeHDUvsImQrzCj63XDONi8uZ4K+g
	L+9ueVbXpBxag2UkSfwxfK/5WyaGvyBcGayljxVhzUlBccJKnzOo
X-Gm-Gg: ASbGncvo/gRtU/gU8icBEuaNIo79fM0Sx/sP55M5z1Y/Gny+8NtZnBJ3dhXZz/bfA/3
	nqQmxGY/P78tqCPvL66K25V/1b31naGw3F+0HnFFWuRKSjG1OjgAkxoXnE9lzurEP+yDu9GdOIH
	mXeecEhVtZUGCDvTKGzlsX87gK7OwKjmudoDgKYe1N8CuFA9sfqWT1YOwx2FPN+1Xl44DcuUG56
	a9R7XWHQNuFQD/nzjeFRCF5PdtyLM9x3sCCoO09RefBsLPvKoMj//9C4lHC2hsFSA==
X-Google-Smtp-Source: AGHT+IHbBRJ9nMbE34acFF8TAd1PhbaT6XoSzAtuwlbwM0Aqvg9qf+IuJ+CehsLkJusQr87XsmRxqA==
X-Received: by 2002:a05:6830:6d8d:b0:71d:5117:c07f with SMTP id 46e09a7af769-720ff4a6899mr40495188a34.0.1736116008135;
        Sun, 05 Jan 2025 14:26:48 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:b377:72ce:54b5:bddf])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc980a9e8sm9555227a34.43.2025.01.05.14.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Jan 2025 14:26:46 -0800 (PST)
From: Jimmy Hon <honyuenkwun@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Ondrej Jirman <megi@xff.cz>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jimmy Hon <honyuenkwun@gmail.com>
Subject: [PATCH v7 0/4] Orange Pi 5 Max
Date: Sun,  5 Jan 2025 16:26:09 -0600
Message-ID: <20250105222614.2359-1-honyuenkwun@gmail.com>
X-Mailer: git-send-email 2.47.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add device-tree for Orange Pi 5 Max

Orange Pi now has 3 SBCs using the RK3588 SOC. Refactor the common parts
of the 5 Plus DTS so it can be shared with the 5 Max and the 5 Ultra.
The 5 Max and 5 Ultra have a similar credit-card sized board layout and
will also share a DTSI between them.

5 Plus: HDMI0, HDMI1, HDMI RX, M.2 E-key, USB-C
5 Max: HDMI0, HDMI1, WiFi/BT using SDIO/UART
5 Ultra: HDMI1, HDMI RX, WiFi/BT using SDIO/UART

Changes in v7:
- Add signed-off to first patch
- Expand first patch description 

Changes in v6:
- Remove clock-names from incorrect merge conflict

Changes in v5:
- Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
- Defer Orange Pi 5 Ultra to a later series
- Defer Orange Pi 5 Plus HDMI1 to a later series

Changes in v4:
- Orange Pi 5 Ultra was released and does not use VP0 to HDMI0
- Move HDMI0 from common to the board level
- Make DTSI to be shared by the credit card sized 5 Max and 5 Ultra
- Updates for the newly submitted HDMI1 support
- Add Ack for dt-binding

Changes in v3:
- Refactor to share common include with Orange Pi 5 Plus

Changes in v2:
- squashed commits together for initial board file

Link to v1: https://lore.kernel.org/linux-rockchip/20241026100310.52679-1-honyuenkwun@gmail.com/

Jimmy Hon (4):
  arm64: dts: rockchip: refactor common rk3588-orangepi-5.dtsi
  dt-bindings: arm: rockchip: Add Xunlong Orange Pi 5 Max
  arm64: dts: rockchip: Add Orange Pi 5 Max board
  arm64: dts: rockchip: Enable HDMI1 on Orange Pi 5 Max

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +-
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../rockchip/rk3588-orangepi-5-compact.dtsi   | 151 ++++
 .../dts/rockchip/rk3588-orangepi-5-max.dts    | 101 +++
 .../dts/rockchip/rk3588-orangepi-5-plus.dts   | 855 ++----------------
 .../boot/dts/rockchip/rk3588-orangepi-5.dtsi  | 805 +++++++++++++++++
 6 files changed, 1127 insertions(+), 792 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-compact.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-max.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-orangepi-5.dtsi


base-commit: 40384c840ea1944d7c5a392e8975ed088ecf0b37
prerequisite-patch-id: 6346d482f91509dec24bfe5d4f0ca0d345b90deb
prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
-- 
2.47.1


