Return-Path: <devicetree+bounces-266783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gFp+BqXDl2m58AIAu9opvQ
	(envelope-from <devicetree+bounces-266783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:15:01 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA8D164374
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 03:15:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 75A8C304740C
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 02:14:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54C3286410;
	Fri, 20 Feb 2026 02:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TJjT4fzE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9840A280A51
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 02:14:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771553656; cv=none; b=UvEpER9Ka7royHjMTvBvANpz2AzJC52RhLesUwsvszTwlsTq3Hnu5LjwGJ8p3IAUGVtXxjWgTM4KcnTbieBosqcjoz6jJJkk1Lczvl7htqhZilxLi6o8kh+yNv3zKFWVE8OFLodZkb/H2jeFmpaul+JveLiuQg/cBLtRfno8dS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771553656; c=relaxed/simple;
	bh=IxbPcvo19Cu6ni/hd8SMdlPZy2E8r9elnPSsD7FFDXk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=M6NmqVmIy6s4/KWILSYDP5v6ZMtmPGTG89NW1+ZSJQhIhwAC4OzRAkRqiRyieY1j2gdI0dKErQ9EaffFxPDKfv8dsWN+hiIg5o9aXSphkWGUraRNPTlrelpl/VLT9mK09Fodd21lXOTljZQuRlxezT+qO9jBdMPqeoJm9+y/n5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TJjT4fzE; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-824ba8f0acaso1049727b3a.1
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 18:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771553654; x=1772158454; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z9tiRaqzs41Tp2aztKcPkArrBbXFpbWH4r/ca+c356Q=;
        b=TJjT4fzEvt4/kJNk1PMttl8G7MAKA/DMfBEiR9E9ymvqsCIOpOXkGL6dvT2MtraG8K
         iGJ2PYOzWMXP/mBEAJkMzw8cVE5HTwW6axjgEZ82YDm8lA8joeBCe92CwnswOuqC6jvN
         V7BzwqmJ1R/2vcd3oStfD6W8yJg4GEeybYDWIAKKPg8lznN/Yz4nlNC97hsxaXCsj58k
         GrwAOi5w2H4OMmHKyPQ/fdH2IKIDFhTJZleG7qWB5FnZAXrNTV0mnkNWKNxZs5c1Bk+z
         FPkkWFoa3ydY7ne1SPdNIfAc4QqEWfXyaGcPlA7mC4NvuoqEbMCAVlMMCrZWQIyewYVE
         59eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771553654; x=1772158454;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=z9tiRaqzs41Tp2aztKcPkArrBbXFpbWH4r/ca+c356Q=;
        b=FjO8ljvdrMEUZPmr4OmJNXZagrVSm44F4LT6lo/yKKh+ottjkuhEGQJEbuzM+g6Dkj
         uK4tvnCB7U2GsGM6rFTzDdd99kH5Jslw+O5l0VLYNts2U5dZXN8rbUxB6edC6Mi2Tzvm
         PI4t27hTR0pX1P519AXanitRajSQvLC622S6bnmzoHzs9KXpUWO3RNx214CQrFmVYsVc
         sKyvBOncaWqjmRHervBzJPXs6BVjTpY8IKBdy/0lK1o8d54zvclnPX5c3vGWusjvYejy
         D3slW4mtUxa8+/4wGKl6pTFeZLU4MAPVEapuIXE5tJIJqk6MQBBjvBaaIXRN5sLeHOP9
         K3dA==
X-Gm-Message-State: AOJu0YxYH5WDtQ0VEomK48bcJlvGQIRZdPTYZcdAnjjB6NW4bcJi8dpn
	LwCZFUioujCwSUboSC8EH0tiCKlrtkpRETmTGscp7aaTheRmhacumgFZGzFG+O6kfpI=
X-Gm-Gg: AZuq6aKdQ8TmrSgODZFcIm/GGpyZQ3Pvx8sksGHyuLv718Hr5GF1br02MoRl6BBP/gB
	IswSaNMZmT91/GzBh28Ie98LIS2F+k1TMkdxC3r3ov+F6pZ2+5otcRaQ+TXgj7Gc9zPJ/Rk6Bux
	5X21Vcxz3XGv8sbWzaGJlQ65UPJVtvzjTGkDAKJHvl1qJt+TQhGX3ITPEon0RmZgxM7qlqXttSy
	TuD8DE1mET/PrnHavNw0JLEc/PJWwklWnlAYvwdXDHlvPjZ8EeaWYRbgxS7Zc3WEJvTYIyOL0Ca
	uZJbzRZrUwGTjTKizuzxyKOFFaUt/DGAVJchmENozOy/Ngvp0wtdrI/Ezu8X4vF8Gd9YtTpqFNM
	uTcgcEqLlm/7Qj8wNvM8g0Sdy+2/ghRa59LHYwY7ruikBefq+fUx5XGdyP4EgQsP1ORWg
X-Received: by 2002:a05:6a00:a20b:b0:81e:b2ba:5b3a with SMTP id d2e1a72fcca58-826d06e9cc2mr134081b3a.8.1771553654624;
        Thu, 19 Feb 2026 18:14:14 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6b69b13sm19607225b3a.30.2026.02.19.18.14.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Feb 2026 18:14:14 -0800 (PST)
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
Subject: [PATCH 2/5] ARM: dts: bcm47094-linksys-panamera: set WAN MAC
Date: Thu, 19 Feb 2026 18:13:50 -0800
Message-ID: <20260220021353.40554-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260220021353.40554-1-rosenp@gmail.com>
References: <20260220021353.40554-1-rosenp@gmail.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266783-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.3:email,0.0.0.4:email,0.0.0.5:email];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1c080000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6FA8D164374
X-Rspamd-Action: no action

The MAC address from the stock firmare is offset by 1. Define it
properly to avoid having to override it in userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts b/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
index 2b5c80d835e9..74161b76008a 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-linksys-panamera.dts
@@ -25,6 +25,10 @@ memory@0 {
 	nvram@1c080000 {
 		compatible = "brcm,nvram";
 		reg = <0x1c080000 0x100000>;
+
+		et2macaddr: et2macaddr {
+			#nvmem-cell-cells = <1>;
+		};
 	};
 
 	gpio-keys {
@@ -230,6 +234,9 @@ port@3 {
 
 		port@4 {
 			label = "wan";
+
+			nvmem-cells = <&et2macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@5 {
-- 
2.53.0


