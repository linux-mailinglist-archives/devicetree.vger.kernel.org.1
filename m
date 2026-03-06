Return-Path: <devicetree+bounces-272040-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFvcGk7EqmnhWwEAu9opvQ
	(envelope-from <devicetree+bounces-272040-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:10:54 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9142203C3
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:10:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9CC2230B8E60
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:05:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9B7738E11F;
	Fri,  6 Mar 2026 12:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FqBKTlNH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F222F872
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772798755; cv=none; b=iojRY62RmvRk91/bnYSsOjHg7fvA1lFSBgMCC7mIZXKeUzYUuopzzCDx6xH57aMSeKLdiDb8OcnHGJpwZx1+hEdGSahcagCHskcFWbFwzGaBPYQetEwevTp1cdzbobZn5vbQNBj57DCaV7AprAUXA+XE30y28qAVq+FX3WA6MHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772798755; c=relaxed/simple;
	bh=1OGPesTTQ6PdHg6rziXwtnglSKn5QCyc2GI25XQeshs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=N8DSeYMt8D4vMMfSaU5RJcYVmYo2zwt3+h6F3vUR6v9UIcZrWXJ/duDRHGOJr9Tlrw2oIqVqdoyKSd26GXuAx0Gq5sZTy2Inp2SDj+grcjKbBi4FhfvU2etkWU9l0+l8txxZoRyZeUTbA8GdNldF6vskGlZECnnvjnXb8/LnM6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FqBKTlNH; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-48373a4bca3so57791045e9.0
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772798751; x=1773403551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mTkk7uiuigPho3KVdrJ5hWiT++sJi9u25O2m/ZkmXhs=;
        b=FqBKTlNHodQghvPRUQQuvUXRcNRwclphFXeubRab5/d6hOXFyG3JF+j2b1/hOIqODh
         fVU0apcCXG2S6SLCC+dH1aPPp+ID0Q27MX92FqgJ+hT4rY59FZngNaGe8RWeTV+sWFIj
         +M6IN4Fop6/LYSiebKwsqxKyDP2VAWgOfELb5hQPl+Z+rPjLjHV6SRZLw61l2MMKOWjv
         4yaMA3C9UwnOrtERp5kBaLNj+VJV0vhTGlhNhVlATTir5wAmYeEoWhMnHacF4pQsKiY/
         NW0DEFSmZC4pauV5PUo1ZPWPhP8OvzFXxVkT+ZsBaxkLAXPAajm7Jpx2fMyJwl7hXlOB
         HDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772798751; x=1773403551;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mTkk7uiuigPho3KVdrJ5hWiT++sJi9u25O2m/ZkmXhs=;
        b=aMM2FJZt9lBp90qmU8mz1x5R632uk/5CnWT2UOYFSTBgjxPUNGO0Rpmgh6B39LdLqQ
         sX/XeXeVGfLkQqp9L9vH8RFn2bEEBgovMNSLLbXmQsi5QYY3fQ3je1YUDaBrs21DZM3q
         YuL+ow6SOYlt6j2zcYxb1mI+b6omhZjsVecOg/bjRBkeOs5vETFocidsgiu4hgQDzrVv
         z/ulaJDxl1DhGiZm1Qo4JEYhwr6jWRD9Pu/r0fyz8BGr4ksZuPwEey9RWWsvqQMdeGMJ
         WJSVbz6BSwTAJEXY0zjSeVVfgzIxqLwpnTX7nPw1p3BnHrEAYVfoarlghNiYWSE8x2aE
         1HZw==
X-Forwarded-Encrypted: i=1; AJvYcCW5piyLcCxjkyYd5HCvOjflWUtNIkpWDRP/OyX7pW9tx6xK1e/fD0yF411fUhjHYrDhp9YSryNk4Ill@vger.kernel.org
X-Gm-Message-State: AOJu0Yzry81KCAVdBdaoakLvJetjUzhcSVpI53GsYegBJdme+YJ3E+jD
	giM+KKG9uo6p9PptXShI4satfWT4taIc6/2YXgXQW5p6pzwr1nZURURq
X-Gm-Gg: ATEYQzyt3Lk1nLjwLTL52Z4fpe8zmikSSB2FpuQ3zh9loPDxZFbzGjjWzsLjCp2Jkkl
	6UG02KDC3Tm9yAZxTYo+PmaSvA+DjOJ8RAIet4uUvcRLVxLiaGUwhFtfr0upxJW5wX2M0K6J7dR
	BQd7b9lIw/n43F+KIosS+MVH4Z4s9GMY728QsftiLWCBXovXxvDTptARPyWaNnhuatXyrADleix
	x6AZwGntMKkRrgKf5C8o5K1llzsWUo3kwOmZpg4XqTgK/OOqQ5gcrtJqGtlz1LMAnLxlUf152eg
	WxQkewl/AjQMrDlkAHKEYSgqVDEFyns0iD5yAnB4GzM143V+Uq9o7GyJnhRgzdKg8aLyGm9Dd4e
	2P7CfxyZKsAVULU0j3agbfQo/ZNN8ogAqKiwx8SdovfpYn4dUiggWnqbNeINzM48VGW6A7b8gBb
	mp+t6LcXo60HXoQKEBDWA=
X-Received: by 2002:a05:600c:a403:b0:485:2969:cd9f with SMTP id 5b1f17b1804b1-4852969d02emr7858575e9.12.1772798751250;
        Fri, 06 Mar 2026 04:05:51 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-439dae2b9d8sm3457225f8f.21.2026.03.06.04.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Mar 2026 04:05:50 -0800 (PST)
From: Luca Leonardo Scorcia <l.scorcia@gmail.com>
To: linux-mediatek@lists.infradead.org
Cc: Luca Leonardo Scorcia <l.scorcia@gmail.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sen Chu <sen.chu@mediatek.com>,
	Sean Wang <sean.wang@mediatek.com>,
	Macpaul Lin <macpaul.lin@mediatek.com>,
	Lee Jones <lee@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Val Packett <val@packett.cool>,
	Gary Bisson <bisson.gary@gmail.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Julien Massot <julien.massot@collabora.com>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 0/7] Add support for mt6392 PMIC
