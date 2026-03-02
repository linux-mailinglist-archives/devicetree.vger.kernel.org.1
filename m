Return-Path: <devicetree+bounces-269939-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHC0EaZzpWkNBgYAu9opvQ
	(envelope-from <devicetree+bounces-269939-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:25:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AF39D1D76E8
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:25:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6EC4530804EB
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:22:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1034B363083;
	Mon,  2 Mar 2026 11:22:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="ubTNzV8q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 032B636308C
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772450534; cv=none; b=jbFLieCK/kpCoUUDBXOuyDGKJIMDYfWNYhi5hO4nHchBH9YOYuDEIyJJJOgzZ+yg5o8UyxUyTJaeEvLJrguslSmIhRpUiJUhmCtzbGr1+W5dxnNmNK3NgFGO4+P1471rA2RvwRVN8flhK0Qj9cyCDjB5iY24e/jn6BzhMfkiWPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772450534; c=relaxed/simple;
	bh=56I7rIxd9f8s6A0xYF9o3Ogl/zPP8ZpCKxAq5HCjTMg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=pFJkqQ53jWAmONiOK/zLIykfeuVz9mNoK04icX812Bhywd9d24oa71IBHaJ5Ov1a6XvScENAl1ngj2f7KVX2vGTpaKv7pXGWzOX6KE/FhMtL2UqNlevLz/crAu/+SdgK3x84Bt4KC8HO+i2HqKd1++eQ7sMPIHDMavGjCwUS7io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=ubTNzV8q; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-482f454be5bso47312675e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:22:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1772450527; x=1773055327; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BEL8xD6r/LZl69+xMFv9iWD7+sHUzbOpHHkJN7M+9SA=;
        b=ubTNzV8qeMd8RRiTPlIHTZfRMgGbcezBdbpt9bT7h98nDMcUcA4evVEZvztjLKBfnc
         vZ7WbrhLTP6eUVnyafz1Bn+znjrwozj5ezRTD3OhP5MRIFInoKNa9YlUfbr+BAYdSCDB
         jlYSx3n7UnMGHlwdbNDKw+HlYxn7PMrk4612aLOnnBCc3KrLILIhgyFzq7zijaDyaD85
         3s+9FO4taR46wau+5wBn5XraczHF3h+1zWIH9mZge3kepHEUqQ1sGFqglq/kfb/RA1cl
         5x4l/xHp3kZBBHMfS6ZFs5WLwg7YhRQaxtE+mgT6TQf92yPl4+c8Md11A0GjVPucCvMi
         TKhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772450527; x=1773055327;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BEL8xD6r/LZl69+xMFv9iWD7+sHUzbOpHHkJN7M+9SA=;
        b=Mv6OI1FpwLbPsD/w4BIJEdfs0QkEML6oSHZJ9eflCplUM8vbuue9r9AQe8cGCmQczs
         KP+oHkVOdbvYqBpZc2AdXitojN/zhJL4pYXVHJbR0o4hn3zUo3YeACe/gvtiAniKyUo6
         igE0BF3MDxYGKIMaOULrEk49x+NDJaexdZWuEYwTsRi7gWqhmpAEGe16WRxDXG64sKnK
         Etvs4y5QESTcvYMZv4Yrr1dL1sWnuR6dfcFbRW9BEHap8AGZfGAgZ9NcGK+pYIBaeuAo
         587QbavovOcZDi10Og1lOoL3cip2dMyqFlOpSeX52xVEXSEt6oR7kfrOSEMndmUrPRSb
         /tEQ==
X-Forwarded-Encrypted: i=1; AJvYcCXhpkSmNzgan0BvSOno9CgMAVDFumVpDFVhJupW6oS0jQw9AHQcL/nQfKkqEAilKc4fxRVRlZQfOSYX@vger.kernel.org
X-Gm-Message-State: AOJu0YwVWLIdtsxN3YLM/6y3ld6CPcn0sc4+a/tQSQInxA0V6ifb2e0H
	+WszoOr1uZnK9+zw4EI8D2sFUipJj81i8UifGf9EhE09rb+9/HA7kvUOhpHOHqqRPgc=
X-Gm-Gg: ATEYQzxV0oruUqog7XF1Vnb13C+CZ7iGQCi6ljJvKGjBn9H8A6+xUmJf3rufjMoxst+
	Arr9b6JAeU3KikeogmCP8CH+qcQdI1UArN+89lIh/0zac7Wa1ymNsitZsVRSSua3xJQ0d8N/dJw
	ki9BC5Qw5aERLJlyDQ+TIc3rUL4MNB/1ShaKCOQk756nsdaLu+HWL2LY0GN1snnF9SbaVitK0by
	c6sav1zgeKnMazs/2fFsIWNQDZn7GoosoXP+BMgid36T/EssRtRkwKZA/Y/Hh4dh2E8GuH6KSHh
	PIn4O5tG4MfvqtdlGvvwaxiiv/x1Pv6dSg/WJVbQWh4L8Qcrq6fYQrOa894IFdtPBZY30MYUinI
	MQuLtbV9eRqNgIDJlsnMDYCcfJDu9GZzhW60raEvF3hcWdcu3jM4NxOVfg49iOv7ltP0k84X6SL
	84pQwpQtX2IXjSpkEhiO4I12ZpN6NTsH98jERDXaKvKl/5MJ7EkvBtJ35xmXKdpvAqG9xsVvkVG
	xeEUw9IKYA0b/MQFtATU4+zVjpBhkE4+9X/TuQzfQaMIoWpFH78FA==
X-Received: by 2002:a05:600c:1549:b0:47e:e59c:67c5 with SMTP id 5b1f17b1804b1-483c990de68mr204131235e9.8.1772450527342;
        Mon, 02 Mar 2026 03:22:07 -0800 (PST)
Received: from fedora (cpe-109-60-83-135.zg3.cable.xnet.hr. [109.60.83.135])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm292493035e9.3.2026.03.02.03.22.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Mar 2026 03:22:06 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	olivia@selenic.com,
	herbert@gondor.apana.org.au,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	horatiu.vultur@microchip.com,
	Ryan.Wanner@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v6 3/6] arm64: dts: microchip: add LAN969x clock header file
