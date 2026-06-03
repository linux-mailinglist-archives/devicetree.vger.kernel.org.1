Return-Path: <devicetree+bounces-306152-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LF5WBb0MIGpRvAAAu9opvQ
	(envelope-from <devicetree+bounces-306152-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:15:09 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 53EB3636ECC
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 13:15:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=9elements.com header.s=google header.b=TySAk75b;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306152-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-306152-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=9elements.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 29C893019D8C
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 11:04:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB96F472784;
	Wed,  3 Jun 2026 11:01:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2054E46AF11
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 11:01:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780484494; cv=none; b=nuhY68cNWVDATgg4i7H14LSOXtzf7FYlhyin870bHNglJ6BxEQt6/y4Dd05rKrCZOW44Nk+kWW7PolmEr7BBQlbtCAPdBOk/uDP+BFB8MN/udQOiy4RWXzaShlw2gmxPQNDl3/gEpWgxRoXUirdRemvDJq8VTy6cvXO6tHu3ayU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780484494; c=relaxed/simple;
	bh=gUffnRCkZd8GCDVad4nVwDK9l/4YI41QMrTFTZag9po=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=C34bx+d34/JHJV4MskBLh1YFV5rAFyGdEioY8aDZracu0eYY6WAtmbIMO5hcMkU8bSDIpGRvPXMrH5/wHlga1b8y9bEo+z/LfWNiYiYKpHZwowgIg4rGiN1kWD1VlvAXZmWngHkfbs4KIFbXbfcYTxolCMrbwYLNqFXxc1t+2fY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=9elements.com; spf=pass smtp.mailfrom=9elements.com; dkim=pass (2048-bit key) header.d=9elements.com header.i=@9elements.com header.b=TySAk75b; arc=none smtp.client-ip=209.85.128.54
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-490ac10e337so18811935e9.3
        for <devicetree@vger.kernel.org>; Wed, 03 Jun 2026 04:01:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google; t=1780484490; x=1781089290; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=im10zWUipLMKBqnVFXqr0KEaN2pPpAtbqMH2WbacGe4=;
        b=TySAk75bvOfPx1XvqKp8CqfVI2ej2/DNr6ytwUdC87W85ssfcFPp05diYJAdWif3+q
         M7j6ovNAbgeQ0Z5Atzz8HHHY7h0HVXqMfHsuV/4WU4j5dXckO0B4WtPxFuM7pUyj0pBD
         VZ2o7t7Xr/fVFL9QlS0zB3af4Gpc0bDkpXLKSehc8RJNjqS3ylj8GUlNDrA1aSDbBSAX
         VRDOINiAX/aniK3G6LJNfEsJhuYthEw65axsK8ov4MQVHvBDhn5NF7tP5h6ycozmJzsP
         Zqud9tHBwtr6Ea0/vACuogTdWP6sikZhdLUkUM8GaJGnQqSYPOj72lPfzU3weloV29zF
         BCAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780484490; x=1781089290;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=im10zWUipLMKBqnVFXqr0KEaN2pPpAtbqMH2WbacGe4=;
        b=gPPm0+PIvsaje99giGsr/hYnexXlnmXPxJE62qSNjEU2xL+gVtqGyPxqaNZmM267Py
         46F2vzwykM9UA/SyYvgFXiDc7Cg9+CxPYN6fWeQvrPGD6gXaFT0368pTZJjwTMSUVNZW
         1lv7F9bkI1P7Q1wsVCMF5fCpiCQYNUBgmQLDC1kLcTKG1fMoMjM4MieKpWWXTVzi8yQo
         0kQOCIGNVAg+eykUrZ7557MS1VwrEK87akXP5O90zO8GoWB5o19oUk5CTrz2lgFMMWv1
         aQdYGjsN7YH9qS/9niVZ1kebnfvzuDBZz0uVTnS+PdusXvxy7AJNChgoSv0MPzgZ6t/V
         wmPQ==
X-Forwarded-Encrypted: i=1; AFNElJ/Nbv43NEpHYudWKC7OwT8DaZzqCkDkGqfH9goDVsj8NZsyuXYm4TjaIYikgRsiuyUKz2BiU6xD896e@vger.kernel.org
X-Gm-Message-State: AOJu0YzfLaOl7LqNPoK6BY5+vjYql726fT4kdb24FL+jd4RYkiE8JJHg
	DgEfz2ES5eTzUkWubXhPhwYlfjrym5WLyUCbRSh2bSh9pGsE6oWmSNmomNUWqd4Yawo=
X-Gm-Gg: Acq92OFUw6+kQiUPFl0XkJgwMrokU/Ui/Sa+5KpcpyUhdw2TovkB8kmz+K0vSuCFa4R
	86e71HKseS32XA//09bwG1T8jZjBN3EF2xEyRbw/Q2ssh7vAOg7kEf8PkvmhG1+mBTpoyK2CHMp
	ii3Vy3cdRtxSuVlyJdrMdKUhWlyF1CKvDLbGe4dk50USj0rYxeZIjd1tIKB966iJ8NKk3/ZGcsS
	gg4POg1vgSCMjf8p+ifwcR9Rs7NPwFbHSuMM960htMLzRV/v3X4E/dxXyy/wqZIHZyITHgsfYuJ
	N39dVj+HZ2Y7V7fSnMSONh+GNlHiwAnkYJJyDEAsFjeQeQeboV79MGLUBzG6JImCa2DGzz8vSvG
	EZ7JlcPImYoTkLa925mrKMTHXadjrCrTYWE5AMvHku8SeYwE/Y0wcnpZ70UmnqRoet/EAs7G+ZY
	VkHoCDy/Pnpn96ApUpLH4EtOenrK02Nue2IDCO4ts0f8XHo3brRq2YYzE+uwXkPp2CANROCetM+
	Nn8970yPw2zmjrQfoyh7b9t+sFdWdkG0qYPYgrQEWDFCK0FE3a16Q==
X-Received: by 2002:a05:600c:8b30:b0:48f:e26a:1744 with SMTP id 5b1f17b1804b1-490b5eb4aeemr46258005e9.9.1780484490576;
        Wed, 03 Jun 2026 04:01:30 -0700 (PDT)
Received: from nareshubuntu2404-gh-runner.lab.9e.network ([188.111.3.154])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e76153sm138908575e9.11.2026.06.03.04.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jun 2026 04:01:29 -0700 (PDT)
From: Naresh Solanki <naresh.solanki@9elements.com>
To: Guenter Roeck <linux@roeck-us.net>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Grant Peltier <grantpeltier93@gmail.com>,
	linux-hwmon@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Naresh Solanki <naresh.solanki@9elements.com>
Subject: [PATCH 1/2] dt-bindings: hwmon: isl68137: Add RAA228234 compatible
Date: Wed,  3 Jun 2026 11:01:26 +0000
Message-ID: <20260603110127.23930-1-naresh.solanki@9elements.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[9elements.com,quarantine];
	R_DKIM_ALLOW(-0.20)[9elements.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-306152-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[glider.be,gmail.com,vger.kernel.org,9elements.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER(0.00)[naresh.solanki@9elements.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:linux@roeck-us.net,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:geert+renesas@glider.be,m:magnus.damm@gmail.com,m:grantpeltier93@gmail.com,m:linux-hwmon@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:patrick.rudolph@9elements.com,m:naresh.solanki@9elements.com,m:krzk@kernel.org,m:conor@kernel.org,m:geert@glider.be,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[naresh.solanki@9elements.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[9elements.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9elements.com:mid,9elements.com:dkim,9elements.com:from_mime,9elements.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 53EB3636ECC

From: Patrick Rudolph <patrick.rudolph@9elements.com>

Add the compatible string for the Renesas RAA228234 8-phase PWM
controller, which shares the same PMBus interface as the RAA228228.

Signed-off-by: Patrick Rudolph <patrick.rudolph@9elements.com>
Signed-off-by: Naresh Solanki <naresh.solanki@9elements.com>
---
 Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
index 8216cdf758d8..2988bc6300ae 100644
--- a/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
+++ b/Documentation/devicetree/bindings/hwmon/pmbus/isil,isl68137.yaml
@@ -55,6 +55,7 @@ properties:
           - renesas,raa228004
           - renesas,raa228006
           - renesas,raa228228
+          - renesas,raa228234
           - renesas,raa228244
           - renesas,raa228246
           - renesas,raa229001
-- 
2.43.0


