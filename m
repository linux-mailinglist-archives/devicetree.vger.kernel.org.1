Return-Path: <devicetree+bounces-120121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 87CCB9C1969
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:42:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40A291F24630
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAFB31E130F;
	Fri,  8 Nov 2024 09:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XR0saLoa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53A191E1029
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 09:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731058964; cv=none; b=g7CUpSG2C8Iw3i1qJN4rxWrtA46B97Bj8qIqxwR8rvyHfPM7qAnA1SuFM4JR26f+8Zws3y0GmEvR6jHSXkBQmqsPGJqVY9tNFy/QPw6XTKZTTuGUWPt8B3geFQAEUHDU4qV8r12P6Nyb25wP8+UqDeVt66A9VIHrY1buhi01Y2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731058964; c=relaxed/simple;
	bh=jWCpeLpkpA4YVoOMmIryFg1kg6ULL3RS7k8t4Z+C5X0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=nEwsKSuybWtZDMqqYp5bhEesSdZG3xCaLqLDYbhfBSnNTk4J88d+Spy0NZsgdykSufih4dwnz36J2cycIUEhNNPYkeVewJEIsuPO+Z4u0tpbU/Yz4RSs4LGN3r5C52TTr1looUqiSaMAlJyJLUX1i3KqfUM5V83gAlKKbjVicw8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XR0saLoa; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a9a5f555cfbso145012966b.1
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 01:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1731058959; x=1731663759; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=edr4i5ZXuzi2MqMxkWzTe9XDLfbB9N2JCAr3MU/xkAQ=;
        b=XR0saLoa0ONaS3dhsQouwcbhFB1/EfQETF2IRDWoymrBj8tkGjHaEc3e1eM7qTMKxG
         wnFTyFchqpr3NeD5qJKQY8r/FcpkZDGHulOip3CT4BgKDbbjjCLNkpzJDOJvBqUee2/n
         mSlvCMV6N602vvCPAr4eanj89VlvXbisQNdgto913yJ2/xznvTwxwmWC8supDKouwhwz
         V0ah+sgaaLvI4kmJVvCmgy4LKyVeWEcqtZ2RHPx5kiSMAUEJ6XEwxZIhpgfa/zs99p6K
         Eo/4NA3QqO+bPmonVuxgD32dF6xxThKMGDx08eTHpztjK2VJC8ot+kO2PjVqiaAbbk4K
         Je9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731058959; x=1731663759;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=edr4i5ZXuzi2MqMxkWzTe9XDLfbB9N2JCAr3MU/xkAQ=;
        b=V/ssufizMvQZZuDISyFY900POfWPQgQQyYAKLiQWEu/n6vfHyDnInZ2UhAvKxdHTeU
         4MHEGl+hyaiyaf5DZHmKqpRyenR1xgpj+ylus3sOOMAiM89W0htQxT8xXVhnSW2pLoSX
         ZBvVYAbL9wiAhjPdxaUtj4aOyQKUzEwDGJpzXxkYp2kPGU1v9kmJQcc7mudY9/TAFr6q
         24EUQYX5YJOCWQ+s+7PHJCLYNAenbgH6AFWgTBz/P/53ahiIxmSEhc8ASRnNKLpsjdwE
         0Il84fVW5EgrGqxUkDXZONvHu5wytxVuo4v+H8RAAdU2wIDOPUREq/r5jbcqjozIoyzu
         1WIA==
X-Forwarded-Encrypted: i=1; AJvYcCUhWs0x6l5/uoaDgZtTJKTrtJyNVLNTaungnCU8wgjYkLGLvUUo9aAaiuBCCx8Hv6iDG7LOCIh7CvTF@vger.kernel.org
X-Gm-Message-State: AOJu0YxLOHYPd07QsEMWmuJBObWFzezM3JkrPQItdP8PMLT+CLr57M5W
	0LDVCCHbWbQOPvzPXg6yzMrspu5i2qFeyd7OtqTw5doLo69B/LrG71tJWndCMB0=
X-Google-Smtp-Source: AGHT+IGmVFg6dGCdJ94MvP+GtpTJm4h6Vp+aWc3AX4E8KZIkMCx5imWZRQaFghSdUOFYkB1RH36WSQ==
X-Received: by 2002:a05:6402:3510:b0:5c9:34b4:69a8 with SMTP id 4fb4d7f45d1cf-5cf0a2fb6f9mr2077935a12.6.1731058959540;
        Fri, 08 Nov 2024 01:42:39 -0800 (PST)
Received: from localhost (host-79-35-211-193.retail.telecomitalia.it. [79.35.211.193])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5cf03c4ed68sm1765328a12.63.2024.11.08.01.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 01:42:39 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Michael Turquette <mturquette@baylibre.com>,
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
Cc: Andrea della Porta <andrea.porta@suse.com>,
	stable@vger.kernel.org
Subject: [PATCH] PCI: of_property: Assign PCI instead of CPU bus address to dynamic PCI nodes
Date: Fri,  8 Nov 2024 10:42:56 +0100
Message-ID: <20241108094256.28933-1-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

When populating "ranges" property for a PCI bridge or endpoint,
of_pci_prop_ranges() incorrectly use the CPU bus address of the resource.
In such PCI nodes, the window should instead be in PCI address space. Call
pci_bus_address() on the resource in order to obtain the PCI bus
address.

Fixes: 407d1a51921e ("PCI: Create device tree node for bridge")
Cc: stable@vger.kernel.org
Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Acked-by: Bjorn Helgaas <bhelgaas@google.com>
Tested-by: Herve Codina <herve.codina@bootlin.com>
---
This patch, originally preparatory for a bigger patchset (see [1]), has
been splitted in a standalone one for better management and because it
contains a bugfix which is probably of interest to stable branch.

 drivers/pci/of_property.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/of_property.c b/drivers/pci/of_property.c
index 5a0b98e69795..886c236e5de6 100644
--- a/drivers/pci/of_property.c
+++ b/drivers/pci/of_property.c
@@ -126,7 +126,7 @@ static int of_pci_prop_ranges(struct pci_dev *pdev, struct of_changeset *ocs,
 		if (of_pci_get_addr_flags(&res[j], &flags))
 			continue;
 
-		val64 = res[j].start;
+		val64 = pci_bus_address(pdev, &res[j] - pdev->resource);
 		of_pci_set_address(pdev, rp[i].parent_addr, val64, 0, flags,
 				   false);
 		if (pci_is_bridge(pdev)) {
-- 
2.35.3


