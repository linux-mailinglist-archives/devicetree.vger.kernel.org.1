Return-Path: <devicetree+bounces-68158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9CB8CAFFC
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 16:06:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CFBD1C23B01
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 14:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA4A97F47B;
	Tue, 21 May 2024 14:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DU9lr3+2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8187A1E502
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 14:05:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716300352; cv=none; b=UP4i/wuS9SRRahJwHfp9POEY6Rdh5Jeq8KgBfpvlQaI3nq7sGZLhrqSeuGCPLCxYzyPxdMjL0Zop0G5nji+Q26lgY8lX4mCzmbZiJF1/wUTQ+zyxSZ3N67vsnRaUL8FDpfTa6pKjbsj2ANHip4cYLyzE0xlNkOi+z2u617eQ44Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716300352; c=relaxed/simple;
	bh=JUfb8zY+izCRC4r50MixNaaw78CPvzL7Ajdm+ROpRS8=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=PoAyviB3Px+coX6L4zMQkQzprfjOSj6wLXeotDfJ4WDXjZZi4OFS9GCSmdqgBeGqxLwg/CirurgoBpIFb14op908COVdanWqpIDm1KdVya8p5/TAz0I2QZVICbQW2k1ZNApMJWs1YlCOpFCxV0+uYHYyXED+7n9J5RTruSB2JEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DU9lr3+2; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-4202ca70287so23359545e9.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 07:05:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1716300348; x=1716905148; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zgoKFoQ+1ZxeBSFvhA/0PLTmzF3XLdEhqXLatkcXB1c=;
        b=DU9lr3+2kIuqImVBW4yXFS23y17jAcoca5xXNoQWC4u8T/DoFF9wjo3pg3Uu4y4DXP
         F3U5x9+Nk4a3wa+WT3AGI2HVbjYp5x6r9IQUyr766cgqLYnCNafrl7oaGovwtNY3Cg2M
         EGtnvms/o00PPTRju2eRofy7G4ftCvTbPoAGCcS9ZtEmdq6Glbp63/6l0j7Lb+eJ/0v8
         R3RrbHg05mq773W0ppSzAmjabVQmu7w/npQ8SlImqPA2TguMXjm8MvarSULV6OQ32qq2
         NqdA2XZpCBaUCCRWo6XfQBb6HQ4tqbv+WhAZZybG/PaKwNVNi9Ge65ygQApb+gdRPesE
         iLWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716300348; x=1716905148;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zgoKFoQ+1ZxeBSFvhA/0PLTmzF3XLdEhqXLatkcXB1c=;
        b=tFs9Y1vFBTz1RQacTlmCUwyNJ3KwMPeVNXS9Vr2wUX/9OF2gYZ6tB03PkC/5O4v3bv
         eUxz07+6WfgBPGfLtfbr8p7JAGQbPbj3r5xKrsvUxKUoR+mWySNUs+sSWTGzjaxNfyxW
         Bj989tWwB87RB9mWFP7cNqY2r04FwWWkiCE0XuRoNLNVJMcc2zq4/1T5/hKsnLcMdSbT
         yrXm/87epo20mCJ0tCtQ3jDmCE6RBkFCLV+ItLQ/a1eAEnnimCQaDOrabCCgG3GBgs+G
         4IyqNHo716QY3Py7kvI+Sw9zAxe3K9MnSwM7seHe9PzTZggOB2WvSO95PGyCqWbwa7Lj
         m0Yg==
X-Gm-Message-State: AOJu0YzKN5BulhX/M1cUBQ9s7GtrLbKIj4OlfDReAa3Dg4OTHz92Wmue
	tANCbJAylmrwy3X28i9t1TXNa/IOMQPdZ8hgJATRvP817l9oxXgYFRvmFxvnNTQ=
X-Google-Smtp-Source: AGHT+IFmqJnb4ObWiPzsVQuZAWrqnThUPe8ztSlw4PvCSGE0QT/f8sLOvVgkTo5aE0vFaVuHcCymvA==
X-Received: by 2002:a05:600c:3592:b0:420:1a0d:f15d with SMTP id 5b1f17b1804b1-4201a0df409mr219365415e9.22.1716300347840;
        Tue, 21 May 2024 07:05:47 -0700 (PDT)
