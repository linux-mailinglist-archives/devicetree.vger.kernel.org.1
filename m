Return-Path: <devicetree+bounces-324147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gJ7+MXMLUGqNsQIAu9opvQ
	(envelope-from <devicetree+bounces-324147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:58:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 391BA7359D5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 22:58:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=MIiTkPd5;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324147-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324147-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 11EE13018C1C
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 20:57:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C24503E2AA1;
	Thu,  9 Jul 2026 20:57:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B0D3E121F
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 20:57:09 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783630631; cv=none; b=eXlx2/J4nKh/OblevcLGAPCZeLrSv3O1d8z/GE4DplReV20DsMOg2lUd7li/RA3dqvK5IGaNNznEt72c6XyR+fh8g7jksJ12FzVNV3WZUuo8qqv9GCiei3NR2j8bRCh5MSJ6hviuQHQ57Lu1wPsMc3t8ZKrrSPBbOTT1DnZXE6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783630631; c=relaxed/simple;
	bh=UOPWLLrKQJKvBsQKzVTiSHTFrQsDchtB/T3uQMykkS8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mv4m1k9/YvXOE+Cu9QgBKMHotLHyz9PCRag1tGYqUh7rRKTiGR5W9NqkC3BDuH5DjZ6C/xw5wxh7TVDI9CRAF5zC4364f/pAuSNZPnqNKVpT5tkWNg/NlvD81/NXPqY16xCEqWiL9ehY/EJjl3Cnb1cCuKU34M/wVgde0ePP2EY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MIiTkPd5; arc=none smtp.client-ip=209.85.128.46
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-493e497643fso1374565e9.0
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 13:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1783630628; x=1784235428; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to:content-type;
        bh=Z/ZeejehRBl9KeHPFOFStf/P5Levb0cXZN01ZYiLMbo=;
        b=MIiTkPd5zkXCC7biUgRXJt3z5vix61twjF9BX/eAJ797x/4wAH03wT3KdknN5QbuVx
         8dAXsDKe7ncncSnuq6omEmau1bcmkd3cObzfjXAevS262BCQW0vvQB8xWC7aJemwlWkU
         1tKnpTJdaPYSlguAOODw5c2uMLZ/QQGxNe+99agpOZXbxwS+a6WErxl5XwaOSUvTx5Pi
         s1LHVT+ZJPC0eDwJWjImTa1N3goRbMykwB1nK2J4e1fOMdCkHNKsDnqXWzHEEvZQbpg1
         uuhhJCgz9EZ8Tr6iXqhb5aV3BTdhxNBeogD6n0VaaZ7N1STWVq8QHiGBZ+nzRC6wRUsm
         7Y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783630628; x=1784235428;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to:content-type;
        bh=Z/ZeejehRBl9KeHPFOFStf/P5Levb0cXZN01ZYiLMbo=;
        b=k8VPIF0Kc856LLudEKM1SsWKKftnSaRdOL5Ali00k0NyAHUUV2vncVYO58qncJ25xM
         4o83ZM61/7o4ur3x8bd96lEs9V+mGFgpvwoGHp82eWH9yj/BSQuBqtP2EtL/BGn6aSRx
         swWJ88bxlISv+IQr2PXYEpcs7j9yM5yGSKQMPsyzgRA5VDLtKRuC6SXEHZzbcdaJARSK
         dzLNToG5jUbqBrd1w0qaVPq+68IRpxEmcMrzKGz1keHgvugtEGmlM7KTNWAM68FeYQOH
         cun5vYKV0XPT7loVV93kQLY66rjbPB31NIFTHhNLP8TGFiYST4slP5jfv0ZFbYtZ2oH9
         3/Wg==
X-Forwarded-Encrypted: i=1; AHgh+RpDV14XyG0zqavCYF3sM1KBrbvFVzAfciY4AAlCZOr2A+W0XNsAzga9IUqXSvxaKdJernjmVevWa+ti@vger.kernel.org
X-Gm-Message-State: AOJu0YxjEgDI5fDLNYbXwUsIv7ASqwq0WxAbb5Seox0nctgG2If5aEQz
	A15Ncp2tgzE0Oavol687+LoEFJvBDIVRR2YeFCuQdnfuW5pB72dfeKEm78MB+gML
X-Gm-Gg: AfdE7cnWznVTG6iYstJ/V/i0/+pB3BgJ8Psnrc04o+BPc76ODywqs/b+Q+72hqofIb5
	wPL6b6emywKrIapAypDuosb16bYc3F3MzrHbVx89s6mUp4SuW8ItjVBVGIuogYPHr93cJuDgHVK
	3oHE35xDJ4CjsPOW1ZchvQMaY6U3pKRW4IFZRKPobBIPawXvj5SxUKAlgo+KPoSk3+2qahNeufo
	tg6oxQwdOmi9Cm+rUVFT4RD/JNE+FpMxaAiFYvv2uJy0+m2620Tl27nyJIs/6KAgsnGXqRiO8Xu
	FB677sQDIX4EmG28syrn3Uw7DF/WwJUq0/A0/tzlDlf1ezLdkpL89WmO4MkOGaYTRHymmXFxqVs
	1gwX7dCRTKYMURHKpvG6NK+tT6wqGIAh7P1uA/N3nu4q+Ja5uci3pgv6VZTK6VWIa/d5VaN0Fwe
	Ihjqrzv96T/HGL0LP6/X625kB+G3XBsp+Cv41hy2wZZOgxjLAKgvo3a2DOP51un9HYZ8y0ufwDj
	MaSg8vh
X-Received: by 2002:a05:600c:6289:b0:493:b647:1acd with SMTP id 5b1f17b1804b1-493e68dbd98mr85115815e9.36.1783630627912;
        Thu, 09 Jul 2026 13:57:07 -0700 (PDT)
Received: from Ansuel-XPS24.localdomain (host-95-248-227-210.retail.telecomitalia.it. [95.248.227.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-47a9de1d910sm52894965f8f.6.2026.07.09.13.57.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 13:57:07 -0700 (PDT)
From: Christian Marangi <ansuelsmth@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Ilpo=20J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
	Christian Marangi <ansuelsmth@gmail.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Benjamin Larsson <benjamin.larsson@genexis.eu>,
	John Ogness <john.ogness@linutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>,
	Gerhard Engleder <eg@keba.com>,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Randy Dunlap <rdunlap@infradead.org>,
	Binbin Zhou <zhoubinbin@loongson.cn>,
	Rong Zhang <rongrong@oss.cipunited.com>,
	Lukas Wunner <lukas@wunner.de>,
	Lubomir Rintel <lkundrak@v3.sk>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Subject: [PATCH 2/4] serial: 8250: export serial8250_get_baud_rate()
Date: Thu,  9 Jul 2026 22:56:50 +0200
Message-ID: <20260709205656.319531-3-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260709205656.319531-1-ansuelsmth@gmail.com>
References: <20260709205656.319531-1-ansuelsmth@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-324147-lists,devicetree=lfdr.de];
	FORGED_SENDER(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ilpo.jarvinen@linux.intel.com,m:ansuelsmth@gmail.com,m:andriy.shevchenko@linux.intel.com,m:benjamin.larsson@genexis.eu,m:john.ogness@linutronix.de,m:m.felsch@pengutronix.de,m:eg@keba.com,m:jiaxun.yang@flygoat.com,m:rdunlap@infradead.org,m:zhoubinbin@loongson.cn,m:rongrong@oss.cipunited.com,m:lukas@wunner.de,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-serial@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[linuxfoundation.org,kernel.org,linux.intel.com,gmail.com,genexis.eu,linutronix.de,pengutronix.de,keba.com,flygoat.com,infradead.org,loongson.cn,oss.cipunited.com,wunner.de,v3.sk,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ansuelsmth@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 391BA7359D5

Some driver might need to access the current baud rate to correctly
configure it.

Export the serial8250_get_baud_rate() function to limit code duplication.

Signed-off-by: Christian Marangi <ansuelsmth@gmail.com>
---
 drivers/tty/serial/8250/8250_port.c | 7 ++++---
 include/linux/serial_8250.h         | 4 ++++
 2 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 630deb7dd344..033d8fb8bb23 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -2560,9 +2560,9 @@ static void serial8250_set_divisor(struct uart_port *port, unsigned int baud,
 		serial8250_do_set_divisor(port, baud, quot);
 }
 
-static unsigned int serial8250_get_baud_rate(struct uart_port *port,
-					     struct ktermios *termios,
-					     const struct ktermios *old)
+unsigned int serial8250_get_baud_rate(struct uart_port *port,
+				      struct ktermios *termios,
+				      const struct ktermios *old)
 {
 	unsigned int tolerance = port->uartclk / 100;
 	unsigned int min;
@@ -2589,6 +2589,7 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
 	 */
 	return uart_get_baud_rate(port, termios, old, min, max);
 }
+EXPORT_SYMBOL_GPL(serial8250_get_baud_rate);
 
 /*
  * Note in order to avoid the tty port mutex deadlock don't use the next method
diff --git a/include/linux/serial_8250.h b/include/linux/serial_8250.h
index a95b2d143d24..8d26fa2008b6 100644
--- a/include/linux/serial_8250.h
+++ b/include/linux/serial_8250.h
@@ -208,6 +208,10 @@ void serial8250_console_write(struct uart_8250_port *up, const char *s,
 int serial8250_console_setup(struct uart_port *port, char *options, bool probe);
 int serial8250_console_exit(struct uart_port *port);
 
+unsigned int serial8250_get_baud_rate(struct uart_port *port,
+				      struct ktermios *termios,
+				      const struct ktermios *old);
+
 void serial8250_set_isa_configurator(void (*v)(int port, struct uart_port *up,
 					       u32 *capabilities));
 
-- 
2.53.0


