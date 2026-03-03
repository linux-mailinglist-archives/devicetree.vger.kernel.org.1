Return-Path: <devicetree+bounces-270734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gG2EAeU5p2mofwAAu9opvQ
	(envelope-from <devicetree+bounces-270734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:43:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B041F6431
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:43:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C50EC30F6C8A
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA5AE37C930;
	Tue,  3 Mar 2026 19:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BAG4jnp7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E9383976B1
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772566753; cv=none; b=chF9mtZXSzuSH2RW9U2atgvnOks3v4i1kFZLVsfO69FX8M9mCtp5xwx5mODSQj5QMKESpH+eyJGEkOduJGoj5zLVyWTpeWSMttIPiJNQbbz9lOlJKxeloPjNmEniijkM06bM0YXHm9KivF8ajeKH5/JiOxwgsd+87t6sbQ9J31c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772566753; c=relaxed/simple;
	bh=TNhIc9Lye/4vW1qym6PCzQl43qapRGoa2f0lJ+ssKzc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Q3muYn5X6Q6SBUYXJE0PLRwoK3LennrVSyATPlgeDdGbGd2+V6Jo1H1sGvE4JGnKIvJraQhlXn1BFfftthjtcADVXIXkbmpeV0rs67C0OusPVfvHXh976D0W9hy3C4v4O+n672h2y2/Qm9wAxOtM/LyI7NaPbvFF3TVl5KENYk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=BAG4jnp7; arc=none smtp.client-ip=209.85.222.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-94dea0e029fso1796467241.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772566751; x=1773171551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hpAqgqnxsYIXlo7xalO5qgaLwP1g0ilpL3ajza9+KEE=;
        b=BAG4jnp758alY4MbpuTp28wvxPofHWeUzVKK8FRRHBGxuDMSS3x8r87OVhP71UN7iN
         m8HReN9yKYBwT8SSsBiNbAWtK9a1KkHFCvrLuPE38synpV3FM/WEF0S4Gc2V7hHvX++n
         LH8RJgtEQRDKgmHNBZdqL8U2YFevAH/nhkz9cFOy7B8PqiJW4yNUKnhU0bxskZmmoygx
         cvGwsoq2va82651pqaRsoyBVkuHxEzDDff6RGyP1GHip9+Zg9FfhlvefZjYuyWzcYPBX
         1dMiYj+3VHhoZDqfpj1ZlI+gjVD2oCewTKIclUP4YKOtMUcIjFuilQrcmL4iD/32gty5
         WtfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772566751; x=1773171551;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hpAqgqnxsYIXlo7xalO5qgaLwP1g0ilpL3ajza9+KEE=;
        b=eOX/uE0BJxwIqJPSobvCHoXiy5oFlZzizzBT0xysTmLMuypKfqFwkuo1OV5zY4TUxa
         5wK6N7QcZ6INXj98DlL+sRDNIEjaGsJNOC7g2MeW3D6jL+Wl0AORpnF0+tgDUhYYWh1h
         u4YViUQ+Xo3ity/TA1ZplQIdr6oqniSi0acUUhT5LoRClRJTXMZHjy8jS2SJJMMKEhq2
         +IEDh/RoDNhhL6wVZ+uHiN4cdyMJ7PHLpsKY5FDtovWmXq5VdJXJzVMZpZkolW0suCpW
         i7kkYXAG8/PtbUsaOzLEdYDOO7D15SKojCBNDgF2tjuDnX/oHovIZrw48NLB6Yv/kxmu
         FktQ==
X-Forwarded-Encrypted: i=1; AJvYcCVr3oAR/9huad4Z/Y5sxI1cLNs+EWljplwG6cp9/ARhMmHSTEKpmQkSizneX1Guv9Kw6kD8t66GXvW6@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2HCmp65qBEKTMR8UVGJRa1ndHxb8qDOKvlzjBCnM4aZPBsb/O
	9mDwbf1P5YtIHgcUmAzGWwhPUIYUFMhRp0fBAmQUWKI0chpMdmROrR5U
X-Gm-Gg: ATEYQzyVzRl5/a8iIw8f//0E5bi5FIles/wRLpssAZe6wUHsgc5BJbt+vuS2iLborPB
	lWxWCO+k8MhysVagMcSjZMfwbdQUeBRCTXcfIWbtIsz7H6ZmqPbHAULRRrrPZ7Nf7bF6cfAZ1xs
	8jLpU51fvPmjmK9rd2YtRgBTpNaCAsiLFUT1dMNHdBL2SEW6IHnWMb5mUPA8tq5cr35F8czQRPL
	NhvLy3nJVglF7cDTzu8MKXpqr0HwIJrqfvDbFeG9U+CJCNPUswnD5c8BZiy09uc7zGGMedkwVCk
	KTA7mvwYLBGqmAZ+vltsF6syz01RoAUtvOlI5xCAUdkBOgazR3pNbi6zXr54JJoMTU57dXpM6E/
	4blAxzi8UaPgNai6RcrKSdeR6yeCGNWxvyg4zYoqLmGL39SWInhDrri+b28UCYKeIHeBz476FWw
	N/ue/QWzaAbbH11PesmGC0MVloJ3gU5xfm1Af1nJ4ropLGTbTWxz91qxZAyUoHyA0VQaDa
X-Received: by 2002:a05:6102:1610:b0:5ed:675:e355 with SMTP id ada2fe7eead31-5ff3250f641mr6894908137.27.1772566751414;
        Tue, 03 Mar 2026 11:39:11 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:1b3:a802:8875:499e:12bf:3287:5753])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5ff1e7af30asm17780456137.3.2026.03.03.11.39.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Mar 2026 11:39:11 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 2/3] ARM: dts: rockchip: Improve the RTC description on rk3288-firefly-reload
Date: Tue,  3 Mar 2026 16:38:54 -0300
Message-Id: <20260303193855.828892-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260303193855.828892-1-festevam@gmail.com>
References: <20260303193855.828892-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 75B041F6431
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270734-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,0.0.0.51:email]
X-Rspamd-Action: no action

Node names should be generic, so use 'rtc'.

Remove 'clock-frequency' as is not a valid property.

This fixes the following dt-schema warnings:

'hym8563@51' does not match '^rtc(@.*|-([0-9]|[1-9][0-9]+))?$'
Unevaluated properties are not allowed ('clock-frequency' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts b/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
index a55270672732..8b491b002992 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-firefly-reload.dts
@@ -197,11 +197,10 @@ &hdmi {
 };
 
 &i2c0 {
-	hym8563: hym8563@51 {
+	hym8563: rtc@51 {
 		compatible = "haoyu,hym8563";
 		reg = <0x51>;
 		#clock-cells = <0>;
-		clock-frequency = <32768>;
 		clock-output-names = "xin32k";
 		interrupt-parent = <&gpio7>;
 		interrupts = <RK_PA4 IRQ_TYPE_EDGE_FALLING>;
-- 
2.34.1


