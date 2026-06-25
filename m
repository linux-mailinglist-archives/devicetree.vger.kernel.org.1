Return-Path: <devicetree+bounces-315635-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id O1JjF80LPWpgwQgAu9opvQ
	(envelope-from <devicetree+bounces-315635-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:06:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4ACD6C4F73
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 13:06:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=LOAe5PnD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315635-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-315635-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 501FE30099BD
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 11:06:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 765613AFB06;
	Thu, 25 Jun 2026 11:06:48 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D973AD517
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 11:06:47 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782385608; cv=none; b=I4Lo98cXhCoB8RGhC8t9LXbULMlGHLEIeqq8MPJLv1Fmn/1cULMRQlACywBh23+Py0u1p2sygvQmHfBduE4aJAgpzLxlRx6msgOnPLsAxYs+2CFJVBAMab+/7lRkBAP3pOASVRbr1OaLXomq3HPbAL/U7QbrGB3hSLEcLa4j4TQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782385608; c=relaxed/simple;
	bh=PskyIyU5foutgsBFT2ikyuI1KvX/bVIqqYVLK42DVOo=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=eMRLGqiVhi5RY+DX3/Nj1Lq7gTX4RJtZwXE0VP50uUObYBTZjSKydGhd7MNSMZ5+j7JWy8F1yUbPEfek1uS0wlu/GbVvHMjfC5FifgFPu+nKOCGJxL5blepkZlFKDt6ROFx+diJtA6C+rEBy6LUev8DkrMACcDrRiWP4N8CzFvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=LOAe5PnD; arc=none smtp.client-ip=209.85.210.173
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-845b733e82cso269508b3a.2
        for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 04:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782385606; x=1782990406; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=IQDJv9UMQlWEKvIidyyhqiruXHUjg+2ZPsabXlVxUVo=;
        b=LOAe5PnDjCPCs6Kf2lOwkmHM/Qiak1vWGMt5RnuZKQHYGgTt2Agg+f8JFQGaT3tZNp
         54+KxVfS7cYnKvkg+sbXEO0tC57Cwhawy3w7YutsP8FAlWl8RNr3TzsOT9DLZwigXGWY
         eBpIw1okQ/FVORMhvnhYf8q2tmFGtI7vRoIBvLU3IivDRIOZd9akGkRb9X7qB6KHrlCk
         +cIeznbkf0S81kOfdWDes95ZbGrlm4EVfZbfIwD8C6rtMM4q3c8havb8iNmxZj3uDEpG
         /nGH8KGCXBfRA8zdOGWCvSJjqeYxk+sshosWwHc88fqmXYe99QufMr4Zki5wEa8ZxoE1
         ie1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782385606; x=1782990406;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IQDJv9UMQlWEKvIidyyhqiruXHUjg+2ZPsabXlVxUVo=;
        b=B+ppwDDNMJR/LTYm2D0EpjjOOyaoFC1qHo8OnAQSon6RJDUXTS4DC4qCPeEF85Z3vu
         Ozh6bsOMMcHoBBuY6MkPRdAopyoumvZvV0u4q5/ctSdueM+PRozjSwvMInsEVEpHevOp
         L+Q5jllpcQBJ8R5NBGx0X1+CNWn/fLQf23/RwyCmZ27LuVUZsyDSgDrfplp6nshZQOfI
         SB6LQzaHtVzhXi4JA2bVl2Ao8YMeuC7cFkpYuj9yJwXEuOpdr6zKhdnZIuW6hFErhhPz
         SyRjxODwRaIJ0d0Ifl5CpSrmrqutPe5uX4/ynJH5NYjn3Ou64Yi233X+FbclVrt6E0RE
         oc+g==
X-Forwarded-Encrypted: i=1; AFNElJ+97Ooq6TrzlB59DV+hX4RVfRhqIIoPpmOLODmEzN6OYJBgIq7IYDVpSkikRCilGFEVJraMaLK9XB6/@vger.kernel.org
X-Gm-Message-State: AOJu0YyyQCos7/8KJ0WzEx4AOeR2r7ktGlxfeTu2M6MjeSbmj107hxxb
	NMu0gQkNvRvLo+D9KLaNmj9ZXPQ5HqrvaTpam/L7NyxH6Mn7Jt2PZ10c
X-Gm-Gg: AfdE7cmxYaDUPwrWMJP4HpqxVVIPCUDiQtUqGwMbkxawK9LHH30rQyRUeTeMXr4S1S/
	GLQ2ZskyF7Kizx563IlGoe5tUKo+b1t9PEq5WV43PB8A9vUdEE26l3c2Aujsrmzy2JWMuug1REE
	4kwiCsKKZfWh0n8GXU5wgEVxuxPNMdLku8VpCUte8YXzFFyrK4rIqmc5Z0G1bfJV49X4l/RVVqT
	AFhIwzj5PCnEs0HGynU+DwwvepO6WOFp/PkmMIo3qKrPlb2jxBmRuOigKo/C5lsSbMEUHpqLrvz
	BxLshX2n1FSwofqNhXdnFXWaxZaSzy+qsL2lkKQdZ42F+cftAqYzI5AuxpHEesufe7K4NWN64G8
	4nDsrB1lK6n0Aj1Fpd312piPaV9lZYr29+Rkh7Pqti9a9qf/ls/mwUzx6e5nu336Byc4mMWANFu
	EAUogFXIMOjWhtBwmoKE8JGEcy2cQAxihI0u7/RtBieI6KWotMIupa6qAglfAKhXHhC9qnf1FuO
	2Q=
X-Received: by 2002:a05:6a00:2917:b0:845:4126:222b with SMTP id d2e1a72fcca58-845b3ab542cmr2566928b3a.28.1782385606359;
        Thu, 25 Jun 2026 04:06:46 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-845a3fec0f7sm4412759b3a.22.2026.06.25.04.06.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2026 04:06:45 -0700 (PDT)
From: Chi-Wen Weng <cwweng.linux@gmail.com>
To: jic23@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dlechner@baylibre.com,
	nuno.sa@analog.com,
	andy@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	cwweng@nuvoton.com,
	cwweng.linux@gmail.com
Subject: [PATCH 0/2] iio: adc: Add Nuvoton MA35D1 EADC support
Date: Thu, 25 Jun 2026 19:06:36 +0800
Message-Id: <20260625110638.38438-1-cwweng.linux@gmail.com>
X-Mailer: git-send-email 2.25.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315635-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jic23@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:cwweng@nuvoton.com,m:cwweng.linux@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:cwwenglinux@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_CC(0.00)[baylibre.com,analog.com,kernel.org,lists.infradead.org,vger.kernel.org,nuvoton.com,gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[cwwenglinux@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,nuvoton.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4ACD6C4F73

From: Chi-Wen Weng <cwweng@nuvoton.com>

This series adds devicetree binding and IIO driver support for the
Nuvoton MA35D1 Enhanced ADC controller.

The MA35D1 EADC controller supports multiple ADC input channels. This
initial upstream driver supports direct raw reads and triggered buffered
capture using the controller end-of-conversion interrupt as the IIO
device trigger.

ADC channels are described using standard firmware child nodes. Both
single-ended and differential channels are supported. Since the
differential enable bit is global in the controller, mixed single-ended
and differential buffered scans are rejected.

DMA support is intentionally not included in this initial version. The
driver uses the interrupt-driven conversion path to keep the first
upstream submission small and easier to review.

Patch 1 adds the devicetree binding.
Patch 2 adds the MA35D1 EADC IIO driver.

Chi-Wen Weng (2):
  dt-bindings: iio: adc: Add Nuvoton MA35D1 EADC
  iio: adc: Add Nuvoton MA35D1 EADC driver

 .../bindings/iio/adc/nuvoton,ma35d1-eadc.yaml | 100 +++
 drivers/iio/adc/Kconfig                       |  10 +
 drivers/iio/adc/Makefile                      |   1 +
 drivers/iio/adc/ma35d1_eadc.c                 | 636 ++++++++++++++++++
 4 files changed, 747 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/nuvoton,ma35d1-eadc.yaml
 create mode 100644 drivers/iio/adc/ma35d1_eadc.c

-- 
2.25.1


