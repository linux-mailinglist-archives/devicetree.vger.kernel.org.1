Return-Path: <devicetree+bounces-138117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DA216A0BAF3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 16:03:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 14D6C7A1A58
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 15:03:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 198832500BE;
	Mon, 13 Jan 2025 14:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="LN1f6hUk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C7D023A58B
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 14:57:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736780260; cv=none; b=nCaHSFhQAhuRJxHHHjZywxhSZ6Rx4Upb4ayhTDFzFD7gQ3w8RdFwNPe/YJ0WkkX6gMzujQMgT+7kz98l2eYA0TO1P+Kc40Po42ljEw3hFNQdYdvL65Ye0RqG9mI1PVz8vH6md4tdFea506pdpoIRiShYLNO9tAdVQFYPXhRjf2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736780260; c=relaxed/simple;
	bh=QMBFXNqBpFgYP2yitTOgzdsfZItshvzAST6FqjQRjNM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=iv+KBpcoOgRqx6UUP/7O6X4hfQ66ojMU85UFwKhp+V3u1j6Hzf8Tf3oI7OMyHWZNveaor8Hqh5I/bt/P8LN/9Z7k30KnCUADKwOliSKWfcQ77gjdCw2VvypTQRdEES9mLLW/SOH+Vydldb33M3GUJCoxmKPNB9pDB6R9ic+lHPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=LN1f6hUk; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a9e44654ae3so701463666b.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 06:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1736780253; x=1737385053; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+dNlxUlq/zQec54ENuov38IuayLoY+NtEDaFnmM1inQ=;
        b=LN1f6hUk1ZwF41hlKguv5VymijYl8T6LFbmIU2a65XPQRamtQITn19vWMu/Ius+4CR
         ODjHL/ubeWnT+ElvY9r15KxXmQLzyCzgdmQPTpTmDF4cd/H2jO7zLWtfpgjVlpr+QML5
         AJdQBEIvMq2FCIifmt6f6jgAFrF7fKWj0vdYs06AtMkxiNm6xfKGm+5zi2nHistvxkCE
         zLAEnXhgNpbRK3Kg7rJvGa8zg1qG8wdfJzTiF4GYY7ps6KUc3lSjRRgd+DjaskFh3Te/
         1DBAxCg8UtIW7OG0opGw4hPkkv577CLfACNibbwchf3dsuDVnn/yRz7uLPm394mrmbZD
         YB9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736780253; x=1737385053;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+dNlxUlq/zQec54ENuov38IuayLoY+NtEDaFnmM1inQ=;
        b=Vil3Q9OYzVvLiv4A0osBcwpH/lau2ph2WW51IO7tngi//MfDIKH9yH6ta2kMcRRcW+
         PjW5SAfRFKNQQk/fwvaSgPzN2BsZKwp4vlMCnm8+vfUzc87wjo403R9RjNb8voThw6XV
         N5OdMCWx0suA5aq67IBrfkVJ0LnzPANbBtv9hyRXkOKwXKrz2cl4IMGeYKP0de1ElfN2
         MEBbzlzvZG+DUPB43vWOjyM5echifpDlR9xtNLS3f+XbAEXiw5b9fyj3EsaZsi5HRi5k
         bsWqHZ56rdB0oqNhdHcNPmVggkoWOE666eHc6YcUJgZOCmftdghyCe2zOd6V3ERddRcd
         V6Aw==
X-Forwarded-Encrypted: i=1; AJvYcCWC5E/viswhm/H9dGaZ11tmSK8kLQSyVmdoqqWYxl2KJQRmvyrinGiAv+RjGZ75tq1bOshpuUQ1yt1N@vger.kernel.org
X-Gm-Message-State: AOJu0YwW42kKOuSBFjvbA/K/Yat5QOpU4wdGyJCL1g8nu71toYKbqhKZ
	3A1VvjZRrJlMmNIbnIM2uhn3FSKnkbogeMfkhT/5JraX8hb/kSUPydEB1m7DqDs=
X-Gm-Gg: ASbGnctod09c7uz4dzKhUZPFnorzyHY0LaonHwDfA3fnaANbcrGn/lK6hrIgIlBBQSu
	AYxkcBLfjYyWaOzHHBimQ3xRQxlPaqTQGj58spJj06Z5jNfDMW+0W3Cj/7Nhj5By1KQ41Y0xk48
	DmcKUXQNtWEKAJ4oG6H8L3eSJ5KCvYmafmVL8jCC2yD0aP0Wey7Pyy6sb1V3IZQ4pXodsop/HPM
	ZaXCrH7YiZEEZf3IvKoApGcr0qRiVjahQyKkpS3evmiMSx8e7MHcPAiv2PHcmCJo1d+oLTgiorl
	h0WAGKCrzmbqE5RUekIXvoAst3A=
X-Google-Smtp-Source: AGHT+IGT7ZUyRqjYZDfn2augtPO24Nq1KfGdCS+zaijGp4OI6jVXn2a8avrfPMk2uXfMIqlZpqSwuQ==
X-Received: by 2002:a17:907:6d29:b0:ab2:f8e9:5f57 with SMTP id a640c23a62f3a-ab2f8e9652bmr767188466b.21.1736780253509;
        Mon, 13 Jan 2025 06:57:33 -0800 (PST)
Received: from localhost (host-87-14-236-197.retail.telecomitalia.it. [87.14.236.197])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab2c96475besm506777166b.180.2025.01.13.06.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2025 06:57:33 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v6 10/10] arm64: defconfig: Enable RP1 misc/clock/gpio drivers
Date: Mon, 13 Jan 2025 15:58:09 +0100
Message-ID: <325cb9d9956344fad68c137b99a9c92bcd707481.1736776658.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1736776658.git.andrea.porta@suse.com>
References: <cover.1736776658.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Select the RP1 drivers needed to operate the PCI endpoint containing
several peripherals such as Ethernet and USB Controller. This chip is
present on RaspberryPi 5.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index c62831e61586..91b39026dc56 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -609,6 +609,7 @@ CONFIG_PINCTRL_QCM2290=y
 CONFIG_PINCTRL_QCS404=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QDU1000=y
+CONFIG_PINCTRL_RP1=m
 CONFIG_PINCTRL_SA8775P=y
 CONFIG_PINCTRL_SC7180=y
 CONFIG_PINCTRL_SC7280=y
@@ -690,6 +691,7 @@ CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_SENSORS_SL28CPLD=m
 CONFIG_SENSORS_INA2XX=m
 CONFIG_SENSORS_INA3221=m
+CONFIG_MISC_RP1=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_DEVFREQ_THERMAL=y
@@ -1272,6 +1274,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
+CONFIG_COMMON_CLK_RP1=m
 CONFIG_COMMON_CLK_RS9_PCIE=y
 CONFIG_COMMON_CLK_VC3=y
 CONFIG_COMMON_CLK_VC5=y
-- 
2.35.3


