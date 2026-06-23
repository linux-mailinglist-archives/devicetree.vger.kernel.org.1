Return-Path: <devicetree+bounces-314904-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9+k3FD2tOmrcDQgAu9opvQ
	(envelope-from <devicetree+bounces-314904-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:58:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E156B881E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 17:58:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=Gjwj0sXu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314904-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-314904-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D5AE930F2A8C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 15:56:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FA8B309EF4;
	Tue, 23 Jun 2026 15:56:07 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D857C3090C2
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 15:56:05 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782230167; cv=none; b=TrFmxpyQmavAnJOh0RiwAYDub4aurnqMLvlPDkwHmfU2P2Hic0WIXmqLkjtREquq/MqDwCIDEo4wm7ErDJDbbfyvHGLTsmtnYHnnFWpgQwZepaeIm/0NAbzD1DDZ1Gb9TwldPFocZR+CAw6zjN/H+8Pf9e/+V//wvxLtab6vZaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782230167; c=relaxed/simple;
	bh=y2KXMCDWXXGemV7yWHnHWQ2qnuKVqyDX5slmjDbcZ/s=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=L7tXqsoEDp+BcUtkNz7igZKYcAeCI6ZnmgQwSkI302pa+GliRYDuF28wOjCVVHPs+yINtOOqCK+SZ8dTBMz7/7z3E5prKujRbkekPJ1jWXt/xCACwsqge8rWlERH0XLXVubi/wFV6e7nhCh5As+GHHzb9y+1gBUw6snj6vSWU8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Gjwj0sXu; arc=none smtp.client-ip=209.85.208.178
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-396771119c4so53229501fa.0
        for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 08:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782230164; x=1782834964; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CkFtVL7QRxrKD//LGq3+L1fKIniXMCP2r3Lzcn90r5g=;
        b=Gjwj0sXuwu7MIMNRV2YD2V1Oh0b6uiBiGEBjkcAzLNcI8YVvGOBIiUkxKrgiwgGOrj
         XPwPTzz1L6aWCv0VOiqEXAj9V5AK+KS8x1rHSgHXsIw8EZYtmfP7q7Xp1jcZu7zPZ8Kr
         83CR9R0Y1Mi5mhcCWO6h9toXygT0UKN1ljRDBfXTjSnXUyV6Uv2U4yB64POU+hIXPMvj
         Dqy7H6LE+Znlcbtt9NnEc5V3d9MpnPglZ4IHVVPMUxVEARnT9N4X3ckuRuWqSfZtNhWF
         eyBAtOfQLHER/uhlLgjRU/SZaolDgnLxBry89nMsjUDOAEdDf2XazWJHJOFtXYMTpmIa
         fE4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782230164; x=1782834964;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=CkFtVL7QRxrKD//LGq3+L1fKIniXMCP2r3Lzcn90r5g=;
        b=pvhmG7navHLq06sAHm//TYbElq4l/lKr4DYpsIuTIBIeFZdIWLrLyuAk3LgNHOyyD7
         USVF73jOW9MrlgurCYofhNo+FHi7NW9syB9tC97RsnekY/j5i35tF0caEMHl3dtIdNR5
         DsDao5A9dDVx+g6G89r+48w+0sfPJeCAkwRy+sXrKmka9utDAWj9wB7FB8mXYbsUbhoR
         N5vscdyybC8CrfN0GSKroWk86POhZ2UsLz8V2IVoLMT2kCLeo+kZyixFPBRZx3uw37O9
         km3SxC5866X+s295MjtRz6DnQuafm37fkdCHrWWTxU4HD/Wo2liwehcGGittECToG4Z1
         hyoQ==
X-Forwarded-Encrypted: i=1; AFNElJ87UhOwmM/IwxS/p4NiAeki21NGm5EhpS9TQkDh9hjoSaLR37c34To9V9U/q0OYnMW752dSjhsARyyK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0g+SmwSZ0D7jWCoOwGPrX6v7viy0YCOIgrRBYWDQP/mqX0zrt
	sRC/4x2Z9s1B+SHD8X1w+FAVvCN1Zn6MhmAW4jA3saO4qhl+iWtCWWrT
X-Gm-Gg: AfdE7cmCKfFXVUts0IT/nsY4LyzkKoTa6sGwNzwxNB1WYGcI2YekSvlyx26nkXq+iY0
	Ug72JmodjpWshadV1qhMXK7R+GWC70eCQfyxskCPyHUsFXc+zydZxf0Z/HlH04dmZIV8u/3ZwHf
	SXmHUzwgcShC+zpQhybzQmrLrDVsSlp5ZBEYfg313xqgLLO7ah9H2QkJWo1tcsSufBZ9gcFYJ6y
	8ijjNg2WslEBYK+cbGnjUNyQgpJll2VWdCWQdhhnfvzYn4cJ4O5vHLBv7uiC8yXfUEKG++vA3tL
	dSEnoCWipF8yaX4b2YC3c4U0ZFPeTJ+88PXf43h62K/+PnOF03U3rIFVaytRJr+c7rmyQOfoH4N
	LBuR/Y7coaTvMjzJJdPpMgV/j2+I8RdMIWuAt+wLzQpG2tMu6ZeyKCMxZssSkaE09TpjtzOooeG
	bUdQfYm1Ow2kqA2bBxaO+xzlcdOfgzyUyrIJjMm6qpQqZLIhZjdpx924W+
X-Received: by 2002:a05:6512:1357:b0:5a8:7426:d2da with SMTP id 2adb3069b0e04-5addb817ae9mr1005200e87.7.1782230163929;
        Tue, 23 Jun 2026 08:56:03 -0700 (PDT)
Received: from Shofiq.home (87-92-251-137.rev.dnainternet.fi. [87.92.251.137])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5ad6957a6a2sm908946e87.46.2026.06.23.08.56.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2026 08:56:02 -0700 (PDT)
From: Md Shofiqul Islam <shofiqtest@gmail.com>
To: linux-iio@vger.kernel.org
Cc: jic23@kernel.org,
	dlechner@baylibre.com,
	nuno.sa@analog.com,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	joshua.crofts1@gmail.com,
	Md Shofiqul Islam <shofiqtest@gmail.com>
Subject: [PATCH v2 3/3] MAINTAINERS: add entry for MAX86150 IIO health driver
Date: Tue, 23 Jun 2026 18:55:56 +0300
Message-ID: <20260623155556.13701-4-shofiqtest@gmail.com>
X-Mailer: git-send-email 2.51.1
In-Reply-To: <20260623155556.13701-1-shofiqtest@gmail.com>
References: <20260623140113.12574-1-shofiqtest@gmail.com>
 <20260623155556.13701-1-shofiqtest@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,analog.com,vger.kernel.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-314904-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:linux-iio@vger.kernel.org,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:joshua.crofts1@gmail.com,m:shofiqtest@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:joshuacrofts1@gmail.com,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shofiqtest@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7E156B881E

Add maintainer entry for the new MAX86150 ECG and PPG biosensor driver.

Signed-off-by: Md Shofiqul Islam <shofiqtest@gmail.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3115538ce829..a441ec44bb27 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15863,6 +15863,13 @@ S:	Supported
 F:	Documentation/devicetree/bindings/power/supply/maxim,max77976.yaml
 F:	drivers/power/supply/max77976_charger.c
 
+MAXIM MAX86150 ECG AND PPG BIOSENSOR DRIVER
+M:	Md Shofiqul Islam <shofiqtest@gmail.com>
+L:	linux-iio@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/iio/health/maxim,max86150.yaml
+F:	drivers/iio/health/max86150.c
+
 MAXIM MUIC CHARGER DRIVERS FOR EXYNOS BASED BOARDS
 M:	Krzysztof Kozlowski <krzk@kernel.org>
 L:	linux-pm@vger.kernel.org
-- 
2.51.1


