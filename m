Return-Path: <devicetree+bounces-259537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yINYOKKAd2m9hgEAu9opvQ
	(envelope-from <devicetree+bounces-259537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:34 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCB989CDC
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 15:56:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D61233006111
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 14:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8BF132ED2A;
	Mon, 26 Jan 2026 14:56:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PcYFLmDe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829EE13A244
	for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 14:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769439390; cv=none; b=gq5c8dmOR+S91pab0VHrBrhC/8T6nm6lEgslKuvyMm3gVsmGsE9R6ksGKVMvbjrHR4EIo/MfV9clC5FRLfhkEvZ701LN+i/mer7yvsdjRn6exDs60tfN5L+WyWe5RciYqVhxBjbEX4QeJ/E2vq3Lh3MJnh3iGJG9iKBrrcLBt6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769439390; c=relaxed/simple;
	bh=04Q1GPam45voSeBnPGR/U1/CMfY6oCgIxm079aOElp0=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Niplm6ojD/ZYl1JmJUYgZlt2xMYB8/RAnrvM+laaMrDJXgCl+IoZiCPwR/rj2ogjaTS/mQ9XOnwJL8X/nGoFfANG2Rt7GM6fF6SLL5CYSvTSnFU5pnHWqfJ5x3XDKTQ89RdLcH3zgbkFdgy/babQjfwrOK0nTXMPXLJa70YcKig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PcYFLmDe; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4801ea9bafdso18510285e9.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jan 2026 06:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769439388; x=1770044188; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=knPUlB2owHnkNVv4SE4pV1/cSooTAZY2IewxcUnkdP4=;
        b=PcYFLmDeBgknWehgg2W9xFlsbgCqIQ5bW6a1TUFtRqkjNy25QjU4Yy9JDxug4+R3c7
         YmpOE/e9k7fEhJdSX3yuBJGy/T2Yqjz4WD21umaFLX9LRkaxKjpQ6Fi6ZEnyYHg1nThF
         DrZs6fXNh2pv43S1OXY5oCpMsXHm5iBhMjlUxT+176TYQ5cwhf7g5SJ7K5bkhPIfZO7Y
         I4vrhF8qosb7gUekf/xpGSI9vRCoQORw8t2wlbi1ziYwV/Vi61sHCUYWqdnUvnOj9c1h
         HKRqjAFJ35gdbBCsEkK+parD0yDragYaPawUs5l04AJRkr3e7QVRsLAFITQkSi1hc5hu
         p0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769439388; x=1770044188;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=knPUlB2owHnkNVv4SE4pV1/cSooTAZY2IewxcUnkdP4=;
        b=rrx6fIQr+TMJX+uS+hqkCm48czlN5B0s9SYNiVndsOzNIXJLIrMTm9BdCd2Vy7rOHI
         faqCrXK4OhRw7RYBex1SIiY7pFQIF8YVhOZOpZCf3BUdQDBI027FJyREmp6XIxFHXJY+
         QqkkmGqR9/GlHUrTxvU8Z4kjBFBrz9bR2Y3eMnBKUJUHpBRd3cSS677uab6tWqd8mlJd
         62xeVY3/bngN14GWTCzn5Oc1tIxW7bDzRLZEAD3TNot+Rbil/M/j+z2sPhRUNsbBHAFr
         NPL3Y4Bmz/dj3gvCijK2xSzW7bo3xwYwx19jySYjk3n6sZOVfGlFrRQupaWO+5hpuKcJ
         l7DA==
X-Forwarded-Encrypted: i=1; AJvYcCW3Ui7jaZ8bUqvZysVsXByW8NjPEQvJToweQEVAp9xh6/fI8+7x47egNlbdmhuYl6MW+HlLztpS0cW6@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg72pyOP+mvaj3gLxkUYyauMqkakToHD2IYK93XBX1jYOGTUDs
	QcGc1H7HPEfswYmPC4uxQWulJCLauOM7vRk+mm2ODMkSP5xy9BXPMxQi
X-Gm-Gg: AZuq6aJYXAwcz6elsDM6GvM1AA3ooUukKDrNFB0Wnj4/hwNaBb/kalvf1r55J4z+Ir2
	KGBFQrJ0n/xizidm/I7eTBg12Q2JP15mwF6CPrEB+Y9PljIgL9Kc2cla0SaiSR63GTa503iK4TN
	pn/pUaJrj0mzx4PrjpwgcTxdhEk1I6qgh+Qdh8xJA45al4ooVgbX8rqRu3Brq6zX0VdlHyPLAjf
	ydlc5jm+jTqA4pD7fTIYvRyo+8HqbQnWEJ9BPtXc5RK1fOXSOusO9uVUFKOTsESrCYfc2jW/5ho
	VNeIFx55KzCuklKOe6xtJtiU+30kXcZpTmmkFYwVIendmSOzaF+QFnDkZAoaHcbqBlcPSFZTPse
	tx6cpZF1ElzhrkOOVO0oIcUtL1egbjwnIiHmdLihmKFwGR4DbLRSNMpM1xwNxh1wZ0c4WkdcCxh
	SoHbi1ZSrH121qXfj+r3KwM5oq8Z42S9VkEfxIrg==
X-Received: by 2002:a05:600c:674a:b0:47d:3ffb:16c9 with SMTP id 5b1f17b1804b1-4805cf5e6admr76087785e9.23.1769439387866;
        Mon, 26 Jan 2026 06:56:27 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4804d8c0aebsm278448735e9.15.2026.01.26.06.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jan 2026 06:56:27 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>,
	Frank Li <Frank.Li@nxp.com>
Cc: linux-sound@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v2 0/2] Enable AONMIX MQS for IMX95-15x15-FRDM board
Date: Mon, 26 Jan 2026 06:55:35 -0800
Message-ID: <20260126145537.2301-1-laurentiumihalcea111@gmail.com>
X-Mailer: git-send-email 2.43.0
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-259537-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,pengutronix.de,nxp.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 8DCB989CDC
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

This series enables AONMIX MQS (i.e. MQS1) for the IMX95-15x15-FRDM board.

---
Changes in v2:
- adjust binding commit message as suggested by Frank
- replace whitespaces with tabs in MQS pinctrl definition
- link to v1: https://lore.kernel.org/lkml/20260120150329.1486-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (2):
  ASoC: dt-bindings: fsl,mqs: make gpr optional for SM-based SoCs
  arm64: dts: imx95-15x15-frdm: support AONMIX MQS

 .../devicetree/bindings/sound/fsl,mqs.yaml    | 12 ++-
 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx95.dtsi      |  5 ++
 3 files changed, 88 insertions(+), 2 deletions(-)

-- 
2.43.0


