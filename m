Return-Path: <devicetree+bounces-162303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 10923A77C6B
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C52F0169488
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 13:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3A3204582;
	Tue,  1 Apr 2025 13:42:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=cab.de header.i=@cab.de header.b="brDoKA/T"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.cab.de (mail.cab.de [46.232.229.101])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFE620409B
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 13:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.232.229.101
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743514975; cv=none; b=u1CZso53Bf5rYbl5TTafodGYFzLnUeMvVdEnhqe7h3GBfkNjZoDXSxII937AliP7nDppd5YqvfzsJDhH1oE7LO4QqPsZ1ZHJ3FBLbUGZjhQe/EmMlORLVAXcq29mtglRwyKfmEQujxUVZreQlV0mxkXj4mDR74ys7h78p+UDnsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743514975; c=relaxed/simple;
	bh=utegZaxSQAewZydbCJUFE+vwbwIiJtX3JdvPqpjVQX8=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=FY/y5IP6PrRNRvk2OQm6lpZrBFCu7tjG2VWsgyT5uzjgUMgPZI43v9lIQiksgQxGl+CSg0FEZIMdlsjIT81slJAokZng4vBjvFCu8mbSpzHXP4a/D4ZCxbMMRn5hpEXCId1NchN9PhoF+UE5YG9AYzYwe2l5pbdnHcNPMVcSRjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cab.de; spf=pass smtp.mailfrom=cab.de; dkim=pass (1024-bit key) header.d=cab.de header.i=@cab.de header.b=brDoKA/T; arc=none smtp.client-ip=46.232.229.101
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=cab.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cab.de
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.cab.de 4ZRpq24YglzMvb08
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cab.de; s=default;
	t=1743514398; bh=Zs6taA3QHKiFoxaMKD5p7Rb7UrpExF4LJRsAQKvWTzE=;
	h=From:To:CC:Subject:Date:In-Reply-To:References:From;
	b=brDoKA/TJYOiFwv4slaWFzeozgA+W4S4zXpnG3BTJMI18/OKMm3Bo1TwMdvJ+rDTD
	 PAsF/MeQUoc3w/KW9iYJiylQhlm441uDez0hVaCMudS887tGeXM+CsQnA0+hrE6JQE
	 Mma1ePVr4ZGuQ6XWWsfakfwKFTaav/E3wT87UAqw=
X-cab-MailScanner-Watermark: 1744119197.45667@uUHBCFXwNkoKiXdvlmKeGg
X-cab-MailScanner-From: m.heidelberg@cab.de
X-cab-MailScanner: Found to be clean
X-cab-MailScanner-ID: 4ZRpq0121rzMvb08
X-cab-MailScanner-Information: Please contact it@cab.de for more information
Received: from Adranos.cab.de ([10.10.1.54] [10.10.1.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(no client certificate requested)
	by hephaistos.cab.de (MailScanner Milter) with SMTP id 4ZRpq0121rzMvb08;
	Tue,  1 Apr 2025 15:33:16 +0200 (CEST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.cab.de 4ZRpq0121rzMvb08
Received: from KAN23-025.cab.de (10.10.3.178) by Adranos.cab.de (10.10.1.54)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1748.10; Tue, 1 Apr
 2025 15:33:24 +0200
From: Markus Heidelberg <m.heidelberg@cab.de>
To: Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Christian
 Eggers <ceggers@arri.de>
CC: Markus Heidelberg <m.heidelberg@cab.de>, Jiri Prchal
	<jiri.prchal@aksignal.cz>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: [RFC PATCH 2/2] eeprom: at25: make FRAM device ID error message more precise
Date: Tue, 1 Apr 2025 15:30:48 +0200
Message-ID: <20250401133148.38330-3-m.heidelberg@cab.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250401133148.38330-1-m.heidelberg@cab.de>
References: <20250401133148.38330-1-m.heidelberg@cab.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: Adranos.cab.de (10.10.1.54) To Adranos.cab.de (10.10.1.54)

The error description would be wrong in case the "size" Devicetree
property is missing for an FRAM without device ID.

Signed-off-by: Markus Heidelberg <m.heidelberg@cab.de>
---
 drivers/misc/eeprom/at25.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/eeprom/at25.c b/drivers/misc/eeprom/at25.c
index 16ce36c02ed4..c45413e06e9c 100644
--- a/drivers/misc/eeprom/at25.c
+++ b/drivers/misc/eeprom/at25.c
@@ -393,7 +393,7 @@ static int at25_fram_to_chip(struct device *dev, struct spi_eeprom *chip)
 		/* Get ID of chip */
 		fm25_aux_read(at25, id, FM25_RDID, FM25_ID_LEN);
 		if (id[6] != 0xc2) {
-			dev_err(dev, "Error: no Cypress FRAM (id %02x)\n", id[6]);
+			dev_err(dev, "Error: no Cypress FRAM with device ID (manufacturer ID bank 7: %02x)\n", id[6]);
 			return -ENODEV;
 		}
 		/* Set size found in ID */
-- 
2.43.0



