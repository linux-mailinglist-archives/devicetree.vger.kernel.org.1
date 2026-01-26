Return-Path: <devicetree+bounces-259352-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id DkD/Bh0Md2lCbQEAu9opvQ
	(envelope-from <devicetree+bounces-259352-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:39:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 589288494E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 07:39:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9809E3004F77
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 06:39:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D7A27F75C;
	Mon, 26 Jan 2026 06:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="JqTsVfkK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31271A9F9F
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409562; cv=none; b=e98iZ+CaVQfOeC+jllFaby3IRJ380eA7d3B/QdKsDJhq4DMelm8MEd/p+ZLjv/Qu3A0iLK8O0gvjmdqe5DxNDdbGU2ymY1P2EfdPBN6umEhnsj89/GWNffw2t1DvxKne5dbQvS2hj4KK8TSlpak9tvT6LP34m45wayHgvOMDWcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409562; c=relaxed/simple;
	bh=w4FKbbbdyeLST9+/T54McLUTVxjz7JwH/U5UkECvGeY=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BeZa5jkvpJZ8RKSCROXyBndhPDZWfqX56+NoBKstFWCRRmwRx3weDL9IbanOG1kX4uu3tFu2khT5+xeJzlIoZGGYCXjOvC0XXPGC3BGqTJ1mbVAWRCiTx1DuN2lXxtGNAndukwFUBv9WMzMaBOJjYFev2JTyOmSz2b4o7qeMdd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=JqTsVfkK; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-34c7d0c5ddaso2387004a91.0
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 22:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769409560; x=1770014360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lq4/Y6D70aJhHJ0yvgNaxWVP+ut3MWhWFczIa+7wPxA=;
        b=JqTsVfkK96LeBRI/BG5IorTLSKzDPemZMrSyuZXvE5lNj8b8PkdmlOKSxwG57G71vX
         GZu4cF7VtNSvgeGW6gwHlR82NcV0+pjh2QqkYOwjZ8ldvatPEPCYbFNyMLsgWDCfOSYz
         BQSyslsZ65y1UzO8DDaFnyqBiPGXfFLvOK5ZcLk4N+FkjB/Em3pI/LhrfKEfPYsOwGwz
         FPjpPADegQsi7nV0z7MauCTZd6hOwfLriq7rORm6sWdTbTHX4LiRfLxZRfJf+KTY1RZg
         +uU24OPuqh2BTtuJ/NMIcKk/nu2RIERpfcanfP7CQMWZb82sJfo1jb3wCUT/5PqrnoaZ
         L3uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769409560; x=1770014360;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lq4/Y6D70aJhHJ0yvgNaxWVP+ut3MWhWFczIa+7wPxA=;
        b=veHuSSOYvOK1WfAWpIekuLgYxy9von5oKHJ7WWhTUMaIOtwqAQSkDv735YiwyzbM7P
         IwWqIpwBz6ImXVFoRXv96EDK9M8wk2x+tf8l0YRhvIRQd7f+UEaGV6o/fFKgBnT+hrk+
         /ZeTv6KgNsJt5h56pmwHODSnjV9d+AxPSrL2g2ESaYhZot9+0bkpc5O8xOBn+4gFw7EM
         rrmozPU5EK4dJeqxk7+f5wy8iOvEW90fqEfxQyQ40fEc3uOFAzTgGmw30XzGYo55OZtg
         Wn1c5bEnIVhwbRpm8SRkvyrqoO4OaYfUcSMtbhpwJx4PF10gKwC/A+Yju+DzZ9tHzwBX
         2OLQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmtAosbz3CnpUd/wIWuxvWpXEl99L+LIfy6oVNgN9De4eHujUpLSEMoMfdS/jBy32W7M+hDkyvqyBn@vger.kernel.org
X-Gm-Message-State: AOJu0YzSuq6zHi/liC9QUH4w9BXlFvMriwYg/BXuC1B89I+25JjJD8OG
	4pzNDYq0sKbvo/H5VjOj5nc8x9MQJ5EwyYued4LTodRzbARAq6CCDpV9
X-Gm-Gg: AZuq6aJukHjKiE3jO11FqCqYIltDrXJe6PqUEZzX6aMRSydEDFMPU5GSigfPjr6zpRL
	+6jWXqu6bR3HgTXMNpFUco+42/fGfWVXvwfKD1IJxMn/9k/mCb2J7apIs3U+KaAu9ESzqRaicy0
	ZCrXNVv2ZKVBLjwKAzXcwsgUNQwq3rWlCwUlslqQjAFWD402L4Sz2D61ICXkd/rZ09+HkHNFVE7
	aLs2QfSYcbGTfpWWm6dZyHGd6+KAJzKXCctg0JrFEgOoG8gSKi+PGEUkHugTdmX2FCErC9Sy/9o
	2Wib9s1XgSY9sa7oMO9gPgFynGU8orhRT29zEQd456WeWd19cI/7pd+12jmwMLu7CYQGM2iy4Tz
	9AvLhGyQBZVjQGsBmjBf05cA7f2070Y8DFgzCb/yRmFw45kZh0ysigC3QZk1burCk4y6sEQ5dRJ
	NCsqQayikkV43POG6LVsJOL9VQRsiNkHJYObs1KC2qGq6d3o6wKwlAygL6sDPP2/rLGtOKCJmq0
	VN3B3xFZvsddBTQmQM6CkIUB4+On78=
X-Received: by 2002:a17:90b:1d88:b0:352:d0cf:9d18 with SMTP id 98e67ed59e1d1-353c45ab2a3mr2972180a91.5.1769409560195;
        Sun, 25 Jan 2026 22:39:20 -0800 (PST)
Received: from charles-System-Product-Name.dhcpserver.bu9bmc.local (61-220-246-151.hinet-ip.hinet.net. [61.220.246.151])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3536d8b8f7bsm7865000a91.6.2026.01.25.22.39.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 22:39:19 -0800 (PST)
From: Charles Hsu <hsu.yungteng@gmail.com>
To: robh@kernel.org
Cc: krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux@roeck-us.net,
	devicetree@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Charles Hsu <hsu.yungteng@gmail.com>
Subject: [PATCH v7 1/2] dt-bindings: hwmon: add STEF48H28
Date: Mon, 26 Jan 2026 14:37:11 +0800
Message-Id: <20260126063712.1049025-1-hsu.yungteng@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,roeck-us.net,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259352-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[hsuyungteng@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[8];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 589288494E
X-Rspamd-Action: no action

Add device tree bindings for the hot-swap controller STEF48H28.

Signed-off-by: Charles Hsu <hsu.yungteng@gmail.com>

---
Changes in v6:
- This device is a simple I2C slave that does not require any custom
properties beyond the standard ones, just need add to trivial-devices schema.

Changes in v6:
- Fix patch formatting issues.

Changes in v5:
- Move the change list into the commit message.

Changes in v4:
- Fix an incorrect datasheet URL and update it to the correct reference.

Changes in v3:
- Move the STEF48H28 Device Tree binding from
  trivial-devices.yaml to pmbus/stef48h28.yaml.

Changes in v2:
- Fix the entry in trivial-devices.yaml by correcting the comment
  and compatible string ordering.
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index d0f7dbf15d6f..7ff5b1dbe61c 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -416,6 +416,8 @@ properties:
           - smsc,emc6d103s
             # SparkFun Qwiic Joystick (COM-15168) with i2c interface
           - sparkfun,qwiic-joystick
+            # STMicroelectronics Hot-swap controller stef48h28
+          - st,stef48h28
             # Sierra Wireless mangOH Green SPI IoT interface
           - swir,mangoh-iotport-spi
             # Synaptics I2C touchpad
-- 
2.34.1


