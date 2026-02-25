Return-Path: <devicetree+bounces-268554-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OEfBFHSBn2lrcgQAu9opvQ
	(envelope-from <devicetree+bounces-268554-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:10:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AE97519E999
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 00:10:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7D3B730EE919
	for <lists+devicetree@lfdr.de>; Wed, 25 Feb 2026 23:08:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED97F377540;
	Wed, 25 Feb 2026 23:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ROp0mAMQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1BA5379978
	for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 23:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060937; cv=none; b=s7C4srGHbqvytaVo8TXPkOBdRHWfPfWi12PdJcvNjtMpE87Vo767SazcDoi83VnsX5lDJT+bTiKXzY2eCOqlawClWoSTV8onts1UDjifYsztElCyUvwCi2UEuvOeD5GyPB8bYWlxiDHd/8XlQuNHuCuAe65NZyygkE5JXsgLJXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060937; c=relaxed/simple;
	bh=zAIXDJRAhKYqTGyonWyLmT+IS69UFM8DNKZ6Evv6XAc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=dmryFzZiCZfZWU0bTk6vQg+dn1LqOBivLVsEw/TFztYpVOUg1KNrbYYrRcw3oiZeCESCN11FTjR2Vvlv4HkhNbTtZCP88EP9y/OgK5TNiaXTdmzGwmqvO0BxW36HnMNaggt0Db1/jgPppKOWKDs1a+cEeRwP9RqdU0uRVsmiTuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ROp0mAMQ; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2ab232cc803so780655ad.3
        for <devicetree@vger.kernel.org>; Wed, 25 Feb 2026 15:08:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772060933; x=1772665733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=v4ksg5veTfH4UKOvTaNGiraW9Qxw+IwBSdFr+sesLCc=;
        b=ROp0mAMQ7fuAsdaXRPoSNYvvDdFnKkNyA9tmSUHDkDGtMm7Rv+ef3AtVUmr8gdypAV
         Op/RZXylt60opCSZAQ0Ed5EacRPb1zpkL+8YkKKmBMMQJCt58oOdt8SoJwWXJ2bgwgsx
         Tv6iZQkx3nhsxOfjtJHjEz3KV6k+T0TogInZaQsNgM5n8knpY5IBAUKXyMsfS3Dvf/b5
         10yuoO6rHyl9Uby+LT8bXIGDegwJ9hJHn7IL10jca6eqqvfJvPB3klSE1r1gmpHgdTQs
         OWpizhs2WRyfVvKr35n1ojxTIkoENEp2xvZGmMvmcS7NmuEehNwqD13CdvQ6ye1iE4Rg
         vjJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772060933; x=1772665733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v4ksg5veTfH4UKOvTaNGiraW9Qxw+IwBSdFr+sesLCc=;
        b=ZVvSNWTDbGJk29FZaM8VD9zOz4c7sSynrEu9Zk4b2EjpOL8EmYaN3umsHme9GAjWms
         b14oHWpseY9qmueABk1pStBIA7lEoAEyWpua4LAWTUKpRLGJkuPQpc5a3crSWsLEGCgo
         oioROZVetjhUXpeDqjs/fpuwihOJYUB3ixu1pDA9p2/ISCVF87Sv820qAfebCqy7d+/p
         1s6GQqJqJp4x1IqBWvt/z4L/bst/79hrmfE9WUR9LPmtKnFbw3SBxiWDp7YINSSFNC5T
         GryseCON4h18Fng0DZN9KebYT2+b1/WS7Atc1GJoyB5nc3agfI/py9Xh5ES9Y30Yp79h
         0LPA==
X-Gm-Message-State: AOJu0YxeEcnA+tKC1OsKtzzFDtvOzgV3MGeBNP3pcwUUuEc7t1+vqe6O
	6zpl3e/eAfMf79lj1A2uFr2VeW3NOP1e6khuhSGJuzUozVhJKzqMameZeqQcDsip
X-Gm-Gg: ATEYQzypVEGKnK6XnFbw8YekG/If5rlxIwg6OxinCX8dLuXhIUF2lwZQe9a3fi1C2C3
	Ipy/yyS129X/b7QYgiLSSN9OF/6toEm6svg7ng9AeOKx/bo5WzlnZ2zOuwLkvqqgKnuc5FNRMMF
	6LMaN7+U8KGKuHFpLsGJ+1g53p8SpsYXP83bgugjmeJt+/eq7Tw8Mx6xM+e1KMpZjLu0YlkzOOU
	a0qF6qVgwSfKu3wUMP9m48GSlPlHEZq41CsA3gDkJlH8QqpnLmrYISwqY56kdrcPe3Fw4mhjl/p
	w3RUk2g9qUaKoPvHtEXH0GVXvj5CvrW3ywgD9+DmU4KxfwJPBjB8FZaCG/zSUIGKqaCIrPE+MvA
	YTZBOiGh9MZ2k+mRH+oXu2TctqqlZAelA+lpNIyZF7RMzOuWhkYjh2of9WfmtKGYv8MzW15GNZT
	E1PsuEwxxEDsPfYUScX2zfL0+Msn2CZ9Kq5hCfrF/pUwq7yo2CsrcFXg==
X-Received: by 2002:a17:902:f607:b0:2aa:d7fe:8603 with SMTP id d9443c01a7336-2ade99a2475mr12701885ad.8.1772060932773;
        Wed, 25 Feb 2026 15:08:52 -0800 (PST)
Received: from ryzen ([2601:644:8000:56f5::8bd])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2adfb5b2309sm3378285ad.19.2026.02.25.15.08.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Feb 2026 15:08:51 -0800 (PST)
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
Subject: [PATCHv2 4/4] ARM: dts: BCM5301X: AC5300: set WAN MAC from nvram
Date: Wed, 25 Feb 2026 15:08:27 -0800
Message-ID: <20260225230827.21715-5-rosenp@gmail.com>
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
	TAGGED_FROM(0.00)[bounces-268554-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.0:email,0.0.0.1:email]
X-Rspamd-Queue-Id: AE97519E999
X-Rspamd-Action: no action

The WAN MAC is offset by 1. Set in dts to avoid having to handle this in
userspace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts
index 01ec8c03686a..f7da8e58b8a0 100644
--- a/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts
+++ b/arch/arm/boot/dts/broadcom/bcm47094-asus-rt-ac5300.dts
@@ -127,6 +127,9 @@ &srab {
 	ports {
 		port@0 {
 			label = "wan";
+
+			nvmem-cells = <&et0macaddr 1>;
+			nvmem-cell-names = "mac-address";
 		};
 
 		port@1 {
-- 
2.53.0


