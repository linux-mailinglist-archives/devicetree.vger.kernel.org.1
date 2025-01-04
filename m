Return-Path: <devicetree+bounces-135491-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2128FA011B3
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 03:06:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E8FFC163A52
	for <lists+devicetree@lfdr.de>; Sat,  4 Jan 2025 02:06:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67E232E628;
	Sat,  4 Jan 2025 02:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QzjRLZQ1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1605629
	for <devicetree@vger.kernel.org>; Sat,  4 Jan 2025 02:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735956377; cv=none; b=mvmUnLA7Rh/gQxdLgFZOpx2L//UetDGcFpbOdIHsKmHA6Yp2g4/qty7iO22GkWI8QXh+Brhec4IpvD3nkg4CCAZ7RqiTm4YWPzjrh/Ju8TDCV9NDxjMzyRTkJBqRS4T86xv3y1J/KB2J+jfRmaYice3WnSpBeGDm2bmTfr+Rwr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735956377; c=relaxed/simple;
	bh=M1eltsbSIt0jF0Jp6uEJ3vMpjDI6LOl3IsnvTVj/gEs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=IjOE8edq8mHruj0LNqoAk4q3lUmSoefj01PfCTNzGWaZTUmF5AofWhNH7RzN2oeTN/4jbNtTQ0M7YVYZRNW4RmkCoObZdRFGk4lptT/CO5XLi6oEx3BDMQLEazbc59WqR8yXek7CohaPDBfwdNlFvpcjX3mH3+8xms4dfBgFb8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QzjRLZQ1; arc=none smtp.client-ip=209.85.167.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3eba0f09c3aso4292421b6e.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 18:06:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1735956375; x=1736561175; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OYb0qFT4xNRqbSd0yzfW3pxzgxiWHcPjDPKxST8NQXE=;
        b=QzjRLZQ1lFSwTSD+5SvAch41x0/V2+FiqWudAY93GU9fV4voWoMAvt/hYuecGTRKUt
         mi4egruwbuOuwKgj1YDGg62zAUjTKPDnPLA12nWW/Q5Gzz3mc42JsVhmEPhBXYJtHC4z
         rEqUKRvv1rwdDUmrv86X5226eYyQenuugph5fK/DaXfhW47IXRxBv6WuRAtcatIa5hHm
         HxN/wAV1ymavTEAOoDVq3oMFtL/wUmfj7vHgPt7HKSP1EJXOMLh4T+LPBWqSMCmL1k9X
         V+dYwe4dYyvBNogXan3IDgk9fnuEGinjflTUlzoHeQG0hsFdeJ3ok1OBw4yNMVMGPRrH
         Xxxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735956375; x=1736561175;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYb0qFT4xNRqbSd0yzfW3pxzgxiWHcPjDPKxST8NQXE=;
        b=BytyaabC9XSTr9rop+3I9J6rhwrxYcGwDYj/s/ZgKWjfGLDNVbo/08006iqQakgraP
         Kur2H+quLnCGBKS1djiVcozFcTyeEIdzbesO9SdEwNIHYev+3vAgeZr0SzFgeclgFLzv
         jxD8uOO5g5Hvk1SDNrM3oOzoacpJT8tdICi+L4MCeyAaGosVri5WwPAneCu7v/M2aymj
         sQFAY9SBa7BA7N+zruUQx8bTYbO6D4ChOtNPwl8TnXiIxUpvuPeAF8ry5KIZUHP3Ks1Z
         oXbAAIOYQCHFHMsUvJow2VC030NGFthzExBEuEt7Z5HkkeFd1mNwIrue1qvVee+a1g7v
         JCSA==
X-Forwarded-Encrypted: i=1; AJvYcCVZtxB4OQHg5eBHn+F15ehRQXi9HsFu2G+R54ZUfLWos4JzPLxCisWyRcLRBPb47XXmbMOlIyWiSpW+@vger.kernel.org
X-Gm-Message-State: AOJu0YyOyjWpFvRZWUhuEK4aS6WLS3dy8TrdwlqL6WcXuk/ievAR6DOV
	nR2ZLg04DnC6jn3qQ+4cdNnlszR6kZPRl9q3PUDBj08ARe2E/HTK
X-Gm-Gg: ASbGncuPUWD4rs1vdpsfckVi/ZEyHKSw8r6uvObFQHwyaGHKaq5Cb6jKRql2fpKSq8N
	kSaeyu56/9mvOSa8BJ3B2C+BgBElX7bRi4c25xr3AwiiWGSloBafs+RH6M1Yx4shi7ab2j7HmTI
	LKIi+Z3IojVEsvsRp+q/uOcLtXhzOAhye6rN65uv295a4yT3lu7aEsUi5uQo30nhaOLcK8FEzHF
	7jhF4NyehBnwJ08MY7WximdtCWcrGycCe6orqyH6jsm6ODp/PBa4qlKaipMKzyABg==
X-Google-Smtp-Source: AGHT+IHVvrnXzgaqHx2pTSSQxMbOCL2qiRxIqwKYT2ArKTJ/TAhARkxGQVgvgWyIgP+0ezHSfqi7xw==
X-Received: by 2002:a05:6830:71a3:b0:71a:6845:7d7a with SMTP id 46e09a7af769-720ff6a7e98mr32360970a34.5.1735956374674;
        Fri, 03 Jan 2025 18:06:14 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:7057:8598:1940:24f4])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-71fc998ef6asm8406568a34.50.2025.01.03.18.06.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 18:06:13 -0800 (PST)
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
Subject: [PATCH v6 0/4] Orange Pi 5 Max
Date: Fri,  3 Jan 2025 20:05:36 -0600
Message-ID: <20250104020544.6777-1-honyuenkwun@gmail.com>
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

Changes in v6:
- Remove clock-names from incorrect merge conflict

Changes in v5:
- Include Orange Pi 5 Plus USB 3.0 change in baseline before refactor
- Defer Orange Pi 5 Ultra to a later series
- Defer Orange Pi 5 Plus HDMI1 to a later series
Link to v4: https://lore.kernel.org/linux-rockchip/20241229184256.1870-2-honyuenkwun@gmail.com/

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


