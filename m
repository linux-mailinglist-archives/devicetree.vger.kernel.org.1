Return-Path: <devicetree+bounces-272486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yNvBK3VLrGn+oQEAu9opvQ
	(envelope-from <devicetree+bounces-272486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:59:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5F022C9DC
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 16:59:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3051830BF992
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 15:55:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6263A641E;
	Sat,  7 Mar 2026 15:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eSG3dDUO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0BD3A4F4F
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 15:55:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772898931; cv=none; b=I233FPiHWfM/16qHeaTNw0kOkaeRZr/DhQj27KN/cnOIS85lCYBo/uzROgxmHCP7u/Wlw1+h2Nui+9XaB52igatjLxzl4W7LAW0579UTKWBVOGt5YjTf0pfJgj+lSNq7WxgKq9IEoKqKDLGYGHDYXQ9/YUsk5yCTO4mtKEEf2EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772898931; c=relaxed/simple;
	bh=ObTtrQlb2jYlqMDNbq3CyCy3XMEw8rpLNCaIh5h1cNQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Vpv6eIqm9WSALPjlHggybBrDwPVsGvy40VBrpjofXcYn5s8XWIDsg3+mSIgbwN85TNIWYZWooF7OmkEBlnR9yfo4Y88z3BKeML/fzqRNu3s2VYxFNgoeEUq4gz4+xemsPHD2ds+usJPRgFGIXv6mr/nLj2hPVNDCs6qwD+mgVaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eSG3dDUO; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4852f8ac7e9so6918755e9.1
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 07:55:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772898922; x=1773503722; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7UwJ2eq1zLJMsCb7zWFBE8c4gt2oUB4SlgMSSSoBm2w=;
        b=eSG3dDUO3eQOLvF6V6HmnuRVQ9321LT5ZJi6sKfYFGtYxbCbVHXxbOflAYG1u0CwIr
         R5MXcFz/dj2ruGOJwC5xPJK6jrWNajSat57d0I0EiPHFMaz7mn17W6fWyjzlUm+zd8HZ
         hgKGoGi2TA4/jcuTYrwMA26IzjwkRs0JrknaP7WRqP0SyDyV4anzSfmP/REfmc+bk8Gn
         QwsnVsgO+Oegqw82zpNKihBnL9hm5E5qASlWtDDXWhxjp1q3XrVavXHakFvc+/aoYfd5
         DJKGjnabNTiVe4Z0JAM4eaP4aou8+lT7FhvIThYoxAnZNRoMyXAljVgIECTLsVq+TVKd
         FB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772898922; x=1773503722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7UwJ2eq1zLJMsCb7zWFBE8c4gt2oUB4SlgMSSSoBm2w=;
        b=BAsno4OMd8p1J74S0T6VN7bZhQLi+f24OZfJWAprms69Zxzd32Ug6UexPr9rdTKDss
         ZJIDx5g+1NKob90Uh1zomJ0HWNe9bjfk9xLW/pCjjwENK7DL7U/1xBoHW+6wn5yebuR8
         Hcy2ak8k2TDv0T90/4AlRpFMP0f4oTO/mjKppRZWbrDhNG2dJTz1Gjxzx6kigPe1aSqG
         /TZGON82Fd590Z03sVmMHt6hnETOwENOp6YMmHyszBHmc+ByvrR1I+Fe9Y5jhIMum/IE
         +N4p/MRVWf8tbGHBF4EWSD+gsenec0aNN3OfyEdFvmGDOt+Brs59WKXoF1Ghcy/xFKIG
         Ihyw==
X-Gm-Message-State: AOJu0Yw5d9FpTDCY449NmnBJ4gBhfBLIxQa4xTICUPorPjSNtIwgG/iv
	v3vt1hd2c8f45DORNsmUOGtKn91ZJokbDHcFZdWNfgxmKPR0drtDx+hg2Ccxjw==
X-Gm-Gg: ATEYQzyJ3omYp35i4N+taLxk0BBHRA/Os+dbqoOKwgB3Dssg40dW90+8GtGWUPF2YQt
	DPX6vIINsJZYo0VUe8bZUBtsOPvOXlwPAB/kF3ecR+5uzHrSRCDr1Ync3iHJ1+bM5/s/nfzAyUj
	ArlVdFed/Men/PjX+XZRtWJJh74EFmt+Sb9VxZBWiD3cmUgrBNEvUU/GyoR+NpmqeJMjAdg9tC3
	TJ0rYPSo6uqKVfwxjYJTyGAMvu0pSkUGPo6H4sw/T3hhrFrEecVPSpUokB1KCAOKUrhlmGEiPTF
	x4BRxa7tmKioufPqR9ySVj03IJCKbojK1n3mdeFajBcEmDVBbTjUXPlKfBEnuq0YnCsrpbuBP5x
	m05t6pSq4nugD2KMpIVxlPx/qvwAQyvLbbyAWKFXpqdiwaNOrBaINUKpcKvpwPNITH561hCu4+G
	wAFt6flXNSgKL+XpQrZkfjtfFdPRYtiB8uYdUsZym+gMOloja/fO9zsCuKcGi5oQiGbmP5w6OlE
	CAA0haMtzCFHGbCj485l4IYtw==
X-Received: by 2002:a05:600c:3e08:b0:483:7eea:b172 with SMTP id 5b1f17b1804b1-485269675a7mr104390265e9.23.1772898922163;
        Sat, 07 Mar 2026 07:55:22 -0800 (PST)
Received: from GLaDOS.lan (93-35-179-236.ip56.fastwebnet.it. [93.35.179.236])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48527681a3esm261097785e9.4.2026.03.07.07.55.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2026 07:55:21 -0800 (PST)
From: Stefano Radaelli <stefano.radaelli21@gmail.com>
To: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Cc: pierluigi.p@variscite.com,
	Stefano Radaelli <stefano.r@variscite.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 10/11] arm64: dts: imx8mm-var-som-symphony: Enable I2C4
