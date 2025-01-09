Return-Path: <devicetree+bounces-136916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A71A06D6B
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 06:16:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C81CC18899B9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2025 05:16:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C888B197558;
	Thu,  9 Jan 2025 05:16:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mXa2V9pL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A29B1442F3
	for <devicetree@vger.kernel.org>; Thu,  9 Jan 2025 05:16:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736399809; cv=none; b=Ell2icP7WMrFh1e7vdUjJ9RmCiVFcgyYmao8Sjzog4+8Q6wwJq0+4WC/gimGeQ4FhyoKN1K9Qqg6GvKw3UxTKuydeqKZHY5bvUDcHVCnzJIK39GCLuO7MWYeMDPDIcMEmCb0Gmsg67m266fY93JvSVi0xVggsHcAC9MHz2lOXdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736399809; c=relaxed/simple;
	bh=8SCQg7i9M+JxKMngVqoTLr87dmLoW2wDa5DbqOXOWvg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j60eDf6/AaBFm6iX6DrReXhhgRBTAZF1aB15jQNgS/0TPMbV2EMy2Ix/O6vg33UXvB6nYph+h28d3quand9KGv82yuiwc96TICU24nZpvBld7GbW9XnSdSlo2ZOcjxFkJowwZz81O0a/tGoEH84dspuLSPNsAAvQaKYrhFP5+b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mXa2V9pL; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-721d213e2aeso142836a34.3
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 21:16:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736399807; x=1737004607; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=uyAA2e97hpKNoXsZhlJ3QNCUtbrd7+Jbj4Q7AKJdGhM=;
        b=mXa2V9pL3IVY7QK2ygDqYOfrlFU5Q/prASqzImOxP7herIhs6CHEgm2v9aSViZQ2qf
         wBFbr0spqQhjhUFC1boOoIZ51PlGOkjSGCtujj5NTDTtc+f6I7paB6j95ON8MhkUeRSN
         ZmOBnYXpw7uNIQyeekgQE09kRI1jy//KG1eEll0mT92sUmtmS/4CBBqgqRgJmXJRAO6Q
         MtQcqMIAZAkgoam+W0kMihUJwX6sAH6DcrzcmBXXCL44PjAkZGLz+2yULXg9ZbIvFBYb
         u1WMaNwci9O8gsPjK89+lY7e/DB8Wzoz5g4gXWkDGIz3LQNRyXtpcvqoe9+V2QOTmfyp
         obgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736399807; x=1737004607;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uyAA2e97hpKNoXsZhlJ3QNCUtbrd7+Jbj4Q7AKJdGhM=;
        b=U6DadIYHC/VoFoQZo6q2bdD/VYKAGSyUQDRVAo/iGJZIupdBl8OAivSnC4RQccbgfK
         6pVbpCVahbI5Yw96zMPg1PrnaDvy6euSqbQMYKPu1Oq79dJkSymRwhvj0wacF36F2MJD
         2hZw/P/yOUzDULZQMDWT9ATHlT5TLmfAD4FBCJg4nW1hcG+VG3bQL3rx2So+JQ5DcmEy
         YpVXt3PpsVT1kipKnC0u4+uvEW20HoTP/W6HevPS59WGGPNHIbUOvc47on/0AlxlujdV
         2R0XgBbp5uUV2x8H//KghTwWDpnxpYSTktYl8DXrxaP0/fei8UsZZMutt9Ca+fqslNNL
         w2nw==
X-Forwarded-Encrypted: i=1; AJvYcCVNd5S0FfaDNRk9oYP9ZAVkN6W3OobuUV1SNHlWJfyTt6yaqqwDRQ7LFtI49jJE+6X8daN3l+zNvkeO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1kLzv/bh8FVLcvhxW8F0Ltp8YEjCdhPVC84E03Zl7eyqdQa0v
	NgWLQmKl3uCaI0s/E7qkeo48MIm50vbfWfmJjL61TAPhhiO7ygxy
X-Gm-Gg: ASbGncsi+stJF1+sOMJtC/sRCnRXIuCUi0qgDEelk2Lkk84dpAU4hsOhuVkfIluRGzC
	OYL2xiBEIcLuFtWjCnBhjtEq5spRj/59qzGTQR0XYsjZRYMB6+Rz4T0tE73Ohp7PZCkdfeUQoOe
	R/PDdF5nj+9ZVTAM29x9R3dfmi2gHRMyQ/QBmApSGwNJTl6bGu8W8wJR2c2sWzWcGm2baVccpbd
	MnooJPZ4tLl5d3h6v8jqAIMVDeJD79YuS7zJxfyPSKwDhxIVprseE8LQAe9wAwHDA==
X-Google-Smtp-Source: AGHT+IHpvhV0n1MWMR5QOj5LEYgK4tR/bDZhfQMT/ySGHTL4kUeXpyNlzbLXHUVerw8aIu6Nh6E6pw==
X-Received: by 2002:a05:6830:6994:b0:71d:f21b:a447 with SMTP id 46e09a7af769-721e2e5b5a6mr3183007a34.17.1736399807192;
        Wed, 08 Jan 2025 21:16:47 -0800 (PST)
Received: from tower.cjhon.com ([2603:8081:ad00:4a:f022:ffa3:5bc0:c1c3])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-723185481bcsm187612a34.21.2025.01.08.21.16.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 21:16:45 -0800 (PST)
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
Subject: [PATCH v8 0/4] Orange Pi 5 Max
Date: Wed,  8 Jan 2025 23:16:14 -0600
Message-ID: <20250109051619.1825-1-honyuenkwun@gmail.com>
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

Changes in v8:
- Rebase with updated 5 Plus USB 3 patch

Changes in v7:
- Add signed-off to first commit
- Expand first commit description 

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


base-commit: 2859e1ac3110f2d428a794bda26ea0d90b2254c6
prerequisite-patch-id: 4672b745f4308a7be527749279edb71625d120e6
prerequisite-patch-id: 2743fb64eba2a29eaf993ebc8a5d6ee445b69dfa
-- 
2.47.1


