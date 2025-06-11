Return-Path: <devicetree+bounces-184864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5C1AD5669
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 15:04:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A2FE1BC413C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 13:01:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2E01283CA2;
	Wed, 11 Jun 2025 13:01:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="QbPMM9gW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456B52741D0
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 13:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749646865; cv=none; b=KjNq8MUkcuyL8otiLTx2/txejLKLejvGGslLVC/y9ZNpPYty6wSmq4bz5tkG8R13I2f6Hi1jmop9DignvcRnguxeD1C1k7TVSo5KIZUbMUJmVBqXLMz6uny77JE83K32v5Sy/fyQmCgi06bHUpg3i9gk8Fk9P3adpYDMMV/VVn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749646865; c=relaxed/simple;
	bh=OUo46ask5zEdNnxgtDRLYOxKjqeZYpKbIvKQrOHiQr4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Ra3lp8BQ39yLAZoHigX9yk/M6esZGshyxMK3I0YTXckaB5zeeWyhr/bb0a7f9nkQtbcuWK3FYCOc7sxvf5WTbErsZc+hc8szJztuL3ApRKhQb3H75GoGuMztAUVZ9TW/anasq3DR2FUMFeoUQx3eIQ2ASLEw35iuDw4cZbXLlxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=QbPMM9gW; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-23649faf69fso1048645ad.0
        for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1749646864; x=1750251664; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CSKx+jiwSQ8DJGzzvr3skZPVBhTTim+uSj665SiqoD0=;
        b=QbPMM9gWoczJsDC0oLzWD3iFJK53GT6JRMtpLCBIDg+Ub+xFO9Jif9egm9lljW8vtR
         rWcjApI4GscBPCBAOcRJ8G2HP0YMlc5tCZ6RBzf/SD7XRdiwQbiaGNdX+vNcUv+UwVYM
         nnbFUE0yK8TjEh4/8+HlIDZjs+XVJsdOvYOf/JlO2Dk0aYZhUDpcia3u8+eUcNyubEdQ
         lNLHYmg5zsXzQh7NeJS1MBPhJIJHuasHIiVBTxN2mzoImm4t6Mm0GAF6qFsdN4FCk5gl
         KsMp1SOndgeKTghBNQKTTh0fiWiJcgFdkfekkyzZXiVZUP8gqbFJ4DWOvzhTx7IrVjRZ
         HRng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749646864; x=1750251664;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CSKx+jiwSQ8DJGzzvr3skZPVBhTTim+uSj665SiqoD0=;
        b=ocX6c4eFp9JZEKDmixcjm4Zo/xoysHhybipF46xfysbpokr1Cy5gvjmKIOBmFXNzZ0
         qKAaPip/p2fzzJsFSE7WvF1cJmB/OQlhrtOFKmgyIadmK1e5N4YcCXpO6jjkZHr4FZ6j
         YnuhVP4I6Hi0sdc6gJsw7dFAR01sMYZIS2bONwYHmGQxVmxx/Rr4GJ6h/tqnK9m9CV7s
         DD0AFppwDCI/3zHW1YW3fLuTMgvF7RZ8En5W+JcYZEE+8Sm7HwMmMetjgaqeSpSY46SF
         ulJSCcCT0SlhMprJC/KvVPQCsdxJ62EJJWCWhKxM5Q5EXCxs4QQp/vX+TDUJy4rVBC6h
         Vtdg==
X-Forwarded-Encrypted: i=1; AJvYcCWxwloN/Wn8pXy0EaZ2IPRFKdVDKJN7xj8JoZDTWLITfmVDaqTOz9biKspi9KXpc/zS/UZ9EPTO6sMO@vger.kernel.org
X-Gm-Message-State: AOJu0YztAgwTnQ9R3r2yWtSXu5zh5WBQYOtkSM/N8ux4MduPZ8otp8oZ
	+gDT5zS+4qEJet7BfsYV5j3m2PXGBTzqtemY4rb+hsHV+LhsPG0JEqXd7aST6d4RzJw=
