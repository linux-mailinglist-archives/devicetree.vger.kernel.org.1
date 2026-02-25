Return-Path: <devicetree+bounces-268551-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4JG1KBuBn2lrcgQAu9opvQ
	(envelope-from <devicetree+bounces-268551-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:09:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 031FA19E96A
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:09:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5247730715F6
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACAD3783AB;
	Wed, 25 Feb 2026 23:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jU8UV7Vk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6783376BE4
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060929; cv=none; b=PchhdvzMTsYzhO0JiHjn89anztYK6Uax66LkJeQ0CJqdK83F/qFxtJ+ztD8UQHaFqc29t8jiLVw7Y4coqa3RPCx1l/14jK9A/NmBqy9skHpT3gHEafcsufFIurl9kLUmpQbUCzKre79DN3EP77RA/L82opK3vn+s0Jcqle5rRDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060929; c=relaxed/simple;
	bh=vG/5YfOCtrSF3OZk1aFYdm9hlDAH+7XgMDKrJ6eYyHM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GzwruEqfJJh6Tozu6dBb9LsDjj/9RKJMaIri+uAZzLbyE8pJs7GuNqOtO10/w2cX4cH+j3vIysqcZKxuoYjo6yJzjVkYjwLGIGqbPvuZlxKlr4liZvDA+lWFfioaUX4scNJtkY5DJ8o+H6FaHgxMj6/xLFJ0d8TcRCfthpgoeXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jU8UV7Vk; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2ad4d639db3so803365ad.0
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772060928; x=1772665728; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cVIVsn7FhVGEmmpQd3To+p0nhAO6o8stxUyzkQjrFx0=;
        b=jU8UV7VkY9o7rc46Sw7J2rZ7/a29eB+x1aAxj3Zefk9WqLQtN4TAiqLJ1uzVjObo+b
         e/jPlqUYHl6ADWomfNRuEWY3ol4qBbsA0t3yahi6ST6Lb/njocjckuWt18xxlyy6MD2H
         ZIwyoo726wmpYNLMray46gwmo+p+XPfqzo1Rhe5FUazKbTvLSDXrAnN0EZ67oi9MWYpx
         ARg3K85n+Uq3UjUVC5ewKR5P52GtD3b4P9P6Pi7E9jDd0uHgQ8YTryx9YAXT/gHkktfe
         AsGWp5nXlHwd8FvY/mAr15uwgFfjUBgG5ECuSC0aFZUOA2V6qDpnszoF2G8eMk05ALln
         ftAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772060928; x=1772665728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cVIVsn7FhVGEmmpQd3To+p0nhAO6o8stxUyzkQjrFx0=;
        b=POF3i6PI/f9sBykiqNFPot5L02gieONuuM/d7BgPALqEpOQuLvjZROl01cJmzaQbVu
         /FwM8SmPtD9jLPXG3iMHOSX+8WTVpu/xuF9Ydf5Pt03PYl8wwM//BNUrGrDkadGuZoqA
         ejDXe129YXtFQ2ze2XjkrGwwVgSUryR8VbjnoQrDI82yaJjS5slh/aIlaes3u2fmQr+Q
         eZ77DOzwzBPCdgddYqF6c6O3Zedbzy85YE2+0lIfThZfTvxpnR8ZlOG0DSgtLOW/mSoG
         3xwYjTenmzjKKn2TgMUv9acnhPmt50gtQUzfzWNoapXZl/l8PYGjnkcgBiYJqjejolsa
         pbKQ==
X-Gm-Message-State: AOJu0YxdCzIhAI6+78XcCZ/7eLYdW8TWjs1ZJNnkLmqn4kB5eSnpoHrO
	mo140RSBahevrb3gtjmppEA3hh8x1qLjgnHhd6Sv5VkmXDveIFQ/k6hxn8WkbfUk
X-Gm-Gg: ATEYQzye/Ot+EeNUo0l1U68GAeS7KmF2/qWuz4gJqwrwEnP3P5rZS57GDyxqTao5knI
	NsjDv2waNldU61WGkUG/ObH2HYcopXklFBLr0a9DViiNiryT1O21twiN/A0EWJPG5l4R/tBOxLs
	+foLJ6U0zIex10TqfARnD0KWLqQYjgQ+P0YZIbpFLostRxj3Tvd6Jk35X0ijBKD8gn/wRfKWaCI
	J3i6BnatXjR87zOUxTa6+k9bycCx+vHUEFuZ8pDnmdB8Xr1yPUasLX0QajKoN9A9F5AlVt3XEAH
	0zA5CLBlamtz50oZ0uQ1B5pMFtKo0gAxV2iEmeMwALGf3rQD5UYMNd+1nS9CX9zVWWAHcenFpGJ
	KxFPnae30zW3dJZfaL9Un44rl6Sm5nlwoGPxRSGaD0d9FsfkgJnrwrkhry3s4j7q5gNFc4W+Vx/
	w56x73b97Yk/1r/70XMQ5yudplOYkXDBKl4EKSe5/ljTog8FJHNyP4mA==
X-Received: by 2002:a17:902:d2d2:b0:2a0:c1ca:20f7 with SMTP id d9443c01a7336-2ade99bd62bmr22422605ad.15.1772060927685;
        Wed, 25 Feb 2026 15:08:47 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b2309sm3378285ad.19.2026.02.25.15.08.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:08:47 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: devicetree@vger.kernel.org
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
	Hauke Mehrtens <hauke@hauke-m.de>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM5301X ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCHv2 1/4] ARM: dts: BCM5301X: EA9200: set WAN MAC from nvram
Date: Wed, 25 Feb 2026 15:08:24 -0800
Message-ID: <20260225230827.21715-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260225230827.21715-1-rosenp@gmail.com>
References: <20260225230827.21715-1-rosenp@gmail.com>
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268551-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.4:email,0.0.0.0:email,0.0.0.5:email,0.0.0.3:email]
X-Rspamd-Queue-Id: 031FA19E96A
X-Rspamd-Action: no action

The MAC address from the stock firmare is offset by 1. Define it
properly to avoid having to override it in userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index 2ba5adf2b7e7..7c6ad7787945 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x180000>;
+
+		et2macaddr: et2macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -70,6 +74,9 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+
+			nvmem-cells = <&et2macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.53.0


