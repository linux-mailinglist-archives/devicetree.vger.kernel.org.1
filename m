Return-Path: <devicetree+bounces-267111-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mHK6F2PRmWmmWwMAu9opvQ
	(envelope-from <devicetree+bounces-267111-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:38:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id C37D516D2E0
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 16:38:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AE35F300D17B
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 15:38:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB11920DD72;
	Sat, 21 Feb 2026 15:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PLKam3uT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADF31E51EE
	for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 15:38:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771688288; cv=none; b=CHgyK6wWvuXUbGPXQ19KS8tOxYGkdVcnPxcKt3gVeNUU6fvweHbvavezoP9lNev/7rnCj49IiiZTrjiMiduEtpYLFGxEkKw2dzDFTyx4wPssgMYiUItJ9dFOxtzWOQ0Ce40CXg/ERdkbsEKu37Yg2UL232G3I8AnLe8e8fttHmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771688288; c=relaxed/simple;
	bh=I7868sPszTei4txAPoyMzN4eaLUnwlLcMEc7tKvXJII=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=Ypqm5N/6EDFqLE3Qga1Uxd44fDiTSyDO7D72kSmlCILhcnJ3Yu2SO4DdzhURpdEsY+OKOsnICg4BrLQjxOFHhXsqM6Wa/tQJ4vwhTQmu9Ko53GJMHIjU48WR0v+l4LRlXRJXIPbB8jyIhzEdoT6nqTIQgcE8XZ1UYgxLHJKQ2Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PLKam3uT; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-48378136adcso18016695e9.1
        for <devicetree@vger.kernel.org>; Sat, 21 Feb 2026 07:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771688286; x=1772293086; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=1C6wqAZkg+qYLWxDPzpBxDFvacIIFmmcW1UcM8dpNUY=;
        b=PLKam3uTnJqyeUJh3SFEqjKELah8UwxivcHxXrdWhEH5gAwTzrjLzUi53jCrtgy5aR
         /ruDpAbwYBZ2Wj2AhMxauhFWUMGEwfwFD8+2mQc2o7N9t5XoUHjD6BXBY8SZRjyW9vFn
         sQyS3BVaL0M7wAN3LfheDC8YS67AziGrS31tQiAtCLZco2YmLtlpzqKZLa0gm6SmKLVN
         pxK0XiSldaZRyNs+9RhvwkKarJpvA0A/nymuDpriZ4glIJUgsugb8YrhuC7wniy+mutU
         B/aSjGP6oTqLbstoGsWJvAOWLl3E4JCT9vTTfDFd2RGX7IQ7rFhzboukvH+ljIXjR/PO
         N0+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771688286; x=1772293086;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1C6wqAZkg+qYLWxDPzpBxDFvacIIFmmcW1UcM8dpNUY=;
        b=pY9FsfQK4be4ys3JOQDxSTyRywh7ujg6Cv6MryWyxTz/fedNHzbMt+VeI3nCPsZMZc
         om7+rYHK0FHJb1BMruVeNQ9skbL0ez6uDNroWwrPhbG0nQrH2unXdpTTDxgJNcymJRG6
         2v/0M2KytwwfbdnAx1yg5Q+fdSaLLgAaYlcHO9jKCNZ8JN8NjU/dRjsoqxIs5t6olszU
         tn1hWr6jLVoJ5AZ6Ih1jm5F9qPvEQVYgDeglfxsGSzPGsCK9qAC0m/Is/XotBSe8CHeO
         +3qgXDcplH4h/9cnTlD7HquCCQyKD1DR2lvbg4JMRtZhCuIPzhC3C0mKxecP4kvfN+K5
         59Qg==
X-Forwarded-Encrypted: i=1; AJvYcCVapE+8+3wqp5KlvvN6ffkOaQR/e6nz54QpPtPGmLPvXoh1lD//XGbVTaa1oLQ3ylMml0i3d4TWuSjY@vger.kernel.org
X-Gm-Message-State: AOJu0YzcPc7pVD3CDDRgas7IxHJkV6xXNFM2yvlhstMtzByRJ0+3cdB/
	3NL2hSXNr+Vy1OWei9b2Mkyq+/uE15aXD7uHWdKXc/ztJIIcuhjKjzku
X-Gm-Gg: AZuq6aKeT+qvdk8zJtvpRgcH7a50jR9VgSp6Jh6OXrgqPioMjX3eaT5SthHwH2Iz7l8
	xp87TXTyHzi85ko+XFNzEgnz8R6Ha31BQKSuQZvEnRhhEZ23l7pyhBHvZPiXki64DGazToReIur
	G/h2izv6a1zocE9rlecZzEJdyUnKjvl9h0EBMEvXupjnGZPFq4pgRzkEJbuD+waVMYrRt58C+nF
	XP/9c+bY6fljHRBlwfHGNxtBTSqyX+u2HdNZwRKPF7jAcFFDT/bM1hWDUYPbBCV8GrsX9g6HnGJ
	A4nzBlwBUbhshRC7q7AOvNMKU4o183tr/J8kDrZ6KYwI3Z405gdGOPYLTwLS+SZuX/5xf7/TN7j
	7d2xJIXnQAA/ES3KkDDKug299c4Pl9eYnlVOdhJJB9PBTsPKISsofF8UIt1IEA5IBKfKvd/4S8g
	h/OZ/ykTzRHrarV9rqWFAfbK7HWpMhWcc1Gf6iWgl7NYOLGfMu2vMTug==
X-Received: by 2002:a05:600c:4454:b0:483:80b0:b245 with SMTP id 5b1f17b1804b1-483a95f89c2mr59922825e9.9.1771688285478;
        Sat, 21 Feb 2026 07:38:05 -0800 (PST)
Received: from [192.168.20.124] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-483a3dd3391sm86456335e9.1.2026.02.21.07.38.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Feb 2026 07:38:05 -0800 (PST)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Sat, 21 Feb 2026 16:37:59 +0100
Subject: [PATCH] arm64: dts: marvell: armada-3720: drop
 'marvell,xenon-emmc' properties
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260221-armada-37xx-drop-xenon-emmc-v1-1-3110e83091b8@gmail.com>
X-B4-Tracking: v=1; b=H4sIAFbRmWkC/x3MwQqEIBAA0F+JOe+A2mq7+yvRQXS25qDGCCFE/
 550fJd3QiVhqvAbThA6uHLJHfo1QNh8Xgk5doNRxiljNHpJPnocp9YwStmxUS4ZKaWAX6vfYfx
 YmpyDPuxCf27PPi/XdQNoR81SbQAAAA==
X-Change-ID: 20260221-armada-37xx-drop-xenon-emmc-9514c385e766
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267111-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com]
X-Rspamd-Queue-Id: C37D516D2E0
X-Rspamd-Action: no action

