Return-Path: <devicetree+bounces-267557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2DUvDg6MnGmdJQQAu9opvQ
	(envelope-from <devicetree+bounces-267557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:19:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B08217A9B8
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:19:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 29B10308AFF5
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4F2328B58;
	Mon, 23 Feb 2026 17:17:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="V9IPm/hf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E771330664
	for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 17:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771867031; cv=none; b=SOIqrKbmxsIfiqiHWcLJ2jlg7aASdPfPMjwY4NdzVnVYJhy6cteZyDOEpd1yZYMnkgXSqb1MbQa+mzrQOMj5gqymcciVEjpw+LGtIVS82P6znyA5naXcVXkIAxZwtA7BbxBoj0IS/qE7hDokZBZOYiKsTLqMqlxTaaT7iM65Zso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771867031; c=relaxed/simple;
	bh=WVs/g4cQmQqVe2J2+nIoMwPE/ef3LT19rVqgZxkT9UE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=fkaDYJ8BwYVNLF3e+Q1AluRqobE+O7jWzBC7qcZczVlCR4hZ35UlanKMjRJ4TpQfirb4iHVMOFQUZKeS2n/xq4S251bePXqhls5VpYQ4FyyRhAWkOt35ooXsCEPgI0RKAV5a1y4UdOqN793ccrMR3lHKtDxZLERn9v8TwBuBipc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=V9IPm/hf; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-4359a302794so3420660f8f.1
        for <devicetree@vger.kernel.org>; Mon, 23 Feb 2026 09:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771867029; x=1772471829; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hyGEcrLpV4bwwocVSCsdzUyZjiaZncJT9oIq/dUyqxc=;
        b=V9IPm/hfjv8OQgb6O/hWFilVSPV6B+cULb9Tcqm7zCE4kaTuD0eH4Rmk/iO6R2Kz43
         qkS/HitSuu7H09EBA/wA4xYFKAO/kcOapN63tSN6QTGT8kPketMJEGOUOCE8/nd5jfMp
         gBztAqzIcksfDSpur1ZaaVoWE6p/g5fp7uRK8bVBpAgWAeQhUt+S+QoYi4qf/mW9r+BD
         MyvRSBZVgxG+I/UvWvg/+Gfh/Ksw8IKbcKiAOCeokmyQessNhLoDISCTIJJLX6Z4OF8u
         OTdeIpJ6VOvCEGz4O4wNIgOqKFn6KopgDnWtB6M/vv+3XdIV0dHPMhYqmud0rV9U0a70
         iDmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771867029; x=1772471829;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hyGEcrLpV4bwwocVSCsdzUyZjiaZncJT9oIq/dUyqxc=;
        b=VC/fHaFD5IbNCKDUnS0hiF0fZ60ylrhSk+Qk5rVfdd1SAoCmBfF+76cStLkeu26P+W
         M64jCe4jE6t3zS3RBaXgyuE44OKl1/RwFRwwgvZqHqkJFEyQAacl2c3zRDhMlhTGlYbk
         pgIkbA7Rd/PFbnyiFhIYKCcD+dQ4FpBk/RAmSy0jzGjKrCL2jm5hBDx/EWq1T3Esb+YA
         4JeKXxSRJcH1t5Y6d+6tyeFISdUneRjKL0eZ0NfSJ+dZNNsegDUWeRqQeW6j2qEZi48x
         RiNtJDBT/IsiUwwLi5sCARAHX+ODQ7ieTa2mBkOxKO2jSlO3k7lOC3WqwvYIVnQIWbtp
         Yugg==
X-Forwarded-Encrypted: i=1; AJvYcCUVixXXAaGmPhnTcyR/F6EBXuHOzM4vKqmmnD4W0vuZRVd0ipZxPFIPznZ8RawgrpOsLHkPwMFNENJY@vger.kernel.org
X-Gm-Message-State: AOJu0YwBZ0B4xbzSk1/1ikU8yjfMeWTrAmlMRyvP4sgw5TJu3zjq6j3m
	oMRbVp+LSyFwfsLUw8Bd6Xs4qioQ8IlBJ8wAiLJLaYPMkTnuI+Ypoghr
X-Gm-Gg: ATEYQzyaiYeY0CtVNUlY/9y/r0MxIYpTmJLPNW/05KNwFehTXZX7GwKQ3Hd1YWY7OEH
	OEOH6Jv/yeDTn05b1Yf1MnjryToSvMmJSCQ1q/rHV1qg9w23+dI6yUlR8nfZUhlyRvPVshpKP7q
	pZfPFX9tmX7SJmRZBo8p1mfXp+jidF9z1agJR/gBdRR2HgSNbkSxAqB4wvbYCdIYP+TIWdbJuFh
	1hh1XOmcsoaCqg3NtUKag/SEHC1gOzDvC2UNMhPKvqLtlszBZAcxATOLYt2vlcPqt3E6+tK8bth
	Ceecz59UENvjnPIfigZ9vYxoxHc0bJh/nIVaypBYBOqawAZzKJkxnsK/WMdYeSmEM75k1w41XtV
	XBsUpRvl88kGyBP/yJTFVpjPmAnzJ3nLGZ859BT1ituVnzvqiSMZEm1ZZ44z+CxzPqQ0WvBhgnO
	papxotAS3s0YPKRIi+O48=
X-Received: by 2002:a05:6000:2910:b0:437:8111:e2d0 with SMTP id ffacd0b85a97d-4396f1562efmr16272260f8f.8.1771867028658;
        Mon, 23 Feb 2026 09:17:08 -0800 (PST)
Received: from luca-vm.lan ([154.61.61.58])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-43970d4c982sm20871454f8f.31.2026.02.23.09.17.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Feb 2026 09:17:08 -0800 (PST)
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
	Eddie Huang <eddie.huang@mediatek.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Julien Massot <julien.massot@collabora.com>,
	Louis-Alexis Eyraud <louisalexis.eyraud@collabora.com>,
	Gary Bisson <bisson.gary@gmail.com>,
	Val Packett <val@packett.cool>,
	Fabien Parent <parent.f@gmail.com>,
	Chen Zhong <chen.zhong@mediatek.com>,
	linux-input@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rtc@vger.kernel.org
Subject: [PATCH 0/9] Add support for mt6392 PMIC
Date: Mon, 23 Feb 2026 17:12:39 +0000
Message-ID: <cover.1771865014.git.l.scorcia@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[28];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,mediatek.com,collabora.com,bootlin.com,packett.cool,vger.kernel.org,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-267557-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lscorcia@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 9B08217A9B8
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

Fabien Parent (5):
  dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
  dt-bindings: regulator: add support for MT6392
  dt-bindings: input: mtk-pmic-keys: add MT6392 binding definition
  mfd: mt6397: Add support for MT6392 pmic
  regulator: mt6392: Add support for MT6392 regulator

Val Packett (4):
  soc: mediatek: mtk-pmic-wrap: add compatible for MT6392 PMIC
  input: keyboard: mtk-pmic-keys: add MT6392 support
  rtc: mt6397: add compatible for MT6392 PMIC
  arm64: dts: mt6392: add mt6392 PMIC dtsi

 .../bindings/input/mediatek,pmic-keys.yaml    |   1 +
 .../bindings/mfd/mediatek,mt6397.yaml         |   3 +
 arch/arm64/boot/dts/mediatek/mt6392.dtsi      | 133 +++++
 drivers/input/keyboard/mtk-pmic-keys.c        |  15 +
 drivers/mfd/mt6397-core.c                     |  43 ++
 drivers/mfd/mt6397-irq.c                      |   8 +
 drivers/regulator/Kconfig                     |   9 +
 drivers/regulator/Makefile                    |   1 +
 drivers/regulator/mt6392-regulator.c          | 491 ++++++++++++++++++
 drivers/rtc/rtc-mt6397.c                      |   1 +
 drivers/soc/mediatek/mtk-pmic-wrap.c          |   1 +
 include/linux/mfd/mt6392/core.h               |  42 ++
 include/linux/mfd/mt6392/registers.h          | 487 +++++++++++++++++
 include/linux/mfd/mt6397/core.h               |   1 +
 include/linux/regulator/mt6392-regulator.h    |  40 ++
 15 files changed, 1276 insertions(+)
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6392.dtsi
 create mode 100644 drivers/regulator/mt6392-regulator.c
 create mode 100644 include/linux/mfd/mt6392/core.h
 create mode 100644 include/linux/mfd/mt6392/registers.h
 create mode 100644 include/linux/regulator/mt6392-regulator.h

-- 
2.43.0


