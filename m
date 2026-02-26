Return-Path: <devicetree+bounces-268894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGL9IQRfoGlViwQAu9opvQ
	(envelope-from <devicetree+bounces-268894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:56:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EABB91A8126
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 15:56:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AF4F2312A6A4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 14:48:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06CC936E46F;
	Thu, 26 Feb 2026 14:48:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="X/6+9LrM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB80736BCC8
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 14:48:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117333; cv=none; b=jtLL4wi6QOd1zfyATEO97C37ecJTUb/OPZ4hOiNt7ACE8Zssz4OXq80S2QBrEVS2jOpiI24xLdjhKtn4U5W/pTFf4M8m4QW9xM42nWndXXC5LV4UC0DnkFWvd1duExMopoMSWMnjnf9QstBta8Fth2+ly4/AD2QVJp1CPBp/dqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117333; c=relaxed/simple;
	bh=7bMcKSL7vkjDgg8pSDFHC93CCRqfvYRROpta7JK3Uys=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=BYsfCBE8+E/A9CE3fwgTFMl5yp00XK8AZtz4rQwtGToMEv68xmCX6hfxkHsx5IQJoqVsnucv/u4zMnbaXWigpQb3vwRsIQizKLDxhDaAs1+a4+0ByCv0ErDsrkK09DI8zonLwL1b2eNUgUKa42JXFBgi4myoWZG8zTpnHmmh/zA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=X/6+9LrM; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4807068eacbso8085045e9.2
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 06:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772117331; x=1772722131; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wFTR7lhD97LfedhQI2IEmT24MfcevcT3nwblhyoeQS0=;
        b=X/6+9LrMaCwbeMGL+AMq1OCPfrLbQUa7tpH1e7FTjohQ9PP2aD98XPi7Amwqc1cXaZ
         m2SiBF6NChnTh1lpsn0RsaomhVgyGgMlrgx37Jv4oAj5uL9v6oSdNVFgHc3JfZC/Ip/o
         nT6xKK/bxAeRmglAd78qiWQ5X31sa+ql57k/id/7uI3EXEEoTwDDNqox2nVkenIyP6ks
         X2CIkoj9M7OAw6T5Pm1FldLKtXowAJZNVE9N9iskuWFkieZDf0HTAh7wU7MEuonqKI9/
         gV48iZaBQg3KIyeOBR2iFX12KZqTk5OS3Vu4bLl8BSfp3sIsD0FKWloHmsKGVw+dzVaT
         qJqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772117331; x=1772722131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wFTR7lhD97LfedhQI2IEmT24MfcevcT3nwblhyoeQS0=;
        b=qUvkXCmtWJLGCzTYESF9U3XP33bLsjGhnfz37hcEsu50kuWHzP/MVxoHCuYW5kdwOZ
         ht5Rl6s/+/lRpOSbVAH+wv1EV5gyGnPIyysWYRsTui1ocXVXqc++aKXINqzvh8nGvE+Y
         e2Ku3LyKw3cbbV80iT5I0TwGnE2Ml8UlPF8jzzcH32puhZAEeix/gztCvyWhGP2mwl5l
         mavKe6MuugDPQOYDHChImjLV0pe7DleuGRGw+zQ05gSFGfoey/C70h5vwVrvNZRODpjX
         WS3uv2kEmvHgJo+BTpoDC2szKNF7B4wQFraYrsptxugKfvIrVQJYywgN++pIU4hTNPGv
         QxMQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrP1Cy88kw+HSqapNrfpbBmBiwTiBDg3l86SHwFeguYokaTs4f3WycCk/Y8lxEyzGE4uIJJbb0781o@vger.kernel.org
X-Gm-Message-State: AOJu0YzFFJAvZsZq6Lng4NxAdkqfn0qmblTXZNQZHAGpGc9csuQoduAf
	NftGcpUd3lWWFCL4jFRbLcvhrg4CbiNkpWrawxeGHod5kJQQvKPkCPV7
X-Gm-Gg: ATEYQzx0me9KWgOa5VebCi7/kjO0YPvYFBFTrwiG+LcBO9YReRr6KW8+vTjUD2O419+
	bVHssN8Vf5+LkkFD3PqpaVvklR7zumYnVNv0EL2kawHI3L1F19O/ZtB3yEcJd09tYt4IfKtTdG6
	wpvN6HCE5SC0K7eUei8PQBB1/OnBTom3RaflFlnlYoalOAVmoF/nQRxUGagHKvp3SvVAB+47hQH
	Hli2hd4/CGO5ODanaGDUZuuvVTipAPeskSX7ItjJngV4u10qHew9ScEt5Fi3evLiUkCHqDfAN9/
	ljcq1zMlz0Ps1qBilQX9vYQiRkq7pbQw7zAoFG/sbzUDe+MqGmwIvsiFZDfRQm3Vu0KxI4DR3dK
	bWCWPCny4cl2HpPTfBI1DuEnxm64sBc7UJ4FEe4VXJJBhydLcz+upcLwQVIXLybBZrOE0d18Y2Z
	QFFhYe0qBlOG4x3lY0wZUI3E1HiTOWENeTkbXEGv6tvrIDqeSZESWzzX8uB6ylKDnxWo0Z
X-Received: by 2002:a05:600c:8b6a:b0:47b:e2a9:2bd7 with SMTP id 5b1f17b1804b1-483c3de6856mr43250455e9.19.1772117330946;
        Thu, 26 Feb 2026 06:48:50 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4766:6506:d16b:e2d5:7fdc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bfbb465bsm91497075e9.3.2026.02.26.06.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 06:48:50 -0800 (PST)
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
Subject: [PATCH 1/2] ARM: dts: rockchip: rk3288-veyron: Remove invalid property
Date: Thu, 26 Feb 2026 11:48:41 -0300
Message-Id: <20260226144842.2727107-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-268894-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: EABB91A8126
X-Rspamd-Action: no action

The 'regulator-suspend-mem-disabled' property is not documented nor used
anywhere.

Remove this invalid property.

This fixes the following dt-schema warning:

('regulator-suspend-mem-disabled' was unexpected)

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts  | 2 --
 arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
index ade9cc291813..d7790eebfdcd 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-brain.dts
@@ -91,14 +91,12 @@ vdd10_lcd: LDO_REG7 {
 			regulator-min-microvolt = <1000000>;
 			regulator-max-microvolt = <1000000>;
 			regulator-name = "vdd10_lcd";
-			regulator-suspend-mem-disabled;
 		};
 
 		vcc18_hdmi: SWITCH_REG2 {
 			regulator-always-on;
 			regulator-boot-on;
 			regulator-name = "vcc18_hdmi";
-			regulator-suspend-mem-disabled;
 		};
 	};
 };
diff --git a/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
index d665c3e8862c..20fe84683928 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rockchip/rk3288-veyron-mickey.dts
@@ -246,7 +246,6 @@ vdd10_lcd: LDO_REG7 {
 			regulator-min-microvolt = <1000000>;
 			regulator-max-microvolt = <1000000>;
 			regulator-name = "vdd10_lcd";
-			regulator-suspend-mem-disabled;
 		};
 
 		vcc18_lcd: LDO_REG8 {
@@ -255,7 +254,6 @@ vcc18_lcd: LDO_REG8 {
 			regulator-min-microvolt = <1800000>;
 			regulator-max-microvolt = <1800000>;
 			regulator-name = "vcc18_lcd";
-			regulator-suspend-mem-disabled;
 		};
 	};
 };
-- 
2.34.1