Received: from [127.0.1.1] (abordeaux-651-1-78-161.w90-5.abo.wanadoo.fr. [90.5.97.161])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42015deac1asm342085945e9.17.2024.05.21.07.05.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 07:05:47 -0700 (PDT)
From: Julien Panis <jpanis@baylibre.com>
Subject: [PATCH v4 0/4] Mediatek thermal sensor driver support for MT8186
 and MT8188
Date: Tue, 21 May 2024 16:05:34 +0200
Message-Id: <20240521-mtk-thermal-mt818x-dtsi-v4-0-b91ee678411c@baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAC6qTGYC/x2Myw5AMBAAf0X2bJOqV/kVcSgWG1rSNiIR/65xm
 znMPODJMXlokwccXez5sFGKNIFx1XYh5Ck6SCELUUqBJmwYVnJG75FVpm6cgmekUee1mpuh0gJ
 ifTqa+f7PXf++H1oE/hRpAAAA
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Nicolas Pitre <npitre@baylibre.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 Julien Panis <jpanis@baylibre.com>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1716300346; l=1983;
 i=jpanis@baylibre.com; s=20230526; h=from:subject:message-id;
 bh=JUfb8zY+izCRC4r50MixNaaw78CPvzL7Ajdm+ROpRS8=;
 b=Rv1gAaXrI9T1gUh79Yf80ndSE1qfUTglrDHcSeo8X96oSkWcD33mgOnC648Krl2/j+tLEWccz
 CmXGPBXvimlD6ZQ+ofFFt6ktYgM86f2JCojX6rEzyAeR/IoO0YZIbF0
X-Developer-Key: i=jpanis@baylibre.com; a=ed25519;
 pk=8eSM4/xkiHWz2M1Cw1U3m2/YfPbsUdEJPCWY3Mh9ekQ=

This is a bunch of patches to support the MT8186 and MT8188 thermal
sensor configurations.

Since the patches of v3 were applied except those related to the SoC
device trees, this series includes only patches for 'mt8186.dtsi' and
'mt8188.dtsi'.

Signed-off-by: Julien Panis <jpanis@baylibre.com>
---
Changes in v4:
- Fix wrong thermal zone names.
- Lower 'polling-delay-passive' values.
- Set 'hysteresis' value to 0 for 'critical' trips.
- Add a 'hot' trip point in between 'passive' and 'critical' trips.
- Link to v3: https://lore.kernel.org/all/20240402032729.2736685-1-nico@fluxnic.net/

Changes in v3:
- use meaningful name for binding index definitions
- reuse LVTS_COEFF_*_MT7988 on MT8186 per reviewer request
- do similarly for MT8188 that now reuses LVTS_COEFF_*_MT8195
- use thermal zone names the svs driver wants
- adjust some DT node names and iospace length
- remove variable .hw_tshut_temp as it is constant across all SOCs
- Link to v2: https://lore.kernel.org/all/20240318212428.3843952-1-nico@fluxnic.net/

Changes in v2:
- renamed CPU cluster thermal zones in DT
- fixed logic to cope with empty controller slots at the beginning
- isolated bindings to their own patches
- added MT8188 default thermal zones
- Link to v1: https://lore.kernel.org/all/20240111223020.3593558-1-nico@fluxnic.net/T/

---
Nicolas Pitre (4):
      arm64: dts: mediatek: mt8186: add lvts definitions
      arm64: dts: mediatek: mt8186: add default thermal zones
      arm64: dts: mediatek: mt8188: add lvts definitions
      arm64: dts: mediatek: mt8188: add default thermal zones

 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 309 ++++++++++++++++++++
 arch/arm64/boot/dts/mediatek/mt8188.dtsi | 467 +++++++++++++++++++++++++++++++
 2 files changed, 776 insertions(+)
---
base-commit: 632483ea8004edfadd035de36e1ab2c7c4f53158
change-id: 20240520-mtk-thermal-mt818x-dtsi-eca378f9b6a0

Best regards,
-- 
Julien Panis <jpanis@baylibre.com>


