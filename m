Return-Path: <devicetree+bounces-260790-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eBKeMVMke2nXBgIAu9opvQ
	(envelope-from <devicetree+bounces-260790-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B3D92ADFAB
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 10:11:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CCD7A300CA35
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 09:11:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CC2037F8B1;
	Thu, 29 Jan 2026 09:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NtpTDgsS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349F237F72C
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 09:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769677879; cv=none; b=HSDWKp8E14wvkphH7nogvvESlbm0KRAEOCOTAYmrxB/l4VjMF738F/6wFPG2ro493JSguArkmJOCDEbygYiia/vblBbdRrWZhncr7yjkLiqakj9vRsskASCF52W3g0k7+PpGo9yxNe/gWgXiTiDTE0X0IglaSgT2qIKZy34l9BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769677879; c=relaxed/simple;
	bh=l53JAl1A5TRe2s7pqTepmBMNLndaNxM1i2f8fJ+CJTQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mr7MlTblLWKWVTtGJPiOSm00HAUa9g0j6YMK9KhIcjAQHYQ3432NtXp7BLAT1Nrey740mbfWYvzXVs7rrm8mTZbwOjUWATqBTcraO2Pq0h9u6QDCA84m3vNCP3HSz934DRPz2mxXKVJ7GLen1ZzGp+taqP5BiQtax+qxhOwXQm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NtpTDgsS; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47ee07570deso5704055e9.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 01:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769677875; x=1770282675; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Kt7uEiXTlV6e7nA3ca7sq5Y8eWxdpRVOenYUuxl1aik=;
        b=NtpTDgsSJA3amImCWdi16FNcBLuT4nXqexsIOau2mz+lUE0lkUWIJg9Qg3UO65gQez
         kBI9n4JYAYb/EcpvmKBOS+I57U39vREl5P3sFGCJNVk2npi5dNyaF5RWW6L86CUxe0eR
         uc44wYMLjIhdQ7WZUr2jZaI3td9cg2VlxnXl59l1+s/RtCrkSimWCRiMUpiFqAhjJbbf
         IX0mqQWEMvYIeudyerdZmQkGMpUpKft0WeVSHSEGzYV9+mfDX7iSEV9U0GisybnvBv2u
         v7Y4SzTsxqP1ytvbA9S/UYWnRlZYxLRkG59POsWee/AWsNjX4AoeOSUtH9fZluPVNLgy
         tocw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769677875; x=1770282675;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Kt7uEiXTlV6e7nA3ca7sq5Y8eWxdpRVOenYUuxl1aik=;
        b=hkv32cSSsYCItsGTpuMW5VpfhVorjq7UPnxnTGbmddPcEINU9j3afSUGpD5d8g0G8m
         IfYJzjArPdma4HFgTxfLm0bPzYaayCCuBk9z4dEE0n7a+7Gyy+LpYLr2MTks8zEB9MeS
         CG4MyX1yMSMqRyutAptUavNjgL2W1SfxCNP0rjfZ1xcFh5oHTgEjR7oMUx7nwNMDyPWI
         sFh9qgUPicfYQDFl8XnTL830PHeYRlDrE+8ueqorRkUTnIvJI8VcVA1ndJ5R5C3tWVcI
         ujdAH80UHf9LV1qwPakvVBC3yoZWKAFQ8JRpgCCKb8b6fPRqg+8OlXnMlsaV9eM4C757
         hmpA==
X-Forwarded-Encrypted: i=1; AJvYcCWJRxeauLyUPZhUvV6hmMdbuR5BG9xdJ42qF3LM5itDYaF2cEvPN/kjZ7sFt8W6Uw6m6xF2hnisUUGJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxjQ+ZQf38EjL1YnmlEE1a6fUY6RbfVKHKnNdBssvlIk1Xr9h+n
	JXiTZ72eA4M9jljfCIB5a5BDfRqt9lYRdnj+ZYZvOqWZXVKyuEkovHCk
X-Gm-Gg: AZuq6aKTxmDijHnNcT2adhaJKHV/errqEPhslkMztU777cHT2X7A/LOquqlbkHKNtDa
	q6Xo7mRuv6YFP68NCtJ7vAp/O+0BWjVqBNrf30aSK8ABpuve/yEG18OO5OyYXyVhXPtK6AEo6g9
	GY2KVxxC16AfGhCtRNbcbtCjO+W4NB0J54SVaMZU6gj5CumnDzDd/Nsb7g5BdL0kGqqmF8ot4iK
	OAett9plJgoMbvb1sux1Tk9fCQGdFOOaXi0R1o6P1Zr/8e9ZvSweZKFmxTi4NPj+LGEbik/eGgg
	qIgSynAglMWIynmTy3WnJWXWz8sDyU51GyqzXpK6/rhTbEgMyGN/CNFADLB+HVufVLMG28ETWvg
	YBooSWtmK2YYi2XlUIFiVreF/le7n8DCvk1jwpXiafwXT05UNDnGZlavC6bS4hdj32iWAIXfOT8
	l1ZUUNBi4+87ybdquO
X-Received: by 2002:a05:600c:4fd4:b0:47e:e807:a05a with SMTP id 5b1f17b1804b1-48069c98d9fmr93495945e9.33.1769677875090;
        Thu, 29 Jan 2026 01:11:15 -0800 (PST)
Received: from biju.lan ([2a00:23c4:a758:8a01:5792:2065:403:a80b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066be77b5sm175338875e9.2.2026.01.29.01.11.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jan 2026 01:11:14 -0800 (PST)
From: Biju <biju.das.au@gmail.com>
X-Google-Original-From: Biju <biju.das.jz@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Biju Das <biju.das.jz@bp.renesas.com>,
	linux-renesas-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>,
	Biju Das <biju.das.au@gmail.com>
Subject: [PATCH 8/9] arm64: dts: renesas: r9a08g046l48-smarc: Add SCIF0 pincontrol
Date: Thu, 29 Jan 2026 09:10:59 +0000
Message-ID: <20260129091108.95277-9-biju.das.jz@bp.renesas.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
References: <20260129091108.95277-1-biju.das.jz@bp.renesas.com>
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
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260790-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[bp.renesas.com,vger.kernel.org,gmail.com];
	FREEMAIL_TO(0.00)[glider.be,gmail.com,kernel.org];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[bijudasau@gmail.com,devicetree@vger.kernel.org];
	RCPT_COUNT_SEVEN(0.00)[11];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,renesas.com:email,bp.renesas.com:mid]
X-Rspamd-Queue-Id: B3D92ADFAB
X-Rspamd-Action: no action

From: Biju Das <biju.das.jz@bp.renesas.com>

Add device node for SCIF0 pincontrol.

Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
index 86db86335d5e..2f918830b8f1 100644
--- a/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
+++ b/arch/arm64/boot/dts/renesas/r9a08g046l48-smarc.dts
@@ -35,3 +35,15 @@ &keys {
 	/delete-node/ key-2;
 	/delete-node/ key-3;
 };
+
+&pinctrl {
+	scif0_pins: scif0 {
+		pins = "SCIF_TXD", "SCIF_RXD";
+		power-source = <1800>;
+	};
+};
+
+&scif0 {
+	pinctrl-0 = <&scif0_pins>;
+	pinctrl-names = "default";
+};
-- 
2.43.0


