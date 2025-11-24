Return-Path: <devicetree+bounces-241772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5F9CC8284F
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 22:21:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 6B20F3490D6
	for <lists+devicetree@lfdr.de>; Mon, 24 Nov 2025 21:21:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EAC232E146;
	Mon, 24 Nov 2025 21:21:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="VtXsdnIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C6532E15F
	for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 21:21:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764019277; cv=none; b=KtcdAFf75NIZ529u+ZNAf6SCrBwR/PlPPBfINqf9JrFG/NNbAMb/yxNGN5kl6ej68WM9RX9TBDmnnUbSRhDA/NCMiBPZdoSclTmkAI2hoDRErYe8yDrArT15tDYawq9L5OvLyVlfLY/Zz3kkc5jM6w0UXmAuA4V5hPYOjqwor8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764019277; c=relaxed/simple;
	bh=yc0Af9yMGkpQEt0bZMY5B+ShJNjYZoi8BU75y3Sl1ao=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=XMcHoJ/B0wBReUd1TIaCI3p+M9NvdlFstvWP7ZOL/kBg09lWCZPBUHLk3OoOf+KqSdqwc1Wl9xY2/DQABuU/gw0feEuFd/G+gV/ZGMvg6qoIFVSBwr3gOlSN3ZFdq2R7tWk5vMP8M0mBmxEiYoZ6oyQT21nxkiRdcuZVP4hJpWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=VtXsdnIJ; arc=none smtp.client-ip=209.85.210.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-7aab7623f42so4956417b3a.2
        for <devicetree@vger.kernel.org>; Mon, 24 Nov 2025 13:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764019275; x=1764624075; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/9QGz46UYtLMXI1pmFW9bRaeIDfyEN0luwe8T1UQhkk=;
        b=VtXsdnIJa4QOn9zmT0K+AVNrfXDKicHwQvAw8MOT+xk20VwfOn04FC2tuRJ5avogwp
         9+NEttMjDDJE2A/dDq5MzrLsCMRY+fA+Rve0hlAr7oqR1Vp5Dhac/kCjyO7+hiqemWnP
         MUcQLTbC//nOLY8EfVJXVujZgDhoAiNxbakbnZsLbH6ewQ4dNIh9bZUQj9y8+H3UoMev
         3VJ8sbG7LMk33D+zJGDsaVK3hf9PhCzLv0EB2s4pXTz8CyQt4kxZUSQGzFtLisCVRWU2
         c0OEpvWYMjLlgeAnH86ONyaAGd56Znafu9D3ygCfvYHAqHwp3pXGhqPd7HokNz2ZcByp
         4REg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764019275; x=1764624075;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/9QGz46UYtLMXI1pmFW9bRaeIDfyEN0luwe8T1UQhkk=;
        b=JFvv5yiwXprM4fE150AzG1exG58L4UZBU1OLL0Dp/TUxHj87+YaY0f2DKWAqaiB5Fe
         B+qjBbTdAP497T4d0c9TtR5ZjLXnXvD0uW+jqA9+/M+Aa/icfjQ561f13yhcTL2/zC9D
         fus0dTGTiwZ0f1A5xuMmJWsOLjMwOruxLlL976sMf+RnxPdB1GX6coWaIoWj6IhZZZYe
         FBcNiuuUb/BCNY8iSQ5WqRCkT8RoSolo43z1qwn840X9QwaaGq8H6jnQq1WhMl2Gw9xL
         Mn0TiyJZ9YRhn+QxV7JQzii22K9Y0w3h803kWDHu72tuJfNdcu1bG6rpsHEdzXuFLTvv
         GKUw==
X-Gm-Message-State: AOJu0YyhzUhRZHamalWfxkaUnYRqUP+IPoSnNYCMOnJhI8noKtpg81+D
	DmS7DlMuJMfcG3FJNUhivN29uqdKnuwsKeSvJUE1evI8r6ilYVQQvhy2Y1I37LkPqJM=