The 'marvell,xenon-emmc' property used in some device trees of Armada 3720
based boards is not documented. Due to this dtbs_check throws warnings:

  .../armada-3720-atlas-v5.dtb: mmc@d8000 (marvell,armada-3700-sdhci): Unevaluated properties are not allowed ('marvell,xenon-emmc' was unexpected)
  .../armada-3720-espressobin-emmc.dtb: mmc@d8000 (marvell,armada-3700-sdhci): Unevaluated properties are not allowed ('marvell,xenon-emmc' was unexpected)

Apart from the warnings, 'git grep' says that the property is used in
device trees only:

  $ git grep -n 'marvell,xenon-emmc'
  arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts:85:        marvell,xenon-emmc;
  arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi:81:    marvell,xenon-emmc;

Although handling of the property was there in an early version of
the 'sdhci-xenon' driver during the initial submission [1], but that
part has been removed in later versions.

Drop the property from the affected device trees due to the reasons
mentioned above.

No functional changes intended, compile tested only.

Link: https://lore.kernel.org/r/0390e7a05b6163deabb545f93729ea615eeaaee2.1477911954.git-series.gregory.clement@free-electrons.com # [1]
Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
 arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts     | 1 -
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts b/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
index 070d10a705bbdf74cd63f6229f214b945fc78699..a313d5687789e349a1a25d69ab4bfbd0927dd060 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-atlas-v5.dts
@@ -82,7 +82,6 @@ &sdhci0 {
 	mmc-ddr-1_8v;
 	mmc-hs400-1_8v;
 	sd-uhs-sdr104;
-	marvell,xenon-emmc;
 	marvell,xenon-tun-count = <9>;
 	marvell,pad-type = "fixed-1-8v";
 	vqmmc-supply = <&vsdc_reg>;
diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
index fed2dcecb323f0541d076988164f12e68ed37fcc..37e16fb3a3832292484d602c386ec7ffec1f55bd 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
@@ -78,7 +78,6 @@ &sdhci0 {
 	bus-width = <8>;
 	mmc-ddr-1_8v;
 	mmc-hs400-1_8v;
-	marvell,xenon-emmc;
 	marvell,xenon-tun-count = <9>;
 	marvell,pad-type = "fixed-1-8v";
 

---
base-commit: fcaf733ca526b69595ed1d227e2cc59ddd24eff7
change-id: 20260221-armada-37xx-drop-xenon-emmc-9514c385e766

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


