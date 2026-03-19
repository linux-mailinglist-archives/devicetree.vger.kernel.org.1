Return-Path: <devicetree+bounces-277982-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMUsMjpEvGmAwAIAu9opvQ
	(envelope-from <devicetree+bounces-277982-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:45:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3184F2D139A
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 19:45:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C8CC930FE79C
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 18:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36C1836F40E;
	Thu, 19 Mar 2026 18:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="AeeiUoio"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE80332918
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 18:41:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773945713; cv=none; b=iBepIyERjbQMMvrkfIH1GHVADEI/k2eaG5oj2izrxmaFyUNbrqzK2vEXhToYSNLTn6kAdbeYXC3PIMy+OELTwn0VbdFTeKUYC4b8boIdYQS1AcZnSbYpFzoZlyxfXPUa9OpgAHO7XfTL4gnv1wtaN9ehdDcUn6hz/IqZeBQa1cU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773945713; c=relaxed/simple;
	bh=1wpmT3kyX1LpHVuDOa8WduzvRAXtfYcozUELimXaQV0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=qH6ok4lZWWqLHIYtL7D+VfjO75AYoDj0PxDblI9uEARHqdOIEvaR0jTICmfCVvp3dRhksYXvsDkNNASy+DqjHiJR5YTB/GBfQT+dmf+dRvkLORnDJJ4O2M1V5Y0bHQ7mQJLFBOoUeqomPPsl2YlS9pCXoIgooSIWcIYsfl/SSHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=AeeiUoio; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-486fe36cfabso1675085e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 11:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773945710; x=1774550510; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=p40Qcv2G6Nwq3NC4ZmBz0invegjnt7tZxrcbDvxluio=;
        b=AeeiUoioftUrAOASvk5kU2xdEh4y65FWuJz4yVyNXr+TBnXV5G4+yjlF44QASsn6pX
         XvQLkBPgH2OVD2thL3DoKQq3K9nmpW0D2f7hXJsq+aObltielnR5BTijNmwy8stzgFIH
         KhbZPB2OG8a7ZeA6h3/zsQr1+AV77R2SKDcUQsZ5WC1ew94fDUqkFOXCZqap63vG2Vsm
         UjNiWrElN5tmmcgIx3bxon3sNfnOtcmc7M89TI9K/5gqwk1ac7E0xSWGnqQLwSZAGs7O
         GThBTHnpVxh8Y+fZjGemWZ43ICCD8yDKvJkR5dOeXcAp97YGDowfWVoky5Y/0M/baLzu
         lWBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773945710; x=1774550510;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p40Qcv2G6Nwq3NC4ZmBz0invegjnt7tZxrcbDvxluio=;
        b=qMbshrinnUkYLIoHiNwoKkoX05HxNJfvzZo7s0/cWIbwH42Cxw0EqgF411L9Zqq5/N
         7Btt8BAyRra8PGoxJctgOkokRnTMaLAPKdtyk8Oy09wdJFxfpoaIJsUhUDCCLaxAq+OE
         FLxnMn5anfpKPyCNlkrfN3yooIh1zxSSX1+ZhzSYYE56pnuQyIOdi2hrzTObPAxIKAQ4
         pA9+l3emSr6ard3v+spbJdf/egs2O3i+0p62YgNgO3oobcCnUVcbZKVTmCnGrI5fYK0M
         yWhuQ+eT0njPwEcf9ZU6cC56kxOTatHgqFdQm2P5i5yQ7OyDQifEi1t0jMaeoz8jKwwp
         2lgg==
X-Forwarded-Encrypted: i=1; AJvYcCWqSN2GgtezGuLci+FzMH4pjNv0tef5Gy8Pdle6oHFZcfJRKSv8SHom0kZ6oZ7FqfpeqP/tCqucWu0i@vger.kernel.org
X-Gm-Message-State: AOJu0YxsYLZf4HEFa6BleIBuleXKRHchsMf2/vXdFWzl15h1Ii6lDx+d
	lhuKAUOqhl2JlqFPsZyAh0zUsJh5x5S0UmfnxbSGGHPa1rO7rRVIjp68
X-Gm-Gg: ATEYQzy4HA0mvvPRf60mzvELyYfA0YW3fGTpUte/y9b+bChnMRS6jniU7VZOncFI+tR
	rRbanJp+OFeaTpHlI5B5IFwdyb2oYLFrwpS1aJ6Z6UHw4fvHD9vWoeSWc6hvpbtKfxJdiHPtMVa
	LOere/jonY/G6vELxg4cGOMoiKt0RUns72Eu5YxenEb0TDH+2sZWm0tB6CPSjrsjeV5BWQaQ7oO
	5shpP1uP22kW/64u2B4Fwgmr8a3RYlQZJuWU+Sg7Txcau8MRdGMB/lyBzy+nEsLZdrYvp/6LcYw
	FNjxMP7uiMM/LmJNSXn0PrDGTIePfa6ssTjtdgtVE5QtKJKWxn0pXPv68WnbkTrZk3lIjeu4Vlr
	W17yffZccbNU9Ybtp21n/ItBSK7M/JqZ/mkMvXzcfZXjwP0aPsptsA17ut6H/cMIh5Kvd07KNF4
	1mKCtQ1Tle4MmC4ETmFVeUWjXYh59kQqk6hl5yZ7hhk7EiMDCccOgxPZiVSUgfVtOlFz7gUo5qd
	8EOwJhdv0jdgNfI6pjaIfAR2cCNZdRwOx9d/W0=
X-Received: by 2002:a05:600c:a312:b0:485:3989:b3e4 with SMTP id 5b1f17b1804b1-486fe8b7afdmr5739095e9.6.1773945709911;
        Thu, 19 Mar 2026 11:41:49 -0700 (PDT)
Received: from Lord-Beerus.station (net-188-152-100-94.cust.dsl.teletu.it. [188.152.100.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f8b1fe65sm77289195e9.5.2026.03.19.11.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 11:41:49 -0700 (PDT)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
X-Google-Original-From: Stefano Radaelli <stefano.r@variscite.com>
To: linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 00/11] arm64: dts: freescale: imx8mm-var-som: Align SOM and Symphony DTSs
Date: Thu, 19 Mar 2026 19:40:20 +0100
Message-ID: <cover.1773944896.git.stefano.r@variscite.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-277982-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[variscite.com,nxp.com,pengutronix.de,gmail.com,kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.683];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,variscite.com:mid]
X-Rspamd-Queue-Id: 3184F2D139A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series aligns the i.MX8MM VAR-SOM and VAR-SOM Symphony device
trees with the latest hardware revisions.

The update consolidates the device tree descriptions to better reflect
the actual hardware partitioning between the SOM and the carrier board.
Nodes describing peripherals physically present on the SOM are kept in
the SOM dtsi, while carrier-specific components are described in the
corresponding carrier dts.

The changes were tested on the latest VAR-SOM and Symphony hardware
revision.

v3->v4:
 - Remove "This patch" from commit messages
 - Remove wrong enet reset gpio hog
 - Add symphony legacy dtb to use old brcm wifi module

v2->v3:
 - Add clock-names porperty along with clocks

v1->v2:
 - Moved phy LED configurations to symphony dts
 - Added Wifi/BT dtsi variants for both iw61x and brcm legacy modules

Stefano Radaelli (11):
  arm64: dts: freescale: imx8mm-var-som: Move UART4 description to
    Symphony
  arm64: dts: freescale: imx8mm-var-som: Align fsl,pins tables
  arm64: dts: freescale: imx8mm-var-som: Update FEC support with
    MaxLinear PHY
  arm64: dts: freescale: imx8mm-var-som: Add support for WM8904 audio
    codec
  arm64: dts: freescale: imx8mm-var-som: Add MCP251xFD CAN controller
  arm64: dts: freescale: imx8mm-var-som: Rework WiFi/BT and add legacy
    dts
  arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
  arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
  arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
  arm64: dts: imx8mm-var-som-symphony: Enable I2C4
  arm64: dts: imx8mm-var-som-symphony: Enable PCIe

 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../imx8mm-var-som-symphony-legacy.dts        |  19 +
 .../dts/freescale/imx8mm-var-som-symphony.dts | 214 +++++++++-
 .../imx8mm-var-som-wifi-brcm-legacy.dtsi      |  12 +
 .../imx8mm-var-som-wifi-bt-iw61x.dtsi         |  45 +++
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 366 ++++++++++++------
 6 files changed, 514 insertions(+), 143 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony-legacy.dts
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi


base-commit: aa31e3bb9b98a86e5dde5c0c637a11cc57470281
-- 
2.47.3