Date: Fri,  6 Mar 2026 12:03:04 +0000
Message-ID: <20260306120521.163654-1-l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: 0A9142203C3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272040-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,mediatek.com,collabora.com,packett.cool,vger.kernel.org,lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[25];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_FIVE(0.00)[5];
	DKIM_TRACE(0.00)[gmail.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

The MediaTek mt6392 PMIC is usually found on devices powered by
the mt8516/mt8167 SoC, and is yet another mt6397 variant.

This series is mostly based around patches submitted a couple
years ago by Fabien Parent and not merged and from Val Packett's
submission from Jan 2025 that included extra cleanups, fixes, and a
new dtsi file similar to ones that exist for other PMICs. Some
comments weren't addressed and the series was ultimately not merged.

This series only enables three functions: regulators, keys, and RTC.

I have added a handful of device tree improvements to fix some
dtbs_check errors and addressed the comments from last year's
reviews. The series has been tested on Xiaomi Mi Smart Clock x04g.

v2: Review feedback - replaced explicit compatibles with fallbacks

Fabien Parent (5):
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  dt-bindings: regulator: add support for MT6392
  dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
  mfd: mt6397: Add support for MT6392 pmic
  regulator: mt6392: Add support for MT6392 regulator

Val Packett (2):
  input: keyboard: mtk-pmic-keys: add MT6392 support
  arm64: dts: mt6392: add mt6392 PMIC dtsi

 .../bindings/input/mediatek,pmic-keys.yaml    |   1 +
 .../bindings/mfd/mediatek,mt6397.yaml         |   9 +
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 134 +++++
 drivers/input/keyboard/mtk-pmic-keys.c        |  15 +
 drivers/mfd/mt6397-core.c                     |  43 ++
 drivers/mfd/mt6397-irq.c                      |   8 +
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 491 ++++++++++++++++++
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/mfd/mt6397/core.h               |   1 +
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 13 files changed, 1281 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
 create mode 100644 drivers/regulator/mt6392-regulator.c
 create mode 100644 include/linux/mfd/mt6392/core.h
 create mode 100644 include/linux/mfd/mt6392/registers.h
 create mode 100644 include/linux/regulator/mt6392-regulator.h

-- 
2.43.0


