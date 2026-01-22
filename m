Return-Path: <devicetree+bounces-258531-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1XHoBItUcmn4igAAu9opvQ
	(envelope-from <devicetree+bounces-258531-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:47:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 508436A3B9
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 17:47:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3712332A2AA8
	for <lists+devicetree@lfdr.de>; Thu, 22 Jan 2026 16:36:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E8993F4B75;
	Thu, 22 Jan 2026 16:19:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OqvHGXh9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369063F439F
	for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 16:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769098742; cv=none; b=GP7hmjC1ZUVN3tLaR6Aa0Z6C2cT5jG8+qW8kYJV1uQLAM72tciLrUFqI0SnAihWvvexl0pky8rwyGHbpqXgEvmjc5HeSFIX56Da3u2GOu3fuvfz7AdlypM5qaOUxmmZ9pR4SDSu1jwMhsYjVkBWMOY+ZBcBSurnkmHVGcy8jFhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769098742; c=relaxed/simple;
	bh=dNme7mgi8qFgt0WeP/KetKZDGMEaSKiuh/Ge808Qpc4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=CoDZzYZZEHM3zbRoV8W3dMvPWIKeBNy/CVwLOgnJR/icUdtOs8mxpFTLS+G3MI8no+2sDaOxy+qjul/HUwJrhJCC8G0evXgSpdB0EO+ayBVX4HwpoVPM6dBUvLssjAzYA+VVe26zyMCeONz90f1QuE8rCd4IJ19otDI2wysqLCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OqvHGXh9; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-2a7b47a5460so8997555ad.1
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 08:18:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769098731; x=1769703531; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=/R070KT8oROqLN3BFkqXY5hruM9USOWGp5+1iDcDEUY=;
        b=OqvHGXh9yPagni0pjWKfmkpTnknNsoxXU52eUkz4xxJoWMcZjPO8kI7eew06TnRK3I
         xc34HUnCItFDuVj3h1Z5y2t8hRJ7GohZVCVtna2BMZXDPNkDt2yrvwkFd11Y4VWhVi8h
         594SULEXsqX0y2jhwUH/jOI/51m9/6XZSCV92NmObXELTZsGprV0gzKO76q3b/bTYUKp
         H5gx1o6R3PwEUbTF1+Y3Jwuyvp5NOHdPGfZq5xObrEUB55aPTJNBWIchCdJ7fNhBH+ZX
         0K1WSAM43g9WhNpWqzWB7Y9NiVGp/9lf+QjNvw3sR4N6n5Z6IeNgEB5TpsJeUwV0/zNa
         2REQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769098731; x=1769703531;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/R070KT8oROqLN3BFkqXY5hruM9USOWGp5+1iDcDEUY=;
        b=g8+BlpstH9R88Z6eSZp2VibKSV9riAgFZIh6sn2Fzlw1dS7hehC58jbDszQ27j539Y
         OuEjU2hJ1szxULQ0Qqa9o/QbRtv9+FDqyqoK2oCExpdvxeiu34IthFtVqxLbikJ8aTqQ
         A0vhXZzJJCVm7jivk12avFqZ9d7B+xIIuE4dIj6/+Jo2RrJYe5VM3oPrQA4nZM7zxfhu
         eRWkNJz1Qk9Tkqd4HPI887L5Ci6jMoOemaPe5wF1/3p7DzhzSa5sbcmKZ9OwikvQgX7Y
         B/B6tHYCK3bLqmwAOpnGMOcUhTpLMT1CG3Zrtzv76wkWxPJt6W+ZN8ISd7W8Lel4ALJi
         cgwA==
X-Forwarded-Encrypted: i=1; AJvYcCXUP7EppoSByawBv41M2qPu/qU6f3WwohO8O+kplY+rAkydVsFCiJXsMKzTD18d91fGQsjstdYUcs6D@vger.kernel.org
X-Gm-Message-State: AOJu0YxHl2mPwy7LN317xKhaB/4wOo5NiylrT8G4JbMEKWpCgLwl7e/C
	NWJy5e2HL4k+4ovVZs8ypKYrJoLbAmuFVnMhdYOKtTW7mA4Jca/dKzGg
X-Gm-Gg: AZuq6aIE+aZEOFujMaHz+k9S02bN2tkirYerY+QvOgHL59o+2fS8kG8mW4MlPLvyQm8
	YadbY5s9BPkwIZii0otSwV1yRr1q8ZQwzWuMMsyUrd1KZSbk1Sr1f6hufqt6gTSnzkWcO93R/2C
	HbMTE3uK4YABRpJpeAemw1aU93kMeS7HIEmVR1yCwgacyqAXYZZTYZNeXCXrOtggzzB8l3131qz
	tE2nhubmhklr2XpcCNZr9qEASYF33NVFzhO4ut0DWx0k+0chKhkr53MRL70NyV8+AqIc5e2kZhD
	E46onjBH3M/JWlgJHFRoQywFtkf3XNvDqDX4tm/syyLjHy3CvlZpAiGsOhZRJcev8az/eJvpuFs
	PUeqKjqDbXAZstaV/eZoD0CqazCVJy/3nJQjDkZR9CP9EmDQtSwBHCCFFvuopUBssjeUHtKLi91
	WTfxoIxn6VRuFHjWOEPqk=
X-Received: by 2002:a17:903:4b0d:b0:2a0:eaf5:5cd8 with SMTP id d9443c01a7336-2a7d2f17f93mr28973445ad.9.1769098731446;
        Thu, 22 Jan 2026 08:18:51 -0800 (PST)
Received: from localhost.localdomain ([58.29.79.238])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a7193fc8d9sm186704275ad.79.2026.01.22.08.18.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jan 2026 08:18:51 -0800 (PST)
From: Lee Yongjun <jun85566@gmail.com>
To: rjui@broadcom.com,
	sbranden@broadcom.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Lee Yongjun <jun85566@gmail.com>
Subject: [PATCH] arm64: dts: broadcom: ns2-svk: fix AT25 EEPROM node and properties
Date: Fri, 23 Jan 2026 01:18:23 +0900
Message-Id: <20260122161823.105404-1-jun85566@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,lists.infradead.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-258531-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jun85566@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 508436A3B9
X-Rspamd-Action: no action

The AT25 EEPROM node on the Northstar 2 SVK board used legacy vendor
properties and a non-standard node name, which triggers dtbs_check
warnings.

Update the node to follow the dt-schema by:
- Renaming the node from at25@0 to eeprom@0.
- Replacing deprecated "at25,byte-len" with "size".
- Replacing deprecated "at25,page-size" with "pagesize".
- Replacing deprecated "at25,addr-mode" with "address-width".

For "address-width", the legacy value <2> corresponds to the EE_ADDR2
flag in the driver (include/linux/spi/eeprom.h), which is explicitly
defined as 16-bit addressing. Therefore, <16> is the technically
accurate value that preserves the existing hardware behavior while
satisfying the at25.yaml schema requirements.

Signed-off-by: Lee Yongjun <jun85566@gmail.com>
---
 arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
index 5939d342aec7..c4412c6b4cef 100644
--- a/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
+++ b/arch/arm64/boot/dts/broadcom/northstar2/ns2-svk.dts
@@ -127,13 +127,13 @@ slic@0 {
 &ssp1 {
 	status = "okay";
 
-	at25@0 {
+	eeprom@0 {
 		compatible = "atmel,at25";
 		reg = <0>;
 		spi-max-frequency = <5000000>;
-		at25,byte-len = <0x8000>;
-		at25,addr-mode = <2>;
-		at25,page-size = <64>;
+		size = <0x8000>;
+		address-width = <16>;
+		pagesize = <64>;
 		spi-cpha;
 		spi-cpol;
 		pl022,interface = <0>;
-- 
2.34.1


