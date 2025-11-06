Return-Path: <devicetree+bounces-235733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A186EC3C136
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:34:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2DAF51AA7DDA
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:32:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEC5D29B8DC;
	Thu,  6 Nov 2025 15:31:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b="OdOBHfbu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F74629827E
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:31:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443087; cv=none; b=celEUaseDU5FhPPgWCkavMcxKr78wepu5+6Our8lg5490K5HnS6NtTGbGWoeBkgHX76ZmDMyYXuqFOaKShyXclrMSInKffPiPobs5dMdhFaMWhf3pVu/0FDNexIjVjd54Nh1zLEJipP2aUJKa9TqQdhsj1qKVWdxEeqWo2SBI18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443087; c=relaxed/simple;
	bh=q7sHWixTWPakJjpCcPxaoq8AAo162rx3AhfF7uVu25c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=AFzhJLO63T0DA256X0zc8z50vkEWzM6u2bn6yeAs0F+XYtAYWc6yVHJzBwGM+Rx+0wBLU4UMHefyYxcGZyFXCTZ97wSVwArAarungyHHdXNEY7VFysidEi7BmKDftaCiLavz4V4awjZprEPzG4+hadxnNmPfHqVCz/v+xwg1LsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc; spf=pass smtp.mailfrom=arduino.cc; dkim=pass (1024-bit key) header.d=arduino.cc header.i=@arduino.cc header.b=OdOBHfbu; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=arduino.cc
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arduino.cc
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4298b49f103so458721f8f.2
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=arduino.cc; s=google; t=1762443083; x=1763047883; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yiPq/j8AAJTo8QumL7Ou0ccmUXufOZkM5RLHegjZVMs=;
        b=OdOBHfbueRgB62YMyO/xKfh2Zf+yMHwDrCxlE6ZShHQdhZuWQ+n15KOGbvk9ITW06D
         dVs6oN2MurfkC2rWyFo4uH1t2CBIsqJfl2SOQ1XRs7Z+kukQxdL1/zT7M15GG/YjdUe2
         rv0467B33Xhgc8vcR/we4HLVvNo1TL/ytPIYw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762443083; x=1763047883;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yiPq/j8AAJTo8QumL7Ou0ccmUXufOZkM5RLHegjZVMs=;
        b=R4QL3LigktsN+F4/ydSCsBiocp56pcUaJlVKCjnr+kIKJON7mhyfR9S5JbGfIaOKsI
         DyPj9o5V4CjhHBBhEXkk33JcyFMrAi+6dKjJ+2qUMFQTL5Eh6QXRq8kQkMi8LIiyGrNt
         xu3iEva1if+im6bXMTjs/kg6j5wNiHUv1rbls4kNHsXGPvp5xsBd9ljZZbhObatMPL+h
         FaID/N1Yo1Le38ucvHic6gnwfWeA8r3JJxH64UKXdfDtywDIw6XgcoPl76hVWlvvQ31K
         tTc7rGeTg30uthsWU7wfMjEo02A5XxkCyCjI9kcCpQfDhFsW+cA7vXpjQRNoPPlzSjpJ
         N+1g==
X-Forwarded-Encrypted: i=1; AJvYcCVqkz0OUy7RG0NXfesUyBHq5fjs5rRddXeCpyQ9JQPc6RFYSyoSnQMVhCBE4RoNnaMapbjA++mkYmYq@vger.kernel.org
X-Gm-Message-State: AOJu0YwnHEJhvc7Qqwn5jNEyjQiRBxis66RPGG8F/XDO80xySWArosUF
	hrYyNsh0xbhOwTpO6ifOM3kjXdif5r1aM59uQ7qgkHlmNFZZXUt6jk4Lz6z7Qjeubl8=
