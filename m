Return-Path: <devicetree+bounces-275732-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OPuQLPGHtWn11QAAu9opvQ
	(envelope-from <devicetree+bounces-275732-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:08:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FADC28DCF3
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:08:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C1CE9304F21F
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:07:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3C7983002DD;
	Sat, 14 Mar 2026 16:06:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="KP/o+utc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FA733BBBD
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:06:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773504406; cv=none; b=WINDhRED/klqbcPr7rpOM+UlJPNpR8+1j3mYSt8+XVxLCnaJzd4oOUZyJ52Q00FQqrqLYxABTcMKHYDSpMdSvegBYPUbDtvUsq9cebe+qqY2BxkSCOXID2ZOm2PuluCCtQxI4Wtlcem/uBSdRwqsZEWo2huniKznXFfnrDDAGxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773504406; c=relaxed/simple;
	bh=ewacY4CtjcZ9Q6nfX9avDl3jskAs7cDNt4STGuQgQMI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=T2mPBqwENAp7fRNFXstOs+qnsfr5eqYxostJmTOi3gupDF90mU7Pl9UhQnAFr8KhuuaeVFCCnXgW7XSyUzStExbANRvo3r/YKuGeUEs36LEPWLA4xTVhxfxjCM/AgLpDkuzftD9qBocLh653fDTxtcHW5zSvppTK9uDQMJc5STo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=KP/o+utc; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-660ea6ceb5aso6588882a12.0
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773504403; x=1774109203; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nfmCl3VC8crQVQSKGIh/XriSOgp+m5SIVFUaVS68dLI=;
        b=KP/o+utcjt6WLnHR6tr6bexxj/BDDH2mWoVlJ1IQV+l+L6tSjhuWB/lme+Tnge6u4J
         GrmxuxHUEMDicLUvoEjx3ZAdookgS8XG9tTWhz17aABinRn5/AkCCXC0M0MMB+J+uXhX
         nY/9lgVjVEohSX7XrO/JPkgQIL3XvPtph1n++ixBWiKy93xayByMH6EwObGCyzs9CYjP
         EyYR3gbyue5G+dySBtxgUrfFWVsMCKFN+ktgYL+GHudFMyDqnwIFfksxiAQchX4QaOba
         IImUPm0cXiRWXRjblu/y8tNMWTyzslcLqbKD9hOEtmUIZTklXCm2ignbSPfpZ15968/d
         ibSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773504403; x=1774109203;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nfmCl3VC8crQVQSKGIh/XriSOgp+m5SIVFUaVS68dLI=;
        b=XEUKR9xaadDBlQ8LYkKKwlGaD7ASZWIisOqT4zW1t3Vx+lpGbxJjqmETNtUYkxjYos
         cqyS1iI+cfsY8znwMphGHqsx+IZGvQWe5bK/9sHwnhweZATzlYOhQzmwPcJULPbRObQK
         ZAvjJwB3fuAQT5IWuh4RcmsXr/NJMwOzXebOR9QjMgalRuBzHYtDjvn+BPq2JZZ+X3EI
         fx3gepSimmEn0VIB3mSGiOvD24C+2noZIBF03RLof1Iw+gy6HqJXVdZn8C843YJwRmeI
         Sdl4Yxa9qvgkW9pQpXOVQSORUdS+4qy1iOT8H6ONRjSWHGUEf90HOdCI45iVEen0JzGL
         FiTg==
X-Forwarded-Encrypted: i=1; AJvYcCXpqSXiNv96hM1RX14YXAKLVdJ9fgY5T4pK1RFbgh3jovDY/FpwspbhPgNXNpSdb5mcFEKMjnx9KT/9@vger.kernel.org
X-Gm-Message-State: AOJu0YzG8AAwi89mC9i30HUsey+ZZ9ZiOfb734vP7OnkkZW9Kx/oJBpJ
	5iDLZE2LRkY7hgRaiB1ka2F73kXhWYB3kC+WVZFhNyzCxIpv4v8YdKoQ
X-Gm-Gg: ATEYQzyMLy242zFRWUq/BXRzqxhinvW/lU24A4EivnaRUz7/OtEAds07OfpG8336z3f
	clvZv6DA8VcbEGXdauTzAIT1nv+3u1oCXcczBtZXC7i31PO5bNYu10AfK1SwVViernfzenYXC1Y
	Wy6F60IjbBJ2gp+zgmC+0OHLf/z6mq6+xz2niz3p/rvJ0+L+rkf7+R06ebaGKz/XRMEhZKuXyzG
	dv9iWstL2//W118auskD9bJgvfESuj+ImKSHdIzQDvUKLcd6H4zSaXUk2b0MVHhUVTESQms/GyB
	OzKbPRaoS3s1mrlzlJzpXaePHELQep6Q90CxdFRTNk14sPWRDL4203M2PlFfBfVNAHZx2fAWFli
	eYq81tRk9p6QtHwAome4XaxBkGB8mN714P0f8oSRkPPvwj7szzdRLPkwVU4xdC0x2Eaxj7OJg5q
	wD/+N0ikWBhJ3InIRy30G8yyZFug==
X-Received: by 2002:a17:907:e8d:b0:b94:231f:26ca with SMTP id a640c23a62f3a-b973ffd3b49mr587744166b.20.1773504402922;
        Sat, 14 Mar 2026 09:06:42 -0700 (PDT)
Received: from [192.168.0.39] ([79.133.247.80])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b978b8625d3sm151722366b.52.2026.03.14.09.06.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 Mar 2026 09:06:42 -0700 (PDT)
From: Erikas Bitovtas <xerikasxx@gmail.com>
Date: Sat, 14 Mar 2026 18:06:34 +0200
Subject: [PATCH v3 5/6] iio: light: vcnl4000: remove error messages for
 trigger and irq
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260314-vcnl4000-regulators-v3-5-3c4a48d30676@gmail.com>
References: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
In-Reply-To: <20260314-vcnl4000-regulators-v3-0-3c4a48d30676@gmail.com>
To: Jonathan Cameron <jic23@kernel.org>, 
 David Lechner <dlechner@baylibre.com>, 
 =?utf-8?q?Nuno_S=C3=A1?= <nuno.sa@analog.com>, 
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Peter Meerwald <pmeerw@pmeerw.net>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, Erikas Bitovtas <xerikasxx@gmail.com>
X-Mailer: b4 0.14.3
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275732-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.sr.ht,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[14];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[xerikasxx@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5FADC28DCF3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The error code is available in the log after return. Remove duplicate
error messages to reduce noise in dmesg.

Signed-off-by: Erikas Bitovtas <xerikasxx@gmail.com>
---
 drivers/iio/light/vcnl4000.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/light/vcnl4000.c b/drivers/iio/light/vcnl4000.c
index e501db7249d7..c8bb1826b916 100644
--- a/drivers/iio/light/vcnl4000.c
+++ b/drivers/iio/light/vcnl4000.c
@@ -2041,11 +2041,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						      NULL,
 						      data->chip_spec->trig_buffer_func,
 						      data->chip_spec->buffer_setup_ops);
-		if (ret < 0) {
-			dev_err(&client->dev,
-				"unable to setup iio triggered buffer\n");
+		if (ret < 0)
 			return ret;
-		}
 	}
 
 	if (client->irq && data->chip_spec->irq_thread) {
@@ -2055,10 +2052,8 @@ static int vcnl4000_probe(struct i2c_client *client)
 						IRQF_ONESHOT,
 						"vcnl4000_irq",
 						indio_dev);
-		if (ret < 0) {
-			dev_err(&client->dev, "irq request failed\n");
+		if (ret < 0)
 			return ret;
-		}
 
 		ret = vcnl4010_probe_trigger(indio_dev);
 		if (ret < 0)

-- 
2.53.0


