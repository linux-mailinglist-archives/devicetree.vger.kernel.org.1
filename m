Return-Path: <devicetree+bounces-242013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 8555CC854B2
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 14:59:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 108A3350854
	for <lists+devicetree@lfdr.de>; Tue, 25 Nov 2025 13:59:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF474324B1E;
	Tue, 25 Nov 2025 13:59:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ij/j+4Ed"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A79322A22
	for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 13:59:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764079183; cv=none; b=obHR1ff4Z219VP7bEkZsNIanw4RDNhrXcxnLer6MIql6oh3B+5RqahJTr9bA/d6/ZLEr7dNEj/UWhIvb6HbJUZO/hFlZFl337miDyjQu4ptHzCRPY3omKFdDel2snWrjOL7T1OM3afKpRMAzkTy6u1op2mc797z1qvZivoN/rs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764079183; c=relaxed/simple;
	bh=MCKevXvQa385A+GHXzdT30BxH91D/A4GqwSklI9Ym/U=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=TGNPbfvzHCQpFgERYEB+3ffmdvcHRdqLMzFIfnto9zHxu4uP8B+U7aC+mOumwaSAM0+9Cc6aFu/MVeZ1q0hZITDuO9CEb2eWMSiMzbTWKqagz2liAJe3Fe92RLxyLOb4D69SCeLDPK9I3WuSMG88zHMwzGymLujCZDGTwM7IfMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ij/j+4Ed; arc=none smtp.client-ip=209.85.210.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-7aab061e7cbso6460225b3a.1
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 05:59:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764079181; x=1764683981; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dVFssVMsppemE9LOnYuL76lIRte65ETPod7a5rRBKjc=;
        b=ij/j+4Ed0i+L0129j1BDc6amV33a0vTWwtzYj9S8avwSLjCzTLE7secGbCQ3qwNSpT
         UImK9ss2qQ72yG0CpyjAxhwnRqYlbpBFtyQ0BLHtd4uJNmvwFkdwexyaADwAJxSHRwZv
         nZeEH2pLJsJHne1SQz1a3Xwavnp369f3+6yxz5bVQA12eSiMOOhjdYV1I4Q/nVRXTObt
         EtVddwq04r/u4HP7d4c/ZnXHUM54V1idG2igG5MbnwocFwwM90mZU87A0BEz+NAzYXWO
         3Yzx35XuT6wMBF16WgKHF2Y+d2p5NrXHDh+nG3yF2AEN4IW2Ot5WiSU1u3FTTkHjdsGt
         EtQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764079181; x=1764683981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dVFssVMsppemE9LOnYuL76lIRte65ETPod7a5rRBKjc=;
        b=QBzNqP4aYMJCx6983XBRm3oDHANnsZtvqBGOGrGrD82Uo7t3Z5AttwGZQ/ZerIjWwE
         GfkWlTvX4UhzmgLkMzFnxLMRUjbu4Jx59eZ3VYXwssV8yAqEUzCvrQaWb16ekpyXM7wU
         AgQXe1KxfASETXEfwhVWG8anQxINSn6TcbJClQYqls7byYdQOLCiaOj8Ps234lGtuC+7
         HPtEwm79/Lvi5hIkEiNJfeuQP3hxfku8X9JuLPO7tIQOT8tV5ShLkJEgc7e5ajWXUk3f
         Exe+2l+SzwwY8fAY3wGrU3n3cTL4H+xmo1ziiXLK5nmRQL/2ZlavsLXc6h6B8mz/tEg2
         fr0w==
X-Forwarded-Encrypted: i=1; AJvYcCUltZ7j8pIVvsbHHovR8aB4kha2cikSyNN3+k9/dAc6OuUux0fOC4G076Q+KWV25FQmv09e6Sp/HPzM@vger.kernel.org
X-Gm-Message-State: AOJu0YzxA9kDoU9ca4Sz3ii+fksxEA5oHWvSS/LS5y6fQ6xI2okJaCnu
	DMp/vqQOn4QYYVc+YXyKmqg4gCuLa500G3GWR4xSFEJ3sfgcF4FyWtCU
