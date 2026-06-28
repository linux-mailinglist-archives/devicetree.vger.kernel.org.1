Return-Path: <devicetree+bounces-316597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PKysCUaqQWr7tAkAu9opvQ
	(envelope-from <devicetree+bounces-316597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:12:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F136D53DF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 01:12:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=jgiTZzpT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316597-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316597-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 0E79F30028E2
	for <lists+devicetree@lfdr.de>; Sun, 28 Jun 2026 23:12:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD90C374721;
	Sun, 28 Jun 2026 23:12:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D644372EC0
	for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 23:11:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782688320; cv=none; b=FEc3+S3LMrdh7sCKxganztz+abXfnhuO2RhDYxflNoEufRU8iuTFYb2rcjIHR6SHzg/MMv7CUlf3j5pVOtCcbeBOlz5rRanfO0h4xtouIdFf0Uj5twuY7x6oHgCX7kMsrcssY6O8vTb3zwC4Kar4qhppoJWZdn1YzteofnLM6Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782688320; c=relaxed/simple;
	bh=CvHPMDa7QE/yHwktpTxBRGqeWFMmQqfmtrdztWRRuvA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ngoZUyMQSfz2jFDn09XyuZrV8ct33aQMGT2tOtBVw2+zcWNKXFXMcF3aaIKTbn5/+nKlVaoGTMVV5C6NOlUcZzpQr2Wddt9n5Ut6Ekt0spK8YDMNY8zIKZgoJZjy8WX6OePvBKBYPlEhoGBD/tjGweeJUv9kdQfP1We/5bxpTW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jgiTZzpT; arc=none smtp.client-ip=209.85.210.172
Received: by mail-pf1-f172.google.com with SMTP id d2e1a72fcca58-84780c95e2eso175952b3a.3
        for <devicetree@vger.kernel.org>; Sun, 28 Jun 2026 16:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782688319; x=1783293119; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HBzVoiVEKC6YZTZ3TI4LBB+zvfVWnbKnaW6nuLVCnqQ=;
        b=jgiTZzpTh7yPALwYj+Zody76pGsWBO9on7JwJMPWyJ5ytptVTtvTQDceRExb5T1K59
         tD3/7kH5eQwv441LBAQqEQgMHSY/Y1Cc0Pk7iTjY/uzs5w/Uy6X33rDrkrfMjSfin5kq
         Hgx9trQBRGmtd8HG7tffsiELLsJEmxO1gn2+e8q9bUIv/Z8LvNbOpAI9CjFNMSI5vQHF
         VoNNaUoPNaBpnD4hVLIQX7ugkkqtbQ6UUpSBtSPvFKLv6qb74TAfkaXGZTNcymFEL3Lm
         j/QknfK6CD4zzvbz+epydo6LcyV8GhvvrdgeyEPkuwKNuMedptYWGnXYTekyF/tsbE/t
         SI2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782688319; x=1783293119;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBzVoiVEKC6YZTZ3TI4LBB+zvfVWnbKnaW6nuLVCnqQ=;
        b=SXQGRKVU5sZNaNpU3SqgVe5m2l26iou1IXwd0Sc9jBWDMu3vl1xfLRn7QYuYzkezw0
         hffJQ/6kgQgDq7uILQ0hZ0JxWWTHrWsbQd+CdrEgTYPCZi0HXtlG5nXN5ZdrB6ZRHaAG
         PFtc6dokmbhi13NYLOb///yum7eHYoePpHho07J8X96KvdANIRYE17HEoWbQaZH20oPL
         BwNcpsyo5O+EOnG9VG0XxGTD6uIujrVX5akaeqqXGaV2jk3aEOK8sQ7uVI0Z9dCsN5Gj
         9N+LQ4JuN2dxHHemfoKi/2BqoszeGeN1fUh62WqExG508flrJnWfw8KLKhrtbdAluGMa
         CQKA==
X-Gm-Message-State: AOJu0YxPRcoCiJj8iKCGMbCBGFSDzmsDdozRvCNb8afAZAjIaLDX4ys7
	OEp2ZoxDnvlOxTzu2AMX2c2IVSHgX1jnGe9FKgOkNIVtLWo2aU0xY+ug7Eiq5A==
X-Gm-Gg: AfdE7clw2tfYeE7q/TQWqfSeCafcMC5EFDJOHy7iDMOOESHHEIs6CxD4zqkhMCNheF0
	pQuujhqxpEBlYEjc+BUfd4rkvFzudN9V8MNDKLFPsbHefKqxydeAXDCpibalFk8v1wc8o9Pe4Uu
	75YW0Joz0gSDSw2IrMgz1ufUTioriXlzLTEzBt3YgMJZMuxVwjAiN1ZTrteKrI02qdPw37zKfby
	B0vVo+Z0xy97cU2iwI3ophukBbOZOsab1n0uUdH8buLy6H1z2GEpVRTUqxu2mfUtKZzZVI0KXzV
	dYmhBKDyc0oBUoBUQOft0RLWEdv6TbxV4Fa7KEhqxiwyWvILnbOXJVzgFf4K8cshRjmaSDgsIqb
	KT6lCVD+SRPufjEAT1zmite1CTYVV8bcKVBHGD8QpE2iJaUxJoEs4TXD92EaMr/Dyw/5hXSEmAj
	/0e+zZsmGs+HYu4YXpOXPcYiD5c7td8PNUgU5xmYRz+t7w8toqwmr5yeoW0Rc2WCRhLgpPEXi/x
	yIkUEnLNA==
X-Received: by 2002:a05:6a00:b90:b0:846:f517:ba5a with SMTP id d2e1a72fcca58-846f517fca4mr2671001b3a.28.1782688318921;
        Sun, 28 Jun 2026 16:11:58 -0700 (PDT)
Received: from ryzen.lan ([2601:644:8000:7a86::e34])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a3fec0f7sm10450263b3a.22.2026.06.28.16.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2026 16:11:57 -0700 (PDT)
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
Subject: [PATCH] ARM: dts: BCM5301X: drop extra AXI bus ranges that break PCIe
Date: Sun, 28 Jun 2026 16:11:56 -0700
Message-ID: <20260628231156.1254012-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.54.0
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
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-316597-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:devicetree@vger.kernel.org,m:florian.fainelli@broadcom.com,m:hauke@hauke-m.de,m:zajec5@gmail.com,m:bcm-kernel-feedback-list@broadcom.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 19F136D53DF

These addresses overlap with DRAM on BCM5301X/BCM470X SoCs, causing the OF
address translation code to route PCIe MMIO accesses through the AXI bus
space instead of directly to memory, breaking PCIe. Remove the extra
ranges to restore the original single-entry mapping that only covers the
AXI peripheral register space.

Assisted-by: opencode:big-pickle
Fixes: 767012397976 ("ARM: dts: BCM5301X: Describe PCIe controllers fully")
Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm-ns.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
index bd52de0faa3e..27a97c8122de 100644
--- a/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm-ns.dtsi
@@ -95,10 +95,7 @@ L2: cache-controller@22000 {
 	axi@18000000 {
 		compatible = "brcm,bus-axi";
 		reg = <0x18000000 0x1000>;
-		ranges = <0x00000000 0x18000000 0x00100000>,
-			 <0x08000000 0x08000000 0x08000000>,
-			 <0x20000000 0x20000000 0x08000000>,
-			 <0x28000000 0x28000000 0x08000000>;
+		ranges = <0x00000000 0x18000000 0x00100000>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 
-- 
2.54.0


