Return-Path: <devicetree+bounces-323007-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id eqjPMi5vTmqfMgIAu9opvQ
	(envelope-from <devicetree+bounces-323007-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:39:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 68B52728222
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 17:39:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b=OdsNy9N5;
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323007-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323007-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 91D9D3031FFF
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3238B41735F;
	Wed,  8 Jul 2026 15:38:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5A3409281
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:38:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783525119; cv=none; b=amWOezOqivInLXPGy42nPPj/rnIFD+AsknXLYExCtrqMnSxWTtZA6GbB4MuSGUBXVuAakhOrOjkoeK+9A4dCTbKV11hYkE8Srz6b9uUkeT4HbIb443J+y3hovKxFy6pMHReuSi8zqAJX9xTWUmSmtNo4H37dQgFL7BWeZtykqHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783525119; c=relaxed/simple;
	bh=a230ZCfC90axJlgwhM1ZKMw6zyzB++PhLGa2dLzKeqQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Q8IpldvFISNs6plEwmxwjVtfGUWhGW/wOGUffQB+fAtajMeBYPnMuv5NMw6rPk4qsqzUb0+kvezgHH6d71ArwrIorRnaodB/Dr5KfJjvmsXnujGc3L6SclHYURvM8xkeN1TFQCHNbc1d1UYe+nf6Ax02MY1pXob+7B8b4rV4JCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=OdsNy9N5; arc=none smtp.client-ip=209.85.221.50
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-4758b2a9e2aso591315f8f.2
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 08:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1783525116; x=1784129916; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=43Zhfg5+4+Z1uzvRXKb3yHpIvITffod/8Jre6ZQvzL4=;
        b=OdsNy9N5KI97zM6qtxm4ujw8KE+hgMkzPMfq4GF07GRABfgAzLMM6GY+aSxssz/sdj
         V6MPY3RBo9PrvzA11mnZUWTkMQngL8Vs0kZcLHo3sxAj2X20Rwkz2fa6iowGdo7lxeVT
         a2b7J+pgVYFJCEK8U9/dkPxfH3MKh60/5vhEehtuiUxHzSqNNZT/xNz/4ofglX5FUops
         M7gEEQbrwivlD+X/y3h4hwsbPyxtJDTiNNu1IT/4vfyFSz4o2IOR7Sfaw+agarBpNebk
         089JHP4sI5XERdF8OXdgjlB1PWZWPKltoMfDC0ksTW2U0GIvguyRF7Ek14ul02XiDbPz
         yWMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783525116; x=1784129916;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=43Zhfg5+4+Z1uzvRXKb3yHpIvITffod/8Jre6ZQvzL4=;
        b=WYEw31y5CvT0B5FilRwb4cqgpHjrI1v5vw8VmVMcQA0Hfjh+J6xKPKbeTlhWxlkJHV
         Kmn+K6x1ArnPOtXAwvg/EnWXPYGa1EkF2TxZW5AmmVT9Qwya/KDFAhqj5u5KaAuS/Pwi
         nHblEHai2hlcXHm6VbKZVlXAWnltjIJ49JZeiidHyhaH0hYSAdjyArB6FDKvmbKr9Coj
         nJcwL2gGHRsMBfYRsH/pJ4RYOeSGrXXPLT6J39HJ3FIif8epUwjY8b8mXlkUmoBBhFH3
         mLBTTOP5Nkb1XcSSCRaTV3DrVIwtYDxFu02KpHIm7GOMMIN1arQKnOBrMXTekeTJRDMx
         9qow==
X-Forwarded-Encrypted: i=1; AHgh+RqdGXf3uG782GbgBk+IXtkoktE7jo5GEFOHxjIti/iWk8n+FzG9wdDZZeNm2g3QekysjAu2xdUYDkpk@vger.kernel.org
X-Gm-Message-State: AOJu0YzYoxpe3snUO1vows0RImHK329igxFi8O17E1ggvAZfarSODykk
	7Jo3SL0ciu03lxzK0/ZWK42tziBZ1TiXWjIOPE1riQ5yNbf8EyN7Kg6dfaQDl5WGkupVUEO+rNB
	wFGuqnJY=
X-Gm-Gg: AfdE7clcdn2+H8a3ID2CtpJ4Jb2GV9d/nz/tbBCyI4njuWtzjLuqPzLc20Mb6kjhglT
	uCNPbSmC+99O+P0E19b/3w1WPfcQSVV6VT5AnAwIBz1JvE79VCVV1ue5ygu49/FrHsCKmCOBhO+
	gvSh02IBIx0T1t4gsiEM299BlaNiwwPcK+lGbCvr9MvcNSKr7u0nYoQK40mC7aEObqtaQ7dUKU9
	1YXhGUcocyTwj2wb4+lmOxpeWZskttB5Qc0acnUAawMAZijNUcKzdrZsySYoq7gVppf64UNPz1y
	7iY69wO2iABeXLlFBSwrunRRCuRY6T7iplK96XD66UqlYKW+N6welVyyvjGa1U9gvVZGmBCSUrZ
	/zqJIXKtHV3s/jUhU+ISH93VX+umM1BVW5Pj3Si+T5uywWZw7xPO+MDebFw2/XGrKwJeWiVJ0Yd
	emXGTrVinW4PAvZHmco5cvAQ72qQuVJ3sR46RzYF08ytzC4DQWEMUyIUANeaEB8Ez+ULOR8ewwc
	8R4SYa3gnBve911X4Pen5PKWnB2
X-Received: by 2002:a05:6000:2510:b0:477:80fa:f462 with SMTP id ffacd0b85a97d-47df075e2c5mr3515239f8f.35.1783525115919;
        Wed, 08 Jul 2026 08:38:35 -0700 (PDT)
Received: from gregwork.sec.9e.network ([188.111.3.154])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47a9e4d8410sm44254136f8f.15.2026.07.08.08.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 08:38:35 -0700 (PDT)
From: =?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
To: joel@jms.id.au,
	andrew@codeconstruct.com.au,
	lkundrak@v3.sk,
	devicetree@vger.kernel.org,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: andrew@lunn.ch,
	jacky_chou@aspeedtech.com,
	yh_chung@aspeedtech.com,
	ninad@linux.ibm.com,
	anirudhsriniv@gmail.com,
	linux-serial@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Gr=C3=A9goire=20Layet?= <gregoire.layet@9elements.com>
Subject: [PATCH v4 3/7] serial: 8250_aspeed_vuart: add aspeed,ast2600-vuart compatible string
Date: Wed,  8 Jul 2026 15:35:55 +0000
Message-ID: <3598f3d668717082adbffa5179b4afbe39b2a946.1783524645.git.gregoire.layet@9elements.com>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <cover.1783524645.git.gregoire.layet@9elements.com>
References: <cover.1783524645.git.gregoire.layet@9elements.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[lunn.ch,aspeedtech.com,linux.ibm.com,gmail.com,vger.kernel.org,lists.ozlabs.org,lists.infradead.org,9elements.com];
	TAGGED_FROM(0.00)[bounces-323007-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:joel@jms.id.au,m:andrew@codeconstruct.com.au,m:lkundrak@v3.sk,m:devicetree@vger.kernel.org,m:gregkh@linuxfoundation.org,m:jirislaby@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:andrew@lunn.ch,m:jacky_chou@aspeedtech.com,m:yh_chung@aspeedtech.com,m:ninad@linux.ibm.com,m:anirudhsriniv@gmail.com,m:linux-serial@vger.kernel.org,m:linux-aspeed@lists.ozlabs.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:gregoire.layet@9elements.com,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregoire.layet@9elements.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[9elements.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,9elements.com:from_mime,9elements.com:email,9elements.com:mid,9elements.com:dkim,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 68B52728222

Make the driver compatible with the ast2600-vuart.
Enable specific configuration for the AST2600.

Signed-off-by: Grégoire Layet <gregoire.layet@9elements.com>
---
 drivers/tty/serial/8250/8250_aspeed_vuart.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/tty/serial/8250/8250_aspeed_vuart.c b/drivers/tty/serial/8250/8250_aspeed_vuart.c
index 26fc0464f1cc..6afa2f4057e1 100644
--- a/drivers/tty/serial/8250/8250_aspeed_vuart.c
+++ b/drivers/tty/serial/8250/8250_aspeed_vuart.c
@@ -560,6 +560,7 @@ static void aspeed_vuart_remove(struct platform_device *pdev)
 static const struct of_device_id aspeed_vuart_table[] = {
 	{ .compatible = "aspeed,ast2400-vuart" },
 	{ .compatible = "aspeed,ast2500-vuart" },
+	{ .compatible = "aspeed,ast2600-vuart" },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, aspeed_vuart_table);
-- 
2.54.0


