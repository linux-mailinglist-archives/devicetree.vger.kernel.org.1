Return-Path: <devicetree+bounces-295275-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SHSRBw1PAWp1UgEAu9opvQ
	(envelope-from <devicetree+bounces-295275-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:37:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B63507AB5
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 05:37:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0646C302C5C8
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2026 03:36:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E07AA37CD4D;
	Mon, 11 May 2026 03:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PeUo1KRj"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC43A37CD3E;
	Mon, 11 May 2026 03:36:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778470599; cv=none; b=WN9bSfhXcGJ/XPxftTFrzgJdKt7zrAqHctlvvxRX7/6DwOlDqZtWTbeub8ZeTt640olqi/Myabhh/qeS6P5TNHz5Ya9SfqitEgif6+baXqEWAhcaZESJ7/RYuBCms6WR6YFrcCo+8i59wJTC2cH3hG+peR8g8uK8VZyaDIB8DoE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778470599; c=relaxed/simple;
	bh=GyBrdGpPxIAJW7UIim5m/rpLZCOK2WwyJZZq+uAJ6fM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CfUTGf34MzR77oluRn//BEXSZWPDT4q87W7dWHTQsKHngRumvNOswrN6yQ+098sAI+5B/EVgvTnWaHWXaO1EKSn10Dhq6b3FAH0MvC+WBkLZKRqdXG32zIV5oIX1xKKUXivBhoJCh5ngZFOQx1+MQfll500flz4J2R3GMneZUrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PeUo1KRj; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A98AFC2BCC7;
	Mon, 11 May 2026 03:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778470599;
	bh=GyBrdGpPxIAJW7UIim5m/rpLZCOK2WwyJZZq+uAJ6fM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PeUo1KRjD57S1I7rhf1LJ9TsoWgQXxyyiChRhq5hDhQbSrpYC1gKAVinC8/jJI4cw
	 SFXqx5eaXmF8yyKaqpvyQYMI/0AVaQA7n0dK/ns2zg/5YiE73ylCHS1TCsEuG0aNSq
	 avsIjtFCMnAQMw94D64Q8UJI9iJOsf94wVuPgqTcE2P9kyliVaSMYsoDS+AtprgOWy
	 s81jWxvCKtDph/gB0oHAougFdJNYKMo/b4Lv5HVwW7EYehZ9tV5z5pYi9prJnCGVoG
	 2L4874jsYQbtatyddK94q69SpEN2Kg4FuPnsHNbjE66Po9z5Br8aYkvm+VFgr3NjG1
	 6qszCKL4lBBGQ==
From: Jisheng Zhang <jszhang@kernel.org>
To: Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] spi: cadence-xspi: support 4bytes sdma-io-width
Date: Mon, 11 May 2026 11:17:32 +0800
Message-ID: <20260511031732.3199-3-jszhang@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260511031732.3199-1-jszhang@kernel.org>
References: <20260511031732.3199-1-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 77B63507AB5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-295275-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[jszhang@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Action: no action

The cdns xspi controller SDMA data port may support wider I/O width.
Wider I/O width can benefit performance. A simple test with QSPI nor
flash on one arm64 platform:

1 byte io width (default):
 # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
 1000+0 records in
 1000+0 records out
 8192000 bytes (7.8MB) copied, 1.368735 seconds, 5.7MB/s

4 bytes io width:
 # dd if=/dev/mtdblock0 of=/dev/null bs=8192 count=1000
 1000+0 records in
 1000+0 records out
 8192000 bytes (7.8MB) copied, 1.088787 seconds, 7.2MB/s

Improved by 26.3%!

Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
---
 drivers/spi/spi-cadence-xspi.c | 43 ++++++++++++++++++++++++++++++----
 1 file changed, 39 insertions(+), 4 deletions(-)

diff --git a/drivers/spi/spi-cadence-xspi.c b/drivers/spi/spi-cadence-xspi.c
index 895b4b3276a5..c1fb749540e7 100644
--- a/drivers/spi/spi-cadence-xspi.c
+++ b/drivers/spi/spi-cadence-xspi.c
@@ -369,6 +369,7 @@ struct cdns_xspi_dev {
 
 	void *in_buffer;
 	const void *out_buffer;
+	u32 sdma_io_width;
 
 	u8 hw_num_banks;
 
@@ -578,6 +579,38 @@ static int cdns_xspi_controller_init(struct cdns_xspi_dev *cdns_xspi)
 	return 0;
 }
 
+static inline void cdns_xspi_sdma_read(struct cdns_xspi_dev *cdns_xspi, size_t len)
+{
+	void __iomem *src = cdns_xspi->sdmabase;
+	void *buf = cdns_xspi->in_buffer;
+	size_t offset = 0;
+
+	if (cdns_xspi->sdma_io_width == 4) {
+		if (IS_ALIGNED((uintptr_t)src, 4) && IS_ALIGNED((uintptr_t)buf, 4)) {
+			ioread32_rep(src, buf, len >> 2);
+			offset = len & ~0x3;
+			len -= offset;
+		}
+	}
+	ioread8_rep(src, (u8 *)buf + offset, len);
+}
+
+static inline void cdns_xspi_sdma_write(struct cdns_xspi_dev *cdns_xspi, size_t len)
+{
+	void __iomem *dst = cdns_xspi->sdmabase;
+	const void *buf = cdns_xspi->out_buffer;
+	size_t offset = 0;
+
+	if (cdns_xspi->sdma_io_width == 4) {
+		if (IS_ALIGNED((uintptr_t)dst, 4) && IS_ALIGNED((uintptr_t)buf, 4)) {
+			iowrite32_rep(dst, buf, len >> 2);
+			offset = len & ~0x3;
+			len -= offset;
+		}
+	}
+	iowrite8_rep(dst, (const u8 *)buf + offset, len);
+}
+
 static void cdns_xspi_sdma_handle(struct cdns_xspi_dev *cdns_xspi)
 {
 	u32 sdma_size, sdma_trd_info;
@@ -589,13 +622,11 @@ static void cdns_xspi_sdma_handle(struct cdns_xspi_dev *cdns_xspi)
 
 	switch (sdma_dir) {
 	case CDNS_XSPI_SDMA_DIR_READ:
-		ioread8_rep(cdns_xspi->sdmabase,
-			    cdns_xspi->in_buffer, sdma_size);
+		cdns_xspi_sdma_read(cdns_xspi, sdma_size);
 		break;
 
 	case CDNS_XSPI_SDMA_DIR_WRITE:
-		iowrite8_rep(cdns_xspi->sdmabase,
-			     cdns_xspi->out_buffer, sdma_size);
+		cdns_xspi_sdma_write(cdns_xspi, sdma_size);
 		break;
 	}
 }
@@ -1215,6 +1246,10 @@ static int cdns_xspi_probe(struct platform_device *pdev)
 		}
 	}
 
+	if (device_property_read_u32(&pdev->dev, "sdma-io-width",
+				     &cdns_xspi->sdma_io_width))
+		cdns_xspi->sdma_io_width = 1;
+
 	cdns_xspi->irq = platform_get_irq(pdev, 0);
 	if (cdns_xspi->irq < 0)
 		return -ENXIO;
-- 
2.53.0


