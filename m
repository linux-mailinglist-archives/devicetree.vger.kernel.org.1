Return-Path: <devicetree+bounces-312045-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id At2RJDcfMGriOAUAu9opvQ
	(envelope-from <devicetree+bounces-312045-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:50:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B9922687E30
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 17:50:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=bnkPjCHD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312045-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-312045-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6E5CA3019A9C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 15:48:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D782240800E;
	Mon, 15 Jun 2026 15:48:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 203A3407566
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 15:48:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781538509; cv=none; b=fV9IQAv5APUkIPr662OzGAeFJQhLft/63+Vhx+8MfGhCO+VKNDMKB7WsVx+6VvRHDBqxWS4kTpGnH8CvJzVr2lrPRcTtjvd097GwwoegmzpUFS9+wQUgOiuwcPltt7orlvJP7vh+j1j/X1HskFbjlJapKoi4nFgNjhKWbJAO2Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781538509; c=relaxed/simple;
	bh=ON7Z9N+BusoLW2abOlOvuPQACWu9rFAjcD8AKM9aY3M=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=od2zVaGPEZY20Yv3ERHU2C+t/iqYdtKj0f0JfqowkJkPFIwKpn4dfZ52zvW/8QZ5Q/KRIuA8bp+yh0fffIvEMDUpsuk1IOlTiJpD2IVYavJ+HeYQuN4P9Zy6Bn6VZPSySVGPp0iW4wbvFwwmqbw34z3PrHEJoFjTe/vB1BBSDGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=bnkPjCHD; arc=none smtp.client-ip=209.85.221.48
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-4600ddc4017so2615168f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 08:48:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781538505; x=1782143305; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C8wLD9zxqwXDPnyCjq4DuwsGKzd0OYW0pMm0bgsfQds=;
        b=bnkPjCHDrEOkRVlzOORB7pCHzyCqmcelnNC1HNXfV9ONXNuFYo74VofxlGAEIxkBUn
         xHmRmJZ8Gi1e2LeGL+74vg86sGkxTMoap1TH9rbWvjnwCLAzJt/MQtodWUY5TKsLR90k
         3+3LY15fVDzXgmn2I3d0kZE8TpY50SzSvA1TwUEq5usfW/YoV/PAq/ObyJHml4xofTCc
         fCTIx+sizXAUn0EBj1WMGO2TGTGXDUc2QG+8mdjnq/5a2AzRowocJ0/+b4X7CHisEgwb
         5qGhdjGhZr1lKUdKNHmLOHDMPBoZ9We536Lu8CRxW5h8FwcfmM24WvlzqTSI6yz3odFl
         EIvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781538505; x=1782143305;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=C8wLD9zxqwXDPnyCjq4DuwsGKzd0OYW0pMm0bgsfQds=;
        b=DWPFVu9/J+hXTrrvESFsY4yulRF/3o24tQk71DghZkEqesMxusE/GU7h6NE9EHf/Sn
         E6ut73AL536GKwi+YdZ0IWc3ZEfNbRp9pF20dJQGJyXRkp1e+EMAYHkwK56VkRzHiMVV
         4fNHfde5Y1YsbOeD5iId3Ld43JTvnlAQKdptGFsNKvE8ZeuRtDM8pv1S6+uQz801MSek
         IBxKH4rKVamWOR+WWikGFeHJQT0pxcstH6vKYTUDUtqmJN9f4e/DNJ+GkPecNRmQGaQV
         Joz4NTXgjAkMXVjWYHDuCYXbN92oMDMUAcZ+zltNp99H7SktG80d5UGC4Ua0JdvIGw2A
         ZU5w==
X-Forwarded-Encrypted: i=1; AFNElJ8MH2AW3PZyoXVXLvwrxAgVvXYi1GekPbh6db3r4B7FDSXHRFb8iJ5QVkWDSU58UnKUluVf2l1//6IY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5dpTHD0emWDsKdagk+J4lljcU9vGtrPzRs2rY6jvYpexlR3hv
	GWLXnxJlrptFFVx2ZX7D0/npIRV5GNT1LhedZg7yBXYN/QyHd4+/c9aQ
X-Gm-Gg: Acq92OHAX1jdyQEZFRWK6TL+VzVeQhCL3WcQuTdpTr5ouo5Dlubw+MmuP/Ljs9W8O3Y
	JtGj19+kDZsyx+6L9q51sg5+y0q4WHtTaOljlHzfRPSoMxzQzIzriDKcIoIJYiprvv431x0yKa6
	rvshIORyH22e5J83NRij/Mn6HJdGRFrnHdA+b1WarrOCJqqLPPy709of4TRve5MRap3zdEZKGhe
	wQJdZK19zo8daz/fqp0RCrHLXsJu/ICofapZ44hPQiJfsiWrBUxfI3BzrFegh+qmv7ooDP1Mvyt
	d+HVaMXLG7kvVINJzQzZZYNg0nhaU1F/v9DNHxnAVOTX9BUaf0gpz8ViZxcuZRLh4FJ3m9FuMpZ
	f9dBskn7sgSNQ/aR3wO5l89HxIHs6EtAf9TEr8nbS3vyNs1nSeROgs+tP3G6MS7tJ442sEF8NKx
	UR+olMhF5575cbFfDOFYrvm+fGFtoTBzrYqA/zXtglZtdXILNp7cBlyGSjCIbW2skd5yYSrC8qL
	ypCzJ9z1n5QwbAqPn8iExmWw0HuOnqCRJ5I
X-Received: by 2002:a05:6000:290e:b0:45e:f381:cd7b with SMTP id ffacd0b85a97d-4606da6985fmr21913290f8f.8.1781538505346;
        Mon, 15 Jun 2026 08:48:25 -0700 (PDT)
Received: from iku.Home ([2a06:5906:61b:2d00:1e4:992f:3ad2:4f2b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f26434dsm36010995f8f.1.2026.06.15.08.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jun 2026 08:48:24 -0700 (PDT)
From: Prabhakar <prabhakar.csengg@gmail.com>
X-Google-Original-From: Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Miquel Raynal <miquel.raynal@bootlin.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-rtc@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar <prabhakar.csengg@gmail.com>,
	Biju Das <biju.das.jz@bp.renesas.com>,
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Subject: [PATCH 06/12] rtc: rzn1: Sort headers alphabetically
Date: Mon, 15 Jun 2026 16:47:59 +0100
Message-ID: <20260615154805.1619693-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260615154805.1619693-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312045-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORGED_RECIPIENTS(0.00)[m:miquel.raynal@bootlin.com,m:alexandre.belloni@bootlin.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:wsa+renesas@sang-engineering.com,m:linux-rtc@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:prabhakar.csengg@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,m:wsa@sang-engineering.com,m:prabhakarcsengg@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[bootlin.com,kernel.org,glider.be,gmail.com,sang-engineering.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,gmail.com,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[prabhakarcsengg@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,bp.renesas.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,renesas.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B9922687E30

From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Sorting headers alphabetically helps locating duplicates, and make it
easier to figure out where to insert new headers.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
---
 drivers/rtc/rtc-rzn1.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/rtc/rtc-rzn1.c b/drivers/rtc/rtc-rzn1.c
index 12a319e9112c..fe21fa624288 100644
--- a/drivers/rtc/rtc-rzn1.c
+++ b/drivers/rtc/rtc-rzn1.c
@@ -15,8 +15,8 @@
 #include <linux/clk.h>
 #include <linux/init.h>
 #include <linux/iopoll.h>
-#include <linux/module.h>
 #include <linux/mod_devicetable.h>
+#include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/rtc.h>
-- 
2.54.0


