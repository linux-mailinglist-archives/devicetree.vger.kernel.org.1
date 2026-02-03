Return-Path: <devicetree+bounces-262160-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNLfGunIgWl1JwMAu9opvQ
	(envelope-from <devicetree+bounces-262160-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:07:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F7BD74F1
	for <lists+devicetree@lfdr.de>; Tue, 03 Feb 2026 11:07:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5ABB13058B8C
	for <lists+devicetree@lfdr.de>; Tue,  3 Feb 2026 10:04:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC33739B4A3;
	Tue,  3 Feb 2026 10:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="i3p5xJgV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7F39396D24
	for <devicetree@vger.kernel.org>; Tue,  3 Feb 2026 10:04:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770113093; cv=none; b=YxVlTXhIr0EV5idmuCEypT/e1qySla3aIVac1qNCviTrm9ShvI2maJGr3+lSMj/TGvx24Z0wWItSIUzIpF+z9vaYq+gEfR+8SfrLMM/nHd4yb9fUnxEkvhW7T9r+HpAoalNkUvGngjmSbHKc6bngloZZkaYSZ8NMrOGDYAoFm2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770113093; c=relaxed/simple;
	bh=Sy0ZT3//n9xXHpwtu/2uEQ3odIe5kcqPKK201QPMl0c=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=UZnkJfyYOJLsPRHavpqXZsIvsWw/9wDJA1SKyu8yUXG3ky2f1DBCFjDmVfHxmgn1kMH8LPUQFd7nrqphNGuqBIRahStJqTPrYQzRJEb/q32jgPkoX9ARkFb4UY0PxVWH7dzH49orUV3RlY3Rmwr/N0bUZ/0VSV0uTDG8m+X0i+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=i3p5xJgV; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so72045215e9.0
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 02:04:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770113090; x=1770717890; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RTaOmh9wnqbOJNsuDkJBw5xu/ZxW0Le6p4u6pemJa+w=;
        b=i3p5xJgVvEHzJARfRhVcm2LAD2EgGb4XcvuJ6J+rS+jMs+7/vkLuRCnjNXO3oHvuGR
         RabKVBF+Pc/P3F4eif2DSTqFy/oSCTq78zAY42KbaXQLnb5VBt3Dmpd6RX6dPQKbaXBD
         jpwGdfdhWmk2oQw9RpoXa9PvhJBSlMBS6b9Jw6HnJRbnwzfCI5hlPoMAC4tuUwb/4OHo
         ZPSPGAnwQVw/IAlLWkeVkvxl89U5FSKXV2UIqW23o60BDzA/JSthJVBBmFAA0eZ5VMUW
         Z6D+mkTElOOSquOdpshNbZbCsyyd4zI2Pa2/7iBsiIZbTZlVNPb5WzhmAdCdy/9KBjFO
         0jMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770113090; x=1770717890;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RTaOmh9wnqbOJNsuDkJBw5xu/ZxW0Le6p4u6pemJa+w=;
        b=iIznZkMqyyKZEkOY0voZYhzR24SNGOmKx3cq/apLQdmFfDhSM9zegoF3Ma2Q3jdndi
         ACGJ9DZ89jO1Btmu0+F2zjky+wDi2UP2IwvopIp6fmY5KChiAtSEzHSBbbabtzLlQXD9
         tCmWzZqothqeAwU2/XtP0HfHjRfuAsCt+VoOU02EXN75mjoURY1HiGJOwkPtl0mYqPuQ
         l6sLd67rDj4pPCeGM3WvJ6Cxn/ZR24q3VvOOcvepB41tVPlqoCbI980M9lNBEzOfbfVz
         qRE55fLqgA1F305yYZF5vWVIAA7sblPXfrT/7tQ7bEW4HUiquGBOZvlvIpn3cGmkT1DF
         yySQ==
X-Gm-Message-State: AOJu0Ywu8Hl8WHdzb8Iwwkyv/CikdQRDTB61DanEnzzho+U9B5IeZswp
	/GHopNB30d60Sl+++KA4nT8BoSSYbFULRov/K0MPN0Avnrp33OJmFqqn
X-Gm-Gg: AZuq6aIJnDMmlkcDmC/Xfu+LDEk27lv2DaxyAKnsa84XNMdA0K/idwJs8FcCrRBPEu0
	RRx+sGoV2OQ8WOOtiZSRE4ordT5qepSuCILJOPHlE1dDKb1xr7cKpOBrz7FOyqSDtfhuZoRpIyI
	cuMihR9FJolN7Vv3SXiRrrBImqvlBif3PdzG3m6t2faqh2YXLAoVqQtyFaFCD3QmlXHRe2eXa+m
	wPsbnOYVXZxDpYp6CIoU6r5TqFhEO15WqXgk13EusO7lkv0qP+14vNUyqHwkiFKw5Wmx9at0KBP
	gkUAwVROsLWN2eqrt0zh0ao67w1mQgHSgme8E6tg0sa1uDhzG6CIZF4tWgz0isaHgbwOks+Xl2c
	BKmqgah4FzpgjzoGXRvsqZbj04h+VRNbkneqv9MiBE1QaVcqFhn+lAA45PUZOXgmhUkD+JKhj57
	togr6cnoQVPoB2UfRJcUnCKSqStaY8pJTpuXT+yg==
X-Received: by 2002:a05:600c:350a:b0:480:6910:abd1 with SMTP id 5b1f17b1804b1-482db491f3emr167091755e9.18.1770113089849;
        Tue, 03 Feb 2026 02:04:49 -0800 (PST)
Received: from SMW024614.wbi.nxp.com ([128.77.115.158])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-482dffd47c2sm115534365e9.0.2026.02.03.02.04.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 02:04:49 -0800 (PST)
From: Laurentiu Mihalcea <laurentiumihalcea111@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Shengjiu Wang <shengjiu.wang@nxp.com>,
	Chancel Liu <chancel.liu@nxp.com>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: [PATCH v3 0/2] Enable AONMIX MQS for IMX95-15x15-FRDM board
Date: Tue,  3 Feb 2026 02:03:30 -0800
Message-ID: <20260203100332.915-1-laurentiumihalcea111@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-262160-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	FREEMAIL_TO(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[laurentiumihalcea111@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 15F7BD74F1
X-Rspamd-Action: no action

From: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

This series enables AONMIX MQS (i.e. MQS1) for the IMX95-15x15-FRDM board.

---
Changes in v3:
- drop binding patch - picked up by Mark
- split DTS patch into SoC and board patches.
- link to v2: https://lore.kernel.org/lkml/20260126145537.2301-1-laurentiumihalcea111@gmail.com/

Changes in v2:
- adjust binding commit message as suggested by Frank
- replace whitespaces with tabs in MQS pinctrl definition
- link to v1: https://lore.kernel.org/lkml/20260120150329.1486-1-laurentiumihalcea111@gmail.com/
---

Laurentiu Mihalcea (2):
  arm64: dts: imx95: add AONMIX MQS node
  arm64: dts: imx95-15x15-frdm: support AONMIX MQS

 .../boot/dts/freescale/imx95-15x15-frdm.dts   | 73 +++++++++++++++++++
 arch/arm64/boot/dts/freescale/imx95.dtsi      |  5 ++
 2 files changed, 78 insertions(+)

-- 
2.43.0


