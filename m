Return-Path: <devicetree+bounces-274404-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +KOtBhY+smk6KQAAu9opvQ
	(envelope-from <devicetree+bounces-274404-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:16:22 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0BA26CFD0
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 05:16:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3465E3026B5E
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 04:16:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6ECA139656F;
	Thu, 12 Mar 2026 04:16:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="juJB3t64"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com [209.85.216.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5644D395D92
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 04:16:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773288971; cv=none; b=BHSYmnH1itZC/UPPs2RMpajNwP0V3eRULiavgDmUi8wVTO/ziHqcZD1E8zyzcUhTQmdoAhalZqRk7dDriYDvh/vAiWRhstqxXq0RY16B1sHld8bsE3axhUhIW11mGR5LwicrcbX+TMqIdjuanreubg8ekC1fHg9GQloGtBT5dXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773288971; c=relaxed/simple;
	bh=AHXg6HruFbieHArn7t6fTB9MRosgoYU7UzCl4Y+pnWc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=OsMh0EAxN0dUwHgfO7Xd9KEKn7NvBU461WIHL4u5UaNGficBxgR5L86KUAm0zF9JzlLo29U0PaHgK8swQ8CZxPRy9KmKuPHMOH0aFjorZvRDrcquIHypGsApC4ojy/eE/mhPEhA5G39qfa+6u/DPMQfusVJ+uC3TXuTJ9Vnf0sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=juJB3t64; arc=none smtp.client-ip=209.85.216.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f45.google.com with SMTP id 98e67ed59e1d1-35a04d6aeb0so350089a91.0
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 21:16:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773288969; x=1773893769; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a+7pbEDD3bhMWkuiSNGnd0Fi6nBQlzSd8LprMbyKjjA=;
        b=juJB3t64VwHZ/U0T3USMqVWH5K7Fa1uZ7wyzfuy+m2/IIaXAxU/iZgmBeUG7XdqltG
         qTULoSLHZVfCQ+3PPexaftwJ+dms2aLZPVFMCihkgL2+5wb0gKOVFsJncP2tEhjC0dCY
         bN56RHTfPvw7+aBZjogylIDT/JYsX2KrqS7uOKobCS/ZiO1TW/iLnbFKijkIkzuqNFkF
         kuvWgwZEsNCCelGRfPwp8hqUn5Aw4FXjgc+anxQ2hl7A8KVo9UFu7TVf5C043lpO4yIA
         2XnHaGd20D3qmZGDWG8e1g2FTyl7+6kPpcNkEpNDDKjW9pfyJQ65+8yMK3wCldCkKz31
         fZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773288969; x=1773893769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=a+7pbEDD3bhMWkuiSNGnd0Fi6nBQlzSd8LprMbyKjjA=;
        b=YzK/0+6126xyrZZSU2mPYBDmqxJi2T3lO2fSXWucBpio7HKJo+Mg3wz3V6pRRmcPCX
         bVW37qwBgf5OMRuKs/7PcLF3+Swol36dNJgu+x3YrV/s//hIZ76PXBHTT9VI10gzRlAZ
         XPALV2g4oJMjlYx6dXHmpFKVxqFDHB/UGratYmENPt/XN/f9kZvnMEVJcS+X0I/5/12w
         fh+dupYLIV5yPnC1yK1/mwMIwQUl/KhHBbCzrm9ACfbYEr69twMPNO+cQlSinyNt0BCM
         IAj5+G5dg5Wz0Owfz1rD1vjBIPW5QutSmOdZCjk1E0h75HAOGrMkfagJ2rJWBWWaQFzG
         h16A==
X-Gm-Message-State: AOJu0YzltkJDsPQiBr/AZOCC9Co04vj2XXOCTFby4AwQSP6Rk+66HsHl
	kSWWCdCCuwc3ZctJyN18Rz6YsT38pjzrTHMMF9qtvnX8k5vXTHc0HUHVu/75+vNC
X-Gm-Gg: ATEYQzy+8TZfZ6Ap25/w3riVWiHJuP6Kmnvy4uwg4pUp091YyteT8PnnE0fej6l989t
	608YoxwBrjRo5QY5M0jLJx6L6DIABVIifgeVc1VXcSN8OaLphJLdkpr/CjawrKB5dExxHdT13Qk
	Ayjeu8aUSQds5t0TlM7lk78zVyMYaHLtkvwVdubHu/y2kApfkMKm+jsD/Dc+ztaJb++fBOD7YAu
	GNb2AP2ABbdnccD3oWaNVP4Vtv2VPcOPNeoICZe2YoLiQx5H7/KKD66KS7MX8k1fYGkCuE+HIzY
	BRIZzM/1G/I+IevMBJ9DGZ6e0csTwO5CBihkAqInJMMWIxWMJ7lh2CpiusEnxO7rVKF5eANV5+u
	1FbKp/odQ1yGNgCgho7DWMqB5I49Qraxmm/AKFDopvaOT7nQIkFhXZmaA/DUI827JEDcvmXBXSK
	bfJ9sXCQRn1B6ZBmofXHg8HI+sVvJw8DvhLEZqeMWT97HjF4efDJwuFJf+XwHrO+ZxpJ6/2OhyM
	EBn18k=
X-Received: by 2002:a17:90a:ec85:b0:345:badf:f1b7 with SMTP id 98e67ed59e1d1-35a012cbadfmr4484568a91.28.1773288968665;
        Wed, 11 Mar 2026 21:16:08 -0700 (PDT)
Received: from buffalo-ssd.taila54753.ts.net (M014013071096.v4.enabler.ne.jp. [14.13.71.96])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a02fca40bsm5018229a91.10.2026.03.11.21.16.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 21:16:08 -0700 (PDT)
From: Akari Tsuyukusa <akkun11.open@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	matthias.bgg@gmail.com,
	angelogioacchino.delregno@collabora.com,
	sean.wang@kernel.org,
	linusw@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	hui.liu@mediatek.com,
	nfraprado@collabora.com,
	linus.walleij@linaro.org,
	mars.cheng@mediatek.com,
	andy.teng@mediatek.com,
	hanks.chen@mediatek.com,
	sam.shih@mediatek.com,
	rafal@milecki.pl,
	ben.ho@mediatek.com,
	erin.lo@mediatek.com,
	zhiyong.tao@mediatek.com,
	Jason-ch.Chen@mediatek.com,
	amergnat@baylibre.com,
	seiya.wang@mediatek.com,
	tinghan.shen@mediatek.com,
	Akari Tsuyukusa <akkun11.open@gmail.com>
Subject: [PATCH 1/6] arm64: dts: mediatek: mt6795: Fix gpio-ranges pin count
Date: Thu, 12 Mar 2026 13:15:28 +0900
Message-ID: <20260312041533.187553-2-akkun11.open@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260312041533.187553-1-akkun11.open@gmail.com>
References: <20260312041533.187553-1-akkun11.open@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_FROM(0.00)[gmail.com];
	TAGGED_FROM(0.00)[bounces-274404-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,mediatek.com,collabora.com,linaro.org,milecki.pl,baylibre.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[kernel.org,gmail.com,collabora.com];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[akkun11open@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.152.170.8:email]
X-Rspamd-Queue-Id: BA0BA26CFD0
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The gpio-ranges in the MT6795 pinctrl node were incorrectly defined,
therefore, GPIO196 cannot be used.
Correct the range count to match the driver.

Fixes: b888886a4536 ("arm64: dts: mediatek: mt6795: Add pinctrl controller node")
Signed-off-by: Akari Tsuyukusa <akkun11.open@gmail.com>
---
 arch/arm64/boot/dts/mediatek/mt6795.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt6795.dtsi b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
index ae2aaa51c9ad..134cfa77e3b1 100644
--- a/arch/arm64/boot/dts/mediatek/mt6795.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt6795.dtsi
@@ -371,7 +371,7 @@ pio: pinctrl@10005000 {
 				     <GIC_SPI 154 IRQ_TYPE_LEVEL_HIGH>;
 			gpio-controller;
 			#gpio-cells = <2>;
-			gpio-ranges = <&pio 0 0 196>;
+			gpio-ranges = <&pio 0 0 197>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
 		};
-- 
2.53.0


