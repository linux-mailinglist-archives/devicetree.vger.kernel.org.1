Return-Path: <devicetree+bounces-323654-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id syPgNHmET2p8igIAu9opvQ
	(envelope-from <devicetree+bounces-323654-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:22:33 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F757303F9
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 13:22:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=g9WA1Qu6;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323654-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-323654-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 53F0030233C2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 11:20:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 957EC40E8E0;
	Thu,  9 Jul 2026 11:20:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305BA3F44E2
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 11:20:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783596019; cv=none; b=oS+dn4QyNSl8BO1b08S3EG6fuG/DkZhanGd7DVhG8MhPQUXLupnCalkhGt5tkkFB/x8aFnTMPsgc4jyMmUzf9/WPSE49p530xGEV1OhwChuW5Ppl4jSQwRCazMfwrMY1LXO2GJ3uvP0O8PsIdYkPSZ/z3CfX+F48cheAygT6t24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783596019; c=relaxed/simple;
	bh=yJM4jWcMxQXlFmf6u49pKphL2b9lo3j4nSv9Sw/a6wk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=d7eIQRpuTcYmoPSW2VhFvmHqKj/jO1lIWChsa8C+IsUcZoX+QwDtGc2sNtXUnz6dSUcCDREI0ts0buV/VFO8W7ICrPONGW49eNZTmrCQl6uBYXUXfp7n7JJiTA+0TdwNDUXUpRvmbRg0cOybYwRkah3yD44NxszQwUvCtXU7IsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=g9WA1Qu6; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-493d92b7db3so18370065e9.2
        for <devicetree@vger.kernel.org>; Thu, 09 Jul 2026 04:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783596016; x=1784200816; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=mY+40GHIsfUvxGoEyM3B4UK7YBXR4Zoh8ak0Z/sMJt0=;
        b=g9WA1Qu6eesZc72/oyDx6m592ueTGk2hbEgsJT/BTOJ14wNxehRfI70nbqpBC3GfUZ
         /MEgrQPtPB+N9ivrRj8i/ZGK9TJa6dPiXypoCyQWpZpJEDk9vY4lRVux8d1IBTOumyKO
         W3GVBYpEi0ECnqRpMDS5H4FP+Ld5qZgihR7uDjmfPQ6H2kDEk4y+40au7Swh7qFQpGxK
         NkXjS32eXS4MnDwtPWEIkhVSGonNuHwxm7XEc5vdZElzF4+piEiy7MVWuqcKM9FnbtuS
         c7I4UoW+Wqdh/vCo2g9CWv2uvKpxTEUJ1eXoZuyCmn10OmOzi/i0XmIoSz6+6yLxdQiL
         acCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783596016; x=1784200816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=mY+40GHIsfUvxGoEyM3B4UK7YBXR4Zoh8ak0Z/sMJt0=;
        b=YATixS7L2+hT6XR2838ixHlWrZoZX7O+cO877C140f6fEK2HcUKzGxW5Q5/PqAjVVP
         rbBN8krpDgCk78IkOlQG7lnxMv6s1UCzOCKCzmLFbGX3egU4MDCrVFv47UpMy3wClEKy
         b+SyesbaqqVYEMt9kMMtfPtxe0490DA1zFPebZDfRv8vQr6fkoBSvDdL1UVLqbyEYFGl
         tFVA7WbKZXunwq73OIJnSay61ZRgLGoe94NUBjBwzGiBVcP9CVgayEQ5cmudeIqyo6ON
         TOeld7cyvRUuHdFxOFs7ZV2YvISlekN3GX5o/pkXnv3YSDoOD2BzHDquFfKBDQ/62lGR
         +zZw==
X-Forwarded-Encrypted: i=1; AHgh+RoIOivwGKQO3TeCJ8TzY0/gqqKC+KR/mu8UgMdiPWAJpCINoM2wQ11io2wMpSj4JGgPsQ+cEqOqN/25@vger.kernel.org
X-Gm-Message-State: AOJu0YwenVrZLjzc8PGGAjPn2Y9xPcYG9vt6DhLSzFdfcJZQsb/DWHzi
	B6xsWR8rnhY4FcZIQv0focw8e/ep6sb7nNCFolY39gA45SLlJD8M6vR8quVQrOrb6nc=
X-Gm-Gg: AfdE7cn0/zPs+uYs3Qgz8WP59Oo8gDx77DOlSiAiKncN7bY/qRNDv1U3IeBpGetmlZK
	KlNpfTJUmNhCn+I/8iAW10697DBz/iqYIOBlhW6oSixreZS9T914x/42BaKIpDApwW2Ko0qrL20
	AVEZTGxmVcRaFFS1jYZUj1ZRFBZ1hTOQJsmL78bCC/XiYwyiIAX18D/hPShW1modMlYtyxnyGg2
	32YvGyqjyyQJBLCCDohiONwyvy49dFKEcpHi5QhKonoQQrHQ1O7ZMV7icyF/L6ssjdc3FmWjpml
	DXWdcNvKAfNWZo4Vh3MqHBJzw5eYQlJrF4uMmKGPcvSU6cQVwjna38tlIW6CT0cNqJhEsV/IbTW
	UPHsQI/TqMUZQI/ITaULKjQ7EzcBoNENp7REjSKFRHGFCNrTa6ZbMM49FVyEKwlGq0/V99BeGr6
	bTGTr5PcfS9nWGpVc+GzcS3rnod6Rgn3BAYr9ZrqWd+264+Yvs8eUnOL3hJGydKDEaoSNCAd1i7
	cSfyz9+2HxqMzm7slkZU3kO/Pub+TT1kGg/j02Lhk0=
X-Received: by 2002:a05:600c:3491:b0:493:c59c:94f1 with SMTP id 5b1f17b1804b1-493e7e82e10mr58748345e9.2.1783596016565;
        Thu, 09 Jul 2026 04:20:16 -0700 (PDT)
Received: from threadripper-fedora-workstation (dh207-15-57.xnet.hr. [88.207.15.57])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-493eb6f3c42sm53910475e9.1.2026.07.09.04.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jul 2026 04:20:16 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: broonie@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	tudor.ambarus@linaro.org,
	linux-spi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 0/5] spi: atmel-quadspi: add support for LAN969x