X-Gm-Gg: ASbGnctKGD4QYjbeVG/4/nq9qVD7ot7Dqhgj5b9pM5b/8xacITOTD0uWJfLzb4WEMCa
	QNxkkCLXeW3FoKXT3SBPNFJJNWwsuzVNOxihsNclI4d5Txuc2NSknq9XBX5fk/9+qGAZgB3fu/h
	OYa7inziKvEdIIyP+VRkkMhw4AWZJt+nHYa4zuKKc9tCmYoYA6OD//y1sdH5/30zjXcRZPo5LLC
	3w6tYZNzw0Eq7CwLm0qKpWtLNLTlMo6qWWkPkK8E+/FkqjDU9QUsZWzhIoRX/QOAskc+NC4H4rB
	k1WOvKeXglp6/SLsNC2sM9/4dldtC/SuQ7GHJUt6yVEk07RybnxR1ONzCdagbRYcPP+wQRC1Gfu
	yyjnzYqDN2VN9WMzrWdVzwWxG9DmnwzPn
X-Google-Smtp-Source: AGHT+IHRhbcivXCxN135O16ueeb4/aUJWfnS89ixSiurI5FZ7uV83frEUoZkuyXDNWNmUKyh7r0P9A==
X-Received: by 2002:a17:902:c94d:b0:234:8c52:1f9b with SMTP id d9443c01a7336-23641b1553emr48488375ad.43.1749646862200;
        Wed, 11 Jun 2025 06:01:02 -0700 (PDT)
Received: from localhost.localdomain ([2409:8a00:31a4:6520:3d67:ceb1:7c60:9098])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-236030925e3sm86984115ad.53.2025.06.11.06.00.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Jun 2025 06:01:01 -0700 (PDT)
From: Guodong Xu <guodong@riscstar.com>
To: vkoul@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	dlan@gentoo.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	p.zabel@pengutronix.de,
	drew@pdp7.com,
	emil.renner.berthing@canonical.com,
	inochiama@gmail.com,
	geert+renesas@glider.be,
	tglx@linutronix.de,
	hal.feng@starfivetech.com,
	joel@jms.id.au,
	duje.mihanovic@skole.hr
Cc: guodong@riscstar.com,
	elder@riscstar.com,
	dmaengine@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev
Subject: [PATCH 8/8] riscv: defconfig: Enable MMP_PDMA support for SpacemiT K1 SoC
Date: Wed, 11 Jun 2025 20:57:23 +0800
Message-ID: <20250611125723.181711-9-guodong@riscstar.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250611125723.181711-1-guodong@riscstar.com>
References: <20250611125723.181711-1-guodong@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Enable CONFIG_MMP_PDMA in the riscv defconfig for SpacemiT K1 SoC boards
like the BananaPI-F3 (BPI-F3) and the Sipeed LicheePi 3A.

According to make savedefconfig, the position of CONFIG_DWMAC_THEAD=m
should be in another place. It was updated in this patch.

CONFIG_DWMAC_THEAD was initially introduced into riscv defconfig in
commit 0207244ea0e7 ("riscv: defconfig: enable pinctrl and dwmac support
for TH1520")

Signed-off-by: Guodong Xu <guodong@riscstar.com>
---
 arch/riscv/configs/defconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
index 517cc4c99efc..83d0366194ba 100644
--- a/arch/riscv/configs/defconfig
+++ b/arch/riscv/configs/defconfig
@@ -134,6 +134,7 @@ CONFIG_MACB=y
 CONFIG_E1000E=y
 CONFIG_R8169=y
 CONFIG_STMMAC_ETH=m
+CONFIG_DWMAC_THEAD=m
 CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_MOTORCOMM_PHY=y
@@ -240,7 +241,7 @@ CONFIG_RTC_DRV_SUN6I=y
 CONFIG_DMADEVICES=y
 CONFIG_DMA_SUN6I=m
 CONFIG_DW_AXI_DMAC=y
-CONFIG_DWMAC_THEAD=m
+CONFIG_MMP_PDMA=m
 CONFIG_VIRTIO_PCI=y
 CONFIG_VIRTIO_BALLOON=y
 CONFIG_VIRTIO_INPUT=y
-- 
2.43.0