X-Gm-Gg: ASbGncsMRBF8lVt/A7Kn57JRU6ZBv6rEhuBPjU8R8NfPVS0h+NVyn8lSvsZU24SzjWo
	YMC4n/deeexgB4qP9irO+52CXfV6VqIAZuy7iLyis61hsgZ+n+oaAI9PILk6rlnQgRqIChPF05+
	nvWlbugGqUC+9Gpn+vL+IG/rPGVgnrTUG/UwojLt2p5VTcTIpNJ3eD7lsuifS6izaFtWQKrob3T
	ENOU3hIqOjLV6HMDJrQdhIKhHmFEIOdoRlwxS3cSqeE/TVAezBBYYV5id/Mysy/6vfi5xi23Opt
	oxBQAiUoOCCaR4C2Z9W49dx5XRRyjZ52t+3pKWyrG5tZ9vQ0mYLo3C3cjjd0e2RSH0wY6fMJKHH
	kkxdf5TZ/3xLE2ZjYw3tjuon5Y5BLv5jmeO0gkskEL0Cr3RCOwEmC4AQwynMJUo3ykClEdCSoV8
	H6Tw==
X-Google-Smtp-Source: AGHT+IHgLL5D3yM9RdlZQ1MwTuPoHc0+CT7LUpZzSIOdrIYHqHAGsgDGRtjFBOllHJFbG3YjuM6J7Q==
X-Received: by 2002:a05:6a20:734c:b0:35f:cfb:1ee3 with SMTP id adf61e73a8af0-3614ecc9fd3mr13510474637.25.1764019274844;
        Mon, 24 Nov 2025 13:21:14 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3ed076eb3sm15702319b3a.1.2025.11.24.13.21.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 13:21:14 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	peter.shen@amd.com,
	colin.huang2@amd.com,
	Peter Shen <sjg168@gmail.com>
Subject: [PATCH v8 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Tue, 25 Nov 2025 05:21:04 +0800
Message-Id: <20251124212106.2068069-1-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series introduces the initial Device Tree support for the
Facebook Anacapa BMC platform, which is based on the Aspeed AST2600 SoC.
It configures the platform-specific peripherals and aliases for OpenBMC
usage.

The series is comprised of two patches:
1. Adds the compatible string for the board to the binding documentation.
2. Adds the main Device Tree Source file for the Anacapa BMC.

Changes in v8:
* Dropped the unused 'pcc_memory' reserved memory region as suggested
    by Andrew Jeffery.
* Reordered the 'spi-gpio' properties to group all '-gpios' properties
    together for better readability (Andrew Jeffery).
* Moved the 'pinctrl_ncsi3_default' pinctrl group from the board DTS
    file to 'arch/arm/boot/dts/aspeed-g6.dtsi' (assuming this dtsi
    change is applied separately or already in the base) to make it
    available for other platforms (Andrew Jeffery).
* Revised the 'gpio-line-names' for better clarity and alignment with
    schematic signal names, avoiding confusion with pin-muxed functions
    (Andrew Jeffery).
* Improved the formatting and readability of 'sgpio-line-names' list.
* Removed the unused 'led-2' definition from the 'leds' node.
* Added support for the ADC128D818 sensor to the I2C bus.
* No functional changes in the binding patch (1/2).
* Added clarification for mixed-case signal names (Andrew Jeffery):
  The mixed-case names (e.g., FM_CPU0_SYS_RESET_N) in gpio-line-names
  are chosen to directly match the signal names used in the hardware 
  schematics.
  This convention is used to maintain strict adherence and clarity when
  cross-referencing between the Device Tree and the board design documents.

Peter Shen (2):
  dt-bindings: arm: aspeed: Add compatible for Facebook Anacapa BMC
  ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC

 .../bindings/arm/aspeed/aspeed.yaml           |    1 +
 arch/arm/boot/dts/aspeed/Makefile             |    1 +
 .../aspeed/aspeed-bmc-facebook-anacapa.dts    | 1044 +++++++++++++++++
 3 files changed, 1046 insertions(+)
 create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-anacapa.dts

-- 
2.34.1


