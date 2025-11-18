Return-Path: <devicetree+bounces-239601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EB43C67381
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 05:11:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 2123735C21A
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 04:11:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4672126FDBF;
	Tue, 18 Nov 2025 04:11:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="APPF1gmA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26B21E86E
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 04:11:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763439068; cv=none; b=TzP0+vTAbFvd0rxy/dK37kNztVPXzChdZjFYykM+ZWf2klaXaKiqZ7sYVzuhKUrwIBef3+QQH0qNlJZb/cnw33laO6uMZXXGOIRV8zA/ABu7y7fqYN4nRptHYw+b9LKsh3X+/Sckcdyvlpq+x0Crz9+zrAjs6cOe1sjf3qDJ4Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763439068; c=relaxed/simple;
	bh=OX8ig7QjrVP3K1ytePlhEgbJcAx2eZPKMrInKj+zkyY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=BEuJmsdxSjcAmnXXJuLURpwrkxUlSz8PVAeSo22HT1RfVqzNbCLtqRWO8vzq5UEevtJsCEwXi3bgdN6oifxCw5W+r7UGfJOXwL+3JFXvdmKc11OBNNIUqMKlc3cHeaVpfGVoW6PaJzJQKiZL0cMmm0pJCoJgwVeMJsgdbmu8V/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=APPF1gmA; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29845b06dd2so57935615ad.2
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 20:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763439066; x=1764043866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BDAoJsdvgOOXOBHWJUVVxiGfTHyo8kvSzyzlmWb+VEU=;
        b=APPF1gmAhu2nbHB2LCxMq7uI038asmvnvWiH/26iTi3K/psoo4wcmtlfdoGQhb0VZx
         2NqWfaXgU+KR0GCLBEuIO0DoBYGRt7epNrqJMMeLWt82+f5fHHgf/BdNtryxwUrvZRwT
         AJezedyj0/FGW5Es58QVDQh/MFnrSeNUTNPtlKolaj8v0ecvVAEJZGXTz9kBKJt5cme3
         +cgKzSmwDL+z0Db98BCCardIHy1cfhwGCJdwyztPajpYVNJLuM8YWKjBP/Wn93tJKLgK
         Di0q+wntcTjrMB4acCNq6zahRxHaMO7v+4k/Ysp6HBlCy+stJbsYf3OaRZasREGX/U6B
         iKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763439066; x=1764043866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BDAoJsdvgOOXOBHWJUVVxiGfTHyo8kvSzyzlmWb+VEU=;
        b=BfHF9V50U8E4pnvBpI3rRFgoj87g2yaxeBtv+0/R7Hc8dh1SDydPN8IN056WAR8dsl
         VYYu/Q5cmQTGulhTBwkts5wr2cpCjl4KlP3929Ro0RfiK3VGfciL4z9Nv3BijtTyflhP
         nrBmoM50ZRYcWGUjcVUV0Jua+agjjmUK9qECZprVC/o9xtr3Y8tmPq9LWiCiQ1RIsplN
         iCWtsn//l5rM3LhjSXNipT4ddpCydWqE2K7LSKQ1NAaQYwk/0Ccb/3M7e1z9Mds9PhLq
         Ib48hY/5O1Mst9EBJS5sZy1unie3itnx9PJRQ+v6fow69IpnwMuSytSn6pVY4BRXnJFN
         GHNQ==
X-Gm-Message-State: AOJu0YxkoG+IsghnxpnggRrrYM1hoLnCwA4pO4pR6e2P99ZSlqBPYOXI
	wYG/9O6jCp/KVBmOQ5vtYlcrvbamantcIrq7yVr2EimKZrQXSQXxZqeqjlaeODUCTIM=
X-Gm-Gg: ASbGncsaWW3Od4o+oU34HIEmCFeHjcD2NYfu2WIIpoA3bnIH0FI6hu9Dx9AvF/6dBVL
	1qOo7hW4pvnjSBN2wFWkAT9rRdSO091HtCmdODamCy9Bc2Pj9dlHPKvZuR9wDitwZvlkosCRNk0
	yEsKaTBw28K7r5XEEpP/dAZsFyCQv+6fZaXc/gG+LijemlBHqKbjFho2j0UOZSj1sOPqsTMAgBO
	01OFLOm/gYb12KwQ3Vb0iM5s+G/L7v2kMDsmA+e6Z3GgfG8+PaSmyFUZr/H2CXN6IhKx+378YTx
	X1KjVHbfkvXAvCBVVqvH2+5fCF6AazLUxi2wwZV/rv48Y7zZJqZOH6mB+pra3FdYa+1tYMrnr9b
	CU9IlDZKBCx+QQCh0V7VJ+zGxXNMHg+691hNow4wolEtVoutZDa3Xd1rXSSYh7sjKYq2zPn0xlI
	w3cg==
X-Google-Smtp-Source: AGHT+IFWfA9iG7jd5oINwxqC9subA2gUrhWeuBi98jZqy9meWujj94Sw12xkpdJk1gBOH1qHv6uzdg==
X-Received: by 2002:a17:903:2449:b0:295:275d:21d8 with SMTP id d9443c01a7336-2986a5eb5e1mr178663325ad.0.1763439065671;
        Mon, 17 Nov 2025 20:11:05 -0800 (PST)
Received: from gmail.com ([218.32.81.133])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c2cca00sm155514805ad.101.2025.11.17.20.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 20:11:05 -0800 (PST)
From: Peter Shen <sjg168@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Joel Stanley <joel@jms.id.au>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	peter.shen@amd.com,
	Peter Shen <sjg168@gmail.com>
Subject: [PATCH v7 0/2] ARM: dts: aspeed: Add Device Tree for Facebook Anacapa BMC
Date: Tue, 18 Nov 2025 12:10:56 +0800
Message-Id: <20251118041058.1342672-1-sjg168@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251112211248.3711889-1-sjg168@gmail.com>
References: <20251112211248.3711889-1-sjg168@gmail.com>
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

**This patch series is a re-submission of v6 (series starting at:**
**<https://lore.kernel.org/all/20251112211248.3711889-1-sjg168@gmail.com>)**

Changes in v7:
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


