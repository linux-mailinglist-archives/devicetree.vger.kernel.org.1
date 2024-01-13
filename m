Return-Path: <devicetree+bounces-31856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1C082CDE8
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 18:28:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 75C6E1C20FB7
	for <lists+devicetree@lfdr.de>; Sat, 13 Jan 2024 17:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E863522A;
	Sat, 13 Jan 2024 17:28:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from bmailout3.hostsharing.net (bmailout3.hostsharing.net [176.9.242.62])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447D82F2A;
	Sat, 13 Jan 2024 17:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=wunner.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=wunner.de
Received: from h08.hostsharing.net (h08.hostsharing.net [83.223.95.28])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256
	 client-signature RSA-PSS (4096 bits) client-digest SHA256)
	(Client CN "*.hostsharing.net", Issuer "RapidSSL TLS RSA CA G1" (verified OK))
	by bmailout3.hostsharing.net (Postfix) with ESMTPS id EBB8A100DCEFF;
	Sat, 13 Jan 2024 18:28:22 +0100 (CET)
Received: by h08.hostsharing.net (Postfix, from userid 100393)
	id BC62E54AE4; Sat, 13 Jan 2024 18:28:22 +0100 (CET)
Message-Id: <805eb0868e047bde452144a51e48ce1bc2cac45b.1705140898.git.lukas@wunner.de>
In-Reply-To: <cover.1705140898.git.lukas@wunner.de>
References: <cover.1705140898.git.lukas@wunner.de>
From: Lukas Wunner <lukas@wunner.de>
Date: Sat, 13 Jan 2024 18:10:53 +0100
Subject: [PATCH v2 3/4] tpm_tis: Add compatible string atmel,at97sc3204
To: Jarkko Sakkinen <jarkko@kernel.org>
Cc: devicetree@vger.kernel.org, linux-integrity@vger.kernel.org, Peter Huewe <peterhuewe@gmx.de>, Jason Gunthorpe <jgg@ziepe.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>

Commit 420d439849ca ("tpm_tis: Allow tpm_tis to be bound using DT")
added the fallback compatible "tcg,tpm-tis-mmio" to the TPM TIS driver,
but not the chip-specific "atmel,at97sc3204".  However it did document
it as a valid compatible string.

Add it to tis_of_platform_match[] for consistency.

Signed-off-by: Lukas Wunner <lukas@wunner.de>
Cc: Jason Gunthorpe <jgg@ziepe.ca>
---
 drivers/char/tpm/tpm_tis.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/char/tpm/tpm_tis.c b/drivers/char/tpm/tpm_tis.c
index 2c52b79..14652aa 100644
--- a/drivers/char/tpm/tpm_tis.c
+++ b/drivers/char/tpm/tpm_tis.c
@@ -347,6 +347,7 @@ static void tpm_tis_plat_remove(struct platform_device *pdev)
 
 #ifdef CONFIG_OF
 static const struct of_device_id tis_of_platform_match[] = {
+	{.compatible = "atmel,at97sc3204"},
 	{.compatible = "tcg,tpm-tis-mmio"},
 	{},
 };
-- 
2.40.1