Date: Sat,  7 Mar 2026 16:54:46 +0100
Message-ID: <02dcc47d59674a9945ade8a6f2c42f4c0908942d.1772898346.git.stefano.radaelli21@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772898346.git.stefano.radaelli21@gmail.com>
References: <cover.1772898346.git.stefano.radaelli21@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 1E5F022C9DC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[variscite.com,kernel.org,nxp.com,pengutronix.de,gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272486-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[stefanoradaelli21@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.992];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[variscite.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,0.0.0.68:email]
X-Rspamd-Action: no action

From: Stefano Radaelli <stefano.r@variscite.com>

From: Stefano Radaelli <stefano.r@variscite.com>

Enable I2C4 on the Symphony carrier and add pinctrl configuration,
including GPIO-based bus recovery support.

Signed-off-by: Stefano Radaelli <stefano.r@variscite.com>
---
v2->v3:
 - 

v1->v2:
 - 

 .../dts/freescale/imx8mm-var-som-symphony.dts | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
index a77085b264e5..9a29c81b06eb 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-var-som-symphony.dts
@@ -195,6 +195,16 @@ rtc@68 {
 	};
 };
 
+&i2c4 {
+	clock-frequency = <100000>;
+	pinctrl-names = "default", "gpio";
+	pinctrl-0 = <&pinctrl_i2c4>;
+	pinctrl-1 = <&pinctrl_i2c4_gpio>;
+	scl-gpios = <&gpio5 20 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	sda-gpios = <&gpio5 21 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
+	status = "okay";
+};
+
 /* Header */
 &uart1 {
 	pinctrl-names = "default";
@@ -288,6 +298,20 @@ MX8MM_IOMUXC_I2C2_SDA_I2C2_SDA		0x400001c3
 		>;
 	};
 
+	pinctrl_i2c4: i2c4grp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_I2C4_SCL		0x400001c3
+			MX8MM_IOMUXC_I2C4_SDA_I2C4_SDA		0x400001c3
+		>;
+	};
+
+	pinctrl_i2c4_gpio: i2c4gpiogrp {
+		fsl,pins = <
+			MX8MM_IOMUXC_I2C4_SCL_GPIO5_IO20	0x1c3
+			MX8MM_IOMUXC_I2C4_SDA_GPIO5_IO21	0x1c3
+		>;
+	};
+
 	pinctrl_pca9534: pca9534grp {
 		fsl,pins = <
 			MX8MM_IOMUXC_GPIO1_IO07_GPIO1_IO7	0x16
-- 
2.47.3