X-Gm-Gg: ASbGncudoptWIDnsWawn0KkeYqs76OU81mssfLRlEs18Wu0hHDOIe/4a7LuXeIsPMbc
	+25Nvd0oNaIaEK85EfLsFKFL26y1dmjLFwFogElxyrEjf6ROA5zI0x7VQSNheq6BZFnMT4L4K5p
	51sQFOqKgg7x2Fo6S1eHS8wQ4tVimSqAAfsR/dyf182HLyoUMRn+U3bBV8GGPZr9tcO+5/H6KRp
	THB1DH29YoEkgfbAkO4QgqxrMknpbUYh49dqIikdspmW559G2xxSbQ2tklKFkxWn20w/gFzU/MO
	ThjDj+RR9oKwQlYYkpOwwLMh26D8Zcdvq3xwybrx+1sY68oaME7UWTanMj/YjsoTQBv9CXfzHmC
	H7yC6a16gFSHecVqEnGkOQfm06aJ11ARTyzyQfckfmYnyfqQNEwe/g8hJFQLWJvGaBbMxCGCARs
	jZDhzEIjNnN7vOKuTK6o6d9MZk
X-Google-Smtp-Source: AGHT+IEDkfl3qHSikpIA1Fyk7Grp63BtfKWcdxvISif02sG/ljkZgpwjNMkZU5Sn7DWLfr/nw/w+YQ==
X-Received: by 2002:a05:6000:2c07:b0:429:66bf:1475 with SMTP id ffacd0b85a97d-429e32c6cb6mr6521748f8f.3.1762443083270;
        Thu, 06 Nov 2025 07:31:23 -0800 (PST)
Received: from riccardo-work (public.toolboxoffice.it. [213.215.163.27])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb49a079sm5966719f8f.32.2025.11.06.07.31.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:31:22 -0800 (PST)
From: Riccardo Mereu <r.mereu.kernel@arduino.cc>
X-Google-Original-From: Riccardo Mereu <r.mereu@arduino.cc>
To: andersson@kernel.org,
	konradybcio@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	broonie@kernel.org
Cc: linux@roeck-us.net,
	Jonathan.Cameron@huawei.com,
	wenswang@yeah.net,
	naresh.solanki@9elements.com,
	michal.simek@amd.com,
	nuno.sa@analog.com,
	chou.cosmo@gmail.com,
	grantpeltier93@gmail.com,
	eajames@linux.ibm.com,
	farouk.bouabid@cherry.de,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-spi@vger.kernel.org,
	mm.facchin@arduino.cc,
	Riccardo Mereu <r.mereu@arduino.cc>
Subject: [PATCH 0/5] arm64: qcom: add support for Arduino UnoQ SBC
Date: Thu,  6 Nov 2025 16:31:14 +0100
Message-ID: <20251106153119.266840-1-r.mereu@arduino.cc>
X-Mailer: git-send-email 2.51.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This patch series adds support for Arduino UnoQ single board computer. 
UnoQ combines Qualcomm QRB2210 microprocessor and STMicroelectronics 
STM32U585 microcontroller.

In some files we decided to keep UnoQ code name as "imola".

As this platform has a microcontroller connected to the microprocessor
we needed a dedicated spidev and to add uart2 to qcm2290.dtsi file; both
are used as interfaces between microprocessor and microcontroller.

Some GPIOs on the JMISC connector have been defined but not used in
qrb2210-arduino-imola.dts; this is meant to facilitate carrier dtbo
development for users.

Riccardo Mereu (5):
  dt-binding: trivial-devices: add arduino spi mcu interface
  drivers: spi: spidev: add compatible for arduino spi mcu interface
  dt-binding: arm: qcom: add arduino unoq codename
  arm64: dts: qcom: qcm2290: add uart2 node
  arm64: dts: qcom: unoq: add dts for arduino unoq

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../devicetree/bindings/trivial-devices.yaml  |   2 +
 arch/arm64/boot/dts/qcom/Makefile             |   1 +
 arch/arm64/boot/dts/qcom/qcm2290.dtsi         |  24 +
 .../boot/dts/qcom/qrb2210-arduino-imola.dts   | 467 ++++++++++++++++++
 drivers/spi/spidev.c                          |   2 +
 6 files changed, 497 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts

-- 
2.51.2