X-Gm-Gg: ASbGncswhd0vy8hHXYRUyCA1u351h03cgQFNyYaiSFEhkPt6fzFUskl/TXeq7dvi8hp
	TCiwrI3nPGqZkDd4iJgUBlzQPpS9hPxAulahT0j+TP2eU1tP2zIpwEofGaDMvfA7dIgmYVmBa/R
	wfHjQTPZdgR237ZoZ02mddzsIC3z3iwDZuhafN6vOE/3hswpdibWdh0N9SMAwuDcOQ4lSBJIK+Y
	xvHDfxyVjbwwr0bkl+UPnFfBbBTSfRg7bXmzyp+RSfr3hZhTTfo3ZTRXx4kQWc33b/0Zkk6rdCV
	zytkpv026oPZMBAFvA0dAwAX9XFYQPfRXuezXQ5VGft9lslrrgMp6FZhVv+UxhkQWJjUngumh+q
	9ihSBgRllgiEdLmU5h+PXaMA0cFsFm14m3W57+79dSitppvJcx2x+YyIrcQTZbmg++UO9WA3c95
	QeIYfJLvyHiPJp7o1w9SYV7XeJRmXDmDN0ne72aORoDpGFsMhm2ahoi6MUXkYExI0mGSBr/2KhZ
	Kc=
X-Google-Smtp-Source: AGHT+IEoiD8kKI6Top0lfEQal/JV1zBoB+qPW4yD9aP3atTXvknCMZhsSOAa24TqvLJc3MCbiSy7yg==
X-Received: by 2002:a05:6a00:9508:b0:7aa:9ca5:da9c with SMTP id d2e1a72fcca58-7c58e50cc8dmr15953870b3a.22.1764079181213;
        Tue, 25 Nov 2025 05:59:41 -0800 (PST)
Received: from fred-System-Product-Name.. (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7c3f0b63dbcsm18216028b3a.50.2025.11.25.05.59.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 05:59:40 -0800 (PST)
From: Fred Chen <fredchen.openbmc@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 1/2] ARM: dts: aspeed: santabarbara: Add swb IO expander and gpio line names
Date: Tue, 25 Nov 2025 21:59:30 +0800
Message-ID: <20251125135934.3138781-2-fredchen.openbmc@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
References: <20251125135934.3138781-1-fredchen.openbmc@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add IO expander emulated by the switch board CPLD to handle UART and SPI
mux control signals. Also add SGPIO labels with FM_MODULE_PWR_EN_N_*
signals, which control power to each ASIC module individually.

Signed-off-by: Fred Chen <fredchen.openbmc@gmail.com>
---
 .../aspeed-bmc-facebook-santabarbara.dts      | 22 +++++++++++++++----
 1 file changed, 18 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
index f74f463cc878..4312ead311df 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-santabarbara.dts
@@ -1328,6 +1328,20 @@ eeprom@50 {
 &i2c12 {
 	status = "okay";
 
+	gpio@27 {
+		compatible = "nxp,pca9555";
+		reg = <0x27>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		gpio-line-names =
+			"PEX0_MODE_SEL1_R","PEX0_MODE_SEL2_R",
+			"PEX0_MODE_SEL3_R","PEX0_MODE_SEL4_R",
+			"","","","",
+			"UART_MUX_SEL","RST_SMB_NIC_R_N",
+			"RST_SMB_N","RST_CP2102N_N",
+			"SPI_MUX_SEL","","","";
+	};
+
 	// SWB FRU
 	eeprom@52 {
 		compatible = "atmel,24c64";
@@ -1758,11 +1772,11 @@ &sgpiom0 {
 	"","BIOS_DEBUG_MODE",
 	/*H0-H3 line 112-119*/
 	"FM_IOEXP_U538_INT_N","",
-	"FM_IOEXP_U539_INT_N","",
-	"FM_IOEXP_U540_INT_N","",
-	"FM_IOEXP_U541_INT_N","",
+	"FM_IOEXP_U539_INT_N","FM_MODULE_PWR_EN_N_1B",
+	"FM_IOEXP_U540_INT_N","FM_MODULE_PWR_EN_N_2B",
+	"FM_IOEXP_U541_INT_N","FM_MODULE_PWR_EN_N_3B",
 	/*H4-H7 line 120-127*/
-	"FM_IOEXP_PDB2_U1003_INT_N","",
+	"FM_IOEXP_PDB2_U1003_INT_N","FM_MODULE_PWR_EN_N_4B",
 	"","",
 	"","",
 	"FM_MAIN_PWREN_RMC_EN_ISO_R","",
-- 
2.49.0


