Return-Path: <devicetree+bounces-277559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yKzqIp1zu2kdkQIAu9opvQ
	(envelope-from <devicetree+bounces-277559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:55:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E98BF2C5BD7
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 04:55:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5E5E4315712D
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 03:54:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 690893491F5;
	Thu, 19 Mar 2026 03:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Fu79RbvP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 761A933BBD2
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 03:53:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773892441; cv=none; b=pyAAdjfrx1I1QGoQPgTtKOEhNZOKNZK+0rWGTBEvFD+KCvEXY3FO3QZpC9XgkOJZ/qnuHl+jCyx/FlrfiuekTQAHlbXeWOPoiDzGcn5bZRyGBmisJGBSd0tcB0D75Uv0esh5BOxi7YJzTXAvyBpqioYX78TsVMLGsA3h/u2p+rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773892441; c=relaxed/simple;
	bh=klhMHuVpGd/rhVdAZe4iRc7tGTgbd9SIhXdCtnCGRxo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=DQdXZj/75/I3ENlffNbqeCgTb77uxGuOkCSrcoVDfMWcFfIQgm1Kg4ntjcrFr/j68Vl4cDKCw41Hv7ppWknFI4aXNkP2L+VPYS1NOXgeAJ61DnoCkVy0kbVSLYM22mYJAy7wrNoQGE4ICqEgqNreFbSArEMaepX05XkDA/OsitE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Fu79RbvP; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-35b97ed057cso353819a91.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 20:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773892430; x=1774497230; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rUnbmXHqSDL7dPZI/Qu8hE1Nu6Gyv0faqBQ59rr7QWo=;
        b=Fu79RbvPzoIityZHhaFb91hS/ALftTTmA3vnoBQ2qWQbBqoecM2UHnaacenId/tw0a
         MVtVwSFysyqHkoa4zxth/KHlCMWkhBu17Ny375B+h7Bbw67fhhHvZOwL934FdeVGHfmq
         +kDurj2Gd3ZOFcX1GOdN3pxKlHzPTfNKuUeJNv4BexBDSA9qv8b59QpQ6LACO3dbdqZa
         KDED/5uuY0/kbEAZoEal36Si0QrQTVcMk8L1IprrJgi9I5WOsWBFaFAuE/Rud6qelbPM
         mWufkVVBJH1ESz81W/YadfaAAWTWmolbB0wPftRsULVJih/rtjWP8yKBrwnAl80wPWVE
         ZYmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773892430; x=1774497230;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=rUnbmXHqSDL7dPZI/Qu8hE1Nu6Gyv0faqBQ59rr7QWo=;
        b=GGVEMtrlR69SqQDc3jwZ4vGW4QoEO6+qDcXsfy7FnQOAzU3ZqR0qEAJWmXA4YXzWD5
         nLCp6dq+rn0TU+TbwsOmektwsK/Wzjzk9niCHSBpFv+xCDbhpA1zbGrPCEGSOYMfmH/O
         eKDo+8hNvkLUis/OnlsDC5GNm43ZucndlpNE6pLxndf4eCp0m5ktbAYEzTyexi9ZQfzV
         9pWdqLHxvMzQWaORVdx95q24Debo+5RpbpYp7hdxcn5nL5htYQ3ZoKfiIOU/oIFKfmmv
         V3Vui1/5dUx9Xh7jUVT2Xa2GAoQjvWDJvzyHWXBJURO8UGSqAkLEQmLb3BDP8/uMy/Sv
         MMLQ==
X-Gm-Message-State: AOJu0Yyx8uaMKT0McNbks+KIHyVoMRdGN4O+xSLo/hzBFRKRewmGhhxh
	pQ4o94STqkS0XRyDj9K+EClDRHsSuR2U2gBRwHhwPzSOR0rD2QPWJQT+LA1P7wE3
X-Gm-Gg: ATEYQzzLxEnkmFXlDgmtfrHDSMCBagDllM6b+6VKMNP3saSCduve+NUygAGNVIknokJ
	dWeYJUrm7ZtXxc4iFW3UhsMR0VBsQPfWUCnJETWSd3jTld2KS/uyFUikQyLvOcOTUpAsbC+pwkr
	IDDhc4lwfWYR0JKXr90YMoHSrCvX1OYgT4RlaJR/jL+1ersSN87wU0CaFlcNwy7VG/WCu6sXNwE
	P1/snuzZlR+WIDqfiWlUfj81H3yJFdWo6Zn79r1C1KlQtxd0yr7USCGHCqjTHsVPgbaWQJKb3p2
	3K0k57yPwQ+9uu6C9JUVHwxXfRCkr0SLKqrXK6DhkUJ1lAfZ5K5IZ13grN1hKTF6Yq2j2tGPRsK
	zX+1TmfHClz48tO4C89diA6gjwloz+bgQT4p5ZQp2yX8Ze8cMSrz9/0Dc71aLsvNIGfbYQbzZO1
	cRTx1RGLt0CleS8W6hjEy3j/Zq10sFYhTeWqG0RmAHrPQfbVpRL8n5aOc=
X-Received: by 2002:a17:90b:5346:b0:352:f2a6:334 with SMTP id 98e67ed59e1d1-35bb9ef6093mr4927666a91.16.1773892430381;
        Wed, 18 Mar 2026 20:53:50 -0700 (PDT)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35bc60ecb30sm1159145a91.12.2026.03.18.20.53.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Mar 2026 20:53:49 -0700 (PDT)
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
Subject: [PATCH 6/6] ARM: dts: BCM5301X: EA9200: set MAC from nvram
Date: Wed, 18 Mar 2026 20:53:24 -0700
Message-ID: <20260319035324.269905-7-rosenp@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260319035324.269905-1-rosenp@gmail.com>
References: <20260319035324.269905-1-rosenp@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[broadcom.com,hauke-m.de,gmail.com,kernel.org,lists.infradead.org,vger.kernel.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277559-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[rosenp@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-0.838];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email]
X-Rspamd-Queue-Id: E98BF2C5BD7
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Especially needed for the WAN port, which is part of the switch and
inherits the MAC from GMAC2. Added extra definitions for the wifi
interfaces to make everything clear.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
index d8aab570dbe8..8037eac1c3b7 100644
--- a/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
+++ b/arch/arm/boot/dts/broadcom/bcm4709-linksys-ea9200.dts
@@ -115,6 +115,8 @@ wifi@0,0 {
 				reg = <0x0000 0 0 0 0>;
 				ieee80211-freq-limit = <5170000 5250000>;
 				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+				nvmem-cells = <&et2macaddr 2>;
+				nvmem-cell-names = "mac-address";
 			};
 		};
 
@@ -129,6 +131,8 @@ wifi@0,0 {
 				compatible = "brcm,bcm4366-fmac", "brcm,bcm4329-fmac";
 				reg = <0x0000 0 0 0 0>;
 				brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+				nvmem-cells = <&et2macaddr 3>;
+				nvmem-cell-names = "mac-address";
 			};
 		};
 	};
@@ -140,6 +144,8 @@ wifi@0,0 {
 		reg = <0x0000 0 0 0 0>;
 		ieee80211-freq-limit = <5735000 5835000>;
 		brcm,ccode-map = "JP-JP-78", "US-Q2-86";
+		nvmem-cells = <&et2macaddr 4>;
+		nvmem-cell-names = "mac-address";
 	};
 };
 
@@ -155,6 +161,11 @@ &usb3 {
 	vcc-gpios = <&chipcommon 14 GPIO_ACTIVE_HIGH>;
 };
 
+&gmac2 {
+	nvmem-cells = <&et2macaddr 0>;
+	nvmem-cell-names = "mac-address";
+};
+
 &srab {
 	status = "okay";
 
-- 
2.53.0