Date: Mon,  2 Mar 2026 12:20:11 +0100
Message-ID: <20260302112153.464422-4-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260302112153.464422-1-robert.marko@sartura.hr>
References: <20260302112153.464422-1-robert.marko@sartura.hr>
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
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-269939-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[sartura.hr:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sartura.hr:mid,sartura.hr:dkim,sartura.hr:email,tuxon.dev:email]
X-Rspamd-Queue-Id: AF39D1D76E8
X-Rspamd-Action: no action

LAN969x uses hardware clock indexes, so document theses in a header to make
them humanly readable.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v6:
* Pick Reviewed-by from Claudiu

Changes in v5:
* Relicense to GPL-2.0-or-later OR MIT to match DTSI

 arch/arm64/boot/dts/microchip/clk-lan9691.h | 24 +++++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 arch/arm64/boot/dts/microchip/clk-lan9691.h

diff --git a/arch/arm64/boot/dts/microchip/clk-lan9691.h b/arch/arm64/boot/dts/microchip/clk-lan9691.h
new file mode 100644
index 000000000000..0f2d7a0f881e
--- /dev/null
+++ b/arch/arm64/boot/dts/microchip/clk-lan9691.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: (GPL-2.0-or-later OR MIT) */
+
+#ifndef _DTS_CLK_LAN9691_H
+#define _DTS_CLK_LAN9691_H
+
+#define GCK_ID_QSPI0		0
+#define GCK_ID_QSPI2		1
+#define GCK_ID_SDMMC0		2
+#define GCK_ID_SDMMC1		3
+#define GCK_ID_MCAN0		4
+#define GCK_ID_MCAN1		5
+#define GCK_ID_FLEXCOM0		6
+#define GCK_ID_FLEXCOM1		7
+#define GCK_ID_FLEXCOM2		8
+#define GCK_ID_FLEXCOM3		9
+#define GCK_ID_TIMER		10
+#define GCK_ID_USB_REFCLK	11
+
+/* Gate clocks */
+#define GCK_GATE_USB_DRD	12
+#define GCK_GATE_MCRAMC		13
+#define GCK_GATE_HMATRIX	14
+
+#endif
-- 
2.53.0


