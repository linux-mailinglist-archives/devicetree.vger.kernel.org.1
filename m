Return-Path: <devicetree+bounces-275952-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLFUKD2lt2lTTwEAu9opvQ
	(envelope-from <devicetree+bounces-275952-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:37:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 04CE3295366
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 07:37:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A24AA3009170
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 06:37:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 283F434BA56;
	Mon, 16 Mar 2026 06:37:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mpegO8Ia"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2788269B1C
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 06:37:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773643067; cv=none; b=mF18d2ndalZWNWClFQSXSbjNmtQcm4/XiWvaPI9tbLnuam21Sj9iGeUkQX/HU1VM3JUrUqG/ZOaocoKYThg4Ma9EG7AiTRG2LLBCKvkhQYw9G4BbAJKcI6S9p27ZcFBOxsq12xQcWDVt/dmYVQDpnLnaU+EpopGCdO6R8qxjoH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773643067; c=relaxed/simple;
	bh=pN237/jrHjr10mugoj4cWEZspzvo9aKOtm8dpKrbyLA=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=VidsHa/OkutG9xTkCGP71lGIj1Pe7ZQ7DL375dW2LG8uQ/ivoVWVN3vNWIwkkZ1sGt/DuyDpTwTUyUhPUnKRZrCuXP+IBq+SUT1YkRZNGkKV5kdtq7zlPFYDITcUeuB6eeeF1R5HHccWdPmW6cJGVWH6qs5Ug8OhOrV7YjqU8pE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mpegO8Ia; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2ad21f437eeso33227575ad.0
        for <devicetree@vger.kernel.org>; Sun, 15 Mar 2026 23:37:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773643065; x=1774247865; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=InRSApg/oAsHMCkklXKa7U4eUP4CWL+aPpmu3EyzP5w=;
        b=mpegO8Ia1GLuZAhiBXU3s1kEOnC+g+Dqbh7Qy0ku9s6/SK/HIVTQtKARG0v5Sm91Is
         P+G8eYEfNF2+b+/WhUO3NxxlylBeLXrBeLRCj3wQ4F0LCghRF2OKiX1ftw9Yuzox9u5j
         P1vwAtEGFmntfIvakcg0uybGkLjvlYuFvnizqn3pVCY4IdrZTLUN7R02dHV0Ikd08wBt
         0rpaHwrQLRZgiy6WdUmDQGw4+ikABCAIGQhe9g/SGCg3CQY+UApgbJXrnoUZ8T+cMBIp
         5E78BaLgzYb6gZspSMPcOsl2sSiQD/1a3wO02p1x5Dgts/p9eCtNW+XaQYdiscQdN3hz
         jNpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773643065; x=1774247865;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=InRSApg/oAsHMCkklXKa7U4eUP4CWL+aPpmu3EyzP5w=;
        b=jn9gnbXEFlmL9Uo68o2VauM0k7/qH39RhhjI2m5UN9qrmDEXehZH9y5vdB+3EARkay
         Ac8OU7Rt8GauE7LCDO3gqMWKiYTfy7N5nLpaMNvt+C0VsBsl9aIZK/oNNuJPneK0UqxP
         jy1O0j4rmDHzMdFxOWy3isZyh6s8wGAjAbLA77J9kYOn8H2Qm+Mr0ElcXwl7DdpXCB4l
         /iK2VJ5G1znemwuSbYwh42oR01SPaq/lY+lnGpHO/PHDBJWL+kusOedpBUuE0RtAJlE+
         9IW/cGgckTdLQjncBnYjifgqSlW4p9cCAxnv7biYf8kNK7PnLYu7mJEnF/oUdTlvo3FK
         4zIw==
X-Forwarded-Encrypted: i=1; AJvYcCVLbvLLtvnepoLd4eBE4+RNnu8TOGW4cHQuEcFeFC5ToTMsUwyNEW+cikl/MppUFr34DdajzDOyVDoH@vger.kernel.org
X-Gm-Message-State: AOJu0YzmVW6+7akva5XkGYFM1UKR7kuJWkAems3YW4uAQYxpSP9D1zQY
	XK+ZXiiNS7VNbl7RaY31PYb5Gm1r143BYxRglqERXceJv/RnCCc4Jgqp
X-Gm-Gg: ATEYQzyWvN7MAbeuV07/xqx9mJxoZccOps8xXzlcWqHKTzBmVDuj/aXlKk9vjTP5dPt
	QheU04pBnMQp2/oi86PHkNraGWgsSbnLZgeCF3G7YhI14QtM1OKwE9LJ7Z0Xhn+VwyGP7XeYceG
	cb4Ay4d3kd660DLNa7dXB4Tev8OTFPkdcqHKQQgX1iJAAGTyjEN/L3VwH0enAKMGgpemC4xQLOr
	aFjbgzTjFPmlt/K2XK5wmG0IJ5573trqJu4F/PJ+fIeBsGApvf2R2jSr6MB0qkCaoiYsmH7icow
	nrv4PfPHfgBa+EcgAHDjwemPEHNuIQwChc1l+Q90yXSpQScp87DawhvQ1DENUZVr/2PQyaFlMAF
	DKv7+SpNM7gvDrM/4goAfi4iwzteNQ6b5rfLBBrdQTRq+knXP27TsFU12RaR/doRL8zatxoJYzw
	NoqKQ9Hlyg1bYhnZ0UjxAce0Au6ahCrx2FxCw234W0Y1pDtjUh5wDKhk5xA94z58CSjazO/WUXJ
	Y3mMU9SDw==
X-Received: by 2002:a17:902:da81:b0:2b0:4c68:283a with SMTP id d9443c01a7336-2b04c6829b2mr51629855ad.6.1773643065161;
        Sun, 15 Mar 2026 23:37:45 -0700 (PDT)
Received: from localhost.localdomain (60-250-196-139.hinet-ip.hinet.net. [60.250.196.139])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2aece56cdf4sm122845295ad.8.2026.03.15.23.37.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Mar 2026 23:37:44 -0700 (PDT)
From: Zi-Yu Chen <zychennvt@gmail.com>
To: andi.shyti@kernel.org,
	ychuang3@nuvoton.com
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	zychennvt@gmail.com
Subject: [PATCH v2 0/3] i2c: ma35d1: Add support for MA35D1 I2C controller
Date: Mon, 16 Mar 2026 06:37:23 +0000
Message-Id: <20260316063726.41048-1-zychennvt@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275952-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,lists.infradead.org,gmail.com];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[zychennvt@gmail.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 04CE3295366
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This series adds support for the I2C controller found in the Nuvoton
MA35D1 SoC. The driver supports controller and optional target mode
and runtime power management.

The implementation has been tested on the Nuvoton MA35D1 SOM board.

Changes in v2:
  - Overall:
    - Rebase on linux-i2c/i2c-next
    - Switched terminology from "master/slave" to "controller/target".
      
  - Patch 1 (dt-bindings):
    - Simplified description and fixed 'reg' size in example.

  - Patch 2 (driver):
    - Modernized using devm_*, generic device properties, and FIELD_PREP/GENMASK.
    - Optimized power management by moving clock control to runtime PM.
    - Simplified code by removing redundant .remove(), .owner, and inlines.
    - Added dev_err_probe() and default bus frequency handling.
    
  - Patch 3 (dts):
    - Moved i2c aliases to board dts and reordered nodes alphabetically.

  -Link to v1: https://lore.kernel.org/r/20260302020822.13936-1-zychennvt@gmail.com

Zi-Yu Chen (3):
  dt-bindings: i2c: nuvoton,ma35d1-i2c: Add MA35D1 I2C controller
  i2c: ma35d1: Add Nuvoton MA35D1 I2C driver support
  arm64: dts: nuvoton: Add I2C nodes for MA35D1 SoC

 .../bindings/i2c/nuvoton,ma35d1-i2c.yaml      |  63 ++
 .../boot/dts/nuvoton/ma35d1-som-256m.dts      |  18 +-
 arch/arm64/boot/dts/nuvoton/ma35d1.dtsi       |  60 ++
 drivers/i2c/busses/Kconfig                    |  13 +
 drivers/i2c/busses/Makefile                   |   1 +
 drivers/i2c/busses/i2c-ma35d1.c               | 792 ++++++++++++++++++
 6 files changed, 946 insertions(+), 1 deletion(-)
 create mode 100644 Documentation/devicetree/bindings/i2c/nuvoton,ma35d1-i2c.yaml
 create mode 100644 drivers/i2c/busses/i2c-ma35d1.c

-- 
2.34.1