Date: Thu,  9 Jul 2026 13:19:06 +0200
Message-ID: <20260709112006.390742-1-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.55.0
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
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-323654-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:broonie@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:nicolas.ferre@microchip.com,m:alexandre.belloni@bootlin.com,m:claudiu.beznea@tuxon.dev,m:tudor.ambarus@linaro.org,m:linux-spi@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:robert.marko@sartura.hr,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sartura.hr:from_mime,sartura.hr:email,sartura.hr:mid,sartura.hr:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 55F757303F9

This series adds QSPI support for the Microchip LAN969x which has two QSPI
controllers based on SAMA7G5.

It requires pad calibration, supports DMA, and supports 100 MHz operation.

It requires a different init sequence to SAMA7G5 so support for custom
.init per controller caps is added, and existing controllers relying on
checking gclk are converted to it.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>

Changes in v2:
* Make the DTS nodes apply on top of next-20260708, as SDMMC is not yet upstream

Robert Marko (5):
  dt-bindings: spi: Document LAN969x QSPI
  spi: atmel-quadspi: add controller init callback
  spi: atmel-quadspi: use init callback for gclk variants
  spi: atmel-quadspi: add LAN969x QSPI support
  arm64: dts: microchip: lan969x: add QSPI nodes

 .../bindings/spi/atmel,quadspi.yaml           |  1 +
 arch/arm64/boot/dts/microchip/lan9691.dtsi    | 33 ++++++++
 drivers/spi/Kconfig                           |  2 +-
 drivers/spi/atmel-quadspi.c                   | 78 ++++++++++++++++++-
 4 files changed, 110 insertions(+), 4 deletions(-)

-- 
2.55.0


