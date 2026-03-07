Return-Path: <devicetree+bounces-272475-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKjrIGdKrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272475-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:55:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 765A322C902
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:55:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 7FF8C30072A8
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44CA234F497;
	Sat,  7 Mar 2026 15:55:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ImMyLjns"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBD751D618A
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898914; cv=none; b=dnbqFCTT2M/foqWsw7mTJm3XltelL2tXSLMTLC2UjFynDpCegfj8oo6KydppOpswsAyj6URJ3JiLQt+2gdQZphTh2S6fCwry5Y0E12MXhHviXZxAnbqIWx/F+aZFYWdKzlecfV65DIN9M70XcImDpDaO44MMHgbC41IyC0oy8ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898914; c=relaxed/simple;
	bh=bh971L15rJ6CI+8b9I7ulSU8l63UC4yuq5IwC4BKYYk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mmLGis0pFYIRmwJnvxHj5T4aye3+wiX0oFZAhaY2SifQysqPBvbXGcFu8do4uw3bh8PYiKXeXa43+XtrrVBlVH+QZdO2+s6NvMyYeGfB295a6x1UcOXzA1vYaQf5nGKDxA5KEVbl6TnP+x9/tnXPwcDUqgXevPcughrO5bEo7fM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ImMyLjns; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4852ff06541so4809635e9.2
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898911; x=1773503711; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=W9oa0AHQoPurBACCzWUh4c9uWAceyEmwnMnCZmzmFq8=;
        b=ImMyLjnsVC4VClsFQuSDdf9eI2l+rT+YEc7EBqxaZcbgVpwYrda3xFm7SieQdG1T6T
         W4nx7mkivDC0M6uRb6PV+YJBvIyRDucKujITLo5q6iizOmKm/u6xAqd2T63YdISQVe0I
         ugy0WaO+fE2PfX0POkfBMDvoCgHaX3/ef64bzdGR2qXHdixTwxJC/LOJtHLmx+tONWHW
         QTo481owo1VFWCSkiqZC6iKc7nvcW1l49VaTMCCQ4KGxtJfOhxD6AGRIdGNzJ1cUmC7A
         ygp6Rhlwx7EtePPW7kvj3TVEj79HbK/rKqDIswBsiladsOCtchbDOmJy9HLxg6jHBGsy
         xfww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898911; x=1773503711;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W9oa0AHQoPurBACCzWUh4c9uWAceyEmwnMnCZmzmFq8=;
        b=u8F9hJtaTKQYhAbR6Ksm0ay+fXzazvuaQYg3ccxv2Nf0ZK+fGV1QvSsMuJhc8wwkGx
         sSBgB0ZTyC86vR8KdNcVHGYPBjCzieunnSaSmzTZo82782tKUjK5czW5dxpHLZmxVgkA
         APyiwlEl/igcLermqkGj83OwK1zHYUXJd4sAMC59U0fWBEiuJBu3nqjFcH4mtU9A4qYN
         uRa3BXD9juJBL3gudhY4rFWzIJKwOoRxnwvFC04GYYbp2Tmvb3J/pJppdjL8rhic21at
         BAXR5m3C9YrG+eATooJ03Wv8ZchjWRVis3N/vifGzavXWnb/G5EldzOrwnjxSB0wAF2m
         LX4g==
X-Gm-Message-State: AOJu0YwwRlwyOATMQyl5nV6Mz2587cMPKO0BWqbR8LwHTx+zh2sb7vcO
	xRx6fj7JJNcw79KhB1QYzjOSZ3ljTE/Ivp1cfomWEMMBcgQEos4v6odYR3FCWw==
X-Gm-Gg: ATEYQzxaKz3RRFOXAVBOQxTEvQPaWk3YiL9P9arYRphTsDSUZLgm9ND6IVsBLsweX1v
	ebHyJTXLcCe2eO1tqkqCZ5umt4ajBtrCE+Ft5ac3x8cDVSQertZmaEFe+zxZaHxVrm28Ke6o5JS
	3gIBmhzQwENGcBP9SZvQMCLqYc2vhUxMrQsAcpE4bbFmNVv3bvd7ppLIbFZSP2wiUx7GdIovzYp
	pn6+ZJAyZGY6nZ00vAFgro42YpzG3I04vVN2pMYSskHOTqTcs88SMeEghpH+aMr9WZ5+3LVggGq
	128dgER0Ujin8XpEs3+kY0/au4AATcm9hCgX2uDvFsQfX5fqSjInaeQSv4Dx6SBcEjhGxnOHPkW
	rIiGjmtwtXgFDq97eJdTXZrWwzcSclpufBmQVwh9um3TWW9sIR+2nxTGlNX7TiKmbcKbgPi9EeB
	boICOFEnE1cpRbFWEmOhLwFshKXQ5rGk2YZRlNN8f5jxIc7M0AgyUFuDjnxD3B3wOvlLhSOQyPM
	ZmPxQCcT+fnTsUKO+UKYqcA0g==
X-Received: by 2002:a05:600c:c4a3:b0:483:9139:4c1d with SMTP id 5b1f17b1804b1-4852692c943mr101324685e9.14.1772898910962;
        Sat, 07 Mar 2026 07:55:10 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:10 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.radaelli21@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 00/11] arm64: dts: freescale: imx8mm-var-som: Align SOM and Symphony DTSs
Date: Sat,  7 Mar 2026 16:54:36 +0100
Message-ID: <cover.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 765A322C902
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,gmail.com,kernel.org,nxp.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272475-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

This series aligns the i.MX8MM VAR-SOM and VAR-SOM Symphony device
trees with the latest hardware revisions.

The update consolidates the device tree descriptions to better reflect
the actual hardware partitioning between the SOM and the carrier board.
Nodes describing peripherals physically present on the SOM are kept in
the SOM dtsi, while carrier-specific components are described in the
corresponding carrier dts.

The changes were tested on the latest VAR-SOM and Symphony hardware
revision.

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
  arm64: dts: freescale: imx8mm-var-som: Update WiFi/BT with variants
  arm64: dts: imx8mm-var-som-symphony: Move USB configuration from SOM
  arm64: dts: imx8mm-var-som-symphony: Enable uSD on USDHC2
  arm64: dts: imx8mm-var-som-symphony: Add TPM2 support
  arm64: dts: imx8mm-var-som-symphony: Enable I2C4
  arm64: dts: imx8mm-var-som-symphony: Enable PCIe

 .../dts/freescale/imx8mm-var-som-symphony.dts | 225 ++++++++++-
 .../imx8mm-var-som-wifi-brcm-legacy.dtsi      |  12 +
 .../imx8mm-var-som-wifi-bt-iw61x.dtsi         |  45 +++
 .../boot/dts/freescale/imx8mm-var-som.dtsi    | 366 ++++++++++++------
 4 files changed, 503 insertions(+), 145 deletions(-)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-brcm-legacy.dtsi
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mm-var-som-wifi-bt-iw61x.dtsi


base-commit: 37a93dd5c49b5fda807fd204edf2547c3493319c
-- 
2.47.3


